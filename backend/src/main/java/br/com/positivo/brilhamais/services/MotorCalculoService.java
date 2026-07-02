package br.com.positivo.brilhamais.services;

import br.com.positivo.brilhamais.models.ApuracaoMensal;
import br.com.positivo.brilhamais.models.Campanha;
import br.com.positivo.brilhamais.models.Tecnico;
import br.com.positivo.brilhamais.repositories.ApuracaoMensalRepository;
import br.com.positivo.brilhamais.repositories.CampanhaRepository;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class MotorCalculoService {

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

    @Transactional
    public void calcularEProcessarMes(LocalDate ignoredParam) {
        Campanha campanhaAtiva = campanhaRepository.findFirstByAtivaTrueOrderByIdCampanhaDesc().orElse(null);
        if (campanhaAtiva == null) return;

        LocalDate dataInicio = campanhaAtiva.getDataInicio();
        LocalDate dataFim = campanhaAtiva.getDataFim();

        tecnicoRepository.findAll().stream()
            .filter(Tecnico::getAtivo)
            .forEach(tecnico -> processarTecnico(tecnico, dataInicio, dataFim));
    }

    @Transactional
    public void calcularEProcessarTecnico(String matricula) {
        Campanha campanhaAtiva = campanhaRepository.findFirstByAtivaTrueOrderByIdCampanhaDesc().orElse(null);
        if (campanhaAtiva == null) return;

        Tecnico tecnico = tecnicoRepository.findByMatricula(matricula).orElse(null);
        if (tecnico == null || !tecnico.getAtivo() || "00000".equals(matricula)) return;

        processarTecnico(tecnico, campanhaAtiva.getDataInicio(), campanhaAtiva.getDataFim());
    }

    private void processarTecnico(Tecnico tecnico, LocalDate dataInicioCampanha, LocalDate dataFimCampanha) {
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
            apFinal.setAtingimentoSla(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getAtingimentoSla).toList()));
            apFinal.setPontosSla(apuracoesMensais.stream().mapToDouble(ApuracaoMensal::getPontosSla).sum() / size);
            
            apFinal.setAtingimentoReincidencia(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getAtingimentoReincidencia).toList()));
            apFinal.setPontosReincidencia(apuracoesMensais.stream().mapToDouble(ApuracaoMensal::getPontosReincidencia).sum() / size);
            
            apFinal.setAtingimentoReincidenciaEquipe(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getAtingimentoReincidenciaEquipe).toList()));
            apFinal.setPontosReincidenciaEquipe(apuracoesMensais.stream().mapToDouble(ApuracaoMensal::getPontosReincidenciaEquipe).sum() / size);
            
            apFinal.setAtingimentoPecas(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getAtingimentoPecas).toList()));
            apFinal.setPontosPecas(apuracoesMensais.stream().mapToDouble(ApuracaoMensal::getPontosPecas).sum() / size);
            
            apFinal.setAtingimentoNps(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getAtingimentoNps).toList()));
            apFinal.setPontosNps(apuracoesMensais.stream().mapToDouble(ApuracaoMensal::getPontosNps).sum() / size);
            
            apFinal.setAtingimentoPerdidos(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getAtingimentoPerdidos).toList()));
            apFinal.setPontosPerdidos(apuracoesMensais.stream().mapToDouble(ApuracaoMensal::getPontosPerdidos).sum() / size);
            
            apFinal.setPontuacaoTotal(calcularMedia(apuracoesMensais.stream().map(ApuracaoMensal::getPontuacaoTotal).toList()));
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
        String ctBase = tecnico.getCtBase();


        // Buscando Métricas Base do BD
        BigDecimal pSlaEquipe = calculoMetricasRepository.calcularPercentualSlaEquipe(idTecnico, ctBase, dataInicio, dataFim);
        BigDecimal pReincEquipe = calculoMetricasRepository.calcularPercentualReincidenciaEquipe(idTecnico, ctBase, dataInicio, dataFim);
        BigDecimal pPerdidosEquipe = calculoMetricasRepository.calcularPercentualPerdidosEquipe(idTecnico, ctBase, dataInicio, dataFim);
        Map<String, Object> npsResult = calculoMetricasRepository.buscarNps(idTecnico, ctBase, dataInicio, dataFim);
        
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
        double ptsPecasDouble = (percPecasIndiv <= 25) ? 12.5 : 0;

        double totalPontos = ptsSla + ptsReincEquipe + ptsPerdidos + ptsNps + ptsReincIndivPts + ptsPecasDouble;

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
        RegrasElegibilidadeCiat.VereditoElegibilidade veredito = regrasCiat.avaliar(totalPontos, percSlaEquipe, (int) totalChamadosIndiv);
        apuracao.setStatusElegibilidade(veredito.elegivel());
        apuracao.setMotivoInelegibilidade(veredito.motivo());

        apuracao.setDataCalculo(LocalDateTime.now());
        return apuracaoRepository.save(apuracao);
    }

    private BigDecimal calcularMedia(java.util.List<BigDecimal> valores) {
        if (valores == null || valores.isEmpty()) return BigDecimal.ZERO;
        BigDecimal sum = valores.stream().reduce(BigDecimal.ZERO, BigDecimal::add);
        return sum.divide(BigDecimal.valueOf(valores.size()), 4, RoundingMode.HALF_UP);
    }
}