DROP DATABASE IF EXISTS db_pizzaria_legal;

-- criar o Banco de dados db_pizzaria_legal
CREATE DATABASE db_pizzaria_legal;

use db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
tipo varchar (255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao, tipo)
VALUES 
("Salgada", "Tradicional"),
("Doce", "Sobremesa"),
("Vegetariana", "Especial"),
("Premium", "Especial"),
("Vegana", "Saudável");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a tabela tb_pizzas
create table tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
tamanho VARCHAR(50),
preco decimal(6, 2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, quantidade, tamanho, preco, categoria_id) 
VALUES 
("Calabresa", 10, "G", 42.00, 1),
("Muçarela", 15, "M", 39.90, 1),
("Brigadeiro", 10, "P", 55.00, 2),
("Frango com Catupiry", 25, "G", 48.50, 1),
("Romeu e Julieta", 8, "M", 52.00, 2),
("Portuguesa", 12, "G", 46.00, 1),
("Prestígio", 7, "P", 60.00, 2),
("Marguerita", 18, "M", 44.00, 1);

-- Visualiza todos os dados da tabela tb_pizzas
select * from tb_pizzas;

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50 and 100;

-- Operador LIKE
-- Consulta a Collation do Banco de dados
select @@collation_database;

select * from tb_pizzas where nome like "%M%";

-- INNER JOIN para unir as tabelas
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

-- INNER JOIN trazendo apenas uma categoria específica (Ex: Doce)
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Doce";

