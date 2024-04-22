1-- SELECT SUM(quantidade) AS total_produtos_em_estoque
FROM nome_da_tabela_de_estoque;

2-- SELECT AVG(preco) AS media_precos
FROM nome_da_tabela_de_produtos;

3-- SELECT *
FROM nome_da_tabela_de_produtos
WHERE nome_do_produto LIKE 'Modelo 20%';

4-- SELECT nome, preco, 
FROM produtos
WHERE preco BETWEEN 50 AND 150;

5 -- SELECT nome, preco
FROM nome_da_tabela_de_produtos
ORDER BY preco
LIMIT 5;

6 -- SELECT produtos_nome
FROM produtos
LEFT JOIN estoque ON produtos.id = estoque.produto_id
WHERE estoque_produto_id IS NULL;

7 -- SELECT nome, descricao
FROM nome_da_tabela_de_produtos
WHERE descricao IS NOT NULL AND descricao != '';

8 -- SELECT nome, preco
FROM nome_da_tabela_de_produtos
WHERE preco > (SELECT AVG(preco) FROM nome_da_tabela_de_produtos);

9 -- SELECT *
FROM nome_da_tabela_de_produtos
WHERE nome LIKE '%SSD%';

10 -- SELECT nome, preco
FROM nome_da_tabela_de_produtos
ORDER BY preco DESC;

11-- SELECT nome, quantidade_estoque
FROM nome_da_tabela_de_produtos
WHERE quantidade_estoque % 2 = 0;

12 -- SELECT nome, descricao
FROM nome_da_tabela_de_produtos
WHERE preco < 100 AND quantidade_estoque > 0;