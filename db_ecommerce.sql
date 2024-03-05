CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    descricao VARCHAR(255) NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, descricao, preco) VALUES
('Celular Samsung', 10, 'Celular cor Azul',  3000.00),
('cabo USB C', 15, 'Cabo de dados', 30.00),
('Microfone', 20, 'Audio TEC', 45.75),
('Celular Iphone', 5, 'Iphone Laranja', 5000.25),
('SmartWatch', 12, 'Relógio Inteligente Samsung', 500.29),
('Pulseira Samsung', 8, 'Acessório dourado', 300.00),
('Anel Inteligente', 18, 'Marca Samsung cor Preto', 2000.32),
('Produto H', 25, 'Descrição do Produto H', 50.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE  preco > 500;

SELECT * FROM tb_produtos WHERE  preco < 500;

UPDATE tb_produtos
SET nome = 'Cabo HDMI',
    quantidade = 30,
    descricao = 'Marca Xiaomi',
    preco = 100.00
WHERE id = 8;