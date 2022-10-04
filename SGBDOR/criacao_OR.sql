drop table tb_usuarios;
drop table tb_moderadores;
drop table tb_replies;
drop table tb_secoes;
drop table tb_threads;
drop table tb_cria_thread;
drop table tb_cria_reply;
drop table tb_bane;

drop type tp_bane;
drop type tp_cria_thread;
drop type tp_cria_reply;
drop type tp_moderador;
drop type tp_usuario;
drop type tp_endereco;
drop type tp_emails;
drop type tp_email;


-- USUARIOS
CREATE OR REPLACE TYPE tp_email AS OBJECT (
    endereco_email VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tp_emails AS VARRAY(5) OF tp_email;
/

CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    numero NUMBER
    ,cep VARCHAR(9)
    ,estado VARCHAR2(20)
    ,rua VARCHAR2(50)
    ,cidade VARCHAR2(30) 
);
/

CREATE OR REPLACE TYPE tp_usuario AS OBJECT (
    login VARCHAR2(30)
    ,data_hora DATE 
    ,senha VARCHAR2(30)
    ,nome VARCHAR2(50)
    ,foto_de_perfil  VARCHAR2(200),
    endereco tp_endereco,
    emails tp_emails
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_moderador UNDER tp_usuario (
    ranking number
);
/


CREATE TABLE tb_usuarios OF tp_usuario (
    login primary key
);
/

CREATE TABLE tb_moderadores OF tp_moderador (
    login primary key
);
/


-- THREADS
CREATE OR REPLACE TYPE tp_thread AS OBJECT(
    id_thread NUMBER
    ,titulo VARCHAR2(50)
    ,texto VARCHAR2(300)  
);
/

CREATE TABLE tb_threads OF tp_thread(
    id_thread primary key
);
/

-- REPLIES
CREATE OR REPLACE TYPE tp_reply AS OBJECT(
    numero NUMBER
    ,mensagem VARCHAR2(300)
);
/

CREATE TABLE tb_replies OF tp_reply(
    numero primary key
);
/

-- SECOES
CREATE OR REPLACE TYPE tp_secao AS OBJECT (
    id_secao NUMBER
    ,titulo VARCHAR2(40)
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





-- testes povoamento
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
    tp_emails(tp_email('email1@gmail.com'),tp_email('email2@hotmail.com')))
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
    tp_emails(tp_email('victor@gmail.com'),tp_email('victor@hotmail.com')))
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
    1)
);

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

select * from tb_usuarios;
select * from tb_moderadores;
select * from tb_secoes;
select * from tb_threads;
select * from tb_cria_thread;