package br.com.positivo.brilhamais.services;

import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Map;

@Service
public class ConversorPontuacaoService {

    public double calcularPontosSla(double perc) {
        if (perc >= 100) return 32.5;
        if (perc >= 90) return 28.0;
        return 0;
    }

    public int calcularPontosReincidenciaEquipe(double perc) {
        if (perc <= 7) return 15;
        if (perc <= 10) return 10;
        return 0;
    }

    public int calcularPontosPerdidos(double perc) {
        if (perc <= 1) return 20;
        if (perc <= 2) return 15;
        return 0;
    }

    public int calcularPontosReincidenciaIndividual(double perc) {
        if (perc <= 7) return 15;
        if (perc <= 10) return 10;
        return 0;
    }

    public double calcularPontosNps(Map<String, Object> result) {
        long total = ((Number) result.get("total")).longValue();
        long promotores = ((Number) result.get("promotores")).longValue();
        long detratores = ((Number) result.get("detratores")).longValue();
        
        if (total == 0 || (promotores > 0 && detratores == 0)) return 5.0;
        return 0.0;
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
