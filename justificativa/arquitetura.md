# Arquitetura do Sistema

## Escolha Tecnológica

- Tipo de banco: SQL
- SGBD: PostgreSQL
- ORM: Sequelize
- Linguagem: Node.js

## Justificativa

O PostgreSQL foi escolhido por ser um banco de dados relacional robusto, gratuito e amplamente utilizado. O Sequelize foi utilizado para facilitar a comunicação entre a aplicação Node.js e o banco de dados.

## Objetivo do Sistema

O sistema permite o gerenciamento de uma biblioteca, realizando o cadastro de usuários, livros, categorias e empréstimos.

## Principais Entidades

- Users
- Books
- Categories
- Loans

## Relacionamentos

- Um usuário pode realizar vários empréstimos.
- Um livro pode participar de vários empréstimos.
- Uma categoria pode possuir vários livros.

## Objetivo da Arquitetura

Garantir organização dos dados, integridade referencial e facilidade na realização de consultas e manutenção do sistema.