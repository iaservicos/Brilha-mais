package br.com.positivo.brilhamais.controllers;

import br.com.positivo.brilhamais.models.Supervisor;
import br.com.positivo.brilhamais.repositories.SupervisorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/supervisores")
@RequiredArgsConstructor
public class SupervisorController {

    private final SupervisorRepository supervisorRepository;

    @GetMapping
    public ResponseEntity<List<Supervisor>> getAllSupervisores() {
        return ResponseEntity.ok(supervisorRepository.findAll());
    }
}
