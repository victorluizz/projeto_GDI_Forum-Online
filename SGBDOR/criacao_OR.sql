drop table tb_cria_thread;
drop table tb_cria_reply;
drop table tb_replies;
drop table tb_secoes;
drop table tb_threads;
drop table tb_bane;
drop table tb_anexos;
drop table tb_envia_mensagem;
drop table tb_modera_thread;
drop table tb_modera_secao;
drop table tb_moderadores;
drop table tb_usuarios;
drop table tb_endereco;

drop type tp_modera_thread;
drop type tp_modera_secao;
drop type tp_anexo;
drop type tp_envia_mensagem;
drop type tp_bane;
drop type tp_cria_thread;
drop type tp_cria_reply;
drop type tp_moderador;
drop type tp_usuario;
drop type tp_pessoa;
drop type tp_endereco;
drop type tp_emails;
drop type tp_email;
drop type tp_lista_cards;
drop type tp_card_usuario;

-- EMAILS
CREATE OR REPLACE TYPE tp_email AS OBJECT (
    endereco_email VARCHAR2(50),
    CONSTRUCTOR FUNCTION tp_email
    RETURN SELF AS RESULT
);
/

CREATE OR REPLACE TYPE tp_emails AS VARRAY(5) OF tp_email;
/

-- ENDERECO
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    cod_end NUMBER,
    numero NUMBER,
    cep VARCHAR(9),
    estado VARCHAR2(20),
    rua VARCHAR2(50),
    cidade VARCHAR2(30),
    bairro VARCHAR2(30)
);
/

ALTER TYPE tp_endereco DROP ATTRIBUTE bairro;

CREATE TABLE tb_endereco OF tp_endereco(
    cod_end primary key
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

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
    login VARCHAR2(30),
    data_hora DATE ,
    senha VARCHAR2(30),
    nome VARCHAR2(50),
    foto_de_perfil  VARCHAR2(200),
    endereco REF tp_endereco,
    emails tp_emails,
    lista_cards tp_lista_cards,
    MAP MEMBER FUNCTION getRank RETURN NUMBER

) NOT INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_moderador AS 
    MAP MEMBER FUNCTION getRank RETURN NUMBER IS
        BEGIN
            RETURN -1;
        END;
END;
/


CREATE OR REPLACE TYPE tp_usuario UNDER tp_pessoa (
) FINAL;
/

-- MODERADOR
CREATE OR REPLACE TYPE tp_moderador UNDER tp_pessoa (
    ranking number,
    OVERRIDING MAP MEMBER FUNCTION getRank RETURN NUMBER,
    MEMBER PROCEDURE setRank (r NUMBER)
) FINAL;
/

CREATE OR REPLACE TYPE BODY tp_moderador AS 
    MAP MEMBER FUNCTION getRank RETURN NUMBER IS
        BEGIN
            RETURN ranking;
        END;
    MEMBER PROCEDURE setRank(r NUMBER) IS 
        BEGIN
            ranking:=r;
        END;
END;
/

CREATE TABLE tb_usuarios OF tp_usuario(
    login primary key,
    endereco WITH ROWID REFERENCES tb_endereco
)  NESTED TABLE lista_cards STORE AS nt_cards;
/

CREATE TABLE tb_moderadores OF tp_moderador(
    login primary key,
    endereco WITH ROWID REFERENCES tb_endereco
) NESTED TABLE lista_cards STORE AS nt_cards2;
/


-- THREADS
CREATE OR REPLACE TYPE tp_thread AS OBJECT(
    id_thread NUMBER,
    titulo VARCHAR2(50),
    texto VARCHAR2(300),
    MEMBER PROCEDURE editar (novo_texto VARCHAR2)
);
/

CREATE OR REPLACE TYPE BODY tp_thread AS 
    MEMBER PROCEDURE editar (novo_texto VARCHAR2) IS
    BEGIN
        texto:=novo_texto;
    END;
END;
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
    id_cria_thread number,
    login REF tp_pessoa,
    id_thread REF tp_thread,
    id_secao REF tp_secao,
    data_hora TIMESTAMP,
    ORDER MEMBER FUNCTION compara_data(t tp_cria_thread) RETURN INTEGER
);
/

CREATE OR REPLACE TYPE BODY tp_cria_thread AS 
    ORDER MEMBER FUNCTION compara_data(t tp_cria_thread) RETURN INTEGER IS
    minha_data TIMESTAMP := data_hora;
    outra_data TIMESTAMP := t.data_hora;
    BEGIN
        IF (data_hora = t.data_hora) THEN
            RETURN 0;
        END IF;
        IF (data_hora > t.data_hora) THEN
            RETURN 1;
        END IF;
        RETURN -1;
    END;
END;
/

CREATE TABLE tb_cria_thread OF tp_cria_thread(
    id_cria_thread primary key
);


-- CRIACAO DE REPLY (TERNARIO)
CREATE OR REPLACE TYPE tp_cria_reply AS OBJECT(
    id_cria_reply number,
    login REF tp_pessoa,
    id_thread REF tp_thread,
    numero REF tp_reply,
    data_hora TIMESTAMP
);
/

CREATE TABLE tb_cria_reply OF tp_cria_reply(
    id_cria_reply primary key
);

-- BANIR (TERNARIO)
CREATE OR REPLACE TYPE tp_bane AS OBJECT(
    id_bane NUMBER,
    login_usuario REF tp_pessoa,
    login_moderador REF tp_moderador,
    id_secao REF tp_secao
);
/

CREATE TABLE tb_bane OF tp_bane(
    id_bane primary key
);


-- ENVIA_MENSAGEM

CREATE OR REPLACE TYPE tp_envia_mensagem AS OBJECT(
    numero NUMBER,
    login_envia REF tp_pessoa,
    login_recebe REF tp_pessoa,
    data_hora TIMESTAMP,
    texto VARCHAR2(300)
);
/

CREATE TABLE tb_envia_mensagem OF tp_envia_mensagem(
    numero primary key
);
/

-- ANEXOS

CREATE OR REPLACE TYPE tp_anexo AS OBJECT(
    id_anexo NUMBER,
    numero_msg REF tp_envia_mensagem,
    link_anexo VARCHAR2(200)
    
);
/

CREATE TABLE tb_anexos OF tp_anexo(
    id_anexo primary key
);
/

-- MODERACAO

CREATE OR REPLACE TYPE tp_modera_secao AS OBJECT(
    id_modera_secao NUMBER,
    login_moderador REF tp_moderador,
    id_secao REF tp_secao
);
/
CREATE TABLE tb_modera_secao OF tp_modera_secao(
    id_modera_secao primary key
);
/

--CREATE TABLE tb_modera_secao of tp_

CREATE OR REPLACE TYPE tp_modera_thread AS OBJECT(
    id_modera NUMBER,
    login_moderador REF tp_moderador,
    id_thread REF tp_thread,
    acao VARCHAR2(30)
);
/

CREATE TABLE tb_modera_thread OF tp_modera_thread(
    id_modera primary key
);
/
