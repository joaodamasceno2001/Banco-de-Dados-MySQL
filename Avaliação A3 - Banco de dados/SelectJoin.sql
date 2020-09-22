use avaliacaoa3;

#Consulta 1
select a.idFuncionario, a.nome, a.cargo, b.idVenda, b.idCodigoCliente as codigoCliente, b.dataVenda, b.precoVenda from funcionario a
join venda b
on a.idFuncionario = b.idCodigoFuncionario 
where a.nome = 'Felipe';

#Consulta 2
select a.idFuncionario, a.nome, a.cargo, b.idCompra, b.idCompraFuncionario as idFornecedor, b.dataCompra from funcionario a
join compraFuncionario b
on a.idFuncionario = b.idCompraFuncionario
order by a.nome;

#Consulta 3
select * from peca
where fabricante = 'AMD';

#Consulta 4
select * from venda
where dataVenda < '2010/01/01';

#Consulta 5
select a.idFuncionario, a.nome, b.idVenda, b.idCodigoCliente as CodigoCliente,c.descricao, b.precoVenda, b.dataVenda  from funcionario a
join venda b
join peca c
on c.idPeca = b.idItemVendido
on a.idFuncionario = b.idCodigoFuncionario
where b.precoVenda >= '2000.00';

#Consulta 6
select max(qtdItem) as QuantidadeItens, a.descricao, a.modelo, a.fabricante, b.idEstoque from peca a
join estoque b
on a.idPeca = b.idItem;

#Consulta 7
select a.nome,c.descricao,c.fabricante,c.modelo, b.precoVenda, min(b.dataVenda) as DataVenda from funcionario a
join venda b
join peca c
on c.idPeca = b.idItemVendido
on a.idFuncionario = b.idCodigoFuncionario;

#consulta 8
select a.idFuncionario as codigoFuncionario, a.nome, b.idVenda as codigoVenda, b.precoVenda, c.descricao, b.dataVenda from funcionario a
join venda b
join peca c 
on c.idPeca = b.idItemVendido
on a.idFuncionario = b.idCodigoFuncionario
order by b.precoVenda;

#consulta 9
select * from peca a 
join venda b
on  a.idPeca = b.idItemVendido
where a.fabricante = 'Nokia';

#Consulta 10
Select a.descricao as produto, count(b.idItemVendido) as QuantidadeVendida From peca a
join venda b
on a.idPeca = b.idItemVendido
group by a.descricao;
