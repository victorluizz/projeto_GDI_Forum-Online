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
/*Contando quantos endereços de email o usuário "victorluiz" possui
*/

SELECT COUNT(endereco_email)
FROM email
WHERE login_usuario_email = 'victorluiz';

/*Contando quantos endereços de email o usuário "carlos_roberto1" possui
*/
SELECT COUNT(endereco_email)
FROM email
WHERE login_usuario_email = 'carlos_roberto1';

/*Contando quantas replys cada thrad possui e exibindo o titulo delas.
*/
SELECT T.titulo, count(cria_resposta.id_thread_cria_resposta)
FROM thread_tabela T, cria_resposta
WHERE T.id_thread = cria_resposta.id_thread_cria_resposta
GROUP BY T.titulo;


-- LEFT ou RIGHT ou FULL OUTER JOIN
SELECT U.NOME, T.TITULO AS THREAD_CRIADA
FROM USUARIO U
LEFT OUTER JOIN CRIA_THREAD C
ON C.LOGIN_USUARIO_CRIA_THREAD = U.LOGIN
LEFT OUTER JOIN THREAD_TABELA T
ON C.ID_THREAD_CRIA_THREAD = T.ID_THREAD
ORDER BY U.NOME;

/* Consultando os usuários que são moderadores e qual é o ranking deles.
*/
SELECT U.nome, moderador.ranking
FROM usuario U
LEFT JOIN moderador ON U.login = moderador.login_moderador
ORDER BY U.nome;

/* Retorna o nome do usuário e o ID da thread em que ele criou alguma resposta.
*/

SELECT U.nome, cria_resposta.id_thread_cria_resposta
FROM usuario U
LEFT JOIN cria_resposta ON U.login = cria_resposta.login_usuario_cria_resposta
ORDER BY U.nome;



SELECT T.titulo, cria_resposta.id_thread_cria_resposta
FROM thread_tabela T
RIGHT JOIN cria_resposta ON T.id_thread = cria_resposta.id_thread_cria_resposta;


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
SELECT M.LOGIN_MODERADOR, COUNT(M.LOGIN_MODERADOR) AS QTDE_THREADS_MODERADAS_FEVEREIRO_ABRIL
FROM MODERA_THREAD M
INNER JOIN CRIA_THREAD C
ON C.ID_THREAD_CRIA_THREAD = M.ID_THREAD_MODERA_THREAD
WHERE C.DATA_HORA_THREAD BETWEEN TO_DATE ('02', 'mm') AND TO_DATE ('04', 'mm')
GROUP BY M.LOGIN_MODERADOR;

-- HAVING
SELECT LOGIN_USUARIO_BANIDO, COUNT(LOGIN_USUARIO_BANIDO) AS QTDE_BANIMENTOS
FROM BANE
GROUP BY LOGIN_USUARIO_BANIDO
HAVING LOGIN_USUARIO_BANIDO='gabriela_pinheiro';

-- UNION ou INTERSECT ou MINUS


-- CREATE VIEW


-- GRANT / REVOKE
