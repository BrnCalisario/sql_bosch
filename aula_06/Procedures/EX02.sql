ALTER PROC [Busca gastos maiores]
@CPF CHAR(11)
AS BEGIN
    DECLARE @GASTOS MONEY

    SELECT @GASTOS = SUM(IT.PREÇO * IT.QUANTIDADE) 
    FROM [NOTAS FISCAIS] NF JOIN [ITENS NOTAS FISCAIS] IT
    ON NF.NUMERO = IT.NUMERO
    WHERE NF.CPF = @CPF

    PRINT @GASTOS

    SELECT 
        NF.CPF, 
        CAST(SUM(IT.PREÇO * IT.QUANTIDADE) AS NUMERIC(10, 2)) AS 'Gasto Total'
    FROM [NOTAS FISCAIS] NF JOIN [ITENS NOTAS FISCAIS] IT
    ON NF.NUMERO = IT.NUMERO
    GROUP BY NF.CPF
    HAVING SUM(IT.PREÇO * IT.QUANTIDADE) > @GASTOS
END
