create database BANCO;
use BANCO;

create table Banco(
codigo char(5) primary key,
Nome varchar(20)
);

create table Agencia(
Cod_banco char(5),
Numero_agencia char(8) primary key ,
foreign key (Cod_banco) references Banco(Codigo),
Endereço varchar (30)
);

create table Cliente(
CPF char(15) primary key,
Nome varchar(20),
Sexo enum('M', 'F'),
Endereço varchar(30)
);

create table Conta(
Numero_conta char(7) primary key,
Saldo float,
Tipo_conta varchar(10),
Num_agencia char(8),
foreign key (Num_agencia) references Agencia(Numero_agencia)
);

Create table Historico(
CPF_cliente char(15),
Num_conta char(7),
foreign key (CPF_cliente) references Cliente(CPF),
foreign key (Num_conta) references Conta(Numero_conta),
Data_inicio date 
); 

create table Telefone_Cliente(
CPF_cli char(15),
Telefone char(8),
foreign key (CPF_cli) references Cliente(CPF)
);