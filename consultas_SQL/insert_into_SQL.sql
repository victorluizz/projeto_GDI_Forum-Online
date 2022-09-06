-- INSERT INTO USUARIO
INSERT INTO usuario VALUES ('robinho', TO_DATE('2022-05-14 11:34', 'yyyy-mm--dd hh24:mi'), 'logicaehmeutudo', 'Robson Oliveira', 'https://avatarfiles.alphacoders.com/823/thumb-82389.png');

-- INSERT INTO ENDERECO






-- INSERT INTO EMAIL
INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'karenbarbosasilva@hotmail.com'
FROM usuario
WHERE login = 'karenn_';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'robsonoliveira@gmail.com'
FROM usuario
WHERE login = 'robinho';



-- INSERT INTO CARDS_DO_USUARIO



-- INSERT INTO CRIA_RESPOSTA