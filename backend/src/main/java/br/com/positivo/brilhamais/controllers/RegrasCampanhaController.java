package br.com.positivo.brilhamais.controllers;

import br.com.positivo.brilhamais.models.FaixaPontuacao;
import br.com.positivo.brilhamais.models.RegraKpi;
import br.com.positivo.brilhamais.repositories.FaixaPontuacaoRepository;
import br.com.positivo.brilhamais.repositories.RegraKpiRepository;
import br.com.positivo.brilhamais.services.ConversorPontuacaoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/regras")
@RequiredArgsConstructor
public class RegrasCampanhaController {

    private final RegraKpiRepository regraKpiRepository;
    private final FaixaPontuacaoRepository faixaPontuacaoRepository;
    private final ConversorPontuacaoService conversorPontuacaoService;

    @GetMapping
    public ResponseEntity<List<RegraKpi>> listarRegras() {
        return ResponseEntity.ok(regraKpiRepository.findAll());
    }

    @GetMapping("/{idRegra}/faixas")
    public ResponseEntity<List<FaixaPontuacao>> listarFaixasDaRegra(@PathVariable Integer idRegra) {
        return ResponseEntity.ok(faixaPontuacaoRepository.findByRegraKpiIdRegra(idRegra));
    }

    @PutMapping("/faixas/{idFaixa}")
    public ResponseEntity<FaixaPontuacao> atualizarFaixa(@PathVariable Integer idFaixa, @RequestBody FaixaPontuacao atualizada) {
        return faixaPontuacaoRepository.findById(idFaixa).map(faixa -> {
            faixa.setValorMinimo(atualizada.getValorMinimo());
            faixa.setValorMaximo(atualizada.getValorMaximo());
            faixa.setPontosObtidos(atualizada.getPontosObtidos());
            FaixaPontuacao salva = faixaPontuacaoRepository.save(faixa);
            conversorPontuacaoService.recarregarRegras();
            return ResponseEntity.ok(salva);
        }).orElse(ResponseEntity.notFound().build());
    }

    @PostMapping("/{idRegra}/faixas")
    public ResponseEntity<FaixaPontuacao> adicionarFaixa(@PathVariable Integer idRegra, @RequestBody FaixaPontuacao novaFaixa) {
        return regraKpiRepository.findById(idRegra).map(regra -> {
            novaFaixa.setRegraKpi(regra);
            FaixaPontuacao salva = faixaPontuacaoRepository.save(novaFaixa);
            conversorPontuacaoService.recarregarRegras();
            return ResponseEntity.ok(salva);
        }).orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/faixas/{idFaixa}")
    public ResponseEntity<Void> deletarFaixa(@PathVariable Integer idFaixa) {
        if (faixaPontuacaoRepository.existsById(idFaixa)) {
            faixaPontuacaoRepository.deleteById(idFaixa);
            conversorPontuacaoService.recarregarRegras();
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.notFound().build();
    }
}
