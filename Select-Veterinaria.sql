--Select para visualizar el diagnostico de la mascota en la ultima cita
SELECT
    m.nombre AS nombre_mascota,
    m.fecha_nacimiento,
    v.nombre || ' ' || v.apellido AS veterinario,
    d.descripcion AS diagnostico,
    c.fecha AS fecha_consulta
FROM mascota m
INNER JOIN cita c
    ON m.id_mascota = c.id_mascota
INNER JOIN veterinario v
    ON c.id_veterinario = v.id_veterinario
INNER JOIN diagnostico d
    ON c.id_cita = d.id_cita
WHERE c.fecha BETWEEN '2026-06-01' AND '2026-06-30'
ORDER BY c.fecha DESC;


--Veterinarios con mayor numero de citas en el ultimo mes
SELECT
    v.nombre,
    v.apellido,
    COUNT(c.id_cita) AS total_consultas
FROM veterinario v
INNER JOIN cita c
    ON v.id_veterinario = c.id_veterinario
WHERE c.fecha BETWEEN '2026-06-01' AND '2026-06-30'
GROUP BY v.id_veterinario, v.nombre, v.apellido
ORDER BY total_consultas DESC
LIMIT 3;


--Cantidad de pacientes por cada especialidad
SELECT
    e.nombre_especialidad,
    SUM(f.total) AS ingresos_totales
FROM especialidad e
INNER JOIN veterinario v
    ON e.id_especialidad = v.id_especialidad
INNER JOIN cita c
    ON v.id_veterinario = c.id_veterinario
INNER JOIN factura f
    ON c.id_cita = f.id_cita
GROUP BY e.nombre_especialidad
ORDER BY ingresos_totales DESC;

--Medicamentos mas utilizados
SELECT
    m.nombre,
    COUNT(tm.id_medicamento) AS veces_utilizado
FROM medicamento m
INNER JOIN tratamiento_medicamento tm
    ON m.id_medicamento = tm.id_medicamento
GROUP BY m.id_medicamento, m.nombre
ORDER BY veces_utilizado DESC;

--Macotas que tienen alergias y a que medicamentos
SELECT
    m.nombre AS mascota,
    med.nombre AS medicamento
FROM mascota m
INNER JOIN alergia_mascota am
    ON m.id_mascota = am.id_mascota
INNER JOIN medicamento med
    ON am.id_medicamento = med.id_medicamento
ORDER BY mascota;

--Especialidad veterinaria que genera mas ingresos
SELECT
    e.nombre_especialidad,
    SUM(f.total) AS ingresos_totales
FROM especialidad e
INNER JOIN veterinario v
    ON e.id_especialidad = v.id_especialidad
INNER JOIN cita c
    ON v.id_veterinario = c.id_veterinario
INNER JOIN factura f
    ON c.id_cita = f.id_cita
GROUP BY e.nombre_especialidad
ORDER BY ingresos_totales DESC;

--Cantidad de mascotas atendidas por especie
SELECT
    e.nombre_especie,
    COUNT(m.id_mascota) AS cantidad_mascotas
FROM especie e
INNER JOIN mascota m
    ON e.id_especie = m.id_especie
GROUP BY e.nombre_especie
ORDER BY cantidad_mascotas DESC;

--Historial completo de atencion de cada mascota
SELECT
    m.nombre AS mascota,
    p.nombre AS propietario,
    p.apellido,
    e.nombre_especie,
    v.nombre AS veterinario,
    v.apellido AS apellido_veterinario,
    esp.nombre_especialidad,
    c.fecha,
    c.motivo,
    d.descripcion AS diagnostico,
    t.descripcion AS tratamiento,
    med.nombre AS medicamento,
    tm.dosis,
    tm.frecuencia
FROM mascota m
INNER JOIN propietario p
    ON m.id_propietario = p.id_propietario
INNER JOIN especie e
    ON m.id_especie = e.id_especie
INNER JOIN cita c
    ON m.id_mascota = c.id_mascota
INNER JOIN veterinario v
    ON c.id_veterinario = v.id_veterinario
INNER JOIN especialidad esp
    ON v.id_especialidad = esp.id_especialidad
INNER JOIN diagnostico d
    ON c.id_cita = d.id_cita
INNER JOIN tratamiento t
    ON d.id_diagnostico = t.id_diagnostico
INNER JOIN tratamiento_medicamento tm
    ON t.id_tratamiento = tm.id_tratamiento
INNER JOIN medicamento med
    ON tm.id_medicamento = med.id_medicamento
ORDER BY c.fecha;

--Ingresos generados por cada veterinario con detalle de pacientes atendidos y tratamientos realizados
SELECT
    v.nombre,
    v.apellido,
    esp.nombre_especialidad,
    COUNT(DISTINCT c.id_cita) AS consultas_realizadas,
    COUNT(DISTINCT m.id_mascota) AS mascotas_atendidas,
    COUNT(DISTINCT t.id_tratamiento) AS tratamientos_realizados,
    SUM(f.total) AS ingresos_generados
FROM veterinario v
INNER JOIN especialidad esp
    ON v.id_especialidad = esp.id_especialidad
INNER JOIN cita c
    ON v.id_veterinario = c.id_veterinario
INNER JOIN mascota m
    ON c.id_mascota = m.id_mascota
INNER JOIN diagnostico d
    ON c.id_cita = d.id_cita
INNER JOIN tratamiento t
    ON d.id_diagnostico = t.id_diagnostico
INNER JOIN factura f
    ON c.id_cita = f.id_cita
GROUP BY
    v.id_veterinario,
    v.nombre,
    v.apellido,
    esp.nombre_especialidad
ORDER BY ingresos_generados DESC;

--Enfermedades mas atendidas en el ultimo mes y en que especie
SELECT
    d.descripcion AS enfermedad,
    e.nombre_especie,
    COUNT(*) AS cantidad_casos
FROM diagnostico d
INNER JOIN cita c
    ON d.id_cita = c.id_cita
INNER JOIN mascota m
    ON c.id_mascota = m.id_mascota
INNER JOIN especie e
    ON m.id_especie = e.id_especie
WHERE c.fecha BETWEEN '2026-06-01' AND '2026-06-30'
GROUP BY d.descripcion, e.nombre_especie
ORDER BY cantidad_casos DESC;
