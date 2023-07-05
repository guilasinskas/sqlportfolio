/*
    Neste projeto fictício, atuo como analista de dados na área de vendas B2B de uma empresa.
    Meu objetivo é realizar uma análise detalhada dos dados de vendas disponíveis e gerar insights
    valiosos para impulsionar o negócio. Utilizarei consultas em SQL para explorar os dados,
    identificar tendências, padrões e fazer recomendações para a equipe de vendas com base
    nos resultados obtidos.
*/
  
/*
    O conjunto de dados disponível contém as seguintes informações:
    - Data da venda
    - SKU do produto
    - Valor da venda
    - Quantidade vendida
    - Canal de venda
    - Cliente
    - Região geográfica
    - Categoria do produto
*/ 

  
-- Identificar o desempenho de vendas por canal:
SELECT canal_de_venda, SUM(valor_da_venda) AS total_vendas
FROM tabela_de_vendas
GROUP BY canal_de_venda
ORDER BY total_vendas DESC;
/*
    Com base nessa consulta, identificaremos os canais de vendas que mais
    contribuem para a receita da empresa.
*/ 

  
-- Analisar a sazonalidade das vendas:
SELECT EXTRACT(MONTH FROM data_da_venda) AS mes, SUM(valor_da_venda) AS total_vendas
FROM tabela_de_vendas
GROUP BY mes
ORDER BY mes;
/*
    Essa consulta nos permitirá visualizar os padrões sazonais de vendas ao longo
    do ano.
*/ 

  
-- Avaliar o desempenho de vendas por região geográfica:
SELECT regiao_geografica, SUM(valor_da_venda) AS total_vendas
FROM tabela_de_vendas
GROUP BY regiao_geografica
ORDER BY total_vendas DESC;
/* 
    Ao analisar as vendas por região geográfica, identificaremos as áreas de maior potencial
    de crescimento e adaptaremos as estratégias de vendas específicas para cada região.
*/ 

  
-- Identificar os principais produtos vendidos:
SELECT sku_do_produto, SUM(quantidade_vendida) AS total_vendas
FROM tabela_de_vendas
GROUP BY sku_do_produto
ORDER BY total_vendas DESC
LIMIT 5;
/* 
    Com essa consulta, identificaremos os produtos mais vendidos e focaremos em estratégias
    para aumentar ainda mais sua demanda.
*/ 
