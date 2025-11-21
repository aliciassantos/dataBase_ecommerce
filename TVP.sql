/*
DELIMITER //
CREATE TRIGGER tr_log_pedido_deletado BEFORE DELETE
ON Pedido
FOR EACH ROW BEGIN
    DECLARE vNomeProd VARCHAR(45);

    SELECT nome INTO vNomeProd
    FROM produtos
    WHERE idProdutos = OLD.idProdutos;

    INSERT INTO Log (descricao)
    VALUES (CONCAT(
        'Pedido Deletado - Quantidade: ', OLD.Quantidade,
        ' | Produto: ', v_nome_produto
    ));
END //
*/

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