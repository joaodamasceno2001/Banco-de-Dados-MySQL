use ap4;
-- inserção de dados.

insert into Recursos (registro, nome, ocupacao) values
('00231', 'joao Carlos', 'gerente de projeto'),
('05460', 'Ricardo Lopes', 'gerente de projeto'),
('09885', 'Mateus José', 'analista de negócios'),
('04521', 'Franciso da Cunha', 'DBA'),
('08031', 'Renato Leão', 'programador'),
('04672', 'Arthur figueiredo', 'programador'),
('06541', 'Lucas Farias', 'programador'),
('04789', 'Christian Herculano', 'gerente de projeto'),
('01236', 'João Paulo', 'analsita de negócios'),
('00362', 'João Victor', 'DBA'); 


insert into Contato (reg_recurso, residencia, comercial, celular, ramal_interno) values
('00231','(81)3541-6566', '(81)9854-6544', '(81)9854-6544', '24'),
('05460','(81)3311-6226', '(81)9124-6333', '(81)9414-6334', '22'),
('09885','(81)3452-1236', '(81)9141-1412', '(81)9124-2133', '13'),
('04521','(81)3412-9990', '(81)9094-6221', '(81)9578-9783', '20'),
('08031','(81)3964-7890', '(81)9863-2459', '(81)9222-9076', '5'),
('04672','(81)3567-0142', '(81)9576-8906', '(81)9236-7844', '18'),
('06541','(81)3461-0589','(81)7961-7961','(81)7946-1346','12'),
('04789','(81)4861-4879','(81)3647-9851','(81)1346-4649','4'),
('01236','(81)7964-1354','(81)9461-3581','(81)4896-3645','7'),
('00362','(81)3361-0835','(81)8422-2998','(81)9461-3411','8');

insert into Endereço (reg_recurso, CEP, cidade, logradouro) values
('00231','51130-285', 'Recife', 'Av. Conde da Boa Vista, 481, Boa Vista'),
('05460','51020-272', 'Recife', 'Rua baltazar Passos, 481, Setúbal'),
('09885','51020-656', 'Recife', 'R. do Cobre, 18 - Lagoa Nova'),
('04521','51020-656', 'Recife', 'Rua Padre Carapuceiro, 866'),
('08031','51020-123', 'Recife', 'Rua Conselheiro Aguiar, 80, Boa Viagem'),
('04672','51021-857', 'Abreu e Lima', 'Rua Santos Dumont, 400, Timbó'),
('06541','78642-134','jaboatão','Bernado vieira de Melo, candeias'),
('04789','14597-649','jaboatão','Av. presidente kenedy, candeias'),
('01236','16794-365','jaboatão','Rua da Arvore, candeias'),
('00362','12479-721','Jaboatão','Rua jose nunes da cinha, candeias');

insert into Salario (reg_recurso, valor, data_alteracao, valorant) values
('00231', '2000.0', '2020/02/15', '1500.00'),
('05460', '5000.0', '2013/01/29', '1000.00'),
('09885', '6000.0', '2018/12/05', '2500.00'),
('04521', '1500.00', '2016/04/08', '1450.00'),
('08031', '700.00', '2020/07/30', '600.00'),
('04672', '3000.00', '2011/10/11', '1050.00'),
('06541', '2100.0', '2020/03/15', '2000.00'),
('04789','800.0','2020/06/14','900.0'),
('01236','1200.0','2020/05/05','1000.0'),
('00362','3500.0','2020/04/13','3000.0');

insert into Ferramentas_De_Prog (reg_recurso, linguagem, versao) values
('00231', 'java', '1.6'),
('05460', 'MySql', '2.6'),
('09885', 'Python', '2.1'),
('04521', 'C++', '1.2'),
('08031', 'java', '1.6'),
('04672', 'java', '1.2'),
('06541', 'Python', '2.2'),
('04789','C#','1.3'),
('01236','Ruby','1.2'),
('00362','Oracle','3.0');

insert into Equipe_De_Trabalho (codigo, nome, qtd_recursos) values
(1, 'Delta', '2'),
(2, 'Launch', '4'),
(3, 'Front-end', '3'),
('4','Back-end','5'),
('5','Full-stack','2'),
('6','Dragon','3'),
('7','Eclipse','1'),
('8','Team Code','6'),
('9','Beta','5'),
('10','Charger','4');

insert into Equipe_Junto_Recursos (registro, codigo) values
('00231', '1'),
('05460', '2'),
('09885', '3'),
('04521', '1'),
('08031', '2'),
('04672', '3'),
('06541', '5'),
('04789','2'),
('01236','4'),
('00362','6');

insert into Projetos (codigo, cod_equipe, nome) values
('111', '1', 'Super power'),
('131', '2', 'increase data');

insert into Estado_Proj(cod_proj, estado) values
('111', 'Em andamento'),
('131', 'Finalizado');

insert into Gerente_Projeto (cod_projeto, nome_gerente) values
('111', 'joao Carlos'),
('131', 'Ricardo Lopes');

insert into Tempo_Concluidos(cod_projeto, data, horas, estado) values
('131', '2020/05/15', '16:05:11', 'Finalizado');

insert into Tempo_Previsao(cod_projeto, data, horas) values
('111', '2020/08/10', '00:00:01');

insert into Atividades(cod_projeto, codigo, nome) values
('111', '111.1', 'Melhorar o poder do código'),
('131', '131.1', 'Agilizar o BD');

insert into Tarefas(cod_atividade, descricao) values
('111.1', 'Adicionar um novo array para melhorar o poder'),
('111.1', 'Avaliar qual código é o mehor'),
('131.1', 'Analisar qual o BD será melhor utilizado'),
('131.1', 'excluir alguns registros desnecessários');