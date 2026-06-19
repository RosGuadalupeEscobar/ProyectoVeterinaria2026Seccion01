

-- Especies
INSERT INTO especie (nombre_especie, descripcion) VALUES 
('Canino', 'Perros'), ('Felino', 'Gatos'), ('Ave', 'Aves'), ('Reptil', 'Reptiles'), ('Roedor', 'Hámsters y otros');

-- Especialidades
INSERT INTO especialidad (nombre_especialidad) VALUES 
('Medicina General'), ('Cirugía'), ('Dermatología'), ('Cardiología'), ('Oftalmología');

-- Medicamentos
INSERT INTO medicamento (nombre, presentacion, precio_unitario) VALUES 
('Amoxicilina', 'Tableta 500mg', 5.50), ('Ivermectina', 'Gotas', 12.00), ('Meloxicam', 'Suspensión', 8.00), 
('Prednisona', 'Tableta', 4.50), ('Omeprazol', 'Cápsula', 3.00), ('Ketoconazol', 'Crema', 7.50), 
('Enrofloxacina', 'Inyectable', 15.00), ('Doxiciclina', 'Tableta', 6.00), ('Ranitidina', 'Jarabe', 5.00), 
('Fipronil', 'Pipeta', 10.00), ('Cefalexina', 'Tableta', 9.00), ('Atenolol', 'Tableta', 4.00), 
('Timolol', 'Gotas oftálmicas', 11.00), ('Gabapentina', 'Cápsula', 8.50), ('Tramadol', 'Tableta', 7.00);


-- Propietarios (15 registros)
INSERT INTO propietario (nombre, apellido, telefono, email, direccion) VALUES 
('Juan', 'Pérez', '7777-1111', 'juan@email.com', 'San Salvador'), ('María', 'López', '7777-2222', 'maria@email.com', 'Santa Tecla'),
('Pedro', 'García', '7777-3333', 'pedro@email.com', 'Antiguo Cuscatlán'), ('Ana', 'Martínez', '7777-4444', 'ana@email.com', 'Apopa'),
('Luis', 'Hernández', '7777-5555', 'luis@email.com', 'Soyapango'), ('Sofía', 'Rodríguez', '7777-6666', 'sofia@email.com', 'Mejicanos'),
('Carlos', 'Sánchez', '7777-7777', 'carlos@email.com', 'Ilopango'), ('Elena', 'Ramírez', '7777-8888', 'elena@email.com', 'San Marcos'),
('Diego', 'Torres', '7777-9999', 'diego@email.com', 'Santa Ana'), ('Lucía', 'Flores', '7777-0000', 'lucia@email.com', 'San Miguel'),
('Jorge', 'Vásquez', '7777-1234', 'jorge@email.com', 'Chalatenango'), ('Marta', 'Castillo', '7777-5678', 'marta@email.com', 'Cojutepeque'),
('Raúl', 'Morales', '7777-9101', 'raul@email.com', 'Sonsonate'), ('Clara', 'Rivas', '7777-1121', 'clara@email.com', 'La Libertad'),
('Hugo', 'Pineda', '7777-3141', 'hugo@email.com', 'Zaragoza');

-- Mascotas (15 registros asignados a propietarios y especies)
INSERT INTO mascota (nombre, fecha_nacimiento, sexo, id_propietario, id_especie) VALUES 
('Firulais', '2024-01-15', 'M', 1, 1), ('Michi', '2025-05-20', 'F', 2, 2), ('Lola', '2023-08-10', 'F', 3, 1),
('Rocky', '2022-12-01', 'M', 4, 1), ('Luna', '2024-03-14', 'F', 5, 2), ('Simba', '2023-11-22', 'M', 6, 2),
('Coco', '2025-01-05', 'M', 7, 5), ('Toby', '2024-06-30', 'M', 8, 1), ('Cleo', '2023-09-18', 'F', 9, 2),
('Zeus', '2022-04-25', 'M', 10, 1), ('Nala', '2024-10-12', 'F', 11, 2), ('Boby', '2025-02-28', 'M', 12, 1),
('Kira', '2023-07-07', 'F', 13, 2), ('Thor', '2024-12-05', 'M', 14, 1), ('Daisy', '2025-04-10', 'F', 15, 2);



-- Veterinarios
INSERT INTO veterinario (nombre, apellido, licencia, id_especialidad) VALUES 
('Carlos', 'Ramírez', 'VET-001', 1), ('Ana', 'Gomez', 'VET-002', 2), ('Luis', 'Pérez', 'VET-003', 3),
('Sara', 'López', 'VET-004', 4), ('Elena', 'Díaz', 'VET-005', 5);

-- Citas (15 registros para cubrir diferentes mascotas y veterinarios)
INSERT INTO cita (fecha, hora, motivo, id_veterinario, id_mascota) VALUES 
('2026-06-18', '08:00', 'Chequeo', 1, 1), ('2026-06-18', '09:00', 'Vacuna', 2, 2), ('2026-06-19', '10:00', 'Dermatitis', 3, 3),
('2026-06-19', '11:00', 'Dolor', 1, 4), ('2026-06-20', '08:00', 'Control', 2, 5), ('2026-06-20', '09:00', 'Cirugía', 2, 6),
('2026-06-21', '10:00', 'Chequeo', 4, 7), ('2026-06-21', '11:00', 'Corazón', 4, 8), ('2026-06-22', '08:00', 'Ojos', 5, 9),
('2026-06-22', '09:00', 'Vacuna', 1, 10), ('2026-06-23', '10:00', 'Dermatitis', 3, 11), ('2026-06-23', '11:00', 'Chequeo', 2, 12),
('2026-06-24', '08:00', 'Dolor', 1, 13), ('2026-06-24', '09:00', 'Control', 5, 14), ('2026-06-25', '10:00', 'Vacuna', 2, 15);