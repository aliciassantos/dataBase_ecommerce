
#--------------------------- TRIGGERS ---------------------------
#TRIGGER PARA ATUALIZAR UM ESTOQUE
SELECT * FROM PRODUTO;
SELECT * FROM FORNECIDO;

DELIMITER //
CREATE TRIGGER atualizaEstoque AFTER INSERT -- a trigger acontecerá após uma nova inserção de estoque
ON FORNECIDO
FOR EACH ROW BEGIN 
	-- Após a inserção, o produto será atualizado, recebendo a sua nova quantidade de estoque
	UPDATE PRODUTO 
    SET quantEstoque = quantEstoque + NEW.qtdForn
    WHERE idProduto = NEW.idProduto;
    
 END //   

DELIMITER ;

#TRIGGER PARA IMPEDIR QUE UM FUNCIONÁRIO SEJA GERENTE DE SI MESMO
SELECT * FROM FUNCIONARIO;
SELECT * FROM DEPARTAMENTO;

DELIMITER //
CREATE TRIGGER verificaGerencia BEFORE INSERT 
ON FUNCIONARIO
FOR EACH ROW BEGIN
	    IF NEW.CPFGerente = NEW.CPFfuncionario THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: não é possível um funcionário gerenciar a si mesmo';
	END IF;
END //

DELIMITER ;

/*
  VIEW principal para o grupo operacional (Financeiro, Suporte, Logística, Compras).
  Contém dados sobre compras, entregas, estoque e fornecimento.Ela foca em transações, movimentos de mercadorias e dados essenciais para o fluxo de caixa.
*/
select * from InformacoesOperacionais;
drop view InformacoesOperacionais;
CREATE VIEW InformacoesOperacionais AS
SELECT
    -- Dados de Compra e Cliente
    Co.idCompra AS ID_Pedido,
    P.Nome AS NomeCliente,
    P.CPF AS CPFCliente,
    Co.dataCompra AS DataPedido,
    Co.status AS StatusEntrega,

    -- Dados Financeiros (Acesso Restrito ao Financeiro)
    Co.precoTotal AS ValorTotalPedido,
    NF.FormaDePagamento,

    -- Dados de Entrega (Logística)
    P.Rua as Rua,
    P.Numero as Numero,
    P.Cidade as Cidade,
    p.Estado as Estado,

    -- Dados de Estoque/Fornecimento
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
    Co.dataCompra DESC;
