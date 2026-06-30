package br.com.positivo.brilhamais.controllers;

import br.com.positivo.brilhamais.dto.RankingDTO;
import br.com.positivo.brilhamais.services.DashboardService;
import br.com.positivo.brilhamais.services.MotorCalculoService;
import br.com.positivo.brilhamais.repositories.CampanhaRepository;
import br.com.positivo.brilhamais.models.Campanha;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/v1/dashboard")
@RequiredArgsConstructor
public class DashboardController {

    private final DashboardService dashboardService;
    private final MotorCalculoService motorCalculoService;
    private final CampanhaRepository campanhaRepository;
    private final br.com.positivo.brilhamais.repositories.ApuracaoMensalRepository apuracaoRepository;

    @GetMapping("/ranking")
    public ResponseEntity<List<RankingDTO>> getRanking(
            @RequestParam(name = "mesAno", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate mesAno,
            org.springframework.security.core.Authentication authentication) {
        Campanha campanha = campanhaRepository.findFirstByAtivaTrueOrderByIdCampanhaDesc().orElse(null);
        
        if (mesAno == null) {
            if (campanha != null) {
                mesAno = campanha.getDataFim(); // Média final (ou mês final)
            } else {
                mesAno = apuracaoRepository.findMaxMesAno().orElse(LocalDate.now().minusMonths(1).withDayOfMonth(1));
            }
        }
        
        List<RankingDTO> ranking = dashboardService.getRankingMensal(mesAno);
        
        // Se a data atual não tiver resultados e usamos a campanha ativa que acabou de fechar, tentar a última data disponível
        if ((ranking == null || ranking.isEmpty()) && campanha != null) {
             LocalDate maxData = apuracaoRepository.findMaxMesAno().orElse(null);
             if (maxData != null && !maxData.equals(mesAno)) {
                 ranking = dashboardService.getRankingMensal(maxData);
             }
        }
        
        return ResponseEntity.ok(ranking);
    }

    @PostMapping("/calcular")
    public ResponseEntity<String> forceCalculate(
            @RequestParam(name = "mesAno", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate mesAno) {
        motorCalculoService.calcularEProcessarMes(mesAno);
        return ResponseEntity.ok("Cálculo e consolidação em lote concluídos com sucesso.");
    }

    @PostMapping("/calcular-tecnico")
    public ResponseEntity<String> forceCalculateTecnico(
            @RequestParam(name = "matricula") String matricula) {
        motorCalculoService.calcularEProcessarTecnico(matricula);
        return ResponseEntity.ok("Cálculo individual concluído para o técnico com matrícula " + matricula);
    }

    @GetMapping("/tecnico/{id}/chamados")
    public ResponseEntity<org.springframework.data.domain.Page<br.com.positivo.brilhamais.dto.ChamadoResumoDTO>> getChamadosTecnico(
            @PathVariable("id") Integer id,
            @RequestParam(name = "dataInicio", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataInicio,
            @RequestParam(name = "dataFim", required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataFim,
            org.springframework.data.domain.Pageable pageable) {
        return ResponseEntity.ok(dashboardService.getChamadosPaginados(id, dataInicio, dataFim, pageable));
    }
}
