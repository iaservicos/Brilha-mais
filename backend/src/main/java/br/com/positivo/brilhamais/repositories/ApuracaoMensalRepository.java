package br.com.positivo.brilhamais.repositories;

import br.com.positivo.brilhamais.models.ApuracaoMensal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public interface ApuracaoMensalRepository extends JpaRepository<ApuracaoMensal, Integer> {
    Optional<ApuracaoMensal> findFirstByTecnicoIdTecnicoAndMesAno(Integer idTecnico, LocalDate mesAno);
    
    List<ApuracaoMensal> findByTecnicoIdTecnicoAndMesAnoBetween(Integer idTecnico, LocalDate dataInicio, LocalDate dataFim);
    
    @Query("SELECT a FROM ApuracaoMensal a JOIN FETCH a.tecnico t LEFT JOIN FETCH t.ctBases WHERE a.mesAno = :mesAno ORDER BY a.pontuacaoTotal DESC")
    List<ApuracaoMensal> findRankingByMesAno(LocalDate mesAno);
    
    @Query("SELECT a FROM ApuracaoMensal a JOIN FETCH a.tecnico t LEFT JOIN FETCH t.ctBases WHERE a.tecnico.idTecnico = :idTecnico ORDER BY a.mesAno ASC")
    List<ApuracaoMensal> findHistoricoByTecnicoId(Integer idTecnico);

    @Query("SELECT a FROM ApuracaoMensal a JOIN FETCH a.tecnico t LEFT JOIN FETCH t.ctBases WHERE t.idTecnico IN :ids ORDER BY a.mesAno ASC")
    List<ApuracaoMensal> findHistoricoByTecnicoIds(@org.springframework.data.repository.query.Param("ids") List<Integer> ids);

    @Query("SELECT a FROM ApuracaoMensal a JOIN FETCH a.tecnico t LEFT JOIN FETCH t.ctBases WHERE t.idTecnico IN :ids AND a.mesAno BETWEEN :dataInicio AND :dataFim ORDER BY a.mesAno ASC")
    List<ApuracaoMensal> findHistoricoByTecnicoIdsAndDataRange(
        @org.springframework.data.repository.query.Param("ids") List<Integer> ids,
        @org.springframework.data.repository.query.Param("dataInicio") LocalDate dataInicio,
        @org.springframework.data.repository.query.Param("dataFim") LocalDate dataFim
    );

    @Query("SELECT MAX(a.mesAno) FROM ApuracaoMensal a")
    Optional<LocalDate> findMaxMesAno();
}
