use avaliacaoa2;

#Letra A OK
select * from produto;

#Letra B OK
select * from cliente;

#Letra C OK
select * from vendedores;

#Letra D OK
select NumeroPedido, CodProduto, Quantidade from itempedido
where Quantidade = '35';

#Letra E OK
select NomeCliente, Cidade, Endereço from cliente
where Cidade = 'Niterói';

#Letra F OK
select * from produto
where UnidadeProduto = 'M' and ValorUnitário = 1.05;

#Letra G OK
select CodProduto, DescricaoProduto from produto 
where ValorUnitário between 0.32 and 2.00;

#Letra H OK
select * from produto
where DescricaoProduto like 'Q%';

#Letra I OK
select * from vendedores
where NomeVendedor not like 'JO%';

#Letra J OK
select * from vendedores
where FaixaComisao in ('A','B');

#Letra K OK
Select * from cliente
where IE is null;

#Letra L OK
select NomeVendedor, SalárioFixo from vendedores
order by NomeVendedor;

#Letra M OK
Select NomeCliente, Cidade, UF from cliente
order by UF desc, Cidade desc;

#Letra N OK
select DescricaoProduto, ValorUnitário from produto
where UnidadeProduto = 'Kg'
order by ValorUnitário asc;

#Letra O OK
SELECT NomeVendedor, (SalárioFixo * 1.75) + 120 FROM vendedores
WHERE FaixaComisao = 'C'
ORDER BY NomeVendedor;

#Letra P OK
select MIN(SalárioFixo), MAX(SalárioFixo) FROM vendedores;

#Letra Q OK
select sum(Quantidade) FROM itemPedido 
where CodProduto = '78';

#Letra R OK
select AVG(SalárioFixo) FROM vendedores;

#Letra S OK 
select * from vendedores 
where SalárioFixo > 2500;




