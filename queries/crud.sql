-- INSERT

INSERT INTO Users (nome, email, senha)
VALUES ('João Silva', 'joao@email.com', '123456');

INSERT INTO Categories (nome)
VALUES ('Tecnologia');

INSERT INTO Books (titulo, autor, isbn, ano, quantidade, categoryId)
VALUES ('Clean Code', 'Robert C. Martin', '9780132350884', 2008, 5, 1);

---------------------------------------------------

-- SELECT

SELECT * FROM Users;

SELECT * FROM Categories;

SELECT * FROM Books;

SELECT * FROM Loans;

---------------------------------------------------

-- UPDATE

UPDATE Books
SET quantidade = 10
WHERE id = 1;

---------------------------------------------------

-- DELETE

DELETE FROM Books
WHERE id = 1;