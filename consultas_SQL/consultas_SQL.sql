-- ALTER TABLE

ALTER TABLE endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (login_usuario_endereco);

-- CREATE INDEX

/*Criando um indice para a tabela de usuários pois constantemente fazemos consultas nela.
*/
CREATE INDEX idx_nome
ON usuario (nome);

-- INSERT INTO (outro arquivo)

-- UPDATE
UPDATE usuario
SET senha = 'victinholuiz'
WHERE login = 'victorluiz';

-- DELETE
/*Deletando um dos endereços de email do usuário 'robinho'.
*/
DELETE FROM email
WHERE endereco_email = 'robinhojogador9@hotmail.com';

-- SELECT - FROM - WHERE (outro arquivo)

-- BETWEEN 
/*Consultando usuáruios que se cadastraram entre o mês de Fevereiro e Abril.
*/
SELECT nome
FROM usuario 
WHERE data_hora BETWEEN TO_DATE('02', 'mm') AND TO_DATE('04', 'mm');

/*Consultando os usuários que responderam alguma thread entre Fevereiro e Abril.
*/
SELECT CR.login_usuario_cria_resposta,  CR.id_thread_cria_resposta
FROM cria_resposta CR
WHERE CR.data_hora_cria_resposta BETWEEN TO_DATE('02', 'mm') AND TO_DATE('04', 'mm');

-- IN
SELECT U.nome, E.estado
FROM usuario U, endereco E
WHERE E.estado IN ('Pernambuco', 'Paraíba') AND E.login_usuario_endereco = U.login;

-- LIKE

/*Consultando todos os usuários que possuem o nome iniciando com "Ro".
*/
SELECT nome 
FROM usuario
WHERE nome LIKE 'Ro%';

/*Consultando os usuáros que possuem a letra "A" na segunda letra do nome.
*/
SELECT nome 
FROM usuario
WHERE nome LIKE '_a%';

/*Consultando os moderadores que possuem a inicial do nome "A" e quais seções ele modera
ordenando pelo título da seção.
*/
SELECT S.titulo, U.nome, MS.login_moderador, MS.id_secao_modera_secao
FROM usuario U, modera_secao MS, secao S
WHERE MS.login_moderador LIKE 'a%' AND U.login = MS.login_moderador AND S.id_secao = MS.id_secao_modera_secao
ORDER BY S.titulo;


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

/*Retorna nome e login do moderador que moderou uma thread com um título específico 
*/
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

/*Consultando qual a data o usuário mais recente se cadastrou no fórum.
*/
SELECT MAX(data_hora) AS Largesdata_hora
FROM usuario;

-- MIN
/*Consultando qual a data o usuário mais antigo se cadastrou no fórum.
*/
SELECT MIN(data_hora) AS Smalldata_hora
FROM usuario;


-- AVG
/* Média de respostas em todos as threads. (precisa rever, acho que ta errado)
*/
SELECT avg(cria_resposta.id_thread_cria_resposta) AS Media_de_Respostas
FROM cria_resposta;


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


-- LEFT ou RIGHT ou FULL OUTER JOIN // ORDER BY

/* Lista todos os usuários por ordem alfabética e suas respectivas threads criadas
*/
SELECT U.NOME, T.TITULO AS THREAD_CRIADA
FROM USUARIO U
LEFT OUTER JOIN CRIA_THREAD C
ON C.LOGIN_USUARIO_CRIA_THREAD = U.LOGIN
LEFT OUTER JOIN THREAD_TABELA T
ON C.ID_THREAD_CRIA_THREAD = T.ID_THREAD
ORDER BY U.NOME;

/* Consultando os usuários que são moderadores e qual é o ranking deles ordenados pelo nome.
*/
SELECT U.nome, moderador.ranking
FROM usuario U
LEFT JOIN moderador ON U.login = moderador.login_moderador
ORDER BY U.nome;

/* Retorna o nome do usuário e o ID da thread em que ele criou alguma resposta ordenados pelo nome.
*/

SELECT U.nome, cria_resposta.id_thread_cria_resposta
FROM usuario U
LEFT JOIN cria_resposta ON U.login = cria_resposta.login_usuario_cria_resposta
ORDER BY U.nome;



SELECT T.titulo, cria_resposta.id_thread_cria_resposta
FROM thread_tabela T
RIGHT JOIN cria_resposta ON T.id_thread = cria_resposta.id_thread_cria_resposta;


-- SUBCONSULTA COM OPERADOR RELACIONAL
/*Consultando todos os usuários que não moram em pernambuco e exibindo os estados dos mesmos.
*/
SELECT U.nome, U.login, E.estado 
FROM usuario U, endereco E
WHERE  E.estado <> ('Pernambuco') AND U.login = E.login_usuario_endereco
ORDER BY E.estado;


-- SUBCONSULTA COM IN

/*Verifica e retorna moderadores que não moderaram nenhuma thread
*/
SELECT *
FROM MODERADOR
WHERE LOGIN_MODERADOR
NOT IN (SELECT LOGIN_MODERADOR
         FROM MODERA_THREAD);


-- SUBCONSULTA COM ANY

/*Consultando usuários que são do estado da Paraíba.
*/
SELECT nome 
FROM usuario
WHERE login = ANY 
    (SELECT login_usuario_endereco
    FROM endereco 
    WHERE estado = 'Paraíba');

/*Consultando usuários que são do estado da Pernambuco.
*/
SELECT nome 
FROM usuario U
WHERE login = ANY 
    (SELECT login_usuario_endereco
    FROM endereco 
    WHERE estado = 'Pernambuco');

-- SUBCONSULTA COM ALL
SELECT nome 
FROM usuario U
WHERE login = ALL
    (SELECT login_usuario_endereco
    FROM endereco 
    WHERE estado = 'Pernambuco');

-- GROUP BY

/* Agrupa moderador e quantidade de threads moderadas que foram criadas entre fevereiro e abril
*/
SELECT M.LOGIN_MODERADOR, COUNT(M.LOGIN_MODERADOR) AS QTDE_THREADS_MODERADAS_FEVEREIRO_ABRIL
FROM MODERA_THREAD M
INNER JOIN CRIA_THREAD C
ON C.ID_THREAD_CRIA_THREAD = M.ID_THREAD_MODERA_THREAD
WHERE C.DATA_HORA_THREAD BETWEEN TO_DATE ('02', 'mm') AND TO_DATE ('04', 'mm')
GROUP BY M.LOGIN_MODERADOR;

-- HAVING

/* Retorna login_usuario especificos e a quantidade de vezes que foi banido 
*/
SELECT LOGIN_USUARIO_BANIDO, COUNT(LOGIN_USUARIO_BANIDO) AS QTDE_BANIMENTOS
FROM BANE
GROUP BY LOGIN_USUARIO_BANIDO
HAVING LOGIN_USUARIO_BANIDO='gabriela_pinheiro' OR LOGIN_USUARIO_BANIDO='fernanda_pascoal';

-- UNION ou INTERSECT ou MINUS


-- CREATE VIEW
