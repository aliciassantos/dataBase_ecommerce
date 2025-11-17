SELECT * FROM CARRINHO; #
SELECT * FROM CATEGORIA;#
SELECT * FROM CLIENTE; #
SELECT * FROM COMPRA;#
SELECT * FROM PRODUTO;#
SELECT * FROM FORNECEDOR; #
SELECT * FROM FORNECIDO; #
select * from departamento; #
select * from funcionario;#

SELECT* FROM NOTAFISCAL;
SELECT * FROM PESSOA;#

SELECT * FROM ITEM;#



#------------------------------------- CONSULTAS DE UTILIDADE -------------------------------------

# Verificar quais funcionários são gerentes de um departamento
SELECT f.CPFfuncionario, f.idDpto 
FROM departamento d
INNER JOIN funcionario f ON (d.cpfgerente = f.cpfFuncionario); 

# Exibir quais funcionários também são clientes
SELECT e.cpffuncionario AS CPFPessoa 
FROM funcionario e
INNER JOIN cliente c ON (c.cpfcliente = e.cpffuncionario);


# Exibir a média salarial por departamento (idDpto, nome, gerente, media salarial)
SELECT  d.idDpto, d.nomeDpto, d.CPFGerente, g.nome AS 'Nome gerente', f.Salario AS 'Salário gerente', AVG(f.Salario) AS 'Média salarial'
FROM FUNCIONARIO f INNER JOIN DEPARTAMENTO d
ON f.idDpto = d.idDpto
INNER JOIN PESSOA g
ON g.CPF = d.CPFGerente
GROUP BY f.idDpto, d.nomeDpto;


# Exibir o estoque 
SELECT quantEstoque, descProduto
FROM PRODUTO;
# Quantidade de vendas em um dia específico
