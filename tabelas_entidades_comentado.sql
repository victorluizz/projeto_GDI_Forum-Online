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
    id_secao NUMBER NOT NULL
    ,titulo VARCHAR2(40)
    ,CONSTRAINT secao_pkey PRIMARY KEY (id_secao) -- Definindo "id" como Chave Primária da tabela "secao"
    );

CREATE TABLE cards_do_usuario(
    login_usuario_card VARCHAR2(30)
    ,numero NUMBER NOT NULL
    ,titulo VARCHAR2(40)
    ,descricao VARCHAR2(200)
     ,CONSTRAINT cards_do_usuario_pkey PRIMARY KEY (login_usuario_card, numero) -- Definindo "login_usuario_card" e "numero" como Chave Primária Composta da tabela "cards_do_usuario"
    ,CONSTRAINT login_usuario_card_pkey FOREIGN KEY (login_usuario_card) REFERENCES usuario(login) -- Referenciando "login_usuario_card" como Chave Estrangeira na tabela "cards_do_usuario"
    );

CREATE TABLE thread_tabela(
    id_thread NUMBER NOT NULL
    ,titulo VARCHAR2(50)
    ,texto VARCHAR2(300)  
    ,CONSTRAINT thread_tabela_pkey PRIMARY KEY (id_thread) -- Definindo "id" como Chave Primária da tabela "thread"
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
    id_anexo NUMBER NOT NULL
    ,login_usuario_envia VARCHAR(30)
    ,login_usuario_recebe VARCHAR2(30)
    ,data_hora DATE
    ,CONSTRAINT anexo_pkey PRIMARY KEY (login_usuario_envia, login_usuario_recebe, id_anexo) -- Definindo "login_usuario_envia", "login_usuario_recebe" e "id" como Chave Primária Composta da tabela "anexo"
    ,CONSTRAINT anexo_fkey FOREIGN KEY (login_usuario_envia) REFERENCES usuario(login) -- Referenciando "login-usuario_envia" como Chave Estrangeira na tabela "anexo"
    ,CONSTRAINT anexo_fkey2 FOREIGN KEY (login_usuario_recebe) REFERENCES usuario(login) -- Referenciando "login-usuario_recebe" como Chave Estrangeira na tabela "anexo"
    );

CREATE TABLE modera_secao(
    login_moderador VARCHAR2(30)
    ,id_secao_modera_secao NUMBER NOT NULL
    ,CONSTRAINT modera_secao_pkey PRIMARY KEY (login_moderador, id_secao_modera_secao) -- Definindo "login_moderador" e "id_secao_modera_secao" como Chave Primária da tabela "modera_secao"
    ,CONSTRAINT modera_secao_fkey FOREIGN KEY (login_moderador) REFERENCES usuario(login) -- Referenciando "login_moderador" como Chave Estrangeira na tabela "modera_secao"
    ,CONSTRAINT modera_secao_fkey2 FOREIGN KEY (id_secao_modera_secao) REFERENCES secao(id_secao) -- Referenciando "id_secao_modera_secao" como Chave Estrangeira na tabela "modera_secao"
    );

CREATE TABLE modera_thread(
    login_moderador VARCHAR2(30)
    ,id_thread_modera_thread NUMBER NOT NULL
    ,acao NUMBER NOT NULL
    ,CONSTRAINT modera_thread_pkey PRIMARY KEY (login_moderador, id_thread_modera_thread) -- Definindo "login_moderador" e "id_thread_modera_thread" como Chave Primária da tabela "modera_thread"
    ,CONSTRAINT modera_thread_fkey FOREIGN KEY (login_moderador) REFERENCES usuario(login) -- Referenciando "login_moderador" como Chave Estrangeira na tabela "modera_thread"
    ,CONSTRAINT modera_thread_fkey2 FOREIGN KEY (id_thread_modera_thread) REFERENCES thread_tabela(id_thread) -- Referenciando "id_thread_modera_thread" como Chave Estrangeira na tabela "modera_thread"
    );
