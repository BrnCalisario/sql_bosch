
-- Criar tabela
CREATE TABLE TABELA1
(
	ID INT,
	NOME VARCHAR(30),
	DATA_NASCIMENTO DATE	
)


-- Listar tudo da tabela ( * = tudo )
SELECT * FROM TABELA1

-- Inserir valores na tabela
INSERT INTO TABELA1 VALUES (1, 'Joaozin', '18/12/2002')

-- Adicionar coluna nova
ALTER TABLE TABELA1 ADD CPF varchar(12)

-- Alterar a coluna
ALTER TABLE TABELA1
ALTER COLUMN NOME varchar(100)

CREATE TABLE TABELA2(
	ID INT NOT NULL,
	NOME VARCHAR(30),
	CPF VARCHAR(12) NOT NULL
)




