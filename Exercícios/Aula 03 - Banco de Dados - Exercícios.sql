create database escola;
use escola;

create table alunos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    idade int not null,
    serie int not null
);

insert into alunos(nome,idade,serie) values
('Anderson',13,9),
('Allan',18,3),
('Laryssa',12,8),
('Fulano',5,1),
('Cicrano',12,8);

select * from alunos;
select nome,idade from alunos;
select * from alunos where serie = 8;
update alunos set idade=7 where nome='Allan';
delete from alunos where id=4;

create table professores(
	id int primary key auto_increment,
    nome varchar(50) not null,
    materia varchar(20) not null,
    ano_ingresso int not null
);

alter table professores modify column materia varchar(50) not null;

insert into professores(nome,materia,ano_ingresso) values
('Gabriel','História da Computação',2019),
('Ramon','Lógica de Programação',2022),
('Walney','Informática Básica',2017),
('Ana Paula','Banco de Dados',2025);

select * from professores;