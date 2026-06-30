package br.com.positivo.brilhamais.models;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "tb_chamado")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Chamado {

    @Id
    @Column(name = "numero_chamado")
    private Long numeroChamado;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_tecnico")
    private Tecnico tecnico;

    @Column(name = "projeto")
    private String projeto;

    @Column(name = "data_abertura")
    private LocalDateTime dataFt;

    @Column(name = "status_sla")
    private String statusSla;

    @Column(name = "equipamento")
    private String equipamento;

    @Column(name = "material_descricao")
    private String materialDescricao;

    @Column(name = "comercial")
    private String comercial;

    @Column(name = "ct_base")
    private String ctBase;

    @Transient
    private String assistenciaNome;

    @Transient
    private String tecnicoNome;

    @Column(name = "classificacao_chamado")
    private String classificacaoChamado;

    @Column(name = "texto_encerrado")
    private String textoEncerrado;

    @Column(name = "reincidente")
    private String reincidente;
}
