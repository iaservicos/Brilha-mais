package br.com.positivo.brilhamais.services;

import br.com.positivo.brilhamais.models.ApuracaoMensal;
import br.com.positivo.brilhamais.models.Campanha;
import br.com.positivo.brilhamais.models.Tecnico;
import br.com.positivo.brilhamais.repositories.ApuracaoMensalRepository;
import br.com.positivo.brilhamais.repositories.CampanhaRepository;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.context.annotation.Lazy;
import org.springframework.beans.factory.annotation.Autowired;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class MotorCalculoService {

    @Lazy
    @Autowired
    private MotorCalculoService self;

    private final TecnicoRepository tecnicoRepository;
    private final ApuracaoMensalRepository apuracaoRepository;
    private final CampanhaRepository campanhaRepository;
    private final RegrasElegibilidadeCiat regrasCiat;
    private final CalculoMetricasRepository calculoMetricasRepository;
    private final ConversorPontuacaoService conversorPontuacaoService;

    @org.springframework.scheduling.annotation.Scheduled(cron = "0 0 1 * * ?")
    public void rotinaDiariaCalculo() {
        calcularEProcessarMes(LocalDate.now().withDayOfMonth(1));
    }

    public void calcularEProcessarMes(LocalDate ignoredParam) {
        Campanha campanhaAtiva = campanhaRepository.findFirstByAtivaTrueOrderByIdCampanhaDesc().orElse(null);
        if (campanhaAtiva == null) return;

        LocalDate dataInicio = campanhaAtiva.getDataInicio();
        LocalDate dataFim = campanhaAtiva.getDataFim();

        List<Integer> tecnicoIds = tecnicoRepository.findAll().stream()
            .filter(Tecnico::getAtivo)
            .map(Tecnico::getIdTecnico)
            .toList();

        // Fix: Use a custom ForkJoinPool to limit parallelism to 3 threads.
        // This prevents exhausting the HikariCP connection pool (which is 5),
        // leaving 2 connections free for frontend API requests so they don't timeout.
        java.util.concurrent.ForkJoinPool customThreadPool = new java.util.concurrent.ForkJoinPool(3);
        try {
            customThreadPool.submit(() ->
                tecnicoIds.parallelStream().forEach(idTecnico -> {
                    try {
                        self.processarTecnicoPorId(idTecnico, dataInicio, dataFim);
                    } catch (Exception e) {
                        log.error("Falha ao processar métricas do técnico ID {}: {}", 
                                  idTecnico, e.getMessage(), e);
                    }
                })
            ).join();
        } finally {
            customThreadPool.shutdown();
        }
    }

    @Transactional
    public void calcularEProcessarTecnico(String matricula) {
        Campanha campanhaAtiva = campanhaRepository.findFirstByAtivaTrueOrderByIdCampanhaDesc().orElse(null);
        if (campanhaAtiva == null) return;

        Tecnico tecnico = tecnicoRepository.findByMatricula(matricula).orElse(null);
        if (tecnico == null || !tecnico.getAtivo() || "00000".equals(matricula)) return;

        self.processarTecnico(tecnico, campanhaAtiva.getDataInicio(), campanhaAtiva.getDataFim());
    }

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void processarTecnicoPorId(Integer idTecnico, LocalDate dataInicioCampanha, LocalDate dataFimCampanha) {
        Tecnico tecnico = tecnicoRepository.findById(idTecnico).orElse(null);
        if (tecnico == null || !tecnico.getAtivo() || "00000".equals(tecnico.getMatricula())) return;
        
        processarTecnico(tecnico, dataInicioCampanha, dataFimCampanha);
    }

    // Usado como inner call e fallback, não precisa de REQUIRES_NEW caso já venha da porId ou se não der lazy exception
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void processarTecnico(Tecnico tecnico, LocalDate dataInicioCampanha, LocalDate dataFimCampanha) {
        java.util.List<ApuracaoMensal> apuracoesMensais = new java.util.ArrayList<>();
        java.util.Set<LocalDate> datasValidas = new java.util.HashSet<>();
        LocalDate currentDate = dataInicioCampanha.withDayOfMonth(1);
        
        while (!currentDate.isAfter(dataFimCampanha)) {
            LocalDate mInicio = currentDate;
            LocalDate endOfMonth = currentDate.withDayOfMonth(currentDate.lengthOfMonth());
            LocalDate mFim = dataFimCampanha.isBefore(endOfMonth) ? dataFimCampanha : endOfMonth;
            
            datasValidas.add(mInicio);
            
            ApuracaoMensal ap = calcularParaPeriodo(tecnico, mInicio, mFim, mInicio);
            apuracoesMensais.add(ap);
            
            currentDate = currentDate.plusMonths(1);
        }
        
        if (apuracoesMensais.isEmpty()) return;

        datasValidas.add(dataFimCampanha);

        // --- Limpeza de resíduos de configurações de campanhas antigas (Self-Healing) ---
        java.util.List<ApuracaoMensal> apuracoesBanco = apuracaoRepository
            .findByTecnicoIdTecnicoAndMesAnoBetween(tecnico.getIdTecnico(), dataInicioCampanha, dataFimCampanha);
            
        java.util.List<ApuracaoMensal> apuracoesLixo = apuracoesBanco.stream()
            .filter(ap -> !datasValidas.contains(ap.getMesAno()))
            .toList();
            
        if (!apuracoesLixo.isEmpty()) {
            apuracaoRepository.deleteAll(apuracoesLixo);
        }
        // --------------------------------------------------------------------------------

        // Média Geral
        ApuracaoMensal apFinal = apuracaoRepository
            .findFirstByTecnicoIdTecnicoAndMesAno(tecnico.getIdTecnico(), dataFimCampanha)
            .orElse(ApuracaoMensal.builder().tecnico(tecnico).mesAno(dataFimCampanha).build());
            
        int size = apuracoesMensais.size();
        
        if (size == 1) {
            ApuracaoMensal ap1 = apuracoesMensais.get(0);
            apFinal.setAtingimentoSla(ap1.getAtingimentoSla());
            apFinal.setPontosSla(ap1.getPontosSla());
            apFinal.setAtingimentoReincidencia(ap1.getAtingimentoReincidencia());
            apFinal.setPontosReincidencia(ap1.getPontosReincidencia());
            apFinal.setAtingimentoReincidenciaEquipe(ap1.getAtingimentoReincidenciaEquipe());
            apFinal.setPontosReincidenciaEquipe(ap1.getPontosReincidenciaEquipe());
            apFinal.setAtingimentoPecas(ap1.getAtingimentoPecas());
            apFinal.setPontosPecas(ap1.getPontosPecas());
            apFinal.setAtingimentoNps(ap1.getAtingimentoNps());
            apFinal.setPontosNps(ap1.getPontosNps());
            apFinal.setAtingimentoPerdidos(ap1.getAtingimentoPerdidos());
            apFinal.setPontosPerdidos(ap1.getPontosPerdidos());
            apFinal.setPontuacaoTotal(ap1.getPontuacaoTotal());
            apFinal.setTotalChamados(ap1.getTotalChamados());
            apFinal.setStatusElegibilidade(ap1.getStatusElegibilidade());
            apFinal.setMotivoInelegibilidade(ap1.getMotivoInelegibilidade());
        } else {
            List<ApuracaoMensal> apuracoesComDados = apuracoesMensais.stream()
                    .filter(ap -> ap.getTotalChamados() != null && ap.getTotalChamados() > 0)
                    .toList();
            
            List<ApuracaoMensal> apuracoesParaMedia = apuracoesComDados.isEmpty() ? apuracoesMensais : apuracoesComDados;
            int numMesesMedia = apuracoesParaMedia.size();

            apFinal.setAtingimentoSla(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getAtingimentoSla).toList()));
            apFinal.setPontosSla(apuracoesParaMedia.stream().mapToDouble(ApuracaoMensal::getPontosSla).sum() / numMesesMedia);
            
            apFinal.setAtingimentoReincidencia(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getAtingimentoReincidencia).toList()));
            apFinal.setPontosReincidencia(apuracoesParaMedia.stream().mapToDouble(ApuracaoMensal::getPontosReincidencia).sum() / numMesesMedia);
            
            apFinal.setAtingimentoReincidenciaEquipe(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getAtingimentoReincidenciaEquipe).toList()));
            apFinal.setPontosReincidenciaEquipe(apuracoesParaMedia.stream().mapToDouble(ApuracaoMensal::getPontosReincidenciaEquipe).sum() / numMesesMedia);
            
            apFinal.setAtingimentoPecas(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getAtingimentoPecas).toList()));
            apFinal.setPontosPecas(apuracoesParaMedia.stream().mapToDouble(ApuracaoMensal::getPontosPecas).sum() / numMesesMedia);
            
            apFinal.setAtingimentoNps(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getAtingimentoNps).toList()));
            apFinal.setPontosNps(apuracoesParaMedia.stream().mapToDouble(ApuracaoMensal::getPontosNps).sum() / numMesesMedia);
            
            apFinal.setAtingimentoPerdidos(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getAtingimentoPerdidos).toList()));
            apFinal.setPontosPerdidos(apuracoesParaMedia.stream().mapToDouble(ApuracaoMensal::getPontosPerdidos).sum() / numMesesMedia);
            
            apFinal.setPontuacaoTotal(calcularMedia(apuracoesParaMedia.stream().map(ApuracaoMensal::getPontuacaoTotal).toList()));
            apFinal.setTotalChamados(apuracoesMensais.stream().mapToInt(ApuracaoMensal::getTotalChamados).sum());
            
            boolean elegivel = true;
            String motivo = null;
            for (int i = 0; i < size; i++) {
                if (!apuracoesMensais.get(i).getStatusElegibilidade()) {
                    elegivel = false;
                    motivo = "Inelegível no Mês " + (i+1) + ": " + apuracoesMensais.get(i).getMotivoInelegibilidade();
                    break;
                }
            }
            apFinal.setStatusElegibilidade(elegivel);
            apFinal.setMotivoInelegibilidade(motivo);
        }
        
        apFinal.setDataCalculo(LocalDateTime.now());
        apuracaoRepository.save(apFinal);
    }

    private ApuracaoMensal calcularParaPeriodo(Tecnico tecnico, LocalDate dataInicio, LocalDate dataFim, LocalDate mesAnoGravacao) {
        int idTecnico = tecnico.getIdTecnico();
        List<String> ctBases = tecnico.getCtBases();


        // Buscando Métricas Base do BD
        BigDecimal pSlaEquipe = calculoMetricasRepository.calcularPercentualSlaEquipe(idTecnico, ctBases, dataInicio, dataFim);
        BigDecimal pReincEquipe = calculoMetricasRepository.calcularPercentualReincidenciaEquipe(idTecnico, ctBases, dataInicio, dataFim);
        BigDecimal pPerdidosEquipe = calculoMetricasRepository.calcularPercentualPerdidosEquipe(idTecnico, ctBases, dataInicio, dataFim);
        Map<String, Object> npsResult = calculoMetricasRepository.buscarNps(idTecnico, ctBases, dataInicio, dataFim);
        
        long totalChamadosIndiv = calculoMetricasRepository.buscarTotalChamadosIndividual(idTecnico, dataInicio, dataFim);
        BigDecimal pReincIndiv = calculoMetricasRepository.calcularPercentualReincidenciaIndividual(idTecnico, dataInicio, dataFim);
        BigDecimal pPecasIndiv = calculoMetricasRepository.calcularPercentualPecasIndividual(idTecnico, dataInicio, dataFim);

        // Transformando Métricas em Pontos
        double percSlaEquipe = pSlaEquipe.doubleValue() * 100;
        double ptsSla = conversorPontuacaoService.calcularPontosSla(percSlaEquipe);
        
        double percReincEquipe = pReincEquipe.doubleValue() * 100;
        int ptsReincEquipe = conversorPontuacaoService.calcularPontosReincidenciaEquipe(percReincEquipe);
        
        double percPerdidosEquipe = pPerdidosEquipe.doubleValue() * 100;
        int ptsPerdidos = conversorPontuacaoService.calcularPontosPerdidos(percPerdidosEquipe);
        
        double ptsNps = conversorPontuacaoService.calcularPontosNps(npsResult);
        BigDecimal pNps = conversorPontuacaoService.extrairPercentualNps(npsResult);
        
        double percReincIndiv = pReincIndiv.doubleValue() * 100;
        int ptsReincIndivPts = conversorPontuacaoService.calcularPontosReincidenciaIndividual(percReincIndiv);
        
        double percPecasIndiv = pPecasIndiv.doubleValue() * 100;
        double ptsPecasDouble = conversorPontuacaoService.calcularPontosPecas(percPecasIndiv);

        double totalPontos = ptsSla + ptsReincEquipe + ptsPerdidos + ptsNps + ptsReincIndivPts + ptsPecasDouble;

        // Trava para meses sem atendimentos/chamados registrados: Zera todas as pontuações e percentuais
        if (totalChamadosIndiv == 0) {
            pSlaEquipe = BigDecimal.ZERO;
            pReincEquipe = BigDecimal.ZERO;
            pPerdidosEquipe = BigDecimal.ZERO;
            pNps = BigDecimal.ZERO;
            pReincIndiv = BigDecimal.ZERO;
            pPecasIndiv = BigDecimal.ZERO;

            ptsSla = 0.0;
            ptsReincEquipe = 0;
            ptsPerdidos = 0;
            ptsNps = 0.0;
            ptsReincIndivPts = 0;
            ptsPecasDouble = 0.0;
            totalPontos = 0.0;
        }

        // Construindo e Salvando a Entidade
        ApuracaoMensal apuracao = apuracaoRepository
                .findFirstByTecnicoIdTecnicoAndMesAno(idTecnico, dataInicio)
                .orElse(ApuracaoMensal.builder().tecnico(tecnico).mesAno(mesAnoGravacao).build());

        apuracao.setAtingimentoSla(pSlaEquipe);
        apuracao.setPontosSla(ptsSla);
        apuracao.setAtingimentoReincidencia(pReincIndiv);
        apuracao.setPontosReincidencia((double) ptsReincIndivPts);
        apuracao.setAtingimentoReincidenciaEquipe(pReincEquipe);
        apuracao.setPontosReincidenciaEquipe((double) ptsReincEquipe);
        apuracao.setAtingimentoPecas(pPecasIndiv);
        apuracao.setPontosPecas(ptsPecasDouble);
        apuracao.setAtingimentoPerdidos(pPerdidosEquipe);
        apuracao.setPontosPerdidos((double) ptsPerdidos);
        apuracao.setAtingimentoNps(pNps);
        apuracao.setPontosNps(ptsNps);
        apuracao.setPontuacaoTotal(BigDecimal.valueOf(totalPontos));
        apuracao.setTotalChamados((int) totalChamadosIndiv);

        // Elegibilidade Centralizada
        if (totalChamadosIndiv == 0) {
            apuracao.setStatusElegibilidade(false);
            apuracao.setMotivoInelegibilidade("Sem chamados/atendimentos registrados no mês");
        } else {
            RegrasElegibilidadeCiat.VereditoElegibilidade veredito = regrasCiat.avaliar(totalPontos, percSlaEquipe, (int) totalChamadosIndiv);
            apuracao.setStatusElegibilidade(veredito.elegivel());
            apuracao.setMotivoInelegibilidade(veredito.motivo());
        }

        apuracao.setDataCalculo(LocalDateTime.now());
        return apuracaoRepository.save(apuracao);
    }

    private BigDecimal calcularMedia(java.util.List<BigDecimal> valores) {
        if (valores == null || valores.isEmpty()) return BigDecimal.ZERO;
        BigDecimal sum = valores.stream().reduce(BigDecimal.ZERO, BigDecimal::add);
        return sum.divide(BigDecimal.valueOf(valores.size()), 4, RoundingMode.HALF_UP);
    }
}