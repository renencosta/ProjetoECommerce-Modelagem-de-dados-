-- Sql não é linguagem de Programação, lista de comandos
--Para selecionar o banco de dados que quer trabalhar:
-- USE <nome do banco de dados>. Geralmente usado no começo do código

-- DDL - Criar, alterar ou apagar Banco de dados e tabelas
-- Comando para criar banco de dados ou tabelas. EX: CREATE DATABASE ECommerce
--Comando para deletar banco de dados ou tabela. EX: DROP DATABASE ECommerce

-- a palavra identity(usada somente SQL Server) na chave primária, indica que os números serão gerados automaticamente
CREATE TABLE Cliente (
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeCompleto VARCHAR (150),
	Email VARCHAR(50),
	Telefone VARCHAR(20),
	Endereco VARCHAR(255),
	DataCadastro DATE)

CREATE TABLE Pedido (
	IdPedido INT PRIMARY KEY IDENTITY,
	DataPedido DATE,
	Status VARCHAR(30),
	ValorTotal DECIMAL(18,6),
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente))

CREATE TABLE Pagamento (
	IdPagamento INT PRIMARY KEY IDENTITY,
	FormaPagamento VARCHAR(50),
	Status VARCHAR(50),
	Data DATETIME,
	IdPedido INT FOREIGN KEY REFERENCES Pedido(IdPedido))

CREATE TABLE Produto (
	IdProduto INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(150),
	Descricao VARCHAR(255),
	Preco DECIMAL(18,6),
	EstoqueDisponivel INT,
	CategoiaProduto VARCHAR(50),
	Imagem VARCHAR(255))

CREATE TABLE ItemPedido (
	IdItemPedido INT PRIMARY KEY IDENTITY,
	IdPedido INT FOREIGN KEY REFERENCES Pedido(IdPedido),
	IdProduto INT FOREIGN KEY REFERENCES Produto(IdProduto),
	Quantidade INT)


-- DML - Editar, alterar ou apagar dados

-- DQL - Consulta de dados

