package br.com.positivo.brilhamais.controllers;

import br.com.positivo.brilhamais.models.Tecnico;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import br.com.positivo.brilhamais.dto.ResetSenhaRequest;

import java.util.List;

@RestController
@RequestMapping("/api/v1/tecnicos")
@RequiredArgsConstructor
public class TecnicoController {

    private final TecnicoRepository tecnicoRepository;
    private final PasswordEncoder passwordEncoder;

    @GetMapping
    public ResponseEntity<List<Tecnico>> getAllTecnicos() {
        return ResponseEntity.ok(tecnicoRepository.findAll());
    }

    @PostMapping
    public ResponseEntity<Tecnico> createTecnico(@RequestBody Tecnico tecnico) {
        tecnico.setIdTecnico(null); // Ensure it's a new record
        tecnico.setIsPrimeiroAcesso(true);
        if (tecnico.getSenha() != null && !tecnico.getSenha().isEmpty()) {
            tecnico.setSenha(passwordEncoder.encode(tecnico.getSenha()));
        }
        return ResponseEntity.ok(tecnicoRepository.save(tecnico));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Tecnico> updateTecnico(@PathVariable Integer id, @RequestBody Tecnico update) {
        return tecnicoRepository.findById(id).map(tecnico -> {
            if (update.getNomeCompleto() != null) tecnico.setNomeCompleto(update.getNomeCompleto());
            if (update.getMatricula() != null) tecnico.setMatricula(update.getMatricula());
            if (update.getCpf() != null) tecnico.setCpf(update.getCpf());
            if (update.getCtBase() != null) tecnico.setCtBase(update.getCtBase());
            if (update.getCargo() != null) tecnico.setCargo(update.getCargo());
            if (update.getRole() != null) tecnico.setRole(update.getRole());
            if (update.getAtivo() != null) tecnico.setAtivo(update.getAtivo());
            // We intentionally do not update the password here, only via PATCH
            return ResponseEntity.ok(tecnicoRepository.save(tecnico));
        }).orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTecnico(@PathVariable Integer id) {
        if (!tecnicoRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        tecnicoRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    @PatchMapping("/{id}/senha")
    public ResponseEntity<Void> resetSenha(@PathVariable Integer id, @RequestBody ResetSenhaRequest request) {
        return tecnicoRepository.findById(id).map(tecnico -> {
            tecnico.setSenha(passwordEncoder.encode(request.getNovaSenha()));
            tecnico.setIsPrimeiroAcesso(true); // Opcional: forçar troca no proximo login
            tecnicoRepository.save(tecnico);
            return ResponseEntity.ok().<Void>build();
        }).orElse(ResponseEntity.notFound().build());
    }
}
