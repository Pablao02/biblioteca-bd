-- Total de livros

SELECT COUNT(*) AS total_livros
FROM Books;

---------------------------------------------------

-- Total de usuários

SELECT COUNT(*) AS total_usuarios
FROM Users;

---------------------------------------------------

-- Quantidade de empréstimos

SELECT COUNT(*) AS total_emprestimos
FROM Loans;

---------------------------------------------------

-- Livros por categoria

SELECT
c.nome,
COUNT(b.id) AS quantidade
FROM Categories c
LEFT JOIN Books b
ON c.id=b.categoryId
GROUP BY c.nome;

---------------------------------------------------

-- Média de livros disponíveis

SELECT AVG(quantidade)
AS media
FROM Books;