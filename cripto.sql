-- https://www.kaggle.com/datasets/philmohun/cryptocurrency-financial-data

-- Retorna todas as informações disponíveis para uma determinada moeda em uma data específica:
SELECT *
FROM tabela_criptomoedas
WHERE Nome_moeda = 'Bitcoin' AND data = '2023-07-03';


-- Retorna o valor de mercado de uma determinada moeda em uma data específica:
SELECT Valor_mercado
FROM tabela_criptomoedas
WHERE Nome_moeda = 'Ethereum' AND data = '2023-07-01';


-- Retorna o volume de uma determinada moeda em uma data específica:
SELECT Volume
FROM tabela_criptomoedas
WHERE Nome_moeda = 'Ripple' AND data = '2023-06-30';


-- Retorna a criptomoeda com o maior valor de abertura em uma data específica:
SELECT Nome_moeda
FROM tabela_criptomoedas
WHERE data = '2023-07-02'
ORDER BY abertura DESC
LIMIT 1;


-- Retorna a criptomoeda com o menor valor de fechamento em uma data específica:
SELECT Nome_moeda
FROM tabela_criptomoedas
WHERE data = '2023-07-01'
ORDER BY fechamento ASC
LIMIT 1;


-- Retorna as cinco criptomoedas com o maior valor de mercado em uma data específica:
SELECT Nome_moeda, Valor_mercado
FROM tabela_criptomoedas
WHERE data = '2023-07-03'
ORDER BY Valor_mercado DESC
LIMIT 5;


-- Retorna o valor médio de fechamento para todas as criptomoedas em uma data específica:
SELECT AVG(fechamento)
FROM tabela_criptomoedas
WHERE data = '2023-07-02';


-- Retorna a data em que uma determinada criptomoeda atingiu seu valor máximo de alta:
SELECT data
FROM tabela_criptomoedas
WHERE Nome_moeda = 'Litecoin'
ORDER BY alta DESC
LIMIT 1;


-- Retorna o valor máximo de alta entre todas as criptomoedas em uma data específica:
SELECT MAX(alta)
FROM tabela_criptomoedas
WHERE data = '2023-07-01';

-- Retorna as três criptomoedas com o menor valor de abertura em uma data específica:
SELECT Nome_moeda, abertura
FROM tabela_criptomoedas
WHERE data = '2023-06-30'
ORDER BY abertura ASC
LIMIT 3;

-- Retorna a criptomoeda com o maior volume de negociação em uma data específica:
SELECT Nome_moeda
FROM tabela_criptomoedas
WHERE data = '2023-07-03'
ORDER BY volume DESC
LIMIT 1;


-- Retorna o número de criptomoedas que tiveram um valor de mercado superior a 1 bilhão em uma data específica:
SELECT COUNT(*)
FROM tabela_criptomoedas
WHERE Valor_mercado > 1000000000 AND data = '2023-07-02';
