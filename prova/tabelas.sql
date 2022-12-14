CREATE DATABASE SENAI
GO 
USE SENAI

CREATE TABLE ALUNO (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NOME VARCHAR(60) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    DATA_NASC DATE 
)

CREATE TABLE PROFESSOR (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NOME VARCHAR(60) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
)

CREATE TABLE CURSO (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NOME VARCHAR(40) NOT NULL,
    ATIVO BIT NOT NULL DEFAULT 1
)

CREATE TABLE DISCIPLINA (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    NOME VARCHAR(40) NOT NULL,
    ATIVO BIT NOT NULL DEFAULT 1
)

CREATE TABLE [DISCIPLINAS DO CURSO] (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_CURSO INT FOREIGN KEY REFERENCES CURSO(ID),
    ID_DISCI INT FOREIGN KEY REFERENCES DISCIPLINA(ID),
    ATIVA BIT NOT NULL DEFAULT 1
)

CREATE TABLE TURMA (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_ALUNO INT FOREIGN KEY REFERENCES ALUNO(ID),
    ID_PROF INT FOREIGN KEY REFERENCES PROFESSOR(ID),
    ID_DISCI_CURSO INT FOREIGN KEY REFERENCES [DISCIPLINAS DO CURSO](ID),
    NOTA_1 NUMERIC(4, 2) NULL,
    NOTA_2 NUMERIC(4, 2) NULL,
    NOTA_3 NUMERIC(4, 2) NULL,
    NOTA_4 NUMERIC(4, 2) NULL,
    NOTA_FINAL NUMERIC(4, 2) NULL,
    ATIVA BIT NOT NULL DEFAULT 1
)

CREATE TABLE PAGAMENTOS(
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_ALUNO INT FOREIGN KEY REFERENCES ALUNO(ID),
    VENCIMENTO_BOLETO DATE NOT NULL,
    SITUACAO VARCHAR(25) NOT NULL,

    CHECK (SITUACAO IN ('pendente', 'pago', 'em atraso'))
)


