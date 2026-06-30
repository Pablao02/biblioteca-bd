-- Livros e suas categorias

SELECT
b.titulo,
b.autor,
c.nome AS categoria
FROM Books b
JOIN Categories c
ON b.categoryId = c.id;

---------------------------------------------------

-- Empréstimos realizados

SELECT
u.nome,
b.titulo,
l.dataEmprestimo,
l.status
FROM Loans l
JOIN Users u
ON l.userId = u.id
JOIN Books b
ON l.bookId = b.id;

---------------------------------------------------

-- Livros disponíveis

SELECT *
FROM Books
WHERE quantidade > 0;

---------------------------------------------------

-- Usuários com empréstimos

SELECT
u.nome,
COUNT(l.id) AS total_emprestimos
FROM Users u
LEFT JOIN Loans l
ON u.id = l.userId
GROUP BY u.nome;

---------------------------------------------------

-- Livros emprestados

SELECT
titulo
FROM Books
WHERE id IN (
SELECT bookId
FROM Loans
WHERE status='EMPRESTADO'
);