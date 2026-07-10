-- Apaga o banco antigo se ele já existir para não dar erro
DROP DATABASE IF EXISTS db_escola;

-- Cria o banco de dados da escola
create database db_escola;

-- Seleciona o banco de dados para uso
use db_escola;

-- Cria a tabela de Estudantes com 5 atributos relevantes
create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) NOT NULL,
    idade int,
    turma varchar(255),
    nota decimal(3,1),
    responsavel varchar(255),
    PRIMARY KEY(id)
);

-- Insere no mínimo 8 registros (dados dos alunos)
INSERT INTO tb_estudantes(nome, idade, turma, nota, responsavel)
VALUES
("Mariana Souza", 14, "9º Ano A", 8.5, "Carlos Souza"),
("João Pedro Silva", 15, "9º Ano B", 6.2, "Ana Silva"),
("Beatriz Santos", 14, "9º Ano A", 9.0, "Marcos Santos"),
("Lucas Oliveira", 15, "9º Ano C", 5.5, "Julia Oliveira"),
("Gabriel Almeida", 14, "9º Ano B", 7.8, "Roberto Almeida"),
("Larissa Costa", 15, "9º Ano A", 4.8, "Sandra Costa"),
("Rafael Ribeiro", 14, "9º Ano C", 10.0, "Patricia Ribeiro"),
("Amanda Martins", 15, "9º Ano B", 6.9, "Luiz Martins");

-- Exibe todos os estudantes para conferência
SELECT * FROM tb_estudantes;

-- Atividade: SELECT que retorna estudantes com nota MAIOR do que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- Atividade: SELECT que retorna estudantes com nota MENOR do que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atividade: Atualiza um registro (Corrigindo a nota da Amanda Martins de 6.9 para 7.2)
UPDATE tb_estudantes SET nota = 7.2 WHERE id = 8;

-- Exibe novamente para ver a nota atualizada da Amanda
SELECT * FROM tb_estudantes;
