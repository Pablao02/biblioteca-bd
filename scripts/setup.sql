-- Criação da tabela Users

CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

--------------------------------------------------

-- Criação da tabela Categories

CREATE TABLE Categories (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

--------------------------------------------------

-- Criação da tabela Books

CREATE TABLE Books (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    ano INTEGER,
    quantidade INTEGER DEFAULT 0,
    categoryId INTEGER,
    FOREIGN KEY (categoryId)
        REFERENCES Categories(id)
);

--------------------------------------------------

-- Criação da tabela Loans

CREATE TABLE Loans (
    id SERIAL PRIMARY KEY,
    dataEmprestimo DATE NOT NULL,
    dataDevolucao DATE,
    status VARCHAR(20),
    userId INTEGER,
    bookId INTEGER,

    FOREIGN KEY (userId)
        REFERENCES Users(id),

    FOREIGN KEY (bookId)
        REFERENCES Books(id)
);

--------------------------------------------------

-- Índices

CREATE INDEX idx_email
ON Users(email);

CREATE INDEX idx_isbn
ON Books(isbn);

CREATE INDEX idx_categoria
ON Books(categoryId);

CREATE INDEX idx_usuario
ON Loans(userId);

CREATE INDEX idx_livro
ON Loans(bookId);