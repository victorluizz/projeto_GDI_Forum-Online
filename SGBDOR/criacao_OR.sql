drop table tb_usuarios;
drop table tb_moderadores;
drop table tb_replies;
drop table tb_secoes;
drop table tb_threads;
drop table tb_cria_thread;
drop table tb_cria_reply;
drop table tb_bane;
drop table tb_anexos;
drop table tb_envia_mensagem;
drop table tb_modera_thread;
drop table tb_modera_secao;

drop type tp_modera_thread;
drop type tp_modera_secao;
drop type tp_anexo;
drop type tp_envia_mensagem;
drop type tp_bane;
drop type tp_cria_thread;
drop type tp_cria_reply;
drop type tp_moderador;
drop type tp_usuario;
drop type tp_endereco;
drop type tp_emails;
drop type tp_email;
drop type tp_lista_cards;
drop type tp_card_usuario;

-- EMAILS
CREATE OR REPLACE TYPE tp_email AS OBJECT (
    endereco_email VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tp_emails AS VARRAY(5) OF tp_email;
/

-- ENDERECO
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    numero NUMBER,
    cep VARCHAR(9),
    estado VARCHAR2(20),
    rua VARCHAR2(50),
    cidade VARCHAR2(30) 
);
/

-- CARDS
CREATE OR REPLACE TYPE tp_card_usuario AS OBJECT(
    numero NUMBER,
    titulo VARCHAR2(40),
    descricao VARCHAR2(200)
);
/

CREATE TYPE tp_lista_cards AS TABLE OF tp_card_usuario;
/

-- USUARIOS
CREATE OR REPLACE TYPE tp_usuario AS OBJECT (
    login VARCHAR2(30),
    data_hora DATE ,
    senha VARCHAR2(30),
    nome VARCHAR2(50),
    foto_de_perfil  VARCHAR2(200),
    endereco tp_endereco,
    emails tp_emails,
    lista_cards tp_lista_cards
) NOT FINAL;
/

-- MODERADOR
CREATE OR REPLACE TYPE tp_moderador UNDER tp_usuario (
    ranking number
);
/


CREATE TABLE tb_usuarios OF tp_usuario(
    login primary key
)  NESTED TABLE lista_cards STORE AS nt_cards;
/

CREATE TABLE tb_moderadores OF tp_moderador(
    login primary key
) NESTED TABLE lista_cards STORE AS nt_cards2;
/


-- THREADS
CREATE OR REPLACE TYPE tp_thread AS OBJECT(
    id_thread NUMBER,
    titulo VARCHAR2(50),
    texto VARCHAR2(300)  
);
/

CREATE TABLE tb_threads OF tp_thread(
    id_thread primary key
);
/

-- REPLIES
CREATE OR REPLACE TYPE tp_reply AS OBJECT(
    numero NUMBER,
    mensagem VARCHAR2(300)
);
/

CREATE TABLE tb_replies OF tp_reply(
    numero primary key
);
/

-- SECOES
CREATE OR REPLACE TYPE tp_secao AS OBJECT (
    id_secao NUMBER,
    titulo VARCHAR2(40)
);
/

CREATE TABLE tb_secoes OF tp_secao(
    id_secao primary key
);
/

-- CRIACAO DE POSTAGEM (TERNARIO)
CREATE OR REPLACE TYPE tp_cria_thread AS OBJECT(
    login REF tp_usuario,
    id_thread REF tp_thread,
    id_secao REF tp_secao,
    data_hora TIMESTAMP
);
/

CREATE TABLE tb_cria_thread OF tp_cria_thread;


-- CRIACAO DE REPLY (TERNARIO)
CREATE OR REPLACE TYPE tp_cria_reply AS OBJECT(
    login REF tp_usuario,
    id_thread REF tp_thread,
    numero REF tp_reply,
    data_hora TIMESTAMP
);
/

CREATE TABLE tb_cria_reply OF tp_cria_reply;

