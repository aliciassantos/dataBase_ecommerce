
#View 1 - Departamentos (Monitoramento de Compras e Logística; Suporte ao Cliente )

#drop view InformacoesOperacionais;
#drop view InformacoesInternas;
#drop view View_Financeiro_Faturamento;
#drop view View_Financeiro_FolhaPagamento;

CREATE VIEW InformacoesOperacionais AS
SELECT DISTINCT
#dados do cliente
    Co.idCompra AS ID_Pedido,
    P.Nome AS NomeCliente,
    P.CPF AS CPFCliente,
    Co.dataCompra AS DataPedido,
    Co.status AS StatusEntrega,
#dados financeiros
    Co.precoTotal AS ValorTotalPedido,
    NF.FormaDePagamento,
#dados residenciais
    P.Rua as Rua,
    P.Numero as Número,
    P.Cidade as Cidade,
    p.Estado as Estado,
#dados do produto comprado
    Prod.descProduto AS ItemComprado,
    Prod.quantEstoque AS EstoqueAtualProduto
FROM
    COMPRA Co
JOIN
    CARRINHO Ca ON Co.idCarrinho = Ca.idCarrinho
JOIN
    CLIENTE C ON Ca.CPFCliente = C.cpfCliente
JOIN
    PESSOA P ON C.cpfCliente = P.CPF
LEFT JOIN
    NotaFiscal NF ON Co.idCompra = NF.idCompra
LEFT JOIN
    ITEM I ON Ca.idCarrinho = I.idCarrinho
LEFT JOIN
    PRODUTO Prod ON I.idProduto = Prod.idProduto
ORDER BY
    Co.idCompra DESC;

#View 2 - Departamentos(Desenvolvimento e Atualizações; Controle de Segurança e Informação)

/*
  VIEW para o grupo de infraestrutura e gestão (Segurança da Informação, Desenvolvimento).
  Contém dados de funcionários, estrutura organizacional
*/
CREATE VIEW InformacoesInternas AS
SELECT
#Funcionário
    P.Nome AS Nome_Funcionario,
    P.CPF AS CPF_Funcionario,
    P.Email AS Email_Funcionario,
    F.salario AS SalarioFuncionario,
#Departamento
    D.idDpto AS ID_Departamento,
    D.nomeDpto AS Nome_Departamento,
#Gerente
    P_Gerente.Nome AS Nome_Gerente,
    F.CPFGerente AS CPF_Gerente
FROM
    FUNCIONARIO F
JOIN
    PESSOA P ON F.CPFfuncionario = P.CPF 
LEFT JOIN
    DEPARTAMENTO D ON F.idDpto = D.idDpto
LEFT JOIN #caso o gerente for null mostra mesmo assim
    PESSOA P_Gerente ON F.CPFGerente = P_Gerente.CPF;


#View 3 - Departamento(Financeiro) - Funcionarios
CREATE VIEW View_Financeiro_FolhaPagamento AS
SELECT
    -- Dados do Funcionário
    P.Nome AS Nome_Funcionario,
    P.CPF AS CPF_Funcionario,
    F.Salario AS Salario,
    Gerente.Nome AS Nome_Gerente
    
FROM
    FUNCIONARIO F
JOIN
    PESSOA P ON F.CPFfuncionario = P.CPF
LEFT JOIN
    PESSOA Gerente ON F.CPFGerente = Gerente.CPF;


#View 4 - Departamento(Financeiro) - Compras

CREATE VIEW View_Financeiro_Faturamento AS
SELECT
    Co.idCompra AS ID_Compra,
    Co.dataCompra AS Data_Compra,
    Co.precoTotal AS Valor_Total_Compra,
    Co.status AS Status_Entrega_Pedido,

    -- Dados do Pagamento (Nota Fiscal)
    concat(NF.serieNF ,'-', 
    NF.numeroNF) as ID_NF,
    NF.FormaDePagamento,
    NF.dataEmissao AS Data_Emissao_NF,
    NF.Status AS Status_Pagamento, -- (Ex: 'Pago', 'Pendente', 'Cancelado')
    
    -- Dados do Cliente
    P_Cliente.Nome AS Nome_Cliente,
    P_Cliente.CPF AS CPF_Cliente
FROM
    COMPRA Co
JOIN
    CARRINHO Ca ON Co.idCarrinho = Ca.idCarrinho
JOIN
    CLIENTE C ON Ca.CPFCliente = C.cpfCliente
JOIN
    PESSOA P_Cliente ON C.cpfCliente = P_Cliente.CPF
LEFT JOIN
    NotaFiscal NF ON Co.idCompra = NF.idCompra;

select * from InformacoesOperacionais;
select * from InformacoesInternas;
select * from View_Financeiro_Faturamento;
select * from View_Financeiro_FolhaPagamento;

#---------------------------------------------------------PROCEDURES---------------------------------------------------
#A procedure cria um novo registro na tabela COMPRA, insere seus valores na tabela e calcula o valor total
DELIMITER // 
CREATE PROCEDURE RegistrarCompra (
    IN VidCarrinho INT 
)

BEGIN
DECLARE VprecoTotal DECIMAL (10, 2) DEFAULT 0;
DECLARE Vstatus VARCHAR(20) DEFAULT  'Processamento';
DECLARE VdataDaCompra DATE DEFAULT CURDATE();

    SELECT SUM(p.precoProduto * c.quantProduto) INTO VprecoTotal
    FROM ITEM it
    INNER JOIN CARRINHO c 
	ON it.idCarrinho = c.idCarrinho
    INNER JOIN PRODUTO p 
    ON it.idProduto = p.idProduto
    WHERE it.idCarrinho = VidCarrinho;

    IF VprecoTotal IS NULL OR VprecoTotal = 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERRO: Carrinho vazio ou inválido.';
    ELSE
		INSERT INTO COMPRA(idCarrinho, precoTotal, Status, dataCompra) VALUES (
		VidCarrinho, VprecoTotal, Vstatus, VdataDaCompra );
    END IF;
END //
DELIMITER ;

#A procedure cria um novo registro na tabela PRODUTO
DELIMITER //
CREATE PROCEDURE RegistraNovoProduto (
    IN pPreco DECIMAL(10, 2),
    IN pDescricao VARCHAR(100),
    IN pCategoriaID INT
)
BEGIN
    DECLARE vNovoID INT;
    IF pDescricao IS NULL OR pDescricao = '' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A descrição do produto não pode ser vazia.';
    ELSE
        INSERT INTO PRODUTO (precoProduto,quantEstoque,descProduto,idCategoria)
        VALUES (pPreco,0,pDescricao,pCategoriaID);
        SET vNovoID = LAST_INSERT_ID();
        
        SELECT 
            'SUCESSO' AS StatusOperacao,
            CONCAT('Produto "', pDescricao, '" registrado com sucesso.') AS Mensagem,
            vNovoID AS NovoProdutoID;
    END IF;
END //

DELIMITER ;

CALL RegistraNovoProduto (2599.90, 'Smartphone Redmi 13 PRO, 128GB, Azul Celeste', 1);
CALL RegistrarCompra(2);
CALL RegistrarCompra(3);




