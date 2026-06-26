package br.com.positivo.brilhamais.repositories;

import br.com.positivo.brilhamais.models.Chamado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface ChamadoRepository extends JpaRepository<Chamado, Long> {
    
    // Busca todos os chamados finalizados do técnico, utilizando a matrícula
    List<Chamado> findAllByTecnicoMatriculaAndDataFtIsNotNullOrderByDataFtDesc(String matricula);

    @Query("SELECT c FROM Chamado c WHERE c.tecnico.idTecnico IN :ids AND c.dataFt IS NOT NULL AND c.dataFt >= :dataInicio AND c.dataFt <= :dataFim ORDER BY c.dataFt DESC")
    List<Chamado> findChamadosRecentesPorTecnicos(List<Integer> ids, LocalDateTime dataInicio, LocalDateTime dataFim);
}
