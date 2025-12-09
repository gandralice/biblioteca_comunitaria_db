# Biblioteca Comunitária - Banco de Dados

Projeto de modelagem e implementação de banco de dados relacional para uma Biblioteca Comunitária. O sistema foi projetado para organizar o acervo, gerenciar o cadastro de usuários e controlar o fluxo de empréstimos e devoluções.

## Funcionalidades do Modelo

O banco de dados gerencia as seguintes entidades e processos:

* **Leitores:** Cadastro completo dos usuários da comunidade.
* **Acervo (Livros):** Registro de títulos, autores, editoras e ano de publicação.
* **Funcionários:** Gestão da equipe responsável pelo atendimento e organização.
* **Empréstimos:** Controle de retiradas, datas de vencimento e devoluções.
* **Histórico:** Rastreamento de quais livros estão emprestados e quais já foram devolvidos.

## Estrutura do Repositório

* `script.ddl`: Script DDL para criação da estrutura do banco (tabelas, chaves primárias e estrangeiras).
* `insercoes.txt`: Script DML com dados fictícios para popular o banco e realizar testes.
* `consultas.txt`: Consultas SQL (queries) para relatórios, como livros emprestados e pendências.
* `bibliotecaBD.pdf`: Documentação com as regras de negócio e dicionário de dados.
* `/modelagem`: Imagens dos diagramas Conceitual, Lógico e Relacional.

## Tecnologias

* Oracle SQL Developer Data Modeler
* Oracle Database (11g/19c)
* SQL
