create database avaliacaoa3;
use avaliacaoa3;

create table cliente(
idCliente int primary key not null auto_increment,
nome varchar (20) not null,
sexo enum ('M','F'),
endereco varchar(50) not null,
email varchar (30) not null,
telefone char (10) not null
);

create table funcionario(
idFuncionario int primary key not null auto_increment,
nome varchar(20) not null,
cpf char(15) not null,
cargo varchar (15) not null,
login varchar(15) not null,
senha varchar(15) not null
);

create table fornecedor(
idFornecedor int primary key not null auto_increment,
nome varchar(15) not null,
cnpj char(15) not null
);

create table compraFuncionario(
idCompra int primary key not null auto_increment, 
idCompraFuncionario int,
foreign key(idCompraFuncionario) references funcionario(idFuncionario) on delete set null,
idCompraFornecedor int,
foreign key (idCompraFornecedor) references fornecedor(idFornecedor) on delete set null,
dataCompra date not null
);

create table peca(
idPeca int primary key not null auto_increment,
descricao varchar(15),
precoCusto double not null,
precoVenda double not null,
fabricante varchar(15) not null,
modelo varchar(10)
);

create table venda(
idVenda int primary key not null auto_increment,
idCodigoCliente int not null,
foreign key(IdCodigoCliente) references cliente(idCliente),
idCodigoFuncionario int not null,
foreign key(idCodigoFuncionario) references funcionario(idFuncionario),
dataVenda date not null,
precoVenda double not null,
idItemVendido int not null,
foreign key (idItemVendido) references Peca(idPeca)
);

create table estoque(
idEstoque int primary key not null auto_increment,
idItem int  not null,
foreign key (idItem) references peca(idPeca),
qtdItem int
);



