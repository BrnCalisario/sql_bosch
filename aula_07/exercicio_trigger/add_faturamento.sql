USE TESTE_NOTAS_FISCAIS

CREATE TABLE FATURAMENTO(   
    ID INT IDENTITY(1, 1) PRIMARY KEY,
    DATA_F DATE,
    VALOR_AT MONEY,
)
