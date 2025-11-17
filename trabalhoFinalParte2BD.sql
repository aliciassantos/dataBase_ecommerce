DROP DATABASE ecommerceLiliENana;
CREATE DATABASE ecommerceLiliENana;

use ecommerceLiliENana;

# --------------------- Cria uma tabela para a entidade Categoria ---------------------
CREATE TABLE CATEGORIA(
	idCategoria INT NOT NULL AUTO_INCREMENT,
	NomeCategoria VARCHAR(40) NOT NULL,
    
    #Definição da chave
    PRIMARY KEY(idCategoria)
);

# --------------------- Cria uma tabela para a entidade Pessoa ---------------------
CREATE TABLE PESSOA(
	CPF VARCHAR(14) UNIQUE,
    Nome VARCHAR(50) NOT NULL,
    Sexo char NOT NULL CHECK (sexo IN ('F', 'M')),
    Telefone VARCHAR(18),
    Email VARCHAR(50) NOT NULL,
    CEP VARCHAR(9) NOT NULL,
    Rua VARCHAR(50) NOT NULL ,
    Cidade VARCHAR(25) NOT NULL,
    Numero VARCHAR(6) NOT NULL,
    Referencia VARCHAR(70),
    Estado VARCHAR(2) NOT NULL 
    
    #Verifica se a sigla do Estado é válida
    CHECK (Estado IN ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT',
    'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO')),
    
    #Definição da chave
    PRIMARY KEY(CPF)
);

# --------------------- Cria uma tabela para a entidade Fornecedor ---------------------
CREATE TABLE FORNECEDOR(
	CNPJ VARCHAR(18) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    CEP VARCHAR(9) NOT NULL,
    Rua VARCHAR(50) NOT NULL ,
    Cidade VARCHAR(25) NOT NULL,
    Numero VARCHAR(6) NOT NULL,
    Estado VARCHAR(2) NOT NULL, 
    Referencia VARCHAR(70),
    
    #Verifica se a sigla do Estado é válida
    CHECK (Estado IN ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS',
    'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO')),
    
    #Definição da chave
    PRIMARY KEY(CNPJ)
);


# --------------------- Cria uma tabela para a entidade Cliente ---------------------
CREATE TABLE CLIENTE(
	cpfCliente VARCHAR(14),
    classeCliente VARCHAR(16) NOT NULL CHECK (classeCliente IN ('Básico', 'VIP', 'VIP+')), 
    
    #Definição da chave
    PRIMARY KEY(cpfCliente),
    FOREIGN KEY(cpfCLiente) REFERENCES PESSOA(CPF) ON DELETE CASCADE ON UPDATE CASCADE
);


# --------------------- Cria uma tabela para a entidade Funcionário ---------------------
CREATE TABLE FUNCIONARIO (
    CPFfuncionario VARCHAR(14) UNIQUE NOT NULL,
    CPFGerente VARCHAR(14),
    idDpto INT,
    Salario NUMERIC(10,2),
    NumeroConta VARCHAR(20) NOT NULL,
    AgenciaConta VARCHAR(10) NOT NULL,
    
    #Definição da chave
    PRIMARY KEY(CPFfuncionario)
);


# --------------------- Cria uma tabela para a entidade Departamento ---------------------
CREATE TABLE DEPARTAMENTO(
	idDpto INT AUTO_INCREMENT,
    CPFGerente VARCHAR(14),
    nomeDpto VARCHAR(100) UNIQUE NOT NULL,
    
    #Definição das chaves
    PRIMARY KEY(idDpto),
    FOREIGN KEY(CPFGerente) references FUNCIONARIO(CPFfuncionario) ON DELETE SET NULL ON UPDATE CASCADE
);

#Adição de constraints para a tabela Funcionário
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK1FUNC FOREIGN KEY (CPFfuncionario) REFERENCES PESSOA(CPF) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK2FUNC FOREIGN KEY (CpfGerente) REFERENCES FUNCIONARIO(CPFfuncionario) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FK4FUNC FOREIGN KEY (idDpto) REFERENCES DEPARTAMENTO(idDpto) ON DELETE SET NULL ON UPDATE CASCADE;

