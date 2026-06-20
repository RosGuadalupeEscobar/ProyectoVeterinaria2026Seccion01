-- POBLANDO: propietario (15 registros)
INSERT INTO propietario (nombre, apellido, telefono, email, direccion) VALUES
('Carlos', 'Mendoza', '7890-1234', 'carlos.mendoza@email.com', 'Colonia Escalón, San Salvador'),
('Ana', 'Rodríguez', '7123-4567', 'ana.rod@email.com', 'Santa Tecla, La Libertad'),
('Luis', 'Martínez', '6012-3456', 'luis.mtz@email.com', 'Antiguo Cuscatlán'),
('Sofía', 'Gómez', '7555-8899', 'sofia.gomez@email.com', 'Residencial San Gabriel, Nejapa'),
('Diego', 'Arévalo', '7410-8520', 'diego.arevalo@email.com', 'Lomas de San Francisco'),
('María', 'Hernández', '6321-9876', 'mariahdez@email.com', 'Soyapango, San Salvador'),
('Gerson', 'Montes', '7020-3040', 'gerson.montes@email.com', 'Ciudad Merliot'),
('Orlando', 'Cárcamo', '7988-7766', 'orlando.carcamo@email.com', 'San Miguel'),
('Laura', 'Vásquez', '6111-2222', 'laura.v@email.com', 'Colonia San Benito'),
('Rodrigo', 'Villeda', '7245-9182', 'rodrigo.villeda@email.com', 'Santa Ana'),
('Elena', 'Flores', '7089-1122', 'elena.flores@email.com', 'Ilopango'),
('José', 'Luis', '6450-3322', 'jose.luis@email.com', 'Mejicanos'),
('Gabriela', 'Pineda', '7733-4455', 'gaby.pineda@email.com', 'La Libertad'),
('Roberto', 'Jiménez', '6120-9514', 'roberto.j@email.com', 'San Salvador Centro'),
('Beatriz', 'Castro', '7590-1144', 'bcastro@email.com', 'Nuevo Cuscatlán');

-- POBLANDO: especie (10 registros)
INSERT INTO especie (nombre_especie, descripcion) VALUES
('Perro', 'Canis lupus familiaris - Mamífero cuadrúpedo doméstico'),
('Gato', 'Felis catus - Felino doméstico ágil y carnívoro'),
('Loro', 'Aves psitaciformes - Aves exóticas con capacidad de imitar sonidos'),
('Conejo', 'Oryctolagus cuniculus - Pequeño mamífero lagomorfo herbívoro'),
('Hámster', 'Cricetinae - Pequeño roedor doméstico muy activo'),
('Tortuga', 'Testudines - Reptil con caparazón rígido tanto terrestre como acuático'),
('Iguana', 'Iguana iguana - Reptil herbívoro de sangre fría'),
('Hurón', 'Mustela putorius furo - Mamífero carnívoro domesticado alargado'),
('Cobaya', 'Cavia porcellus - Roedor herbívoro también conocido como conejillo de Indias'),
('Canario', 'Serinus canaria - Ave de jaula pequeña conocida por su canto');

-- POBLANDO: especialidad (6 registros)
INSERT INTO especialidad (nombre_especialidad) VALUES
('Medicina General Veterinaria'),
('Cirugía de Pequeñas Especies'),
('Dermatología Veterinaria'),
('Cardiología y Neumología'),
('Traumatología y Ortopedia'),
('Animales Exóticos y Silvestres');

