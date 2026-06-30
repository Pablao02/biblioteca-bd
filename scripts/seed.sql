-- ==========================
-- CATEGORIAS
-- ==========================

INSERT INTO Categories (nome) VALUES
('Tecnologia'),
('Romance'),
('História'),
('Ciência'),
('Ficção');

-- ==========================
-- USUÁRIOS
-- ==========================

INSERT INTO Users (nome,email,senha) VALUES
('Pablo','pablo@email.com','123456'),
('João','joao@email.com','123456'),
('Maria','maria@email.com','123456'),
('José','jose@email.com','123456'),
('Ana','ana@email.com','123456'),
('Carlos','carlos@email.com','123456'),
('Fernanda','fernanda@email.com','123456'),
('Lucas','lucas@email.com','123456'),
('Juliana','juliana@email.com','123456'),
('Pedro','pedro@email.com','123456');

INSERT INTO Books
(titulo, autor, isbn, ano, quantidade, categoryId)
VALUES
('Livro 1','Autor 1','100000000001',2024,5,1),
('Livro 2','Autor 2','100000000002',2024,5,2),
('Livro 3','Autor 3','100000000003',2024,5,3),
('Livro 4','Autor 4','100000000004',2024,5,4),
('Livro 5','Autor 5','100000000005',2024,5,5),
('Livro 6','Autor 6','100000000006',2024,4,1),
('Livro 7','Autor 7','100000000007',2023,3,2),
('Livro 8','Autor 8','100000000008',2022,8,3),
('Livro 9','Autor 9','100000000009',2021,6,4),
('Livro 10','Autor 10','100000000010',2020,2,5),
('Livro 11','Autor 11','100000000011',2019,5,1),
('Livro 12','Autor 12','100000000012',2018,7,2),
('Livro 13','Autor 13','100000000013',2017,9,3),
('Livro 14','Autor 14','100000000014',2016,4,4),
('Livro 15','Autor 15','100000000015',2015,3,5),
('Livro 16','Autor 16','100000000016',2014,6,1),
('Livro 17','Autor 17','100000000017',2013,5,2),
('Livro 18','Autor 18','100000000018',2012,4,3),
('Livro 19','Autor 19','100000000019',2011,7,4),
('Livro 20','Autor 20','100000000020',2010,8,5);