USE TESTE_NOTAS_FISCAIS
GO 

CREATE TRIGGER GENERATE_FATURAMENTO
ON [ITENS NOTAS FISCAIS] AFTER INSERT
AS BEGIN
    DECLARE @VALOR_T MONEY

    SELECT @VALOR_T = SUM(QUANTIDADE * PREÇO)
    FROM [ITENS NOTAS FISCAIS] 

    INSERT FATURAMENTO (DATA_F, VALOR_AT)
    VALUES (GETDATE(), @VALOR_T)
END