-- BANIR (TERNARIO)
CREATE OR REPLACE TYPE tp_bane AS OBJECT(
    login_usario REF tp_usuario,
    login_moderador REF tp_moderador,
    id_secao REF tp_secao
);
/

CREATE TABLE tb_bane OF tp_bane;


CREATE OR REPLACE TYPE tp_envia_mensagem AS OBJECT(
    login_envia REF tp_usuario,
    login_recebe REF tp_usuario,
    data_hora TIMESTAMP,
    texto VARCHAR2(300),
    numero NUMBER
);
/

CREATE TABLE tb_envia_mensagem OF tp_envia_mensagem(
    numero primary key
);
/

-- ANEXOS

CREATE OR REPLACE TYPE tp_anexo AS OBJECT(
    numero_msg REF tp_envia_mensagem,
    link_anexo VARCHAR2(200),
    id_anexo NUMBER
);
/

CREATE TABLE tb_anexos OF tp_anexo(
    id_anexo primary key
);
/

-- MODERACAO

CREATE OR REPLACE TYPE tp_modera_secao AS OBJECT(
    login_moderador REF tp_moderador,
    id_secao REF tp_secao,
    id_modera_secao NUMBER
);
/
CREATE TABLE tb_modera_secao OF tp_modera_secao(
    id_modera_secao primary key
);
/

--CREATE TABLE tb_modera_secao of tp_

CREATE OR REPLACE TYPE tp_modera_thread AS OBJECT(
    login_moderador REF tp_moderador,
    id_thread REF tp_thread,
    acao VARCHAR2(30),
    id_modera NUMBER
);
/

CREATE TABLE tb_modera_thread OF tp_modera_thread(
    id_modera primary key
);
/

-- TESTE POVOAMENTO
-- USUARIOS
insert into tb_usuarios values(
    tp_usuario(
    'carlos',
    null,
    '123',
    'Carlos Pereira',
    'aaa',
    tp_endereco(
        15,
        '321321321',
        'Pernambuco',
        'rua do reitor',
        'Recife'
        )
    ,
    tp_emails(tp_email('email1@gmail.com'),tp_email('email2@hotmail.com')),
    tp_lista_cards()
    )
);

insert into tb_usuarios values(
    tp_usuario(
    'victor',
    null,
    '555',
    'Victor Luiz',
    'aaaB',
    tp_endereco(
        15,
        '456789123',
        'Pernambuco',
        'rua do reitor',
        'Recife'
        )
    ,
    tp_emails(tp_email('victor@gmail.com'),tp_email('victor@hotmail.com')),
    tp_lista_cards()
    )
);

insert into tb_moderadores values(
    tp_moderador(
    'Joao',
    null,
    '321',
    'Joao Pereira',
    'bbbbb',
    tp_endereco(
        15,
        '999999999',
        'Pernambuco',
        'Av boa viagem',
        'Recife'
        )
    ,
    tp_emails(tp_email('joaomod@gmail.com'),tp_email('joaomod2@hotmail.com')),
    tp_lista_cards(),
    1
    )
);

-- CARDS
INSERT INTO TABLE (SELECT U.lista_cards FROM tb_usuarios U WHERE
U.login = 'carlos') T VALUES (tp_card_usuario (1, 'Ola!', 'tenha um bom dia'));
/

INSERT INTO TABLE (SELECT U.lista_cards FROM tb_usuarios U WHERE
U.login = 'carlos') T VALUES (tp_card_usuario (2, 'Xau!', 'boa noite!'));
/

-- MENSAGENS
    
INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   (select ref (E) from tb_usuarios E where login ='carlos'),
    (select ref (R) from tb_usuarios R where login ='victor'),
    null,
    'me empresta tua conta do netflix',
    1
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   (select ref (E) from tb_usuarios E where login ='victor'),
    (select ref (R) from tb_usuarios R where login ='carlos'),
    null,
    'NAO',
    2
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   (select ref (E) from tb_usuarios E where login ='victor'),
    (select ref (R) from tb_usuarios R where login ='carlos'),
    null,
    'Cria uma conta pra tu',
    3
));

