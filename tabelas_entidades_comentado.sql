-- Criando as tabelas

CREATE TABLE usuario(
    login VARCHAR2(30) NOT NULL
    ,data_hora DATE 
    ,senha VARCHAR2(30) NOT NULL
    ,nome VARCHAR2(50)
    ,foto_de_perfil  VARCHAR2(200)
    ,CONSTRAINT usuario_pkey PRIMARY KEY (login) --Definindo "login" como Chave Primária da tabela usuario
    );

CREATE TABLE endereco(
    login_usuario_endereco VARCHAR2(30)
    ,numero NUMBER
    ,cep VARCHAR(9)
    ,estado VARCHAR2(20)
    ,rua VARCHAR2(50)
    ,cidade VARCHAR2(30) 
    ,CONSTRAINT login_usuario_endereco_fkey FOREIGN KEY(login_usuario_endereco) REFERENCES usuario(login) -- Referenciando "login_usuario_endereco" como uma Chave Estrangeira na tabela "endereco"
    ,CONSTRAINT endereco_cep_ck CHECK (cep LIKE ('_____-___')) -- Usando o "CHECK" para definir o padrão do atriuto "cep". Ex: 12345-789
    );


CREATE TABLE email(
    login_usuario_email VARCHAR2(30) 
    ,endereco_email VARCHAR2(50)
    ,CONSTRAINT email_pkey PRIMARY KEY (login_usuario_email, endereco_email) -- Definindo "login_usuario_email" e "endereco_email" como uma Chave Primária Composta da tabela "email"
    ,CONSTRAINT login_usuario_email_fkey2 FOREIGN KEY (login_usuario_email) REFERENCES usuario(login) -- Referenciando "login_usuario_email" como  uma Chave Estrangeira na tabela "email"  
    );

CREATE TABLE secao(
    id NUMBER NOT NULL
    ,titulo VARCHAR2(40)
    ,CONSTRAINT secao_pkey PRIMARY KEY (id) -- Definindo "id" como Chave Primária da tabela "secao"
    );

CREATE TABLE cards_do_usuario(
    login_usuario_card VARCHAR2(30)
    ,numero NUMBER NOT NULL
    ,titulo VARCHAR2(40)
    ,descricao VARCHAR2(200)
     ,CONSTRAINT cards_do_usuario_pkey PRIMARY KEY (login_usuario_card, numero) -- Definindo "login_usuario_card" e "numero" como Chave Primária Composta da tabela "cards_do_usuario"
    ,CONSTRAINT login_usuario_card_pkey FOREIGN KEY (login_usuario_card) REFERENCES usuario(login) -- Referenciando "login_usuario_card" como Chave Estrangeira na tabela "cards_do_usuario"
    );

CREATE TABLE thread(
    id NUMBER NOT NULL
    ,titulo VARCHAR2(40)
    ,texto VARCHAR2(300)  
    ,CONSTRAINT thread_pkey PRIMARY KEY (id) -- Definindo "id" como Chave Primária da tabela "thread"
    );

CREATE TABLE reply(
    numero NUMBER NOT NULL
    ,mensagem VARCHAR2(300)
    ,CONSTRAINT reply_pkey PRIMARY KEY (numero) -- Definindo "numero" como Chave Primária da tabela "reply"
    );

CREATE TABLE moderador(
    login_moderador VARCHAR(30)
    ,ranking NUMBER
    ,CONSTRAINT moderador_pkey PRIMARY KEY (login_moderador) -- Definindo "login_moderador" como Chave Primária da tabela "moderador"
    ,CONSTRAINT login_moderador_fkey FOREIGN KEY (login_moderador) REFERENCES usuario(login) -- Referenciando "login_moderador" como uma Chave Estrangeira na tabela "moderador"
    );
CREATE TABLE anexo(
    id NUMBER NOT NULL
    ,login_usuario_envia VARCHAR(30)
    ,login_usuario_recebe VARCHAR2(30)
    ,data_hora DATE
    ,CONSTRAINT anexo_pkey PRIMARY KEY (login_usuario_envia, login_usuario_recebe, id) -- Definindo "login_usuario_envia", "login_usuario_recebe" e "id" como Chave Primária Composta da tabela "anexo"
    ,CONSTRAINT anexo_fkey FOREIGN KEY (login_usuario_envia) REFERENCES usuario(login) -- Referenciando "login-usuario_envia" como Chave Estrangeira na tabela "anexo"
    ,CONSTRAINT anexo_fkey2 FOREIGN KEY (login_usuario_recebe) REFERENCES usuario(login) -- Referenciando "login-usuario_recebe" como Chave Estrangeira na tabela "anexo"
    );

-- Criando as sequencias

CREATE SEQUENCE reply_numero_seq -- Criando uma sequência para a chave primária "numero" da tabela "reply"
    MINVALUE 1
    INCREMENT BY 1
    START WITH 1
    CACHE 50;

CREATE SEQUENCE card_numero_seq -- Criando uma sequência para a chave primária "numero" da tabela "cards_do_usuario"
    MINVALUE 1
    INCREMENT BY 1
    START WITH 1
    CACHE 50;