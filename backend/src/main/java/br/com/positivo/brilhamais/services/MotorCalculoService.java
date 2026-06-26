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
    private final MapeamentoAtpService mapeamentoAtpService;
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
        // Mês 1
        LocalDate m1Inicio = dataInicioCampanha.withDayOfMonth(1);
        LocalDate m1Fim = dataFimCampanha.isBefore(m1Inicio.withDayOfMonth(m1Inicio.lengthOfMonth())) ? dataFimCampanha : m1Inicio.withDayOfMonth(m1Inicio.lengthOfMonth());
        ApuracaoMensal ap1 = calcularParaPeriodo(tecnico, m1Inicio, m1Fim, m1Inicio);
        
        // Mês 2
        LocalDate m2Inicio = m1Fim.plusDays(1).withDayOfMonth(1);
        if (m2Inicio.isAfter(dataFimCampanha)) return;
        
        LocalDate m2Fim = dataFimCampanha.isBefore(m2Inicio.withDayOfMonth(m2Inicio.lengthOfMonth())) ? dataFimCampanha : m2Inicio.withDayOfMonth(m2Inicio.lengthOfMonth());
        ApuracaoMensal ap2 = calcularParaPeriodo(tecnico, m2Inicio, m2Fim, m2Inicio);

        // Média Geral
        ApuracaoMensal apFinal = apuracaoRepository
            .findFirstByTecnicoIdTecnicoAndMesAno(tecnico.getIdTecnico(), dataFimCampanha)
            .orElse(ApuracaoMensal.builder().tecnico(tecnico).mesAno(dataFimCampanha).build());
                    
        apFinal.setAtingimentoSla(calcularMedia(ap1.getAtingimentoSla(), ap2.getAtingimentoSla()));
        apFinal.setPontosSla((ap1.getPontosSla() + ap2.getPontosSla()) / 2.0);
        
        apFinal.setAtingimentoReincidencia(calcularMedia(ap1.getAtingimentoReincidencia(), ap2.getAtingimentoReincidencia()));
        apFinal.setPontosReincidencia((ap1.getPontosReincidencia() + ap2.getPontosReincidencia()) / 2.0);
        
        apFinal.setAtingimentoReincidenciaEquipe(calcularMedia(ap1.getAtingimentoReincidenciaEquipe(), ap2.getAtingimentoReincidenciaEquipe()));
        apFinal.setPontosReincidenciaEquipe((ap1.getPontosReincidenciaEquipe() + ap2.getPontosReincidenciaEquipe()) / 2.0);
        
        apFinal.setAtingimentoPecas(calcularMedia(ap1.getAtingimentoPecas(), ap2.getAtingimentoPecas()));
        apFinal.setPontosPecas((ap1.getPontosPecas() + ap2.getPontosPecas()) / 2.0);
        
        apFinal.setAtingimentoNps(calcularMedia(ap1.getAtingimentoNps(), ap2.getAtingimentoNps()));
        apFinal.setPontosNps((ap1.getPontosNps() + ap2.getPontosNps()) / 2.0);
        
        apFinal.setAtingimentoPerdidos(calcularMedia(ap1.getAtingimentoPerdidos(), ap2.getAtingimentoPerdidos()));
        apFinal.setPontosPerdidos((ap1.getPontosPerdidos() + ap2.getPontosPerdidos()) / 2.0);
        
        apFinal.setPontuacaoTotal(calcularMedia(ap1.getPontuacaoTotal(), ap2.getPontuacaoTotal()));
        apFinal.setTotalChamados(ap1.getTotalChamados() + ap2.getTotalChamados());
        
        if (!ap1.getStatusElegibilidade()) {
            apFinal.setStatusElegibilidade(false);
            apFinal.setMotivoInelegibilidade("Inelegível no Mês 1: " + ap1.getMotivoInelegibilidade());
        } else if (!ap2.getStatusElegibilidade()) {
            apFinal.setStatusElegibilidade(false);
            apFinal.setMotivoInelegibilidade("Inelegível no Mês 2: " + ap2.getMotivoInelegibilidade());
        } else {
            apFinal.setStatusElegibilidade(true);
            apFinal.setMotivoInelegibilidade(null);
        }
        
        apFinal.setDataCalculo(LocalDateTime.now());
        apuracaoRepository.save(apFinal);
    }

    private ApuracaoMensal calcularParaPeriodo(Tecnico tecnico, LocalDate dataInicio, LocalDate dataFim, LocalDate mesAnoGravacao) {
        int idTecnico = tecnico.getIdTecnico();
        String ctBase = tecnico.getCtBase();
        
        MapeamentoAtpService.AtpInfo atpInfo = mapeamentoAtpService.buscarInfoAtp(ctBase);
        boolean useAtp = atpInfo.isMapeada();

        // Buscando Métricas Base do BD
        BigDecimal pSlaEquipe = calculoMetricasRepository.calcularPercentualSlaEquipe(useAtp, atpInfo.uf(), atpInfo.nomeAtp(), idTecnico, ctBase, dataInicio, dataFim);
        BigDecimal pReincEquipe = calculoMetricasRepository.calcularPercentualReincidenciaEquipe(useAtp, atpInfo.uf(), atpInfo.nomeAtp(), idTecnico, ctBase, dataInicio, dataFim);
        BigDecimal pPerdidosEquipe = calculoMetricasRepository.calcularPercentualPerdidosEquipe(useAtp, atpInfo.uf(), atpInfo.nomeAtp(), idTecnico, ctBase, dataInicio, dataFim);
        Map<String, Object> npsResult = calculoMetricasRepository.buscarNps(useAtp, atpInfo.uf(), atpInfo.nomeAtp(), idTecnico, ctBase, dataInicio, dataFim);
        
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

    private BigDecimal calcularMedia(BigDecimal v1, BigDecimal v2) {
        return v1.add(v2).divide(BigDecimal.valueOf(2), 4, RoundingMode.HALF_UP);
    }
}