-- POBLANDO: medicamento (15 registros)
INSERT INTO medicamento (nombre, presentacion, precio_unitario) VALUES
('Amoxicilina 250mg', 'Frasco de Suspensión Oral 60ml', 8.50),
('Meloxicam 2mg', 'Blister de 10 Tabletas', 5.25),
('Apoquel 5.4mg', 'Caja de 20 Tabletas (Antipruriginoso)', 45.00),
('Bravecto Perros Medianos', '1 Tableta Masticable', 32.00),
('Ivermectina 1%', 'Frasco Ampolla Inyectable 50ml', 12.50),
('Frontline Spray', 'Frasco Pulverizador 100ml', 22.00),
('Tramadol Drop Vet', 'Frasco Gotero 10ml', 7.75),
('Cefalexina 500mg', 'Caja de 14 Cápsulas', 11.20),
('Prednisolona 10mg', 'Blister de 10 Comprimidos', 4.10),
('Metronidazol Liofilizado', 'Bolsa Inyectable 100ml', 6.50),
('NexGard Spectra', 'Caja de 3 Tabletas Masticables', 38.50),
('Enrofloxacina 5%', 'Frasco Inyectable 20ml', 9.80),
('Furosemida 40mg', 'Caja de 20 Tabletas', 3.50),
('Suero Ringer Lactato', 'Bolsa para Infusión Intravenosa 500ml', 4.00),
('Shampoo Ketoconazol Clorhexidina', 'Frasco de 250ml (Antifúngico)', 15.50);

-- POBLANDO: mascota (20 registros asociados a los propietarios y especies anteriores)
INSERT INTO mascota (nombre, fecha_nacimiento, sexo, id_propietario, id_especie) VALUES
('Max', '2021-03-15', 'Macho', 1, 1),
('Luna', '2022-06-20', 'Hembra', 1, 2),
('Rocky', '2020-01-10', 'Macho', 2, 1),
('Bella', '2023-08-05', 'Hembra', 3, 2),
('Coco', '2024-02-12', 'Macho', 4, 4),
('Zeus', '2019-11-25', 'Macho', 5, 1),
('Mía', '2022-11-01', 'Hembra', 5, 2),
('Toby', '2021-05-18', 'Macho', 6, 1),
('Nala', '2023-04-30', 'Hembra', 7, 2),
('Pancho', '2025-01-05', 'Macho', 8, 3),
('Simba', '2020-07-22', 'Macho', 9, 2),
('Lola', '2022-09-14', 'Hembra', 10, 1),
('Bruno', '2018-05-30', 'Macho', 11, 1),
('Kiwi', '2024-06-11', 'Hembra', 12, 5),
('Thor', '2021-12-05', 'Macho', 13, 1),
('Chloe', '2023-01-20', 'Hembra', 14, 2),
('Rambo', '2022-02-28', 'Macho', 15, 8),
('Pepe', '2023-10-10', 'Macho', 4, 6),
('Kira', '2021-08-19', 'Hembra', 6, 1),
('Pelusa', '2024-05-04', 'Hembra', 2, 9);

-- POBLANDO: veterinario (6 registros, uno por especialidad)
INSERT INTO veterinario (nombre, apellido, licencia, id_especialidad) VALUES
('Roberto', 'Guzmán', 'VET-2015-084', 1),
('Elena', 'Villalta', 'VET-2018-312', 2),
('Carlos', 'Flores', 'VET-2010-005', 3),
('Sandra', 'Peña', 'VET-2021-945', 4),
('Mauricio', 'Orellana', 'VET-2013-118', 5),
('Tatiana', 'Zelaya', 'VET-2022-047', 6);

-- POBLANDO: alergia_mascota (5 registros cruzados)
INSERT INTO alergia_mascota (id_mascota, id_medicamento) VALUES
(1, 1),  -- Max es alérgico a la Amoxicilina
(3, 5),  -- Rocky es alérgico a la Ivermectina
(7, 8),  -- Mía es alérgica a la Cefalexina
(12, 1), -- Lola es alérgica a la Amoxicilina
(15, 12); -- Thor es alérgico a la Enrofloxacina

