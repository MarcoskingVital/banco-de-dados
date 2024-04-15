1. Selecionar Todos os Produtos
SELECT * FROM produtos

2. Selecionar Produtos Específicos
SELECT nome, preco
FROM produtos
WHERE preco > 100;

3. Produtos com Estoque Baixo
SELECT nome, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 20;

4. Produtos Por Faixa de Preço
SELECT nome, preco
FROM produtos
WHERE preco < 50,BETWEEN 50 AND 100, >100;

5. Atualização de Preços
SELECT nome, preco
FROM produtos
UPDATE produtos
WHERE preco ALL * 10/100

6. Ordenar Produtos por Disponibilidade
SELECT nome, preco, quantidade_estoque
FROM produtos
BY ORDER quantidade_estoque
