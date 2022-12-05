CREATE VIEW ALUNOS_NOTAS AS
    SELECT A.NOME AS 'Aluno', D.NOME as 'Disciplina', T.NOTA_1, T.NOTA_2, T.NOTA_3, T.NOTA_4, T.NOTA_FINAL
    FROM TURMA T
    JOIN ALUNO A ON T.ID_ALUNO = A.ID
    JOIN [DISCIPLINAS DO CURSO] DC ON T.ID_DISCI_CURSO = DC.ID
    JOIN DISCIPLINA D ON DC.ID_DISCI = D.ID 
GO

SELECT * FROM ALUNOS_NOTAS
GO

CREATE VIEW PAGAMENTOS_ATRASADOS AS
    SELECT A.NOME AS 'Caloteiro'
    FROM ALUNO A
    JOIN PAGAMENTOS P ON A.ID = P.ID_ALUNO
    WHERE P.SITUACAO = 'em atraso'
GO

SELECT * FROM PAGAMENTOS_ATRASADOS
