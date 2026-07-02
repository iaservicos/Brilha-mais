package br.com.positivo.brilhamais.controllers;

import br.com.positivo.brilhamais.models.BaseAtp;
import br.com.positivo.brilhamais.repositories.BaseAtpRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/bases")
@RequiredArgsConstructor
public class BaseAtpController {

    private final BaseAtpRepository baseAtpRepository;

    @GetMapping
    public ResponseEntity<List<BaseAtp>> getAllBases() {
        return ResponseEntity.ok(baseAtpRepository.findAll());
    }
}
