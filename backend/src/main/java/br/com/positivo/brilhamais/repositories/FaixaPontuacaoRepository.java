package br.com.positivo.brilhamais.repositories;

import br.com.positivo.brilhamais.models.FaixaPontuacao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FaixaPontuacaoRepository extends JpaRepository<FaixaPontuacao, Integer> {
    List<FaixaPontuacao> findByRegraKpiIdRegra(Integer idRegra);
}