-- ANEXOS
INSERT INTO tb_anexos VALUES (tp_anexo
(
    (select ref (M) from tb_envia_mensagem M where numero = 3),
    'netflix.com',
    1

));


-- SECOES
insert into tb_secoes values(
    tp_secao(
    1,
    'Ação'
    )
);
insert into tb_secoes values(
    tp_secao(
    2,
    'Comédia'
    )
);

-- THREADS
insert into tb_threads values(
    tp_thread(
    1,
    'Velozes e furiosos 12',
    'Pessoal, o que acharam do novo velozes e furiosos?'  
    )
);
insert into tb_threads values(
    tp_thread(
    2,
    'Comedias do netflix',
    'Me rencomdem filmes de comédia no netflix por favor'  
    )
);

insert into tb_cria_thread values(
    (select ref (P) from tb_usuarios P where login ='carlos'),
    (select ref (G) from tb_threads G where id_thread = 1),
    (select ref (Z) from tb_secoes Z where id_secao = 1),
    null
);

insert into tb_cria_thread values(
    (select ref (P) from tb_usuarios P where login ='victor'),
    (select ref (G) from tb_threads G where id_thread = 2),
    (select ref (Z) from tb_secoes Z where id_secao = 2),
    null
);

-- MODERACAO

INSERT INTO tb_modera_secao VALUES(
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'Joao'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 1),
    1
);
INSERT INTO tb_modera_secao VALUES(
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'Joao'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 2),
    2
);

INSERT INTO tb_modera_thread VALUES(
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'Joao'),
    (SELECT REF (T) FROM tb_threads T WHERE id_thread = 2),
    'editar',
    1
);


--CREATE OR REPLACE TYPE tp_modera_thread AS OBJECT(
--    login_moderador REF tp_moderador,
--    id_thread REF tp_thread,
--    acao VARCHAR2(30),
--    id_modera
--);
--/


select * from tb_usuarios;
select U.login, U.data_hora, U.senha, U.nome, u.foto_de_perfil, (U.endereco).cep, (U.endereco).estado,
(U.endereco).cidade, (U.endereco).rua, (U.endereco).numero from tb_usuarios U;

SELECT E.endereco_email carlos_emails FROM tb_usuarios U, TABLE (U.emails) E WHERE U.login = 'carlos';

SELECT 'carlos' as Usuario_Cards, T.numero, T.titulo, T.descricao FROM TABLE (SELECT U.lista_cards FROM tb_usuarios U WHERE U.login = 'carlos') T;
/

SELECT DEREF(M.login_envia).login as login_envia, DEREF(M.login_recebe).login as login_recebe, M.data_hora, M.texto, M.numero FROM tb_envia_mensagem M;
SELECT DEREF(DEREF(A.numero_msg).login_envia).login as login_envia, DEREF(DEREF(A.numero_msg).login_recebe).login as login_recebe, DEREF(A.numero_msg).texto as mensagem, A.link_anexo, A.id_anexo FROM tb_anexos A;
SELECT DEREF(M.login_moderador).login as MODERADOR_LOGIN, DEREF(M.id_secao).titulo as SECAO_TITULO, M.id_modera_secao FROM tb_modera_secao M; 
SELECT DEREF(M.login_moderador).login as MODERADOR_LOGIN, DEREF(M.id_thread).titulo as THREAD_TITULO, M.acao, M.id_modera FROM tb_modera_thread M; 

select * from tb_moderadores;
select * from tb_secoes;
select * from tb_threads;
SELECT DEREF(C.login).login as Criador, DEREF(C.id_thread).titulo as Titulo, DEREF(C.id_secao).titulo as Secao, 
C.data_hora as Data_Criacao FROM tb_cria_thread C;