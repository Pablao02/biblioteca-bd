-- =========================================
-- CRIAÇÃO DO BANCO DE DADOS - BIBLIOTECA
-- =========================================

CREATE DATABASE biblioteca_bd;

USE biblioteca_bd;

-- =========================
-- TABELA: usuarios
-- =========================
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);

-- =========================
-- TABELA: livros
-- =========================
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    isbn VARCHAR(50) UNIQUE,
    ano INT,
    quantidade INT DEFAULT 1
);

-- =========================
-- TABELA: emprestimos
-- =========================
CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    status ENUM('EMPRESTADO', 'DEVOLVIDO') DEFAULT 'EMPRESTADO',

    usuario_id INT NOT NULL,
    livro_id INT NOT NULL,

    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);