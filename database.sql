-- Crear la base de datos
CREATE DATABASE gestor_docs CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE gestor_docs;

-- Categorías
CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Usuarios
CREATE TABLE usuarios (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(50) NOT NULL
);

-- Documentos
CREATE TABLE documentos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_carga DATETIME DEFAULT CURRENT_TIMESTAMP,
    archivo VARCHAR(255),
    estado VARCHAR(50),
    categoria_id BIGINT,
    usuario_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Usuario inicial
INSERT INTO usuarios (username, password, rol)
VALUES ('admin', 'admin123', 'ADMIN');
