
-- 1. CREACIÓN DE LA BASE DE DATOS

CREATE DATABASE veterinaria_clinica;


-- 2. TABLAS INDEPENDIENTES (Catálogos y Entidades Fuertes)


CREATE TABLE propietario (
    id_propietario SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100),
    direccion TEXT
);

CREATE TABLE especie (
    id_especie SERIAL PRIMARY KEY,
    nombre_especie VARCHAR(50) NOT NULL,
    descripcion TEXT
);

CREATE TABLE especialidad (
    id_especialidad SERIAL PRIMARY KEY,
    nombre_especialidad VARCHAR(100) NOT NULL
);

CREATE TABLE medicamento (
    id_medicamento SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    presentacion VARCHAR(100),
    precio_unitario DECIMAL(10, 2) NOT NULL
);


-- 3. TABLAS DEPENDIENTES DE NIVEL 1


CREATE TABLE mascota (
    id_mascota SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    sexo VARCHAR(20),
    id_propietario INT NOT NULL,
    id_especie INT NOT NULL,
    FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario) ON DELETE CASCADE,
    FOREIGN KEY (id_especie) REFERENCES especie(id_especie) ON DELETE RESTRICT
);

CREATE TABLE veterinario (
    id_veterinario SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    licencia VARCHAR(50) NOT NULL UNIQUE,
    id_especialidad INT NOT NULL,
    FOREIGN KEY (id_especialidad) REFERENCES especialidad(id_especialidad) ON DELETE RESTRICT
);


-- 4. TABLAS DE FLUJO PRINCIPAL Y TABLAS PUENTE


CREATE TABLE alergia_mascota (
    id_alergia SERIAL PRIMARY KEY,
    id_mascota INT NOT NULL,
    id_medicamento INT NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascota(id_mascota) ON DELETE CASCADE,
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento) ON DELETE CASCADE
);

CREATE TABLE cita (
    id_cita SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo TEXT,
    id_veterinario INT NOT NULL,
    id_mascota INT NOT NULL,
    FOREIGN KEY (id_veterinario) REFERENCES veterinario(id_veterinario) ON DELETE RESTRICT,
    FOREIGN KEY (id_mascota) REFERENCES mascota(id_mascota) ON DELETE CASCADE
);

CREATE TABLE factura (
    id_factura SERIAL PRIMARY KEY,
    fecha_emision DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    id_cita INT NOT NULL,
    CONSTRAINT fk_factura_cita FOREIGN KEY (id_cita) REFERENCES cita(id_cita) ON DELETE RESTRICT
);

CREATE TABLE diagnostico (
    id_diagnostico SERIAL PRIMARY KEY,
    descripcion TEXT NOT NULL,
    fecha DATE NOT NULL,
    id_cita INT NOT NULL,
    FOREIGN KEY (id_cita) REFERENCES cita(id_cita) ON DELETE CASCADE
);

CREATE TABLE tratamiento (
    id_tratamiento SERIAL PRIMARY KEY,
    descripcion TEXT NOT NULL,
    id_diagnostico INT NOT NULL,
    FOREIGN KEY (id_diagnostico) REFERENCES diagnostico(id_diagnostico) ON DELETE CASCADE
);

CREATE TABLE tratamiento_medicamento (
    id_trat_med SERIAL PRIMARY KEY,
    dosis VARCHAR(100),
    frecuencia VARCHAR(100),
    id_tratamiento INT NOT NULL,
    id_medicamento INT NOT NULL,
    FOREIGN KEY (id_tratamiento) REFERENCES tratamiento(id_tratamiento) ON DELETE CASCADE,
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento) ON DELETE CASCADE
);