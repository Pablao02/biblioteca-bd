# Dicionário de Dados

## Tabela: Users

| Campo | Tipo | Descrição |
|--------|------|-----------|
| id | INTEGER | Chave primária |
| nome | VARCHAR | Nome do usuário |
| email | VARCHAR | E-mail do usuário (único) |
| senha | VARCHAR | Senha criptografada |

---

## Tabela: Categories

| Campo | Tipo | Descrição |
|--------|------|-----------|
| id | INTEGER | Chave primária |
| nome | VARCHAR | Nome da categoria |

---

## Tabela: Books

| Campo | Tipo | Descrição |
|--------|------|-----------|
| id | INTEGER | Chave primária |
| titulo | VARCHAR | Título do livro |
| autor | VARCHAR | Autor do livro |
| isbn | VARCHAR | ISBN do livro |
| ano | INTEGER | Ano de publicação |
| quantidade | INTEGER | Quantidade disponível |
| categoryId | INTEGER | Chave estrangeira para Categories |

---

## Tabela: Loans

| Campo | Tipo | Descrição |
|--------|------|-----------|
| id | INTEGER | Chave primária |
| dataEmprestimo | DATE | Data do empréstimo |
| dataDevolucao | DATE | Data da devolução |
| status | ENUM | EMPRESTADO ou DEVOLVIDO |
| userId | INTEGER | Chave estrangeira para Users |
| bookId | INTEGER | Chave estrangeira para Books |