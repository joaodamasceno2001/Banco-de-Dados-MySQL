create database Questão3;
use Questão3;

create table aluno(
numero char(7),
nome varchar(25),
telefone varchar(20)
);

create table disciplina(
codigo varchar(4),
nome varchar(50)
);

create table inscricao(
numero char(7),
codDisc varchar(4),
ano year,
semestre numeric(1),
aprovado enum('S','N'),
classif numeric(2)
);