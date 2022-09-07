-- ALTER TABLE

ALTER TABLE endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (login_usuario_endereco);

-- CREATE INDEX

-- INSERT INTO (outro arquivo)

-- UPDATE
UPDATE usuario
SET senha = 'victinholuiz'
WHERE login = 'victorluiz';

-- DELETE
DELETE FROM email
WHERE endereco_email = 'robinhojogador9@hotmail.com';

-- SELECT - FROM - WHERE (outro arquivo)

-- BETWEEN 
SELECT nome
FROM usuario 
WHERE data_hora BETWEEN TO_DATE('02', 'mm') AND TO_DATE('04', 'mm');


-- IN
SELECT U.nome, E.estado
FROM usuario U, endereco E
WHERE E.estado IN ('Pernambuco', 'Paraíba') AND E.login_usuario_endereco = U.login;

-- LIKE
SELECT nome 
FROM usuario
WHERE nome LIKE 'Ro%';


-- IS NULL ou IS NOT NULL
SELECT login, nome 
FROM usuario
WHERE login IS NOT NULL;

SELECT login, nome 
FROM usuario
WHERE login IS NULL;


-- INNER JOIN
SELECT CR.login_usuario_cria_resposta, reply.mensagem
FROM cria_resposta CR
INNER JOIN reply ON reply.numero = CR.numero_reply_cria_resposta;

SELECT U.NOME, U.LOGIN
FROM USUARIO U
INNER JOIN MODERADOR M
ON M.LOGIN_MODERADOR = U.LOGIN
INNER JOIN MODERA_THREAD MT
ON MT.LOGIN_MODERADOR = M.LOGIN_MODERADOR
INNER JOIN THREAD_TABELA T
ON T.ID_THREAD = MT.ID_THREAD_MODERA_THREAD
WHERE T.TITULO='encanto ganhou oscar';

-- MAX
SELECT MAX(numero_reply_cria_resposta) AS Largesnumero_reply_cria_resposta
FROM cria_resposta;

SELECT MAX(data_hora) AS Largesdata_hora
FROM usuario;

-- MIN
SELECT MIN(data_hora) AS Smalldata_hora
FROM usuario;


-- AVG


-- COUNT
SELECT COUNT(endereco_email)
FROM email
WHERE login_usuario_email = 'victorluiz';

SELECT COUNT(endereco_email)
FROM email
WHERE login_usuario_email = 'carlos_roberto1';

SELECT COUNT(mensagem)
FROM reply
WHERE login_usuario_email = 'victorluiz'; -- tenho que ajeitar


-- LEFT ou RIGHT ou FULL OUTER JOIN


-- SUBCONSULTA COM OPERADOR RELACIONAL


-- SUBCONSULTA COM IN
SELECT *
FROM MODERADOR
WHERE LOGIN_MODERADOR
NOT IN (SELECT LOGIN_MODERADOR
         FROM MODERA_THREAD);


-- SUBCONSULTA COM ANY


-- SUBCONSULTA COM ALL


-- ORDER BY


-- GROUP BY
SELECT M.LOGIN_MODERADOR, COUNT(M.LOGIN_MODERADOR)
FROM MODERA_THREAD M
INNER JOIN CRIA_THREAD C
ON C.ID_THREAD_CRIA_THREAD = M.ID_THREAD_MODERA_THREAD
GROUP BY M.LOGIN_MODERADOR;

-- HAVING


-- UNION ou INTERSECT ou MINUS


-- CREATE VIEW


-- GRANT / REVOKE
