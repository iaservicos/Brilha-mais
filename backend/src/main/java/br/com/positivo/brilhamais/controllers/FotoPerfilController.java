package br.com.positivo.brilhamais.controllers;

import br.com.positivo.brilhamais.services.FotoPerfilService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/v1/foto-perfil")
@RequiredArgsConstructor
public class FotoPerfilController {

    private final FotoPerfilService fotoPerfilService;

    @GetMapping("/{matricula}")
    public ResponseEntity<?> getFoto(@PathVariable String matricula) {
        String base64 = fotoPerfilService.buscarFoto(matricula);
        return ResponseEntity.ok(Map.of("foto", base64 != null ? base64 : ""));
    }

    @PutMapping("/{matricula}")
    public ResponseEntity<?> updateFoto(@PathVariable String matricula, @RequestBody Map<String, String> body) {
        String base64 = body.get("foto");
        if (base64 == null) {
            return ResponseEntity.badRequest().body("Campo 'foto' é obrigatório.");
        }
        fotoPerfilService.salvarFoto(matricula, base64);
        return ResponseEntity.ok(Map.of("message", "Foto salva com sucesso."));
    }
}
