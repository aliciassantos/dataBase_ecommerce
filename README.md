# E-Commerce Lili&Nana - Sistema de Banco de Dados

Este projeto consiste no desenvolvimento completo de um banco de dados relacional para o sistema de e-commerce Lili&Nana, desenvolvido como requisito para a disciplina de Banco de Dados na UESPI.

## 📌 Visão Geral
O sistema gerencia de forma integrada fornecedores, produtos, clientes, compras e notas fiscais. A estrutura foi projetada para eliminar redundâncias e garantir a integridade dos dados através das três primeiras formas normais (1FN, 2FN e 3FN).

## 🛠️ Tecnologias Utilizadas
- SGBD: MySQL.
- Interface: MySQL Workbench.
- Linguagem: SQL (DDL e DML).

## 🏗️ Modelagem
O projeto conta com um Diagrama Entidade-Relacionamento (DER) que mapeia as seguintes entidades principais:
- Pessoa/Cliente/Funcionário: Estrutura de especialização para gerir usuários e colaboradores.
- Produto/Categoria: Organização de itens e seus respectivos grupos.
- Carrinho/Compra/Item: Ciclo de venda desde a seleção até a conversão em pedido.
- Fornecedor/Fornecido: Gestão de suprimentos e custos de aquisição.

## 🚀 Como Executar o Projeto
Para rodar este banco de dados em sua máquina local, siga os passos abaixo na ordem exata para garantir que as dependências de chaves estrangeiras sejam respeitadas.

### Pré-requisitos
- Ter o MySQL Server e o MySQL Workbench instalados.

### 1. Como obter os arquivos do projeto
Você pode baixar os scripts SQL de duas maneiras:
**Opção A:** Usando o Git (Recomendado) Se você tem o Git instalado, abra o terminal (ou CMD) e digite:

    git clone https://github.com/aliciassantos/dataBase_ecommerce.git

Em seguida, entre na pasta do projeto:

    cd dataBase_ecommerce

**Opção B:** Download Direto
1. No topo desta página do GitHub, clique no botão verde "<> Code".
2. Selecione a opção "Download ZIP".
3. Extraia os arquivos em uma pasta de sua preferência no computador.

### 2. Criação da Estrutura
Abra e execute o arquivo trabalhoFinalParte2BD.sql. Ele criará o banco de dados LiliENana, as tabelas e as constraints de relacionamento.
### 3. Povoamento de Dados
Execute o arquivo Insert's.sql. Este script insere os registros necessários para testar o sistema.
### 4. Automação (Views e Procedures)
 Execute o arquivo TVP.sql. Ele habilitará as visões de departamento e as funções automatizadas, como o registro de compras.
### 5. Testes e Relatórios
Utilize o arquivo Queries.sql para rodar as consultas de utilidade e verificar o funcionamento do sistema.

## 🔥 Recursos Avançados Implementados
- Stored Procedure RegistrarCompra: Automatiza a finalização do pedido, calculando o preço total e validando o carrinho.
- Trigger calculaPrecoTotalFornecido: Calcula o custo total das remessas de fornecedores em tempo real antes da inserção.
- Views de Segurança: Tabelas virtuais que restringem o acesso a dados sensíveis conforme o departamento (ex: Financeiro vs. Operacional).

## 👥 Equipe (UESPI)
- Alicia Silva Santos
- Geovanna Bruno Meneses
- João Felipe de Pádua Gomes
- Vitor Manoel Barbosa Frota

