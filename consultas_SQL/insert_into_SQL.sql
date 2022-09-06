-- INSERT INTO USUARIO
INSERT INTO usuario VALUES ('robinho', TO_DATE('2022-05-14 11:34', 'yyyy-mm--dd hh24:mi'), 'logicaehmeutudo', 'Robson Oliveira', 'https://avatarfiles.alphacoders.com/823/thumb-82389.png');

-- INSERT INTO ENDERECO
INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 13, '25948-210', 'Rio de Janeiro', 'Rua B', 'Guapimirim'
FROM usuario
WHERE login = 'robinho';


-- INSERT INTO EMAIL
INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'karenbarbosasilva@hotmail.com'
FROM usuario
WHERE login = 'karenn_';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'robsonoliveira@gmail.com'
FROM usuario
WHERE login = 'robinho';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'robinhojogador932@gmail.com'
FROM usuario
WHERE login = 'robinho';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'robinhojogador9@hotmail.com'
FROM usuario
WHERE login = 'robinho';



-- INSERT INTO CARDS_DO_USUARIO
INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('robinho', cards_usuario_seq.NEXTVAL, 'Apresentação', 'Fã de filmes de romance adolescente.');


-- INSERT INTO CRIA_RESPOSTA

INSERT INTO reply(numero, mensagem) VALUES (37, 'cara, é um dos meus filmes favoritos');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('robinho', 9, 37, TO_DATE('2022-05-14 13:35', 'yyyy-mm-dd hh24:mi'));
