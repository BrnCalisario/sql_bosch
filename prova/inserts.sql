USE SENAI
GO

-- INSERTS ALUNO

INSERT INTO [ALUNO] (NOME,CPF,DATA_NASC)
VALUES
  ('May Figueroa','87628614517','2002-11-01'),
  ('MacKenzie Brooks','31744611452','2001-10-11'),
  ('Kaseem Myers','39303877481','2003-12-23'),
  ('Alisa Hewitt','47660076829','2000-07-27'),
  ('Mia Townsend','27661465457','1999-06-08'),
  ('Cheryl Small','04884764699','2004-06-13'),
  ('McKenzie Savage','77494553874','2005-11-10'),
  ('Nina Alvarez','83171663568','2006-04-15'),
  ('Clinton Cox','72143411985','2003-09-18'),
  ('Rinah Cole','68739386862','2003-02-13'),
  ('Lani Wong','67874548229','2007-12-24'),
  ('Emerson Bass','36351138649','2000-01-29'),
  ('Nomlanga Gonzales','11848497271','2003-01-28'),
  ('Xenos Chapman','29569557447','2007-11-10'),
  ('Chester Riley','19674622781','2000-07-01'),
  ('Lionel Montoya','82109305035','2006-08-16'),
  ('Baker Bullock','26724313746','2005-11-24'),
  ('Jemima Whitaker','93154636678','2004-02-12'),
  ('Fitzgerald Morrison','59824845971','2008-12-15'),
  ('Mara Owens','92272351754','2000-10-04');

SELECT * FROM ALUNO

-- INSERTS PROFESSOR

INSERT INTO [PROFESSOR] (NOME,CPF)
VALUES
  ('Florence Flynn','34128933385'),
  ('Baker Gordon','64546108733'),
  ('Fulton Rivas','75097927386'),
  ('Kenyon David','04611123843'),
  ('Carla Mclean','83658211098');

SELECT * FROM PROFESSOR


-- INSERTS CURSOS

INSERT [CURSO] (NOME)
VALUES
    ('Análise de Sistemas'),
    ('Mecatrônica'),
    ('Panificação')

SELECT * FROM CURSO

-- INSERT DISCIPLINAS

INSERT [DISCIPLINA] (NOME)
VALUES
    ('Lógica de Programação'),
    ('Banco de Dados'),
    ('Python'),
    ('Elétrica Básica'),
    ('Robótica'),
    ('Manutenção'),
    ('Pão Frânces Avançado III'),
    ('Bolo Chines IV')

SELECT * FROM DISCIPLINA


-- INSERT DISCIPLINA X CURSO

INSERT [DISCIPLINAS DO CURSO] (ID_CURSO, ID_DISCI)
VALUES
    (1, 1),(1, 2),(1, 3),
    (2, 4),(2, 5),(2, 6),
    (3, 7),(3, 8)


SELECT * FROM [DISCIPLINAS DO CURSO]


-- INSERT TURMAS

INSERT TURMA (ID_ALUNO, ID_PROF, ID_DISCI_CURSO, NOTA_1, NOTA_2, NOTA_3)
VALUES
    (2, 1, 1, 6, 8.25, 9),
    (3, 1, 1, 6, 8, 9),
    (4, 1, 1, 7, 8.35, 9),
    (5, 1, 1, 9, 8.25, 9)

INSERT TURMA (ID_ALUNO, ID_PROF, ID_DISCI_CURSO, NOTA_1, NOTA_2)
VALUES 
    (6, 2, 4, 7.5, 6.5),
    (7, 2, 4, 8.5, 7.5),
    (8, 2, 4, 4.5, 7.5),
    (9, 2, 4, 5.5, 8.5),
    (10, 2, 4, 4.5, 9.5)

INSERT TURMA (ID_ALUNO, ID_PROF, ID_DISCI_CURSO, NOTA_1, NOTA_2)
VALUES 
    (11, 3, 7, 9.5, 6),
    (12, 3, 7, 5.5, 7),
    (13, 3, 7, 7.5, 7),
    (14, 3, 7, 6.5, 8),
    (15, 3, 7, 6.5, 9)

