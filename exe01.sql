--  Cria o banco de daodos
create database db_rh;

-- Seleciona o banco de dados
use db_rh;

-- Cria a tabela de colaboradores
create table tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) NOT NULL,
    cargo varchar(255),
    salario decimal(10,2) NOT NULL,
    data_admissao date,
    setor varchar(255),
    primary key(id)
);

-- Insere os colaboradores na tabela
insert into tb_colaboradores(nome, cargo, salario, data_admissao, setor)
values 
("Daniel Araujo", "Dev Júnior", 2500.00, "2016-01-14", "T.I."),
("Mariana Silva", "Analista de RH", 3200.00, "2023-08-15", "Recursos Humanos"),
("Lucas Pereira", "Auxiliar Administrativo", 1800.00, "2024-01-22", "Administrativo"),
("Fernanda Costa", "Assistente Financeiro", 1950.00, "2022-11-05", "Financeiro"),
("Gabriel Oliveira", "Coordenador de TI", 5800.00, "2021-06-18", "Tecnologia");

-- Exibe todos os colaboradores
select * from tb_colaboradores;

-- Exibe colaboradores com salário menor que R$ 2.000,00
select * from tb_colaboradores where salario < 2000;

-- Exibe colaboradores com salário maior que R$ 2.000,00
select * from tb_colaboradores where salario > 2000;

-- Atualiza o salário do colaborador de ID 3
update tb_colaboradores
set salario = 2200.00
where id = 3;

-- Exibe a tabela após a atualização
select * from tb_colaboradores;