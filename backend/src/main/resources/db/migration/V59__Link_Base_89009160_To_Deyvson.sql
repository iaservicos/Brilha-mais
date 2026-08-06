-- Migration V59: Link ATP 89009160 (POSITIVO RN) to Supervisor Deyvson (ID=5) and FIELD RN technicians
UPDATE tb_base_atp 
SET id_supervisor = (SELECT id_supervisor FROM tb_supervisor WHERE nome_completo ILIKE '%Deyvson%' LIMIT 1)
WHERE ct_codigo = '89009160';

INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo)
SELECT id_tecnico, '89009160'
FROM tb_tecnico 
WHERE id_supervisor = (SELECT id_supervisor FROM tb_supervisor WHERE nome_completo ILIKE '%Deyvson%' LIMIT 1)
  AND (cargo ILIKE '%RN%' OR nome_completo ILIKE '%LUIZ CLAUDIO%' OR nome_completo ILIKE '%MUNIZ%' OR nome_completo ILIKE '%JOÃO GABRIEL%')
ON CONFLICT DO NOTHING;
