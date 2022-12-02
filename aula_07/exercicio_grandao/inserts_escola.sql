USE ESCOLA_VIRTUAL
-- INSERT CURSO

INSERT CURSO (NOME, VALOR)
VALUES 
    ('TDS', 450), 
    ('Mecatrônica', 250),
    ('Panificação', 700),
    ('Manutenção', 300)

INSERT CURSO (NOME)
VALUES
    ('Elétrica'),
    ('Análise de Dados')

SELECT * FROM CURSO

-- INSERT PROFESSOR

INSERT INTO [PROFESSOR] (NOME,CPF,CIDADE)
VALUES
  ('Drake Best','26436244539','Paranaguá'),
  ('Aline Owen','16877928548','Divinópolis'),
  ('Odessa Henry','63222377475','Crato'),
  ('Rudyard Parks','53741386465','Parauapebas'),
  ('Kenneth Mclaughlin','93342733555','Águas Lindas de Goiás'),
  ('Andrew Brennan','42629814812','Anápolis');

SELECT * FROM [PROFESSOR]

-- INSERT ALUNO

INSERT INTO [ALUNO] (NOME,CPF,CIDADE,DT_NASC)
VALUES
  ('Louis Bender','25347384388','Açailândia','2008-12-01'),
  ('Serena Alexander','75488971278','Paulista','2008-12-01'),
  ('Cheyenne Kirkland','64526415422','Paulista','2008-12-02'),
  ('Summer Berry','63387773437','Foz do Iguaçu','2008-12-01'),
  ('Neville Burris','75544316246','Barra do Corda','2008-12-02'),
  ('Katelyn Hayes','15477525755','Santa Maria','2008-12-02'),
  ('William Mcclain','54877765151','Osasco','2008-12-01'),
  ('Erasmus Curtis','47955352958','Belford Roxo','2008-12-02'),
  ('Eaton Ferguson','41195465981','Campina Grande','2008-12-01'),
  ('Heather Levy','34843233788','Vitória da Conquista','2008-12-02');

SELECT * FROM ALUNO


-- INSERT TURMA

INSERT INTO [TURMA] (ID_CURSO, ID_PROF)
VALUES 
    (1, 1),(2, 2),(3, 3),
    (4, 4),(5, 5),(6, 5)

SELECT * from TURMA

INSERT INSCRICAO (ID_TURMA, ID_ALUNO)
VALUES
    (1, 1),(1, 2),(1, 3),
    (1, 4),(1, 5),(2, 6),
    (2, 7),(2, 8),(2, 9),
    (2, 10)

UPDATE TURMA
SET DT_TERMINO = '2023-12-02'
WHERE ID = 3


