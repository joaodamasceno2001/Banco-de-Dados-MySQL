use avaliacaoa2;

insert into cliente
(CodCliente, NomeCliente, Endereço, Cidade, CEP, UF, CNPJ, IE)
values 
('720', 'Ana', 'Rua 17 n. 19', 'Niterói', '24358310', 'RJ', '12113231/0001-34', 2134),
('870', 'Flávio', 'Av. Pres. Vargas 10', 'São Paulo', '22763931', 'SP', '22534126/9387-9', 4631),
('110', 'Jorge', 'Rua Caiapo 13', 'Curitiba', '30078500', 'PR', '14512764/9634-9', null),
('222', 'Lúcia', 'Rua Itabira 123 Loja 9', 'Belo Horizonte', '22124391', 'MG', '28315213/9348-8', 2985),
('830', 'Maurício', 'Av. Paulista 1236 Sl 2345', 'São Paulo', '3012683', 'SP', '32816985/7465-6', 9343),
('130', 'Edmar', 'Rua da Praia sn', 'Salvador', '30079300', 'BA', '23463284/234-9', 7121),
('410', 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078900', 'RJ', '12835128/2346-9', 7431),
('20', 'Beth', 'Av. Climério 45', 'São Paulo', '25679300', 'SP', '32485126/7326-8', 9280),
('157', 'Paulo', 'Tv. Moraes c/3', 'Londrina', null, 'PR', '32848223/324-2', 1923),
('180', 'Lívio', 'Av. Beira Mar n.1256', 'Florianópolis', '30077500', 'SC', '12736571/2347-4', null),
('260', 'Susana', 'Rua Lopes Mendes 12', 'Niterói', '30046500', 'RJ', '21763571/232-9', 2530),
('290', 'Renato', 'Rua Meireles 123 bl.2 sl, 345', 'São Paulo', '30225900', 'SP', '13276571/1231-4', 1820),
('390', 'Sebastião', 'Rua da Igreja 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', 9071),
('234', 'José', 'Quadra 3 bl.3 sl. 1003', 'Brasília', '22841650', 'DF', '21763576/1232-3', 2931);


insert into vendedores
(CodVendedor, NomeVendedor, SalárioFixo, FaixaComisao)
values 
('209','José', 1800.00,'C'),
('111','Carlos', 2490.00,'A'),
('11','João', 2780.00,'C'),
('240','Antônio', 9500.00,'C'),
('720','Felipe', 4600.00,'A'),
('213','Jonas', 2300.00,'A'),
('101','João', 2650.00,'C'),
('310','josias', 870.00,'B'),
('250','Maurício', 2930.00,'B');


insert into pedido
(NumPedido, PrazoEntrega, CodCliente, CodVendedor)
values
('121', '20', '410', '209'),
('97', '20', '720', '101'),
('101', '15', '720', '101'),
('137', '20', '720', '720'),
('148', '20', '720', '101'),
('189', '15', '870', '213'),
('104', '30', '110', '101'),
('203', '30', '830', '250'),
('98', '20', '410', '209'),
('143', '30', '20', '111'),
('105', '15', '180', '240'),
('111', '20', '260', '240'),
('103', '20', '260', '11'),
('91', '20', '260', '11'),
('138', '20', '260', '11'),
('108', '15', '290', '310'),
('119', '30', '390', '250'),
('127', '10', '410', '11');


insert into produto
(CodProduto, UnidadeProduto, DescricaoProduto, ValorUnitário)
values
('25', 'Kg', 'Queijo', '0.97'),
('31', 'BAR', 'Chocolate', '0.87'),
('78', 'L', 'Vinho', '2'),
('22', 'M', 'Linho', '0.11'),
('30', 'SAC', 'Açucar', '0.3'),
('53', 'M', 'Linha', '1.8'),
('13', 'G', 'Ouro', '6.18'),
('45', 'M', 'Madeira', '0.25'),
('87', 'M', 'Cano', '1.97'),
('77', 'M', 'Papel', '1.05');

insert into ItemPedido
(NumeroPedido, CodProduto, Quantidade)
values
(121, 31, 35),       
(97, 77, 20),       
(101, 31, 9),       
(101, 78, 18),      
(101, 13, 5),       
(98, 77, 5),        
(148, 45, 8),      
(148, 31, 7),
(148, 25, 10),     
(148, 78, 30),
(203, 31, 6),      
(189, 78, 45),     
(143, 31, 20),     
(143, 78, 10),
(145, 78, 10),
(111, 25, 10),     
(111, 78, 70),
(103, 53, 37),
(91, 77, 40),      
(138, 22, 10),     
(138, 77, 35),      
(138, 53, 18),     
(108, 13, 17),     
(119, 77, 40),     
(119, 13, 6),      
(119, 22, 10),     
(119, 87, 43),     
(137, 13, 8);


