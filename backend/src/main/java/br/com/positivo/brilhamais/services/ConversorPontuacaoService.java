package br.com.positivo.brilhamais.services;

import br.com.positivo.brilhamais.models.FaixaPontuacao;
import br.com.positivo.brilhamais.models.RegraKpi;
import br.com.positivo.brilhamais.repositories.FaixaPontuacaoRepository;
import br.com.positivo.brilhamais.repositories.RegraKpiRepository;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class ConversorPontuacaoService {

    private final RegraKpiRepository regraKpiRepository;
    private final FaixaPontuacaoRepository faixaPontuacaoRepository;

    // Cache of rules for fast calculation
    private Map<String, List<FaixaPontuacao>> faixasCache = new HashMap<>();

    @PostConstruct
    public void initCache() {
        faixasCache.clear();
        List<RegraKpi> regras = regraKpiRepository.findAll();
        for (RegraKpi regra : regras) {
            List<FaixaPontuacao> faixas = faixaPontuacaoRepository.findByRegraKpiIdRegra(regra.getIdRegra());
            faixasCache.put(regra.getNomeIndicador(), faixas);
        }
    }

    public void recarregarRegras() {
        initCache();
    }

    private double buscarPontuacaoDinamicamente(String nomeIndicador, double valor) {
        List<FaixaPontuacao> faixas = faixasCache.get(nomeIndicador);
        if (faixas == null || faixas.isEmpty()) return 0.0;
        
        BigDecimal valorBd = BigDecimal.valueOf(valor);
        for (FaixaPontuacao faixa : faixas) {
            if (valorBd.compareTo(faixa.getValorMinimo()) >= 0 && valorBd.compareTo(faixa.getValorMaximo()) <= 0) {
                return faixa.getPontosObtidos().doubleValue();
            }
        }
        return 0.0;
    }

    public double calcularPontosSla(double perc) {
        return buscarPontuacaoDinamicamente("SLA Equipe", perc / 100.0);
    }

    public int calcularPontosReincidenciaEquipe(double perc) {
        return (int) buscarPontuacaoDinamicamente("Reincidência Equipe", perc / 100.0);
    }

    public int calcularPontosPerdidos(double perc) {
        return (int) buscarPontuacaoDinamicamente("Perdidos Equipe", perc / 100.0);
    }

    public int calcularPontosReincidenciaIndividual(double perc) {
        return (int) buscarPontuacaoDinamicamente("Reincidência Individual", perc / 100.0);
    }

    public double calcularPontosPecas(double perc) {
        return buscarPontuacaoDinamicamente("Peças Individual", perc / 100.0);
    }

    public double calcularPontosNps(Map<String, Object> result) {
        BigDecimal npsPercent = extrairPercentualNps(result);
        return buscarPontuacaoDinamicamente("NPS Individual", npsPercent.doubleValue());
    }

    public BigDecimal extrairPercentualNps(Map<String, Object> result) {
        long total = ((Number) result.get("total")).longValue();
        long promotores = ((Number) result.get("promotores")).longValue();
        long detratores = ((Number) result.get("detratores")).longValue();
        if (total == 0) return BigDecimal.ONE;
        double score = (double) (promotores - detratores) / total;
        return BigDecimal.valueOf(Math.max(score, 0));
    }
}