CREATE TABLE envia_mensagem (
    login_usuario_envia VARCHAR2(30)
    ,login_usuario_recebe VARCHAR2(30)
    ,data_hora DATE
    ,texto VARCHAR2(300)
    ,CONSTRAINT envia_mensagem_pkey PRIMARY KEY (login_usuario_envia, login_usuario_recebe, data_hora) -- Definindo "login_usuario_envia", "login_usuario_recebe", "data_hora" como Chave Primária da tabela "envia_mensagem"
    ,CONSTRAINT envia_mensagem_fkey FOREIGN KEY (login_usuario_envia) REFERENCES usuario(login) -- Referenciando "login_usuario_envia" como Chave Estrangeira na tabela "envia_mensagem"
    ,CONSTRAINT envia_mensagem_fkey2 FOREIGN KEY (login_usuario_recebe) REFERENCES usuario(login) -- Referenciando "login_usuario_recebe" como Chave Estrangeira na tabela "envia_mensagem"
    );

CREATE TABLE cria_thread(
    login_usuario_cria_thread VARCHAR2(30)
    ,id_secao_cria_thread NUMBER
    ,id_thread_cria_thread NUMBER
    ,data_hora_thread DATE
    ,CONSTRAINT cria_thread_pkey PRIMARY KEY (login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread) -- Definindo "login_usuario_cria_thread", "id_secao_cria_thread" e "id_thread_cria_thread" como Chave Primária na tabela "cria_thread"
    ,CONSTRAINT cria_thread_fkey FOREIGN KEY (login_usuario_cria_thread) REFERENCES usuario(login) -- Referenciando "login_usuario_cria_thread" como Chave Estrangeira na tabela "cria_thread"
    ,CONSTRAINT cria_thread_fkey2 FOREIGN KEY (id_secao_cria_thread) REFERENCES secao(id_secao) -- Referenciando "id_secao_cria_thread" como Chave Estrangeira na tabela "cria_thread"
    ,CONSTRAINT cria_thread_fkey3 FOREIGN KEY (id_thread_cria_thread) REFERENCES thread_tabela(id_thread) -- Referenciando "id_thread_cria_thread" como Chave Estrangeira na tabela "cria_thread"
    );

CREATE TABLE cria_resposta(
    login_usuario_cria_resposta VARCHAR2(30)
    ,id_thread_cria_resposta NUMBER
    ,numero_reply_cria_resposta NUMBER
    ,data_hora_cria_resposta DATE
    ,CONSTRAINT cria_resposta_pkey PRIMARY KEY (login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta) -- Definindo "login_usuario_cria_resposta", "id_thread_cria_resposta" e "numero_reply_cria_resposta" como Chave Primária da tabela "cria_resposta"
    ,CONSTRAINT cria_resposta_fkey FOREIGN KEY (login_usuario_cria_resposta) REFERENCES usuario(login) -- Referenciando "login_usuario_cria_resposta" como Chave Estrangeira na tabela "cria_resposta"
    ,CONSTRAINT cria_resposta_fkey2 FOREIGN KEY (id_thread_cria_resposta) REFERENCES thread_tabela(id_thread) -- Referenciando "id_thread_cria_resposta" como Chave Estrangeira na tabela "cria_resposta"
    ,CONSTRAINT cria_resposta_fkey3 FOREIGN KEY (numero_reply_cria_resposta) REFERENCES reply(numero) -- Refrenciando "numero_reply_cria_resposta" como Chave Estrangeira na tabela "cria_resposta"
    );

CREATE TABLE bane(
    login_usuario_banido VARCHAR(30)
    ,login_moderador_bane VARCHAR(30)
    ,id_secao_bane NUMBER
    ,CONSTRAINT bane_pkey PRIMARY KEY (login_usuario_banido, login_moderador_bane, id_secao_bane) -- Definindo "login_usuario_banido", "login_moderador_bane" e "id_secao_bane" como chaves primárias da tabela "bane"
    ,CONSTRAINT bane_fkey FOREIGN KEY (login_usuario_banido) REFERENCES usuario(login) -- Referenciando "login_usuario_banido" como Chave Estrangeira na tabela "bane"
    ,CONSTRAINT bane_fkey2 FOREIGN KEY (login_moderador_bane) REFERENCES usuario(login) -- Referenciando "login_moderador_bane" como Chave Estrangeira na tabela "bane"
    ,CONSTRAINT bane_fkey3 FOREIGN KEY (id_secao_bane) REFERENCES secao(id_secao) -- Referenciando "id_secao_bane" como Chave Estrangeira na tabela "bane"
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
