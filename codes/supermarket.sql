-- https://www.kaggle.com/datasets/vjchoudhary7/customer-segmentation-tutorial-in-python

/* Você está possui um supermercado e por meio de cartões de sócio, você tem alguns dados básicos sobre seus clientes,
como ID do cliente, idade, sexo, receita anual e pontuação de gastos. Você é o dono do supermercado e quer entender
os clientes-alvo para que o senso possa ser dado à equipe de marketing e planejar a estratégia de acordo. */ 

-- Retorna todas as informações disponíveis para um cliente específico por meio do ID:
SELECT *
FROM tabela_clientes
WHERE ID_cliente = 1234;

-- Retorna a idade média dos clientes:
SELECT AVG(idade)
FROM tabela_clientes;

-- Retorna o número de clientes do sexo feminino:
SELECT COUNT(*)
FROM tabela_clientes
WHERE sexo = 'Feminino';

-- Retorna a receita anual média dos clientes:
SELECT AVG(receita_anual)
FROM tabela_clientes;

-- Retorna a pontuação de gastos mais alta entre os clientes:
SELECT MAX(pontuacao_gastos)
FROM tabela_clientes;

-- Retorna o número de clientes que têm uma pontuação de gastos superior a 500;
SELECT COUNT(*)
FROM tabela_clientes
WHERE pontuacao_gastos > 500;

-- Retorna o número de clientes em cada faixa etária (por exemplo, abaixo de 18, 18-25, 26-35, etc.):
SELECT
    CASE
        WHEN idade < 18 THEN 'Menor de 18'
        WHEN idade BETWEEN 18 AND 25 THEN '18-25'
        WHEN idade BETWEEN 26 AND 35 THEN '26-35'
        WHEN idade BETWEEN 36 AND 45 THEN '36-45'
        WHEN idade BETWEEN 46 AND 55 THEN '46-55'
        ELSE 'Maior de 55'
    END AS faixa_etaria,
    COUNT(*)
FROM tabela_clientes
GROUP BY faixa_etaria;

-- Retorna a idade mínima e máxima dos clientes:
SELECT MIN(idade), MAX(idade)
FROM tabela_clientes;

-- Retorna o número de clientes com uma receita anual superior a 100.000:
SELECT COUNT(*)
FROM tabela_clientes
WHERE receita_anual > 100000;

-- Retorna o ID do cliente com a pontuação de gastos mais alta:
SELECT ID_cliente
FROM tabela_clientes
ORDER BY pontuacao_gastos DESC
LIMIT 1;

-- Retorna a média da receita anual dos clientes do sexo masculino:
SELECT AVG(receita_anual)
FROM tabela_clientes
WHERE sexo = 'Masculino';

-- Retorna o número de clientes em cada categoria de pontuação de gastos (por exemplo, baixa, média, alta):
SELECT
    CASE
        WHEN pontuacao_gastos < 300 THEN 'Baixa'
        WHEN pontuacao_gastos BETWEEN 300 AND 600 THEN 'Média'
        ELSE 'Alta'
    END AS categoria_pontuacao,
    COUNT(*)
FROM tabela_clientes
GROUP BY categoria_pontuacao;

-- Retorna o ID do cliente mais jovem:
SELECT ID_cliente
FROM tabela_clientes
ORDER BY idade ASC
LIMIT 1;

-- Retorna a receita anual mínima e máxima dos clientes:
SELECT MIN(receita_anual), MAX(receita_anual)
FROM tabela_clientes;

-- Retorna a pontuação de gastos média dos clientes do sexo feminino:
SELECT AVG(pontuacao_gastos)
FROM tabela_clientes
WHERE
