USE bd_vsconnect2;

-- SELECIONE TODOS os dados, com o id DA tabela usuario
SELECT *, BIN_TO_UUID(id) FROM tb_usuario;

-- SELECIONE O VALOR MINIMO do dado proposta DA tabela servico
SELECT MIN(proposta) FROM tb_servico;
-- SELECIONE O VALOR MAXIMO do dado proposta DA tabela servico
SELECT MAX(proposta) FROM tb_servico;

-- SELECIONE o dado titulo e o dado proposta DA tabela servico ONDE proposta seja igual a SELECAO MINIMA do dado proposta da tabela servico
SELECT titulo, proposta FROM tb_servico WHERE proposta = (SELECT MIN(proposta) FROM tb_servico);

-- SELECIONE o dado titulo e o dado proposta DA tabela servico ONDE proposta seja igual a SELECAO MAXIMA do dado proposta da tabela servico
SELECT titulo, proposta FROM tb_servico WHERE proposta = (SELECT MAX(proposta) FROM tb_servico);

-- SELECIONE E CONTE os dados do valor id DA tabela servico
SELECT COUNT(id) FROM tb_servico;
-- SELECIONE E SOME  os dados do valor proposta DA tabela servico
SELECT SUM(proposta) FROM tb_servico;

-- SELECIONE E CONTE da tabela servico os dados do valor id e deixe COMO 'Total Serviço', no valor status servico deixe COMO 'Status' DA tabela servico ONDE
-- os dados de status servico sejam igual a 'Em andamento' e AGRUPE POR status servico (ou AGRUPE por Status)
SELECT COUNT(tb_servico.id) AS 'Total Serviço', status_servico AS 'Status' FROM tb_servico WHERE status_servico = "Em Andamento" GROUP BY status_servico;

-- SELECIONE o valor titulo DA tabela servico e ORDENE o titulo POR ORDEM ASCENDENTE
SELECT titulo FROM tb_servico ORDER BY titulo ASC;

-- SELECIONE o valor titulo DA tabela servico e ORDENE o titulo POR ORDEM DESCENDENTE
SELECT titulo FROM tb_servico ORDER BY titulo DESC;

-- SELECIONE o titulo e deixe COMO 'Servico', pegue o valor nome da tabela tech e deixe COMO 'Tecnologia' DA tabela tech servico
-- e FAÇA UMA JUNÇÃO da tabela servico NA tabela tech servico, especificamente no id, e faça com que ele seja igual ao id da tabela servico
-- FAÇA TAMBÉM UMA JUNÇÃO da tabela tech NA tabela tech servico, especificamente no id, e faça com que ele seja igual ao id da tabela tech
SELECT titulo AS 'Servico', tb_tech.nome AS 'Tecnologia' FROM tb_tech_servico
INNER JOIN tb_servico ON tb_tech_servico.id_servico = tb_servico.id
INNER JOIN tb_tech ON tb_tech_servico.id_tech = tb_tech.id;

