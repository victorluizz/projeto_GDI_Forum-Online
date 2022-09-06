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


-- SUBCONSULTA COM ANY


-- SUBCONSULTA COM ALL


-- ORDER BY


-- GROUP BY


-- HAVING


-- UNION ou INTERSECT ou MINUS


-- CREATE VIEW


-- GRANT / REVOKE
