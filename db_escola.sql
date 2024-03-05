CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    curso VARCHAR(255),
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_estudantes (nome, data_nascimento, curso, nota) VALUES
('Maria Silva', '2005-03-15', 'Engenharia Civil', 9.5),
('Baco Oliveira', '2004-07-22', 'Medicina', 6.3),
('Ana Santos', '2006-01-10', 'Administração', 7.8),
('Pedro Costa', '2005-11-28', 'Direito', 6.9),
('Alisha Pereira', '2004-09-05', 'Ciência da Computação', 8.7),
('Lucas Rodrigues', '2006-04-18', 'Psicologia', 7.2),
('Mariana Almeida', '2005-08-12', 'Arquitetura', 9.0),
('Aluno 8', '2004-12-30', 'Economia', 6.5);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET nome = 'Dave Grohl',
    data_nascimento = '2000-01-01',
    curso = 'Música',
    nota = 8.0
WHERE id = 8;