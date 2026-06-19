INSERT INTO especialidad (nombre_especialidad) VALUES 
('Neurología'), ('Oncología'), ('Odontología'), ('Nutrición'), ('Comportamiento'), 
('Anestesiología'), ('Radiología'), ('Fisioterapia'), ('Exóticos'), ('Urología');

INSERT INTO veterinario (nombre, apellido, licencia, id_especialidad) VALUES 
('Pedro', 'García', 'VET-006', 6), ('Marta', 'Ruiz', 'VET-007', 7), ('Jorge', 'Vega', 'VET-008', 8),
('Lucía', 'Paz', 'VET-009', 9), ('Raúl', 'Sosa', 'VET-010', 10), ('Clara', 'Mendez', 'VET-011', 1),
('Hugo', 'Ramos', 'VET-012', 2), ('Sara', 'Cruz', 'VET-013', 3), ('David', 'Lira', 'VET-014', 4),
('Eva', 'Luna', 'VET-015', 5);

-- Diagnósticos
INSERT INTO diagnostico (descripcion, fecha, id_cita) VALUES 
('Chequeo general', '2026-06-18', 1), ('Vacuna al día', '2026-06-18', 2), ('Dermatitis tratada', '2026-06-19', 3),
('Dolor articular', '2026-06-19', 4), ('Control peso', '2026-06-20', 5), ('Cirugía exitosa', '2026-06-20', 6),
('Chequeo dental', '2026-06-21', 7), ('Monitoreo cardíaco', '2026-06-21', 8), ('Revisión ocular', '2026-06-22', 9),
('Refuerzo vacuna', '2026-06-22', 10), ('Alergia alimentaria', '2026-06-23', 11), ('Chequeo nutricional', '2026-06-23', 12),
('Fisioterapia inicial', '2026-06-24', 13), ('Control post-operatorio', '2026-06-24', 14), ('Vacuna antirrábica', '2026-06-25', 15);

-- Facturas
INSERT INTO factura (fecha_emision, total, estado, id_cita) VALUES 
('2026-06-18', 25.00, 'Pagada', 1), ('2026-06-18', 15.00, 'Pagada', 2), ('2026-06-19', 30.00, 'Pagada', 3),
('2026-06-19', 40.00, 'Pendiente', 4), ('2026-06-20', 20.00, 'Pagada', 5), ('2026-06-20', 150.00, 'Pendiente', 6),
('2026-06-21', 35.00, 'Pagada', 7), ('2026-06-21', 60.00, 'Pagada', 8), ('2026-06-22', 45.00, 'Pagada', 9),
('2026-06-22', 20.00, 'Pagada', 10), ('2026-06-23', 55.00, 'Pendiente', 11), ('2026-06-23', 30.00, 'Pagada', 12),
('2026-06-24', 50.00, 'Pagada', 13), ('2026-06-24', 80.00, 'Pagada', 14), ('2026-06-25', 20.00, 'Pagada', 15);

-- Tratamientos
INSERT INTO tratamiento (descripcion, id_diagnostico) VALUES 
('Antibióticos', 1), ('Observación', 2), ('Pomada tópica', 3), ('Analgésicos', 4), ('Dieta estricta', 5),
('Vendaje', 6), ('Limpieza dental', 7), ('Medicamento corazón', 8), ('Gotas oftálmicas', 9), ('Observación', 10),
('Dieta hipoalergénica', 11), ('Suplementos', 12), ('Ejercicios', 13), ('Reposo', 14), ('Observación', 15);

INSERT INTO tratamiento_medicamento (dosis, frecuencia, id_tratamiento, id_medicamento) VALUES 
('1 pastilla', '8h', 1, 1), ('2 gotas', '12h', 2, 2), ('Aplicar fina capa', '24h', 3, 6),
('1 pastilla', '12h', 4, 3), ('1 vez al día', 'diario', 5, 5), ('Cambiar cada 3 días', '72h', 6, 7),
('Limpieza profunda', 'única', 7, 8), ('1 pastilla', '12h', 8, 12), ('1 gota', '8h', 9, 13),
('2 gotas', '12h', 10, 2), ('1 porción', 'diario', 11, 9), ('1 medida', '8h', 12, 11),
('15 minutos', 'diario', 13, 14), ('Reposo total', 'N/A', 14, 15), ('Ninguna', 'N/A', 15, 4);

INSERT INTO alergia_mascota (id_mascota, id_medicamento) VALUES 
(1, 2), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (7, 8), (8, 9), (9, 10), (10, 11), (11, 12), (12, 13), (13, 14), (14, 15), (15, 1);