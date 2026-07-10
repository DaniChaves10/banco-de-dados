-- Apaga o banco antigo se ele já existir para não dar erro
DROP DATABASE IF EXISTS db_loja;

-- Cria o banco de dados novo do zero
CREATE DATABASE db_loja;

-- Seleciona o banco de dados para uso
USE db_loja;

-- Cria a tabela de Ecommerce
CREATE TABLE tb_ecommerce(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT,
    categoria VARCHAR(255),
    marca VARCHAR(255),
    PRIMARY KEY(id)
);
    
-- Insere os 8 produtos na tabela
INSERT INTO tb_ecommerce(nome, preco, quantidade, categoria, marca)
VALUES 
("Notebook", 3899.90, 10, "Informática", "Dell"),
("Mouse Gamer", 149.90, 50, "Periféricos", "Logitech"),
("Teclado Mecânico", 299.90, 30, "Periféricos", "Redragon"),
("Smartphone Galaxy A56", 1899.00, 15, "Celulares", "Samsung"),
("Monitor LG 24 Polegadas", 799.90, 12, "Monitores", "LG"),
("Fone de Ouvido JBL", 249.90, 40, "Áudio", "JBL"),
("Cadeira Gamer", 1299.90, 8, "Móveis", "ThunderX3"),
("Webcam Full HD", 459.90, 20, "Acessórios", "Logitech");

-- 1. Exibe todos os produtos para testar
SELECT * FROM tb_ecommerce;

-- 2. Atividade: Filtra produtos com valor MENOR que R$ 500,00
SELECT * FROM tb_ecommerce WHERE preco < 500;

-- 3. Atividade: Filtra produtos com valor MAIOR que R$ 500,00
SELECT * FROM tb_ecommerce WHERE preco > 500;

-- 4. Atividade: Atualiza um registro (Mudando o preço do Mouse Gamer)
UPDATE tb_ecommerce SET preco = 139.90 WHERE id = 2;

-- Exibe novamente para ver a alteração do Mouse Gamer
SELECT * FROM tb_ecommerce;