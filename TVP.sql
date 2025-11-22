
/*
  VIEW principal para o grupo operacional (Financeiro, Suporte, Logística, Compras).
  Contém dados sobre compras, entregas, estoque e fornecimento.Ela foca em transações, movimentos de mercadorias e dados essenciais para o fluxo de caixa.
*/
select * from InformacoesOperacionais;
drop view InformacoesOperacionais;
CREATE VIEW InformacoesOperacionais AS
SELECT
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




#A procedure cria um novo registro na tabela COMPRA, insere seus valores na tabela e calcula o valor total
DELIMITER // 
CREATE PROCEDURE RegistrarCompra (
    IN VidCarrinho INT 
)

BEGIN
DECLARE VprecoTotal DECIMAL (10, 2) DEFAULT 0;
DECLARE Vstatus VARCHAR(20) DEFAULT  ‘Processamento’;
DECLARE VdataDaCompra DATE DEFAULT CURDATE();

    SELECT SUM(p.precoProduto * i.quantProduto) INTO VprecoTotal
    FROM ITEM it
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




