-- Povoamento da tabela 'usuario'

INSERT INTO usuario VALUES ('victorluiz', TO_DATE ('2019-01-01 19:50', 'yyyy-mm-dd hh24:mi'), 'ufpeteodeio', 'Victo Luiz' , 'https://avatarfiles.alphacoders.com/241/thumb-241064.jpg');
INSERT INTO usuario VALUES ('alice_sales', TO_DATE ('2022-12-05 10:34', 'yyyy-mm-dd hh24:mi'), 'floquinho2015', 'Alice Sales', 'https://avatarfiles.alphacoders.com/181/thumb-181638.png');
INSERT INTO usuario VALUES ('carlos_roberto1', TO_DATE ('2022-05-01 12:59', 'yyyy-mm-dd hh24:mi'), 'carlosrpereira', 'Carlos Roberto', 'https://avatarfiles.alphacoders.com/106/thumb-106992.png');
INSERT INTO usuario VALUES ('botan', TO_DATE ('2022-09-07 16:43', 'yyyy-mm-dd hh24:mi'), 'amoinfrahw', 'Botan', 'https://avatars.alphacoders.com/avatars/view/43265');
INSERT INTO usuario VALUES ('g_machado', TO_DATE ('2022-09-07 12:57', 'yyyy-mm-dd hh24:mi'), 'odeiolol', 'Gabriel Machado', 'https://avatarfiles.alphacoders.com/294/thumb-294910.jpg');
INSERT INTO usuario VALUES ('karenn_', TO_DATE ('2022-03-14 22:25', 'yyyy-mm-dd hh24:mi'), 'karendoismilevintedois', 'Karen', 'https://avatarfiles.alphacoders.com/272/thumb-272946.jpg');
INSERT INTO usuario VALUES ('fernanda_pascoal', TO_DATE ('2022-03-07 05:30', 'yyyy-mm-dd hh24:mi'), 'amoverveja', 'Fernanda Pascoal', 'https://avatarfiles.alphacoders.com/314/thumb-314751.jpg');
INSERT INTO usuario VALUES ('bruno_lima', TO_DATE ('2022-05-05 12:30', 'yyyy-mm-dd hh24:mi'), 'petvicamo', 'Bruno Lima', 'https://i.pinimg.com/736x/59/78/93/59789370da99e5d88648467e36f58ca2.jpg');
INSERT INTO usuario VALUES ('marcelo_anderson', TO_DATE ('2022-12-12 10:30', 'yyyy-mm-dd hh24:mi'), 'eissoglr', 'Marcelo Anderson', 'https://i.pinimg.com/originals/b5/73/28/b57328c8c5d2b872a69d0c70156d4c71.jpg');
INSERT INTO usuario VALUES ('thiago_pereira', TO_DATE ('2022-10-10 10:00', 'yyyy-mm-dd hh24:mi'), 'thiagoalice', 'Thiago Pereira', 'https://pbs.twimg.com/media/E5zLZVYX0AkgVPI.jpg');
INSERT INTO usuario VALUES ('raissa_silva', TO_DATE ('2022-10-11 05:00', 'yyyy-mm-dd hh24:mi'), 'manubela', 'Raissa Silva', 'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/bltfd1b78b5bd31bac9/629149121a5eff4c4c377593/Lol_EM_PRIDE_2022_EXP.jpg');
INSERT INTO usuario VALUES ('gabriela_pinheiro', TO_DATE ('2022-10-11 16:11', 'yyyy-mm-dd hh24:mi'), 'gabi100jesus', 'Gabriela Pinheiro', 'https://st2.depositphotos.com/5686448/45955/v/600/depositphotos_459558582-stock-illustration-abstract-woman-profile-portrait-with.jpg');

-- Povoamento da tabela 'endereco'

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 04, '52041-701', 'Pernambuco', 'Rua Ascenso Ferreira', 'Recife'
FROM usuario
WHERE login = 'victorluiz';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 78, '54789-430', 'Pernambuco', 'Rua Lindos Poemas', 'Camaragibe'
FROM usuario
WHERE login = 'alice_sales';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 43, '55850-971', 'Pernambuco', 'Rua Abdon José de Lima 12', 'Vicência'
FROM usuario
WHERE login = 'carlos_roberto1';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 22, '54705-370', 'Pernambuco', 'Rua São João do Piauí', 'São Lourenço da Mata'
FROM usuario
WHERE login = 'botan';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 12, '45295-970', 'Bahia', 'Rua Ruy Barbosa', 'Água Doce'
FROM usuario
WHERE login = 'g_machado';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 09, '01405-020', 'São Paulo', 'Jardim Maria Badra', 'São Paulo'
FROM usuario
WHERE login = 'karenn_';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 87, '36803-971', 'Minas Gerais', 'Praça Nascimento Leal 96', 'Alvorada'
FROM usuario
WHERE login = 'fernanda_pascoal';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 16, '69903-022', 'Acre', 'Rua Travessa Manaus', 'Rio Branco'
FROM usuario
WHERE login = 'bruno_lima';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 21, '69901-375', 'Acre', 'Rua Doutor Adalberto Costa e Silva', 'Rio Branco'
FROM usuario
WHERE login = 'marcelo_anderson';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 25, '58046-528', 'Paraíba', 'Rua Orlando Falcone de Oliveira', 'João Pessoa'
FROM usuario
WHERE login = 'thiago_pereira';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 65, '58400-299', 'Paraíba', 'Travessa Presidente Epitácio Pessoa', 'Campina Grande'
FROM usuario
WHERE login = 'raissa_silva';

INSERT INTO endereco (login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 72, '38700-492', 'Minas Gerais', 'Rua Rondônia', 'Patos de Minas'
FROM usuario
WHERE login = 'gabriela_pinheiro';

-- Povoamento da tabela "email"

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'victorluiz300@gmail.com'
FROM usuario
WHERE login = 'victorluiz';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'alice12sales@gmail.com'
FROM usuario
WHERE login = 'alice_sales';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'carlosroberopereira5@gmail.com'
FROM usuario
WHERE login = 'carlos_roberto1';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'renatoalpes@gmail.com'
FROM usuario
WHERE login = 'botan';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'gabsmachad0@gmail.com'
FROM usuario
WHERE login = 'g_machado';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'karenbarbosasilva@gmail.com'
FROM usuario
WHERE login = 'karenn_';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'victorluiz300@gmail.com'
FROM usuario
WHERE login = 'fernanda_pascoal';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'bruninhoLima@gmail.com'
FROM usuario
WHERE login = 'bruno_lima';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'marcelinhodosolhinhos@gmail.com'
FROM usuario
WHERE login = 'marcelo_anderson';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'thiagoalice@gmail.com'
FROM usuario
WHERE login = 'thiago_pereira';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'estrelamanubela@gmail.com'
FROM usuario
WHERE login = 'raissa_silva';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'gabijesus02@gmail.com'
FROM usuario
WHERE login = 'gabriela_pinheiro';

-- Povoamento da tabela "moderador"

INSERT INTO moderador (login_moderador, ranking)
SELECT login, 1
FROM usuario
WHERE login = 'alice_sales';

INSERT INTO moderador (login_moderador, ranking)
SELECT login, 3
FROM usuario
WHERE login = 'botan';

INSERT INTO moderador (login_moderador, ranking)
SELECT login, 2
FROM usuario
WHERE login = 'karenn_';

INSERT INTO moderador (login_moderador, ranking)
SELECT login, 1
FROM usuario
WHERE login = 'marcelo_anderson';