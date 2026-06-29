-- =================================================================================
-- V32: CREATE TABLE TB_FOTO_PERFIL
-- =================================================================================

CREATE TABLE tb_foto_perfil (
    id_foto SERIAL PRIMARY KEY,
    id_tecnico INTEGER NOT NULL UNIQUE,
    foto_base64 TEXT NOT NULL,
    CONSTRAINT tb_foto_perfil_id_tecnico_fkey FOREIGN KEY (id_tecnico)
        REFERENCES tb_tecnico (id_tecnico) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);