# --------------------- Cria uma tabela para a entidade Produto ---------------------
CREATE TABLE PRODUTO(
	idProduto INT AUTO_INCREMENT NOT NULL,
    precoProduto NUMERIC(10,2) NOT NULL,
    quantEstoque INT CHECK (quantEstoque >= 0),
    descProduto VARCHAR(100) NOT NULL,
    idCategoria INT NOT NULL,
    
    #Definição das chaves
    PRIMARY KEY (idProduto),
    FOREIGN KEY(idCategoria) REFERENCES CATEGORIA(idCategoria) ON UPDATE CASCADE
);

# --------------------- Cria uma tabela para a entidade Carrinho ---------------------
CREATE TABLE CARRINHO(
	idCarrinho INT AUTO_INCREMENT,
    CPFCliente VARCHAR(14),
    quantProduto INT 
    CHECK (quantProduto > 0), -- Verifica se a quantidade de produtos no carrinho é válida
    
    #Definição das chaves
    PRIMARY KEY (idCarrinho),
    FOREIGN KEY(CPFCliente) REFERENCES CLIENTE(cpfCliente) ON DELETE CASCADE ON UPDATE CASCADE
);

# --------------------- Cria uma tabela para a entidade Compra ---------------------
CREATE TABLE COMPRA ( 
	idCompra INT AUTO_INCREMENT,
	idCarrinho INT,
	precoTotal NUMERIC(10,2) CHECK (precoTotal >= 0),
	`status` VARCHAR(20) CHECK (`status` IN ('Entregue', 'Enviado','Processamento')),
	dataCompra DATE,
    
    #Definição das chaves
    PRIMARY KEY(idCompra),
    FOREIGN KEY (idCarrinho) REFERENCES CARRINHO(idCarrinho) ON UPDATE CASCADE
);

# --------------------- Cria uma tabela para a entidade Item ---------------------
CREATE TABLE Item(
	idItem INT AUTO_INCREMENT NOT NULL,
	idProduto INT NOT NULL,
	idCarrinho INT,
    
    #Definição das chaves
    PRIMARY KEY(idItem),
	FOREIGN KEY (idProduto) REFERENCES PRODUTO(idProduto) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (idCarrinho) REFERENCES CARRINHO(idCarrinho) ON DELETE SET NULL ON UPDATE CASCADE
);

# --------------------- Cria uma tabela para a entidade Nota Fiscal ---------------------
CREATE TABLE NotaFiscal(
	serieNF INT,
    numeroNF INT,
    `status` VARCHAR(30) 
    CHECK(`status` IN ('Emitida','Cancelada','Autorizada')), -- Verifica se o status da nota fiscal está entre os três valores permitidos    
    FormaDePagamento VARCHAR(30) 
    CHECK(FormaDePagamento IN ('Pix','Cartão de débito','Cartão de crédito','Boleto')), -- Verifica se a forma de pagamenta está entre um dos quatro valores permitidos
    dataEmissao date,
    valorTotalCompra NUMERIC(10,2) 
    CHECK(valorTotalCompra >= 0), -- Verifica se o valor total da compra é válido
    idCompra INT,
    
    #Definição das chaves
    PRIMARY KEY(serieNF,numeroNF),
    FOREIGN KEY(idCompra) REFERENCES COMPRA(idCompra) ON DELETE CASCADE ON UPDATE CASCADE
);

# --------------------- Cria uma tabela para a entidade Fornecido---------------------
CREATE TABLE FORNECIDO(
	qtdForn INT 
    #Verifica se a quantidade fornecida é um valor válido
    CHECK (qtdForn > 0) NOT NULL,
    
    dataEntrega DATE,
    CNPJ VARCHAR(18),
    idProduto INT,
    
    #Definição das chaves
    PRIMARY KEY (CNPJ,idProduto),
    FOREIGN KEY (CNPJ) REFERENCES FORNECEDOR(CNPJ) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (idProduto) REFERENCES PRODUTO(idProduto) ON DELETE RESTRICT ON UPDATE CASCADE
);


















