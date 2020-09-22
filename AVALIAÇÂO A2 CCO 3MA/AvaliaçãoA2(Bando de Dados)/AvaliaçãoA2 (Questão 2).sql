create database avaliacaoA2;
use avaliacaoA2;

create table cliente(
CodCliente int(3) primary key Not null ,
NomeCliente varchar(20) not null ,
Endereço varchar(30) not null ,
Cidade varchar(15) ,
CEP int(8),
UF char(2) ,
CNPJ char(20) not null,
IE int(4)
);

create table vendedores(
CodVendedor int(3) primary key not null,
NomeVendedor varchar(20) not null,
SalárioFixo float not null,
FaixaComisao enum('A', 'B', 'C') not null
);

create table pedido(
NumPedido int(3) primary key not null,
PrazoEntrega int(2) not null,
CodCliente int(3),
foreign key (CodCliente) references cliente(CodCliente),
CodVendedor int(3),
foreign key (CodVendedor) references vendedores(CodVendedor)
);

create table produto(
CodProduto int(2) primary key not null,
UnidadeProduto enum('Kg','BAR','L','SAC','M','G') not null,
DescricaoProduto varchar(10) not null,
ValorUnitário decimal(10,2)
);

create table  ItemPedido(
NumeroPedido int(3) not null,
CodProduto int(2) not null,
foreign key (CodProduto) references produto(CodProduto),
Quantidade int(2)
);