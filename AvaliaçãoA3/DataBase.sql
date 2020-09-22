create database avaliacaoa3;
use avaliacaoa3;

create table cliente(
idCliente int primary key not null auto_increment,
nome varchar (20),
sexo enum ('M','F'),
endereco varchar (20) not null,
email varchar (20),
telefone char (9) not null
);

create table funcionario(
idFuncionario int primary key not null auto_increment,
nome varchar(20) not null,
cpf char(10) not null,
cargo varchar (10) not null,
login varchar(10) not null,
senha varchar(15) not null,
nivelAcesso varchar(5) not null
);

create table peca(
idPeca int primary key not null auto_increment,
descricao varchar(10),
precoCusto double not null,
precoVenda double not null,
fabricante varchar(15) not null,
modelo varchar(10)
);

create table compraFuncionario(
idCompra int primary key not null auto_increment, 
idCompraFucionario int not null auto_increment,
foreign key(idCompraFuncionario) references funcionario(idFuncionario),
idCompraFornecerdor int not null auto_increment,
foreign key (idCompraFornecedor) references fornecedor(idFornecedor) ,
dataCompra date not null,
precoTotal double not null
);

create table venda(
idVenda int primary key not null auto_increment,
idCodigoCliente int not null auto_increment,
foreign key(IdCompraCliente) references cliente(idCliente),
idCodigoFuncionario int not null auto_increment,
foreign key(idCodigoFuncionario) references funcionario(idFuncionario),
dataVenda date not null,
precoVenda double not null,
desconto double,
precoTotal double not null
);

create table fornecedor(
idFornecedor int primary key not null auto_increment,
nome varchar(15) not null,
cnpj char(15) not null
);

create table estoque(
idEstoque int primary key not null,
idItem int  not null auto_increment,
foreign key (idItem) references peca(idpeca),
qtdItem int
);



