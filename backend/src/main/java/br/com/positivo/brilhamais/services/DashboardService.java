package br.com.positivo.brilhamais.services;

import br.com.positivo.brilhamais.dto.ChamadoResumoDTO;
import br.com.positivo.brilhamais.dto.HistoricoDTO;
import br.com.positivo.brilhamais.dto.RankingDTO;
import br.com.positivo.brilhamais.models.ApuracaoMensal;
import br.com.positivo.brilhamais.models.Campanha;
import br.com.positivo.brilhamais.models.Chamado;
import br.com.positivo.brilhamais.repositories.ApuracaoMensalRepository;
import br.com.positivo.brilhamais.repositories.CampanhaRepository;
import br.com.positivo.brilhamais.repositories.ChamadoRepository;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.HashMap;
import java.util.Collections;

@Service
@RequiredArgsConstructor
public class DashboardService {

    private final ApuracaoMensalRepository apuracaoRepository;
    private final ChamadoRepository chamadoRepository;
    private final TecnicoRepository tecnicoRepository;
    private final CampanhaRepository campanhaRepository;
    private final JdbcTemplate jdbcTemplate;
    private final RegrasElegibilidadeCiat regrasCiat;

    private static final DateTimeFormatter FORMATTER_MES = DateTimeFormatter.ofPattern("MMM");
    private static final DateTimeFormatter FORMATTER_HORA = DateTimeFormatter.ofPattern("dd/MM, HH:mm");

