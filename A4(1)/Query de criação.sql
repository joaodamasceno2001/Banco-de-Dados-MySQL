drop database if exists ap4;
create database ap4;
use ap4;

create table Recursos (
registro int NOT NULL,
nome varchar (30) not null,
ocupacao varchar(30) not null,
    
primary key (registro),
constraint chk_ocupacao CHECK (ocupacao = 'gerente de projeto' OR ocupacao = 'analista de negócios' OR ocupacao = 'DBA' or ocupacao = 'programador')
);

create table Contato(
reg_recurso int not null,
residencia varchar(15),
comercial varchar(15),
celular varchar(15),
ramal_interno varchar(15),
    
FOREIGN KEY (reg_recurso) REFERENCES Recursos(registro)
ON UPDATE CASCADE
);

create table Endereço(
reg_recurso int not NULL,
CEP varchar(10),
cidade varchar (20),
logradouro varchar (50),
    
FOREIGN KEY (reg_recurso) REFERENCES Recursos(registro)
ON UPDATE CASCADE
);

create table Salario(
reg_recurso int not null,
valor float,
data_alteracao date,
valorant float,
    
FOREIGN KEY (reg_recurso) REFERENCES Recursos(registro)
);

create table Ferramentas_De_Prog(
reg_recurso int not null,
linguagem varchar(30),
versao varchar (10),

FOREIGN KEY (reg_recurso) REFERENCES Recursos(registro)
);

CREATE TABLE Equipe_De_Trabalho (
codigo int not null,
nome varchar(30),
qtd_recursos int not null,

primary key (codigo)
);

CREATE TABLE Equipe_Junto_Recursos(
 registro int NOT NULL,
 codigo int NOT NULL
);

create table Projetos(
codigo int not null,
cod_equipe int not null,
nome varchar(30),

primary key (codigo),
FOREIGN KEY (cod_equipe) REFERENCES Equipe_De_Trabalho(codigo)
);

create table Estado_Proj( 
cod_proj int not null,
estado varchar(20),

primary key(estado),
constraint chk_estado CHECK (estado = 'Iniciado' OR estado = 'Aguardando' OR estado = 'Em andamento' or estado = 'Finalizado')
);

create table Gerente_Projeto(
cod_projeto int not null,
nome_gerente varchar (30),
    
FOREIGN KEY (cod_projeto) REFERENCES Projetos(codigo)
);

create table Tempo_Concluidos(
cod_projeto int not null,
data date,
horas time,
estado varchar(30),

FOREIGN KEY (cod_projeto) REFERENCES Projetos(codigo),
FOREIGN KEY (estado) REFERENCES Estado_Proj(estado),
constraint chk_estado2 CHECK (estado = 'Finalizado')
);

create table Tempo_Previsao(
cod_projeto int not null,
data date,
horas time, 

FOREIGN KEY (cod_projeto) REFERENCES Projetos(codigo)
);

create table Atividades(
cod_projeto int not null,
codigo varchar(10) not null,
nome varchar(30),

primary key (codigo),
FOREIGN KEY (cod_projeto) REFERENCES Projetos(codigo)
);

create table Tarefas(
cod_atividade varchar(10) not null,
codigo int auto_increment not null,
descricao varchar (100),

primary key (codigo),
FOREIGN KEY (cod_atividade) REFERENCES Atividades(codigo)
);