-- POBLANDO: cita (20 registros en distintas fechas y horas)
INSERT INTO cita (fecha, hora, motivo, id_veterinario, id_mascota) VALUES
('2026-05-01', '09:00:00', 'Chequeo general de rutina y vacunas', 1, 1),
('2026-05-02', '10:30:00', 'Gato no quiere comer y tiene letargo', 1, 2),
('2026-05-02', '14:00:00', 'Cojera severa en pata trasera derecha', 5, 3),
('2026-05-05', '08:15:00', 'Erupciones cutáneas y rascado excesivo', 3, 4),
('2026-05-10', '11:00:00', 'Crecimiento anormal de dientes incisivos', 6, 5),
('2026-05-12', '15:30:00', 'Tos persistente y cansancio rápido', 4, 6),
('2026-05-15', '09:45:00', 'Esterilización programada', 2, 7),
('2026-05-20', '16:00:00', 'Corte profundo por pelea en la calle', 2, 8),
('2026-05-22', '10:00:00', 'Pérdida de plumaje e inactividad', 6, 10),
('2026-05-25', '11:30:00', 'Control post-operatorio de suturas', 2, 8),
('2026-05-28', '14:15:00', 'Otitis externa aparente, sacude la cabeza', 1, 12),
('2026-06-01', '08:30:00', 'Limpieza dental profunda', 1, 13),
('2026-06-03', '13:00:00', 'No puede defecar, se queja de dolor', 1, 14),
('2026-06-05', '10:15:00', 'Sospecha de parásitos digestivos', 1, 15),
('2026-06-10', '15:00:00', 'Vacunación anual y desparasitación', 1, 16),
('2026-06-12', '09:00:00', 'Caída desde un estante, dolor al tocarlo', 5, 17),
('2026-06-15', '11:15:00', 'Caparazón agrietado levemente por caída', 6, 18),
('2026-06-16', '16:30:00', 'Alergia alimentaria aparente', 3, 19),
('2026-06-18', '10:00:00', 'Control de peso y dieta especializada', 1, 20),
('2026-06-19', '14:00:00', 'Urgencia por vómitos y diarrea líquida', 1, 1);

-- POBLANDO: factura (20 registros asociados 1 a 1 con las citas)
INSERT INTO factura (fecha_emision, total, estado, id_cita) VALUES
('2026-05-01', 25.00, 'Pagada', 1),
('2026-05-02', 35.50, 'Pagada', 2),
('2026-05-02', 85.00, 'Pagada', 3),
('2026-05-05', 60.00, 'Pagada', 4),
('2026-05-10', 20.00, 'Pagada', 5),
('2026-05-12', 120.00, 'Pendiente', 6),
('2026-05-15', 150.00, 'Pagada', 7),
('2026-05-20', 95.00, 'Pagada', 8),
('2026-05-22', 25.00, 'Anulada', 9),
('2026-05-25', 15.00, 'Pagada', 10),
('2026-05-28', 30.00, 'Pagada', 11),
('2026-06-01', 75.00, 'Pagada', 12),
('2026-06-03', 42.00, 'Pagada', 13),
('2026-06-05', 28.50, 'Pagada', 14),
('2026-06-10', 45.00, 'Pagada', 15),
('2026-06-12', 110.00, 'Pendiente', 16),
('2026-06-15', 55.00, 'Pagada', 17),
('2026-06-16', 40.00, 'Pagada', 18),
('2026-06-18', 15.00, 'Pagada', 19),
('2026-06-19', 65.00, 'Pendiente', 20);

-- POBLANDO: diagnostico (15 registros para las citas que requirieron evaluación clínica)
INSERT INTO diagnostico (descripcion, fecha, id_cita) VALUES
('Sano. Se aplican refuerzos de vacuna óctuple.', '2026-05-01', 1),
('Deshidratación moderada debido a una gastroenteritis infecciosa leve.', '2026-05-02', 2),
('Esguince de segundo grado en la articulación del tarso.', '2026-05-02', 3),
('Dermatitis alérgica por picadura de pulga (DAPP).', '2026-05-05', 4),
('Maloclusión dental severa que impide la alimentación correcta.', '2026-05-10', 5),
('Sopló cardíaco grado III compatible con insuficiencia mitral.', '2026-05-12', 6),
('Cirugía electiva exitosa de ovariohisterectomía sin complicaciones.', '2026-05-15', 7),
('Herida lacerante subcutánea que requiere sutura de 5 puntos.', '2026-05-20', 8),
('Otitis eritemato-ceruminosa bacteriana bilateral.', '2026-05-28', 11),
('Estomatitis y acumulación severa de sarro dental de grado II.', '2026-06-01', 12),
('Constipación intestinal por ingesta excesiva de pelo (tricobezoar).', '2026-06-03', 13),
('Parasitismo gastrointestinal severo por Toxocara canis.', '2026-06-05', 14),
('Fractura incompleta (fisura) en el radio izquierdo.', '2026-06-12', 16),
('Trauma caparazón superficial, sin compromiso de órganos internos.', '2026-06-15', 17),
('Intoxicación alimentaria aguda por ingesta de residuos grasos.', '2026-06-19', 20);

