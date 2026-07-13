DROP DATABASE IF EXISTS db_curso_da_minha_vida;

-- criar o Banco de dados db_curso_da_minha_vida
CREATE DATABASE db_curso_da_minha_vida;

use db_curso_da_minha_vida;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
nivel varchar (255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao, nivel)
VALUES 
("Java", "Intermediário"),
("Banco de Dados", "Básico"),
("Front-end", "Intermediário"),
("DevOps", "Avançado"),
("Data Science", "Avançado");

-- Lista todos os dados da tabela tb_categorias
select * from tb_categorias;

-- Criar a tabela tb_cursos
create table tb_cursos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
carga_horaria int, 
preco decimal(6, 2),
vagas int,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, carga_horaria, preco, vagas, categoria_id) 
VALUES 
("Java para Iniciantes", 40, 650.00, 30, 1),
("Spring Boot", 60, 900.00, 25, 1),
("MySQL Essencial", 30, 550.00, 40, 2),
("ReactJS", 50, 800.00, 35, 3),
("Docker", 25, 700.00, 20, 4),
("Python para Dados", 80, 1200.00, 15, 5),
("Git e GitHub", 20, 450.00, 50, 4),
("Java Avançado", 80, 1100.00, 20, 1);

-- Visualiza todos os dados da tabela tb_cursos
select * from tb_cursos;

select * from tb_cursos where preco > 500.00;

select * from tb_cursos where preco between 600 and 1000;

-- Operador LIKE
-- Consulta a Collation do Banco de dados
select @@collation_database;

select * from tb_cursos where nome like "%J%";

-- INNER JOIN para unir as tabelas
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;

-- INNER JOIN trazendo apenas uma categoria específica (Ex: Todos os cursos que pertencem a categoria Java)
SELECT * FROM tb_cursos 
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Java";

