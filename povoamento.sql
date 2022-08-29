CREATE TABLE Usuario(
    login VARCHAR(30) 
    ,data_hora_cadastro DATETIME2(7)
    ,senha VARCHAR(30)
    ,nome VARCHAR(50)
    ,foto_de_perfil  VARCHAR(50)
    ,CONSTRAINT usuario_pkey PRIMARY KEY (login) 
    ,CONSTRAINT login_const UNIQUE (login)
    )

CREATE TABLE Endereco(
    login_usuario VARCHAR(30)
    ,numero INT 
    ,cep INT
    ,estado VARCHAR(20)
    ,rua VARCHAR(50)
    ,cidade VARCHAR(30) 
    ,FOREIGN KEY (login_usuario) REFERENCES Usuario(login)
    )
INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 04, '52041-701', 'Pernambuco', 'Rua Ascenso Ferreira', 'Recife'
FROM usuario
WHERE login = 'victorluiz';
INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'victorluiz300@gmail.com'
FROM usuario
WHERE login = 'fernanda_pascoal';
INSERT INTO moderador (login_moderador, ranking)
SELECT login, 1
FROM usuario
WHERE login = 'alice_sales';
INSERT INTO usuario VALUES ('bruno_lima', TO_DATE ('2022-05-05 12:30', 'yyyy-mm-dd hh24:mi'), 'petvicamo', 'Bruno Lima', 'https://i.pinimg.com/736x/59/78/93/59789370da99e5d88648467e36f58ca2.jpg');

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 16, '69903-022', 'Acre', 'Rua Travessa Manaus', 'Rio Branco'
FROM usuario
WHERE login = 'bruno_lima';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'bruninhoLima@gmail.com'
FROM usuario
WHERE login = 'bruno_lima';
INSERT INTO usuario VALUES ('marcelo_anderson', TO_DATE ('2022-12-12 10:30', 'yyyy-mm-dd hh24:mi'), 'eissoglr', 'Marcelo Anderson', 'https://i.pinimg.com/originals/b5/73/28/b57328c8c5d2b872a69d0c70156d4c71.jpg');

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 21, '69901-375', 'Acre', 'Rua Doutor Adalberto Costa e Silva', 'Rio Branco'
FROM usuario
WHERE login = 'marcelo_anderson';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'marcelinhodosolhinhos@gmail.com'
FROM usuario
WHERE login = 'marcelo_anderson';
INSERT INTO usuario VALUES ('thiago_pereira', TO_DATE ('2022-10-10 10:00', 'yyyy-mm-dd hh24:mi'), 'thiagoalice', 'Thiago Pereira', 'https://pbs.twimg.com/media/E5zLZVYX0AkgVPI.jpg');

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 25, '58046-528', 'Paraíba', 'Rua Orlando Falcone de Oliveira', 'João Pessoa'
FROM usuario
WHERE login = 'thiago_pereira';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'thiagoalice@gmail.com'
FROM usuario
WHERE login = 'thiago_pereira';

INSERT INTO usuario VALUES ('raissa_silva', TO_DATE ('2022-10-11 05:00', 'yyyy-mm-dd hh24:mi'), 'manubela', 'Raissa Silva', 'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/bltfd1b78b5bd31bac9/629149121a5eff4c4c377593/Lol_EM_PRIDE_2022_EXP.jpg');

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 65, '58400-299', 'Paraíba', 'Travessa Presidente Epitácio Pessoa', 'Campina Grande'
FROM usuario
WHERE login = 'raissa_silva';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'estrelamanubela@gmail.com'
FROM usuario
WHERE login = 'raissa_silva';

INSERT INTO usuario VALUES ('gabriela_pinheiro', TO_DATE ('2022-10-11 16:11', 'yyyy-mm-dd hh24:mi'), 'gabi100jesus', 'Gabriela Pinheiro', 'https://st2.depositphotos.com/5686448/45955/v/600/depositphotos_459558582-stock-illustration-abstract-woman-profile-portrait-with.jpg');

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 72, '38700-492', 'Minas Gerais', 'Rua Rondônia', 'Patos de Minas'
FROM usuario
WHERE login = 'gabriela_pinheiro';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'gabijesus02@gmail.com'
FROM usuario
WHERE login = 'gabriela_pinheiro';