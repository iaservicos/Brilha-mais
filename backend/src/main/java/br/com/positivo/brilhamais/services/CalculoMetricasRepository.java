package br.com.positivo.brilhamais.services;

import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class CalculoMetricasRepository {

        private final JdbcTemplate jdbcTemplate;

        public BigDecimal calcularPercentualSlaEquipe(boolean useAtp, String uf, String nomeAtp, int idTecnico,
                        String ctBase, LocalDate inicio, LocalDate fim) {
                String join = useAtp ? " JOIN tb_base_atp b ON c.ct_base = b.ct_codigo " : " ";
                StringBuilder sql = new StringBuilder(
                                "SELECT count(c.numero_chamado) as total, COALESCE(sum(case when UPPER(TRIM(c.status_sla)) = 'DENTRO' then 1 else 0 end), 0) as dentro FROM tb_chamado c"
                                                + join
                                                + "WHERE c.data_encerramento >= ? AND c.data_encerramento < ? AND c.status_sla IS NOT NULL AND c.status_chamado IS NULL");

                Object[] args = buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql, "c");

                Map<String, Object> r = jdbcTemplate.queryForMap(sql.toString(), args);
                long t = ((Number) r.get("total")).longValue();
                long d = ((Number) r.get("dentro")).longValue();
                return t > 0 ? BigDecimal.valueOf(d).divide(BigDecimal.valueOf(t), 4, RoundingMode.HALF_UP)
                                : BigDecimal.ZERO;
        }

        public BigDecimal calcularPercentualReincidenciaEquipe(boolean useAtp, String uf, String nomeAtp, int idTecnico,
                        String ctBase, LocalDate inicio, LocalDate fim) {
                String joinQtd = useAtp ? " JOIN tb_base_atp b ON r.ct_anterior = b.ct_codigo " : " ";
                StringBuilder sql1 = new StringBuilder("SELECT count(r.id_reincidencia) as qtd FROM tb_reincidencia r "
                                +
                                joinQtd +
                                "WHERE r.encerramento_rrc >= ? AND r.encerramento_rrc < ? AND r.meses_rrc <= 3");

                String joinBase = useAtp ? " JOIN tb_base_atp b ON c.ct_base = b.ct_codigo " : " ";
                StringBuilder sql2 = new StringBuilder(
                                "SELECT count(c.numero_chamado) as total FROM tb_reincidencia_encerrados c" + joinBase
                                                + "WHERE c.data_encerramento >= ? AND c.data_encerramento < ?");

                Object[] args1 = buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql1, "r",
                                "ct_anterior",
                                "tecnico_anterior_id_not_used");
                Object[] args2 = buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql2, "c", "ct_base",
                                "id_tecnico_not_used");

                long qtd = ((Number) jdbcTemplate.queryForMap(sql1.toString(), args1).getOrDefault("qtd", 0))
                                .longValue();
                long base = ((Number) jdbcTemplate.queryForMap(sql2.toString(), args2).getOrDefault("total", 0))
                                .longValue();

                return base > 0 ? BigDecimal.valueOf(qtd).divide(BigDecimal.valueOf(base), 4, RoundingMode.HALF_UP)
                                : BigDecimal.ZERO;
        }

        public BigDecimal calcularPercentualPerdidosEquipe(boolean useAtp, String uf, String nomeAtp, int idTecnico,
                        String ctBase, LocalDate inicio, LocalDate fim) {
                String join = useAtp ? " JOIN tb_base_atp b ON c.ct_base = b.ct_codigo " : " ";
                String conditionPerdidos = " AND (c.pp = 1 OR c.classificacao_chamado IN ('TRANSFERENCIA ENTRE BASES', 'PERFORMANCE FALHA GESTAO') OR c.encdesc IN ('TRANSFERENCIA ENTRE BASES', 'PERFORMANCE FALHA GESTAO') OR c.ofensor IN ('TRANSFERENCIA ENTRE BASES', 'PERFORMANCE FALHA GESTAO'))";

                StringBuilder sql1 = new StringBuilder("SELECT count(c.numero_chamado) as perdidos FROM tb_chamado c"
                                + join
                                + "WHERE c.data_encerramento >= ? AND c.data_encerramento < ? AND c.status_chamado IS NULL"
                                + conditionPerdidos);
                StringBuilder sql2 = new StringBuilder("SELECT count(c.numero_chamado) as total FROM tb_chamado c"
                                + join
                                + "WHERE c.data_encerramento >= ? AND c.data_encerramento < ? AND c.status_chamado IS NULL");

                Object[] args1 = buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql1, "c");
                Object[] args2 = buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql2, "c");

                long qtd = ((Number) jdbcTemplate.queryForMap(sql1.toString(), args1).getOrDefault("perdidos", 0))
                                .longValue();
                long t = ((Number) jdbcTemplate.queryForMap(sql2.toString(), args2).getOrDefault("total", 0))
                                .longValue();

                return t > 0 ? BigDecimal.valueOf(qtd).divide(BigDecimal.valueOf(t), 4, RoundingMode.HALF_UP)
                                : BigDecimal.ZERO;
        }

        public Map<String, Object> buscarNps(boolean useAtp, String uf, String nomeAtp, int idTecnico, String ctBase,
                        LocalDate inicio, LocalDate fim) {
                String join = useAtp ? " JOIN tb_base_atp b ON c.ct_base = b.ct_codigo " : " ";
                StringBuilder sql = new StringBuilder(
                                "SELECT count(n.id_nps) as total, COALESCE(sum(case when n.classificacao = 'PROMOTOR' then 1 else 0 end), 0) as promotores, COALESCE(sum(case when n.classificacao = 'DETRATOR' then 1 else 0 end), 0) as detratores FROM tb_nps n JOIN tb_chamado c ON n.numero_chamado = c.numero_chamado "
                                                + join
                                                + "WHERE c.data_encerramento >= ? AND c.data_encerramento < ? AND c.status_chamado IS NULL");

                Object[] args = buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql, "c");
                return jdbcTemplate.queryForMap(sql.toString(), args);
        }

        /**
         * Busca o total de chamados atendidos (O Divisor da Base DL).
         * Regra de Negócio: Conta os chamados na Base DL, excluindo chamados "ORFAO" (status_chamado IS NOT NULL)
         * e ignorando chamados do projeto restrito 'H3-03535', para não prejudicar o percentual do técnico.
         */
        public long buscarTotalChamadosIndividual(int idTecnico, LocalDate inicio, LocalDate fim) {
                String sql = "SELECT count(c.numero_chamado) as total FROM tb_chamado c WHERE c.id_tecnico = ? AND c.data_encerramento >= ? AND c.data_encerramento < ? AND c.status_chamado IS NULL AND c.projeto <> 'H3-03535'";
                return ((Number) jdbcTemplate.queryForMap(sql, idTecnico, inicio, fim.plusDays(1)).getOrDefault("total",
                                0))
                                .longValue();
        }

        /**
         * Calcula a taxa de reincidência de um técnico (Numerador / Divisor).
         * Numerador (sql1): Volume de chamados que voltaram a dar defeito em até 3 meses.
         * Divisor (sql2): Volume total de chamados encerrados da base de reincidência.
         */
        public BigDecimal calcularPercentualReincidenciaIndividual(int idTecnico, LocalDate inicio, LocalDate fim) {
                String sql1 = "SELECT count(r.id_reincidencia) as qtd FROM tb_reincidencia r JOIN tb_tecnico t ON UPPER(TRIM(r.tecnico_anterior)) = UPPER(TRIM(t.nome_completo)) "
                                +
                                "WHERE t.id_tecnico = ? AND r.encerramento_rrc >= ? AND r.encerramento_rrc < ? AND r.meses_rrc <= 3";
                long qtd = ((Number) jdbcTemplate.queryForMap(sql1, idTecnico, inicio, fim.plusDays(1))
                                .getOrDefault("qtd", 0))
                                .longValue();

                String sql2 = "SELECT count(c.numero_chamado) as total FROM tb_reincidencia_encerrados c " +
                                "JOIN tb_tecnico t ON UPPER(TRIM(c.tecnico_nome)) = UPPER(TRIM(t.nome_completo)) " +
                                "WHERE t.id_tecnico = ? AND c.data_encerramento >= ? AND c.data_encerramento < ?";
                long base = ((Number) jdbcTemplate.queryForMap(sql2, idTecnico, inicio, fim.plusDays(1)).getOrDefault(
                                "total",
                                0)).longValue();

                return base > 0 ? BigDecimal.valueOf(qtd).divide(BigDecimal.valueOf(base), 4, RoundingMode.HALF_UP)
                                : BigDecimal.ZERO;
        }

        /**
         * Calcula o percentual de uso de peças de um técnico (Numerador / Divisor).
         * Divisor: O total legítimo de chamados atendidos no mês (buscarTotalChamadosIndividual).
         * Numerador: A quantidade de chamados ÚNICOS (count distinct) onde foram utilizadas peças permitidas.
         * Peças permitidas restritas estritamente aos grupos: 'HD', 'SSD', 'Tampa frontal/ LCD', 'Placa mãe'.
         */
        public BigDecimal calcularPercentualPecasIndividual(int idTecnico, LocalDate inicio, LocalDate fim) {
                long totalValido = buscarTotalChamadosIndividual(idTecnico, inicio, fim);

                if (totalValido == 0)
                        return BigDecimal.ZERO;

                String sqlPecas = "SELECT count(DISTINCT p.numero_chamado) as qtd FROM tb_consumo_peca p JOIN tb_chamado c ON p.numero_chamado = c.numero_chamado "
                                +
                                "WHERE c.id_tecnico = ? AND c.data_encerramento >= ? AND c.data_encerramento < ? " +
                                "AND p.subgrupo IN ('HD', 'SSD', 'Tampa frontal/ LCD', 'Placa mãe') " +
                                "AND (p.projeto <> 'H3-03535')";
                long qtd = ((Number) jdbcTemplate.queryForMap(sqlPecas, idTecnico, inicio, fim.plusDays(1))
                                .getOrDefault("qtd",
                                                0))
                                .longValue();

                return BigDecimal.valueOf(qtd).divide(BigDecimal.valueOf(totalValido), 4, RoundingMode.HALF_UP);
        }

        private Object[] buildArgs(boolean useAtp, String uf, String nomeAtp, int idTecnico, String ctBase,
                        LocalDate inicio, LocalDate fim, StringBuilder sql, String alias) {
                return buildArgs(useAtp, uf, nomeAtp, idTecnico, ctBase, inicio, fim, sql, alias, "ct_base",
                                "id_tecnico");
        }

        private Object[] buildArgs(
                        boolean useAtp,
                        String uf,
                        String nomeAtp,
                        int idTecnico,
                        String ctBase,
                        LocalDate inicio,
                        LocalDate fim,
                        StringBuilder sql,
                        String alias,
                        String ctBaseCol,
                        String idTecnicoCol) {
                if (useAtp) {
                        sql.append(" AND b.uf = ? AND b.nome_atp = ?");
                        return new Object[] { inicio, fim.plusDays(1), uf, nomeAtp };
                } else if (ctBase != null && !ctBase.isEmpty()) {
                        sql.append(" AND ").append(alias).append(".").append(ctBaseCol).append(" = ?");
                        return new Object[] { inicio, fim.plusDays(1), ctBase };
                } else {
                        sql.append(" AND ").append(alias).append(".").append(idTecnicoCol).append(" = ?");
                        return new Object[] { inicio, fim.plusDays(1), idTecnico };
                }
        }
}