    private static final String[] MESES = { "", "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho",
            "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };

    public List<RankingDTO> getRankingMensal(LocalDate mesAno) {
        return buildRankingFromApuracao(mesAno);
    }

    // --- Fluxo de Apuração Mensal (BD) ---

    private List<RankingDTO> buildRankingFromApuracao(LocalDate mesAno) {
        List<ApuracaoMensal> apuracoes = apuracaoRepository.findRankingByMesAno(mesAno);
        if (apuracoes.isEmpty())
            return new ArrayList<>();

        List<Integer> tecnicoIds = apuracoes.stream().map(a -> a.getTecnico().getIdTecnico())
                .collect(Collectors.toList());

        Map<Integer, List<ApuracaoMensal>> historicoPorTecnico = fetchHistoricoPorTecnico(tecnicoIds);

        Campanha campanhaAtiva = campanhaRepository.findFirstByAtivaTrueOrderByIdCampanhaDesc().orElse(null);
        LocalDateTime dataInicio = campanhaAtiva != null ? campanhaAtiva.getDataInicio().atStartOfDay()
                : mesAno.withDayOfMonth(1).atStartOfDay();
        LocalDateTime dataFim = campanhaAtiva != null ? campanhaAtiva.getDataFim().atTime(23, 59, 59, 999999999)
                : mesAno.withDayOfMonth(mesAno.lengthOfMonth()).atTime(23, 59, 59, 999999999);

        Map<Integer, List<Chamado>> chamadosPorTecnico = fetchChamadosPorTecnico(tecnicoIds, dataInicio, dataFim);

        List<Long> chamadosIds = chamadosPorTecnico.values().stream().flatMap(List::stream)
                .map(Chamado::getNumeroChamado).collect(Collectors.toList());
        Map<Long, Map<String, String>> detalhesChamado = fetchPecasETextosChamados(chamadosIds);

        List<RankingDTO> ranking = new ArrayList<>();
        int posicao = 1;

        for (ApuracaoMensal apuracao : apuracoes) {
            int idTecnico = apuracao.getTecnico().getIdTecnico();

            List<ApuracaoMensal> historicoApuracao = historicoPorTecnico.getOrDefault(idTecnico, new ArrayList<>());
            List<HistoricoDTO> historico = historicoApuracao.stream()
                    .map(h -> mapToHistoricoDTO(h))
                    .collect(Collectors.toList());

            List<Chamado> chamadosRecentes = chamadosPorTecnico.getOrDefault(idTecnico, new ArrayList<>());
            List<ChamadoResumoDTO> ultimosChamados = chamadosRecentes.stream().limit(3)
                    .map(c -> mapToChamadoResumoDTO(c, detalhesChamado.get(c.getNumeroChamado())))
                    .collect(Collectors.toList());

            ranking.add(mapToRankingDTOFromApuracao(apuracao, posicao++, historico, ultimosChamados));
        }

        return ranking;
    }

    // --- Consultas Agrupadas ---

    private Map<Integer, List<ApuracaoMensal>> fetchHistoricoPorTecnico(List<Integer> tecnicoIds) {
        if (tecnicoIds.isEmpty())
            return new HashMap<>();
        return apuracaoRepository.findHistoricoByTecnicoIds(tecnicoIds).stream()
                .collect(Collectors.groupingBy(h -> h.getTecnico().getIdTecnico()));
    }

    private Map<Integer, List<Chamado>> fetchChamadosPorTecnico(List<Integer> tecnicoIds, LocalDateTime dataInicio,
            LocalDateTime dataFim) {
        if (tecnicoIds.isEmpty())
            return new HashMap<>();
        return chamadoRepository.findChamadosRecentesPorTecnicos(tecnicoIds, dataInicio, dataFim).stream()
                .collect(Collectors.groupingBy(c -> c.getTecnico().getIdTecnico()));
    }

    private Map<Long, Map<String, String>> fetchPecasETextosChamados(List<Long> chamadosIds) {
        Map<Long, Map<String, String>> result = new HashMap<>();
        if (chamadosIds.isEmpty())
            return result;

        String inSql = String.join(",", Collections.nCopies(chamadosIds.size(), "?"));
        String query = "SELECT chamado, subgrupo, sintoma FROM tb_consumo_peca WHERE chamado IN ("
                + inSql + ")";

        jdbcTemplate.query(query, chamadosIds.toArray(), (rs) -> {
            Long num = rs.getLong("chamado");
            String peca = rs.getString("subgrupo");
            String texto = rs.getString("sintoma");

            result.putIfAbsent(num, new HashMap<>());
            Map<String, String> data = result.get(num);

            if (peca != null) {
                data.merge("pecas", peca, (old, val) -> old + ", " + val);
            }
        });
        return result;
    }

    // --- Mapeadores ---

    private HistoricoDTO mapToHistoricoDTO(ApuracaoMensal h) {
        String label = h.getMesAno().getDayOfMonth() == 1 ? h.getMesAno().format(FORMATTER_MES) : "Média Final";

        return HistoricoDTO.builder()
                .mes(label)
                .percentualSla(valToPct(h.getAtingimentoSla()))
                .pontosSla(valToDouble(h.getPontosSla()))
                .percentualReincidencia(valToPct(h.getAtingimentoReincidencia()))
                .pontosReincidencia(valToDouble(h.getPontosReincidencia()))
                .percentualReincidenciaEquipe(valToPct(h.getAtingimentoReincidenciaEquipe()))
                .pontosReincidenciaEquipe(valToDouble(h.getPontosReincidenciaEquipe()))
                .npsScore(valToPct(h.getAtingimentoNps()))
                .pontosNps(valToDouble(h.getPontosNps()))
                .percentualEficienciaPecas(valToPct(h.getAtingimentoPecas()))
                .pontosPecas(valToDouble(h.getPontosPecas()))
                .percentualPerdidos(valToPct(h.getAtingimentoPerdidos()))
                .pontosPerdidos(valToDouble(h.getPontosPerdidos()))
                .pontosTotal(valToInt(h.getPontuacaoTotal()))
                .elegivel(h.getStatusElegibilidade())
                .motivoInelegibilidade(h.getMotivoInelegibilidade())
                .build();
    }

    private ChamadoResumoDTO mapToChamadoResumoDTO(Chamado c, Map<String, String> dt) {
        String pecas = (dt != null && dt.containsKey("pecas")) ? dt.get("pecas") : "Nenhuma peça consumida";
        String textoEnc = (dt != null && dt.containsKey("texto")) ? dt.get("texto")
                : (c.getTextoEncerrado() != null ? c.getTextoEncerrado()
                        : "Sem texto de encerramento");

        boolean isDentro = "dentro".equalsIgnoreCase(c.getStatusSla());

        return ChamadoResumoDTO.builder()
                .id("Chamado-" + c.getNumeroChamado())
                .desc(c.getEquipamento() != null ? c.getEquipamento()
                        : (c.getProjeto() != null ? c.getProjeto() : "Chamado"))
                .status(isDentro ? "Encerrado dentro SLA" : "Encerrado fora do SLA")
                .isLate("fora".equalsIgnoreCase(c.getStatusSla()))
                .time(c.getDataFt() != null ? c.getDataFt().format(FORMATTER_HORA) : "")
                .pecasUtilizadas(pecas)
                .textoEncerramento(textoEnc)
                .build();
    }

    private RankingDTO mapToRankingDTOFromApuracao(ApuracaoMensal apuracao, int pos, List<HistoricoDTO> historico,
            List<ChamadoResumoDTO> ultimosChamados) {
        return RankingDTO.builder()
                .posicaoRanking(pos)
                .tecnico(apuracao.getTecnico().getNomeCompleto())
                .pontosTotal(valToDouble(apuracao.getPontuacaoTotal()))
                .percentualPerdidos(valToPctBD(apuracao.getAtingimentoPerdidos()))
                .pontosPerdidos(valToDouble(apuracao.getPontosPerdidos()))
                .percentualSla(valToPctBD(apuracao.getAtingimentoSla()))
                .pontosSla(valToDouble(apuracao.getPontosSla()))
                .percentualReincidencia(valToPctBD(apuracao.getAtingimentoReincidencia()))
                .pontosReincidencia(valToDouble(apuracao.getPontosReincidencia()))
                .percentualReincidenciaEquipe(valToPctBD(apuracao.getAtingimentoReincidenciaEquipe()))
                .pontosReincidenciaEquipe(valToDouble(apuracao.getPontosReincidenciaEquipe()))
                .quantidadeProdutividade(apuracao.getTotalChamados() != null ? apuracao.getTotalChamados() : 0)
                .pontosProdutividade(valToDouble(apuracao.getPontosPecas()))
                .percentualEficienciaPecas(valToPctBD(apuracao.getAtingimentoPecas()))
                .pontosPecas(valToDouble(apuracao.getPontosPecas()))
                .npsScore(valToPctBD(apuracao.getAtingimentoNps()))
                .pontosNps(valToDouble(apuracao.getPontosNps()))
                .npsPromotores(0)
                .npsDetratores(0)
                .ultimosChamados(ultimosChamados)
                .elegivel(apuracao.getStatusElegibilidade())
                .motivoInelegibilidade(apuracao.getMotivoInelegibilidade())
                .mesReferencia(apuracao.getMesAno())
                .matricula(apuracao.getTecnico().getMatricula())
                .localEquipe(apuracao.getTecnico().getCtBase())
                .historico(historico)
                .build();
    }

    // --- Helpers de Valores Seguros ---

    private double valToPct(BigDecimal b) {
        return b != null ? b.multiply(new BigDecimal("100")).doubleValue() : 0.0;
    }

    private BigDecimal valToPctBD(BigDecimal b) {
        return b != null ? b.multiply(new BigDecimal("100")) : BigDecimal.ZERO;
    }

    private double valToDouble(Number n) {
        return n != null ? n.doubleValue() : 0.0;
    }

    private int valToInt(Number n) {
        return n != null ? n.intValue() : 0;
    }
}