INSERT TURMA (ID_ALUNO, ID_PROF, ID_DISCI_CURSO, NOTA_1)
VALUES
    (16, 4, 8, 8.75),
    (17, 4, 8, 7),
    (18, 4, 8, 2),
    (19, 4, 8, 9),
    (20, 4, 8, 4)

SELECT * FROM TURMA

-- INSERT BOLETOS

INSERT PAGAMENTOS (ID_ALUNO, VENCIMENTO_BOLETO, SITUACAO)
VALUES
    (1, DATEADD(MONTH, 1, GETDATE()), 'pendente'),
    (2, DATEADD(MONTH, 1, GETDATE()), 'pendente'),
    (3, DATEADD(MONTH, 1, GETDATE()), 'pendente'),
    (4, DATEADD(MONTH, 1, GETDATE()), 'pendente'),
    (5, DATEADD(MONTH, 1, GETDATE()), 'pendente')


INSERT PAGAMENTOS (ID_ALUNO, VENCIMENTO_BOLETO, SITUACAO)
VALUES
    (1, GETDATE(), 'pago'),
    (2, GETDATE(), 'pago'),
    (3, GETDATE(), 'pago'),
    (4, GETDATE(), 'pago'),
    (5, GETDATE(), 'pago')


INSERT PAGAMENTOS (ID_ALUNO, VENCIMENTO_BOLETO, SITUACAO)
VALUES
    (6, GETDATE(), 'pago'),
    (6, GETDATE(), 'pago'),
    (6, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (7, GETDATE(), 'pago'),
    (7, GETDATE(), 'pago'),
    (7, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (8, GETDATE(), 'pago'),
    (8, GETDATE(), 'pago'),
    (8, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (9, GETDATE(), 'pago'),
    (9, GETDATE(), 'pago'),
    (9, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (10, GETDATE(), 'pago'),
    (10, GETDATE(), 'pago'),
    (10, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (11, GETDATE(), 'pago'),
    (11, GETDATE(), 'pago'),
    (11, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (12, GETDATE(), 'pago'),
    (12, GETDATE(), 'pago'),
    (12, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (13, GETDATE(), 'pago'),
    (13, GETDATE(), 'pago'),
    (13, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (14, GETDATE(), 'pago'),
    (14, GETDATE(), 'pago'),
    (14, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (15, GETDATE(), 'pago'),
    (15, GETDATE(), 'pago'),
    (15, DATEADD(MONTH, 1, GETDATE()), 'pendente')

INSERT PAGAMENTOS (ID_ALUNO, VENCIMENTO_BOLETO, SITUACAO)
VALUES
    (16, GETDATE(), 'pago'),
    (16, GETDATE(), 'pago'),
    (16, GETDATE(), 'pago'),
    (16, GETDATE(), 'pago'),
    (16, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (17, GETDATE(), 'pago'),
    (17, GETDATE(), 'pago'),
    (17, GETDATE(), 'pago'),
    (17, GETDATE(), 'pago'),
    (17, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (18, GETDATE(), 'pago'),
    (18, GETDATE(), 'pago'),
    (18, GETDATE(), 'pago'),
    (18, GETDATE(), 'pago'),
    (18, DATEADD(MONTH, 1, GETDATE()), 'pendente')

INSERT PAGAMENTOS (ID_ALUNO, VENCIMENTO_BOLETO, SITUACAO)
VALUES
    (19, GETDATE(), 'pago'),
    (19, GETDATE(), 'pago'),
    (19, GETDATE(), 'pago'),
    (19, '2022-12-01', 'pendente'),
    (19, DATEADD(MONTH, 1, GETDATE()), 'pendente'),

    (20, GETDATE(), 'pago'),
    (20, GETDATE(), 'pago'),
    (20, GETDATE(), 'pago'),
    (20, '2022-12-01', 'pendente'),
    (20, DATEADD(MONTH, 1, GETDATE()), 'pendente')


SELECT * FROM PAGAMENTOS