-- POBLANDO: tratamiento (15 registros encadenados a los diagnósticos)
INSERT INTO tratamiento (descripcion, id_diagnostico) VALUES
('Reposo absoluto durante 3 días y monitoreo de temperatura post-vacunal.', 1),
('Fluido-terapia intravenosa combinada con antibiótico e inhibidor de vómito.', 2),
('Inmovilización con vendaje compresivo elástico y analgésicos.', 3),
('Control de pulgas inmediato, baño medicado y manejo de la picazón.', 4),
('Limado y corte dental bajo sedación corta.', 5),
('Tratamiento diario crónico con diuréticos y vasodilatadores.', 6),
('Cuidados post-operatorios: uso de collar isabelino y limpieza de herida.', 7),
('Antibioticoterapia profiláctica y curaciones diarias con antiséptico.', 8),
('Limpieza del canal auditivo y aplicación de gotas óticas diarias.', 9),
('Profilaxis dental con ultrasonido y posterior pulido.', 10),
('Administración de laxante de uso veterinario y dieta blanda húmeda.', 11),
('Desparasitación oral inmediata con dosis de refuerzo en 15 días.', 12),
('Inmovilización estricta con férula durante 21 días.', 13),
('Desinfección de fisura y sellado protector tópico.', 14),
('Lavado gástrico controlado, carbón activado y protectores de mucosa.', 15);

-- POBLANDO: tratamiento_medicamento (18 registros que unen tratamientos con medicamentos específicos)
INSERT INTO tratamiento_medicamento (dosis, frecuencia, id_tratamiento, id_medicamento) VALUES
('5 ml', 'Cada 12 horas por 7 días', 2, 1),   -- Gastroenteritis -> Amoxicilina
('100 ml/h', 'Continuo por 4 horas', 2, 14), -- Gastroenteritis -> Suero
('0.5 Tableta', 'Cada 24 horas por 5 días', 3, 2), -- Esguince -> Meloxicam
('1 Tableta', 'Cada 24 horas por 14 días', 4, 3), -- Dermatitis -> Apoquel
('1 Aplicación', 'Día 1 y repetición al mes', 4, 6), -- Dermatitis -> Frontline
('0.25 Tableta', 'Cada 12 horas permanentemente', 6, 13), -- Insuficiencia -> Furosemida
('0.5 Tableta', 'Cada 12 horas por 5 días', 7, 7), -- Post-Sutura -> Tramadol
('1 Tableta', 'Cada 12 horas por 7 días', 8, 8),   -- Herida abierta -> Cefalexina
('2 gotas por oído', 'Cada 12 horas por 10 días', 9, 12), -- Otitis -> Enrofloxacina
('Baño completo', 'Cada 3 días por 2 semanas', 4, 15), -- Dermatitis -> Shampoo Ketoconazol
('1 tableta', 'Dosis única', 12, 11), -- Parásitos -> NexGard Spectra
('1.5 tabletas', 'Cada 24 horas por 4 días', 13, 2), -- Fractura -> Meloxicam
('2.5 ml', 'Cada 12 horas por 3 días', 15, 7), -- Intoxicación -> Tramadol
('200 ml', 'Infusión intravenosa lenta', 15, 14), -- Intoxicación -> Suero
('1 ml', 'Cada 12 horas por 6 días', 11, 7), -- Constipación -> Tramadol (Dolor)
('0.5 comprimido', 'Cada 24 horas por 4 días', 8, 9), -- Herida -> Prednisolona
('1 Tableta', 'Dosis única', 1, 4), -- Control de pulgas preventivo -> Bravecto
('2.5 ml', 'Cada 8 horas por 5 días', 15, 10); -- Intoxicación -> Metronidazol
