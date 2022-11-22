/* EXERC�CIO BANCO: DATABASE MERCADO
- CLIENTE: ID, NOME, CPF, DATA_CAD
- PRODUTO: ID, NOME, PRE�O
- VENDA: ID, ID_CLIENTE, ID_PRODUTO, DATA_VENDA

INSERTS: 3 CLIENTES, 5 PRODUTOS, 6 VENDAS
SELECT: MOSTRAR VENDAS COM NOME DO CLIENTE E NOME DO PRODUTO
*/

CREATE DATABASE MERCADO
USE MERCADO

CREATE TABLE CLIENTE(
	ID		INT IDENTITY (1,1) PRIMARY KEY,
	NOME	VARCHAR(70) NOT NULL,
	CPF		VARCHAR(11) NOT NULL UNIQUE,
	DATA_CADASTRO DATETIME NOT NULL DEFAULT GETDATE()
)

CREATE TABLE PRODUTO(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	NOME VARCHAR(50) NOT NULL,
	PRECO MONEY NOT NULL
)

CREATE TABLE VENDA(
	ID INT IDENTITY (1,1) PRIMARY KEY,
	CLIENTE_ID INT FOREIGN KEY REFERENCES CLIENTE(ID),
	PRODUTO_ID INT FOREIGN KEY REFERENCES PRODUTO(ID),
	DATA_VENDA DATETIME NOT NULL DEFAULT GETDATE()
)	

INSERT CLIENTE (NOME, CPF) VALUES ('Bruno', '11122233344')
INSERT CLIENTE (NOME, CPF) VALUES ('Pedro', '11122233355')
INSERT CLIENTE (NOME, CPF) VALUES ('Joao', '11122233366')

INSERT PRODUTO (NOME, PRECO) VALUES ('Banana', 4.90)
INSERT PRODUTO (NOME, PRECO) VALUES ('Sabonete', 8.90)
INSERT PRODUTO (NOME, PRECO) VALUES ('Vassoura', 10.90)
INSERT PRODUTO (NOME, PRECO) VALUES ('Prato', 5.90)
INSERT PRODUTO (NOME, PRECO) VALUES ('Mouse', 59.90)