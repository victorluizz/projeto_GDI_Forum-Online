drop table tb_usuarios;
drop table tb_moderadores;
drop type tp_moderador;
drop type tp_usuario;
drop type tp_endereco;
drop type tp_emails;
drop type tp_email;

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

select * from tb_usuarios;
select * from tb_moderadores;