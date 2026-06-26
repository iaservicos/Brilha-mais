package br.com.positivo.brilhamais.repositories;

import br.com.positivo.brilhamais.models.FotoPerfil;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface FotoPerfilRepository extends JpaRepository<FotoPerfil, Integer> {
    Optional<FotoPerfil> findByTecnicoMatricula(String matricula);
}
