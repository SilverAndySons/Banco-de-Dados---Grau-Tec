CREATE TABLE alunos(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(50),
    idade int,
    serie varchar(50)
);

INSERT INTO alunos(nome, idade, serie) VALUES
("Anderson",13,"9º ano"),
("Allan",18,"3º ano médio"),
("Laryssa",12,"8º ano"),
("Fulano",5,"1º ano"),
("Cicrano",12,"8º ano");

SELECT * FROM alunos;
SELECT nome, idade FROM alunos;
SELECT * FROM alunos WHERE serie="8º ano";
UPDATE alunos SET idade = 13 WHERE nome="Laryssa";
DELETE FROM alunos WHERE nome="Allan";
SELECT * FROM alunos;