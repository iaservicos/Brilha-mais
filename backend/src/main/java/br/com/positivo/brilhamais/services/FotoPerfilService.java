package br.com.positivo.brilhamais.services;

import br.com.positivo.brilhamais.models.FotoPerfil;
import br.com.positivo.brilhamais.models.Tecnico;
import br.com.positivo.brilhamais.repositories.FotoPerfilRepository;
import br.com.positivo.brilhamais.repositories.TecnicoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class FotoPerfilService {

    private final FotoPerfilRepository fotoPerfilRepository;
    private final TecnicoRepository tecnicoRepository;

    public void salvarFoto(String matricula, String base64) {
        Tecnico tecnico = tecnicoRepository.findByMatricula(matricula)
                .orElseThrow(() -> new RuntimeException("Técnico não encontrado: " + matricula));

        FotoPerfil fotoPerfil = fotoPerfilRepository.findByTecnicoMatricula(matricula)
                .orElse(FotoPerfil.builder().tecnico(tecnico).build());

        fotoPerfil.setFotoBase64(base64);
        fotoPerfilRepository.save(fotoPerfil);
    }

    public String buscarFoto(String matricula) {
        return fotoPerfilRepository.findByTecnicoMatricula(matricula)
                .map(FotoPerfil::getFotoBase64)
                .orElse(null);
    }
}
