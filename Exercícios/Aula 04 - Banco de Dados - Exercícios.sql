-- ########## Criar Database ###########
CREATE DATABASE EscolaDB;
USE EscolaDB;

-- ########## Criar tabelas ###########
CREATE TABLE alunos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    cidade VARCHAR(50)
);

CREATE TABLE cursos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(50),
    carga_horaria INT
);

CREATE TABLE matriculas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- ######### INSERINDO DADOS ##########
INSERT INTO alunos(nome,idade,cidade) VALUES
('Maria Silva',20,'São Paulo'),
('João Santos',22,'Rio de Janeiro'),
('Ana Souza',19,'Belo Horizonte'),
('Carlos Pereira',25,'Curitiba');

INSERT INTO cursos(nome_curso,carga_horaria) VALUES
('Banco de Dados',40),
('Lógica de Programação',60),
('Desenvolvimento Web',80);

INSERT INTO matriculas(aluno_id,curso_id,data_matricula) VALUES
(1,1,'2024-02-15'),
(2,2,'2024-03-10'),
(3,1,'2024-04-05'),
(4,3,'2024-05-20');

-- Questão 01
SELECT nome, cidade FROM alunos;

-- Questão 02
SELECT nome_curso FROM cursos WHERE carga_horaria > 50;

-- Questão 03
SELECT * FROM alunos WHERE cidade='Curitiba';

-- Questão 04
SELECT nome, idade FROM alunos WHERE idade < 22;

-- Questão 05
SELECT alunos.nome AS Nome_Aluno, cursos.nome_curso AS Curso 
    FROM alunos,cursos,matriculas 
    WHERE alunos.id=matriculas.aluno_id AND cursos.id=matriculas.curso_id;

-- Questão 06
SELECT alunos.nome AS Nome_Aluno FROM alunos,matriculas 
    WHERE matriculas.curso_id=1 AND matriculas.aluno_id=alunos.id;

-- Questão 07
SELECT * FROM cursos WHERE carga_horaria != 60;

-- Questão 08
SELECT nome,cidade FROM alunos WHERE cidade = 'São Paulo' OR cidade = 'Rio de Janeiro';
