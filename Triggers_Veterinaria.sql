--Trigger 1

CREATE OR REPLACE FUNCTION verificar_alergia_medicamento()
RETURNS TRIGGER AS $$
DECLARE
    v_id_mascota INT;
    v_nombre_mascota VARCHAR(50);
    v_nombre_medicamento VARCHAR(100);
    v_es_alergico INT;
BEGIN
    -- 1. Obtener el id_mascota a través de la relación de tablas desde el tratamiento
    SELECT c.id_mascota, m.nombre INTO v_id_mascota, v_nombre_mascota
    FROM tratamiento t
    JOIN diagnostico d ON t.id_diagnostico = d.id_diagnostico
    JOIN cita c ON d.id_cita = c.id_cita
    JOIN mascota m ON c.id_mascota = m.id_mascota
    WHERE t.id_tratamiento = NEW.id_tratamiento;

    -- 2. Verificar si la mascota tiene registrada una alergia a este medicamento
    SELECT COUNT(*), (SELECT nombre FROM medicamento WHERE id_medicamento = NEW.id_medicamento)
    INTO v_es_alergico, v_nombre_medicamento
    FROM alergia_mascota
    WHERE id_mascota = v_id_mascota AND id_medicamento = NEW.id_medicamento;

    -- 3. Si se encuentra coincidencia, lanzar una excepción y abortar la operación
    IF v_es_alergico > 0 THEN
        RAISE EXCEPTION 'ALERTA CRÍTICA: No se puede recetar % a la mascota %. Tiene una alergia registrada para este medicamento.', 
            v_nombre_medicamento, v_nombre_mascota;
    END IF;

    -- Si no hay alergias, permitir la inserción normal
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_verificar_alergia_antes_recetar
BEFORE INSERT OR UPDATE ON tratamiento_medicamento
FOR EACH ROW
EXECUTE FUNCTION verificar_alergia_medicamento();

-- Esto lanzará el error personalizado y bloqueará el INSERT
INSERT INTO tratamiento_medicamento (dosis, frecuencia, id_tratamiento, id_medicamento) 
VALUES ('5 ml', 'Cada 8 horas por 7 días', 15, 1);

-- Esto se ejecutará sin problemas
INSERT INTO tratamiento_medicamento (dosis, frecuencia, id_tratamiento, id_medicamento) 
VALUES ('0.5 Tableta', 'Cada 24 horas por 3 días', 15, 2);

--Trigger 2
CREATE OR REPLACE FUNCTION verificar_disponibilidad_veterinario()
RETURNS TRIGGER AS $$
DECLARE
    v_citas_coincidentes INT;
BEGIN
    -- Contar si el veterinario ya tiene una cita ese mismo día y hora
    SELECT COUNT(*) INTO v_citas_coincidentes
    FROM cita
    WHERE id_veterinario = NEW.id_veterinario 
      AND fecha = NEW.fecha 
      AND hora = NEW.hora;

    IF v_citas_coincidentes > 0 THEN
        RAISE EXCEPTION 'CONFLICTO DE HORARIO: El veterinario asignado ya tiene una cita programada para el % a las %.', 
            NEW.fecha, NEW.hora;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_verificar_horario_veterinario
BEFORE INSERT OR UPDATE ON cita
FOR EACH ROW
EXECUTE FUNCTION verificar_disponibilidad_veterinario();

-- Cita exitosa (La primera del día para ella)
INSERT INTO cita (fecha, hora, motivo, id_veterinario, id_mascota) 
VALUES ('2026-07-01', '09:00:00', 'Revisión de heridas', 2, 1);

-- Intento de duplicar el horario con otra mascota (Debe fallar)
INSERT INTO cita (fecha, hora, motivo, id_veterinario, id_mascota) 
VALUES ('2026-07-01', '09:00:00', 'Vacunación', 2, 2);

--Trigger 3
CREATE OR REPLACE FUNCTION generar_factura_automatica()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO factura (fecha_emision, total, estado, id_cita)
    VALUES (NEW.fecha, 25.00, 'Pendiente', NEW.id_cita);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_crear_factura_cita
AFTER INSERT ON cita
FOR EACH ROW
EXECUTE FUNCTION generar_factura_automatica();

-- Insertamos solo la cita
INSERT INTO cita (fecha, hora, motivo, id_veterinario, id_mascota) 
VALUES ('2026-07-05', '10:00:00', 'Chequeo rápido', 1, 3);

-- Consultamos la tabla factura para ver si el trigger hizo la magia
SELECT * FROM factura WHERE fecha_emision = '2026-07-05';