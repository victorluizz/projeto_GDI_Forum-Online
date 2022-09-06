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


-- MIN


-- AVG


-- COUNT


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
