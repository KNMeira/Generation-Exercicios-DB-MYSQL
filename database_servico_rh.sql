create database servico_rh;
use servico_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	profissao VARCHAR(100),
    data_nascimento DATE,
	salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

drop table tb_colaboradores;

INSERT INTO tb_colaboradores (nome, profissao, data_nascimento, salario) VALUES
('Ada Lovelace', 'Engenheiro', '1990-05-15', 5000.00),
('Frida Kahlo', 'Desenvolvedora', '1985-10-20', 6000.00),
('Pitágoras de Samos', 'Analista de Dados', '1988-03-25', 1900.00),
('Anna Frank', 'Designer', '1992-08-10', 4800.00),
('Immanuel Kant', 'Gerente de Projetos', '1980-12-03', 1700.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET profissao = "Engenheira" WHERE id = 1;