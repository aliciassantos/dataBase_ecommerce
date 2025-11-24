#------------------------------------- CONSULTAS RÁPIDAS -------------------------------------
SELECT * FROM CATEGORIA;
SELECT * FROM CLIENTE; 
SELECT * FROM COMPRA;
SELECT * FROM CARRINHO; 
SELECT * FROM NOTAFISCAL;
SELECT * FROM PRODUTO;
SELECT * FROM FORNECEDOR; 
SELECT * FROM FORNECIDO; 
SELECT * FROM DEPARTAMENTO; 
SELECT * FROM FUNCIONARIO;
SELECT * FROM PESSOA;
SELECT * FROM ITEM;
#50 45 77 62 67

#------------------------------------- CONSULTAS DE UTILIDADE ENVOLVENDO O AUTORRELACIONAMENTO -------------------------------------
# Verifica quais funcionários são gerentes de um departamento 
SELECT DISTINCT g.CPFfuncionario, g.idDpto, p.Nome
FROM funcionario g
INNER JOIN funcionario f ON (f.cpfgerente = g.cpfFuncionario)
INNER JOIN PESSOA p ON p.CPF = g.CPFfuncionario
ORDER BY g.idDpto;

#------------------------------------- CONSULTAS DE UTILIDADE -------------------------------------
# Exibe quais funcionários também são clientes
SELECT e.cpffuncionario AS CPFPessoa 
FROM funcionario e
INNER JOIN cliente c ON (c.cpfcliente = e.cpffuncionario);

# Exibe a média salarial de cada departamento
SELECT  d.idDpto, d.nomeDpto, AVG(f.Salario) AS 'Média salarial'
FROM FUNCIONARIO f INNER JOIN DEPARTAMENTO d
ON f.idDpto = d.idDpto
INNER JOIN PESSOA g
ON g.CPF = d.CPFGerente
GROUP BY f.idDpto, d.nomeDpto;

# Exibe o estoque de produtos fornecidos pela Make Prime
SELECT quantEstoque, descProduto
FROM PRODUTO p INNER JOIN FORNECIDO fe
ON p.idProduto = fe.idProduto
INNER JOIN FORNECEDOR fo
ON fo.CNPJ = fe.CNPJ
WHERE fo.Nome = 'Make Prime';

# Verifica a quantidade de vendas realizadas no dia 04/11/2025
SELECT COUNT(dataCompra) AS 'Quantidade vendas'
FROM COMPRA
WHERE dataCompra = '2025-11-04'
GROUP BY dataCompra;

# Todas as notas fiscais geradas por compras por cada cliente 
SELECT nf.serieNF, nf.numeroNF, c.CPFCliente, p.Nome
FROM NOTAFISCAL nf 
INNER JOIN COMPRA cp
ON (nf.idCompra = cp.idCompra)
LEFT OUTER JOIN CARRINHO car
ON car.idCarrinho = cp.idCarrinho
INNER JOIN CLIENTE c
ON car.CPFCliente = c.CPFCliente
INNER JOIN PESSOA p
ON p.CPF = c.CPFCliente;

# Exibe os nomes dos produtos que foram fornecidos em uma quantidade menor que 50
SELECT p.descProduto, fdo.qtdForn
FROM FORNECIDO fdo INNER JOIN PRODUTO p
ON p.idProduto = fdo.idProduto
WHERE fdo.qtdForn < 50; 

#------------------------------------- CONSULTAS COM SUBCONSULTAS -------------------------------------
# Exibe quais funcionários possuem um salário maior que a média salarial da empresa
SELECT p.nome, f.salario
FROM FUNCIONARIO f INNER JOIN PESSOA p 
ON f.CPFfuncionario = p.CPF
WHERE f.salario > (
	SELECT AVG(salario)
    FROM FUNCIONARIO
);

# Exibe o nome e o id dos produtos que nunca foram comprados
SELECT p.descProduto, p.idProduto
FROM PRODUTO p 
WHERE p.idProduto NOT IN (
	SELECT idProduto
    FROM ITEM
);

# Exibe os nomes dos fornecedores que não fornecem nenhum produto com custo superior a 100
SELECT fcedo.nome
FROM FORNECEDOR fcedo
WHERE fcedo.CNPJ NOT IN (
	SELECT fcido.CNPJ
    FROM FORNECIDO fcido INNER JOIN PRODUTO p 
    ON fcido.idProduto = p.idProduto
	WHERE p.precoProdutoVenda > 100
);

# Lista a classe e o nome dos clientes cujo valor médio da quantidade média de produtos em seus carrinhos é maior do que a média
# da quantidade de produtos de todos os carrinhos 
SELECT * FROM CLIENTE;
SELECT * FROM CARRINHO;
SELECT * FROM ITEM;

SELECT p.nome, cl.classeCliente
FROM CLIENTE cl INNER JOIN CARRINHO ca 
ON cl.cpfCliente = ca.CPFCliente
INNER JOIN PESSOA p
ON p.CPF = cl.cpfCliente

GROUP BY cl.classeCliente, p.nome
HAVING AVG(quantProduto) > (
	SELECT AVG(quantProduto)
    FROM CARRINHO
);

# Encontra os nomes e os salários dos funcionários que ganham menos que o salário máximo pago no departamento de 'Suporte ao Cliente'.
SELECT * FROM DEPARTAMENTO;
SELECT * FROM FUNCIONARIO;

SELECT p.nome, f.salario
FROM PESSOA p INNER JOIN FUNCIONARIO f
ON p.CPF = f.CPFfuncionario
WHERE f.salario < (
	SELECT MAX(salario)
    FROM FUNCIONARIO
    WHERE idDpto = 1
); 

