use ap4;

-- Informa os nomes e funções dos recursos
SELECT * FROM Recursos;

-- Informa o endereço dos Recursos
SELECT * FROM Endereço;

-- Informa os Contatos dos Recursos
SELECT * FROM Contato;

-- Informa O histórico de Salario de todos os Recursos
SELECT * FROM Salario;
SELECT reg_recurso, SUM(valor - valorant) AS Atualizacao 
FROM Salario
GROUP BY reg_recurso;

-- Informa os Recursos e suas respectivas linguagens
SELECT * FROM Ferramentas_De_Prog AS Linguagens;

-- Informa integrantes da equipe
SELECT
re.nome AS 'Recurso', 
et.nome AS 'Equipe' 
FROM recursos AS re JOIN equipe_junto_recursos AS eqr 
ON eqr.registro = re.registro JOIN equipe_de_trabalho AS et 
ON et.codigo = eqr.codigo ORDER BY re.nome ASC;

-- Informa os gerentes e seus respectivos projetos
SELECT
re.nome AS 'Gerente', 
p.nome AS 'Projeto' 
FROM recursos AS re JOIN gerente_projeto AS gp 
ON gp.nome_gerente = re.nome JOIN projetos AS p
ON p.codigo = gp.cod_projeto;

-- Informa os Projetos e seus estados
SELECT * FROM Projetos
INNER JOIN Estado_Proj
ON Projetos.codigo = Estado_Proj.cod_proj; 

-- Informa as datas dos projetos finalizados
SELECT * from Tempo_Concluidos;

-- Informa as datas dos projetos em andamento
SELECT * from Tempo_Previsao;

-- Informa as Atividades dos Projetos
SELECT * from Atividades;

-- Informa as Tarefas das Atividades
SELECT * from Tarefas;