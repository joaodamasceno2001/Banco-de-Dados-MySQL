CREATE database Questão1;
use Questão1;

CREATE TABLE aluno(
matricula numeric(4)primary key,
nome varchar(20),
escola varchar(20)
);

CREATE TABLE disciplina(
codigo char(5)primary key,
nome varchar(20),
registro char(5),
escola varchar(20)
);

CREATE TABLE historico(
matricula numeric(4)primary key,
foreign key (matricula) references aluno(matricula),
codigo char(5),
foreign key (codigo) references disciplina(codigo),
nota numeric(3.1) check(nota>=0)
);

create table Professor(
registro char(5),
nome varchar(20),
admissao integer
);

alter table aluno
add column telefone varchar(8);

alter table aluno
drop column telefone;