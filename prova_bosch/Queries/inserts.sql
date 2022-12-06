USE EMPRESA

-- INSERT DEPARTAMENTO
INSERT DEPARTAMENTO (NOME, DEP_LOCAL) 
VALUES 
    ('REMAN', 104),
    ('ICO', 101),
    ('ETS', 401),
    ('FCM', 303),
    ('INOVE', 303)


-- INSERT GRADE
INSERT GRADE_SALARIAL (SAL_MIN, SAL_MAX)
VALUES
    (1500, 4000),
    (4001, 9000),
    (9001, 22000),
    (20001, 50000)


-- INSERT FUNCIONARIO
INSERT FUNCIONARIO (EDV, NOME, LIDER, DATA_CONTRATACAO, SALARIO, DEP_ID)
VALUES 
    (91004090, 'Débora Junior', 'Andrea', '04/10/1990', 20000, 1),
    (94566222, 'Carla Rodrigues', 'Andrea', '06/12/1995', 16500, 1),
    (96334100, 'Maciel Oliveira', 'Marcos', '13/05/2010', 16500, 2),
    (97885245, 'Guilherme Guilhermo', 'Marcos', '14/08/2015', 25678, 2),
    (92894706, 'Jessica Lima', 'Marcos', '22/01/1993', 10900, 2),
    (91450032, 'Isabella Machado', 'Lucio', '31/01/1990', 13750, 2),
    (94661932, 'Carlo Daniel', 'Lucio', '05/09/2015', 19000, 2),
    (95780634, 'Maria Santana', 'Lucio', '09/02/2020', 16500, 2),
    (97881945, 'Dominic  Ferreira', 'Lucio', '11/11/2002', 19000, 3)

