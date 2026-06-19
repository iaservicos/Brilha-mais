package br.com.positivo.brilhamais.services;

import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@RequiredArgsConstructor
public class MapeamentoAtpService {

    private final JdbcTemplate jdbcTemplate;

    public AtpInfo buscarInfoAtp(String ctBase) {
        if (ctBase == null || ctBase.isEmpty()) {
            return new AtpInfo(null, null);
        }
        
        try {
            Map<String, Object> baseInfo = jdbcTemplate.queryForMap(
                "SELECT uf, nome_atp FROM tb_base_atp WHERE ct_codigo = ?", ctBase);
            return new AtpInfo((String) baseInfo.get("uf"), (String) baseInfo.get("nome_atp"));
        } catch (Exception e) {
            return new AtpInfo(null, null);
        }
    }

    public record AtpInfo(String uf, String nomeAtp) {
        public boolean isMapeada() {
            return uf != null && nomeAtp != null;
        }
    }
}
