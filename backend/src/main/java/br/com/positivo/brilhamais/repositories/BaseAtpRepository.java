package br.com.positivo.brilhamais.repositories;

import br.com.positivo.brilhamais.models.BaseAtp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BaseAtpRepository extends JpaRepository<BaseAtp, String> {
}
