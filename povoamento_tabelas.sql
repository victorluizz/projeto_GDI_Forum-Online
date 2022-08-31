-- Povoamento da tabela 'usuario'

INSERT INTO usuario VALUES ('victorluiz', TO_DATE ('2022-01-04 19:50', 'yyyy-mm-dd hh24:mi'), 'vitinholuizz', 'Victo Luiz' , 'https://avatarfiles.alphacoders.com/241/thumb-241064.jpg');
INSERT INTO usuario VALUES ('alice_sales', TO_DATE ('2022-03-05 10:34', 'yyyy-mm-dd hh24:mi'), 'floquinho2015', 'Alice Sales', 'https://avatarfiles.alphacoders.com/181/thumb-181638.png');
INSERT INTO usuario VALUES ('carlos_roberto1', TO_DATE ('2022-05-01 12:59', 'yyyy-mm-dd hh24:mi'), 'carlosrpereira', 'Carlos Roberto', 'https://avatarfiles.alphacoders.com/106/thumb-106992.png');
INSERT INTO usuario VALUES ('botan', TO_DATE ('2022-02-07 16:43', 'yyyy-mm-dd hh24:mi'), 'amoinfrahw', 'Botan', 'https://avatars.alphacoders.com/avatars/view/43265');
INSERT INTO usuario VALUES ('g_machado', TO_DATE ('2022-02-07 12:57', 'yyyy-mm-dd hh24:mi'), 'odeiolol', 'Gabriel Machado', 'https://avatarfiles.alphacoders.com/294/thumb-294910.jpg');
INSERT INTO usuario VALUES ('karenn_', TO_DATE ('2022-03-14 22:25', 'yyyy-mm-dd hh24:mi'), 'karendoismilevintedois', 'Karen', 'https://avatarfiles.alphacoders.com/272/thumb-272946.jpg');
INSERT INTO usuario VALUES ('fernanda_pascoal', TO_DATE ('2022-03-07 05:30', 'yyyy-mm-dd hh24:mi'), 'amocerveja', 'Fernanda Pascoal', 'https://avatarfiles.alphacoders.com/314/thumb-314751.jpg');
INSERT INTO usuario VALUES ('bruno_lima', TO_DATE ('2022-05-05 12:30', 'yyyy-mm-dd hh24:mi'), 'petvicamo', 'Bruno Lima', 'https://i.pinimg.com/736x/59/78/93/59789370da99e5d88648467e36f58ca2.jpg');
INSERT INTO usuario VALUES ('marcelo_anderson', TO_DATE ('2022-02-12 10:30', 'yyyy-mm-dd hh24:mi'), 'eissoglr', 'Marcelo Anderson', 'https://i.pinimg.com/originals/b5/73/28/b57328c8c5d2b872a69d0c70156d4c71.jpg');
INSERT INTO usuario VALUES ('thiago_pereira', TO_DATE ('2022-03-10 10:00', 'yyyy-mm-dd hh24:mi'), 'thiagoalice', 'Thiago Pereira', 'https://pbs.twimg.com/media/E5zLZVYX0AkgVPI.jpg');
INSERT INTO usuario VALUES ('raissa_silva', TO_DATE ('2022-01-11 05:00', 'yyyy-mm-dd hh24:mi'), 'manubela', 'Raissa Silva', 'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/bltfd1b78b5bd31bac9/629149121a5eff4c4c377593/Lol_EM_PRIDE_2022_EXP.jpg');
INSERT INTO usuario VALUES ('gabriela_pinheiro', TO_DATE ('2022-01-11 16:11', 'yyyy-mm-dd hh24:mi'), 'gabijesusefiel', 'Gabriela Pinheiro', 'https://st2.depositphotos.com/5686448/45955/v/600/depositphotos_459558582-stock-illustration-abstract-woman-profile-portrait-with.jpg');
INSERT INTO usuario VALUES ('romulodaniell2', TO_DATE ('2022-01-04 20:50', 'yyyy-mm-dd hh24:mi'), 'x1lixo_yasuo', 'Romulo Daniell', 'https://avatarfiles.alphacoders.com/236/236565.jpg');
INSERT INTO usuario VALUES ('ernesto32', TO_DATE ('2022-04-01 17:45', 'yyyy-mm-dd hh24:mi'), 'ernestofielacristo', 'Ernesto', 'https://avatarfiles.alphacoders.com/823/thumb-82389.png');

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

INSERT INTO endereco(login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 04, '52041-701', 'Pernambuco', 'Rua Ascenso Ferreira', 'Recife'
FROM usuario
WHERE login = 'romulodaniell2';

INSERT INTO endereco(login_usuario_endereco, numero, cep, estado, rua, cidade)
SELECT login, 65, '13052-763', 'São Paulo', 'Rua Victalina de Oliveira Astolfi', 'Campinas'
FROM usuario
WHERE login = 'ernesto32';

-- Povoamento da tabela "email"

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'victorluiz300@gmail.com'
FROM usuario
WHERE login = 'victorluiz';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'victorluiz300@hotmail.com'
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
SELECT login, 'carlosroberopereira2@gmail.com'
FROM usuario
WHERE login = 'carlos_roberto1';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'carlosroberobertoo75@gmail.com'
FROM usuario
WHERE login = 'carlos_roberto1';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'renatoalpes@gmail.com'
FROM usuario
WHERE login = 'botan';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'renatoalpes@hotmail.com'
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
SELECT login, 'fernandapasc@gmail.com'
FROM usuario
WHERE login = 'fernanda_pascoal';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'bruninhoLima@gmail.com'
FROM usuario
WHERE login = 'bruno_lima';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'brunaolimao@gmail.com'
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

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'romulodaniell2013@hotmail.com'
FROM usuario
WHERE login = 'romulodaniell2';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'romulodaniell2015@gmail.com'
FROM usuario
WHERE login = 'romulodaniell2';

INSERT INTO email (login_usuario_email, endereco_email)
SELECT login, 'ernestogonc@gmail.com'
FROM usuario
WHERE login = 'ernesto32';

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

INSERT INTO moderador (login_moderador, ranking)
SELECT login, 4
FROM usuario
WHERE login = 'romulodaniell2';

-- Povoamento da tabela "anexo"

INSERT INTO anexo (id_anexo, login_usuario_envia, login_usuario_recebe, link, data_hora)
VALUES (card_numero_seq.NEXTVAL, 'victorluiz', 'romulodaniell2', 'https://www.youtube.com/watch?v=-CmadmM5cOk' ,TO_DATE ('2022-03-04 23:45', 'yyyy-mm--dd hh24:mi'));

INSERT INTO anexo (id_anexo, login_usuario_envia, login_usuario_recebe, link, data_hora)
VALUES (card_numero_seq.NEXTVAL, 'romulodaniell2', 'victorluiz', 'https://www.youtube.com/watch?v=iRzDyUQi2Qk' ,TO_DATE ('2022-03-14 23:10', 'yyyy-mm--dd hh24:mi'));

INSERT INTO anexo (id_anexo, login_usuario_envia, login_usuario_recebe, link, data_hora)
VALUES (card_numero_seq.NEXTVAL, 'carlos_roberto1', 'victorluiz', 'https://www.youtube.com/watch?v=A3xUeelVels' ,TO_DATE ('2022-03-14 23:34', 'yyyy-mm--dd hh24:mi'));

INSERT INTO anexo (id_anexo, login_usuario_envia, login_usuario_recebe, link, data_hora)
VALUES (card_numero_seq.NEXTVAL, 'karenn_', 'fernanda_pascoal', 'https://www.youtube.com/watch?v=PnqUs3xiAVI' ,TO_DATE ('2022-04-01 11:32', 'yyyy-mm--dd hh24:mi'));

-- Povoamento da tabela "envia_mensagem"

INSERT INTO envia_mensagem (login_usuario_envia, login_usuario_recebe, data_hora, texto)
VALUES ('victorluiz', 'romulodaniell2', TO_DATE ('2022-01-13 22:30', 'yyyy-mm-dd hh24:mi'), 'ja assistiu corra?');

INSERT INTO envia_mensagem (login_usuario_envia, login_usuario_recebe, data_hora, texto)
VALUES ('romulodaniell2', 'victorluiz', TO_DATE ('2022-01-13 22:32', 'yyyy-mm-dd hh24:mi'), 'sim, curti bastante');

INSERT INTO envia_mensagem (login_usuario_envia, login_usuario_recebe, data_hora, texto)
VALUES ('fernanda_pascoal', 'karenn_', TO_DATE ('2022-03-15 10:30', 'yyyy-mm-dd hh24:mi'), 'me indica um filme?');

INSERT INTO envia_mensagem (login_usuario_envia, login_usuario_recebe, data_hora, texto)
VALUES ('fernanda_pascoal', 'karenn_', TO_DATE ('2022-03-15 10:31', 'yyyy-mm-dd hh24:mi'), 'um de terror, de preferencia');

INSERT INTO envia_mensagem (login_usuario_envia, login_usuario_recebe, data_hora, texto)
VALUES ('karenn_', 'fernanda_pascoal', TO_DATE ('2022-03-15 10:36', 'yyyy-mm-dd hh24:mi'), 'vixi, nao conheco mts');


-- povoamento secoes

INSERT INTO secao (id_secao, titulo) VALUES (1, 'Ação');
INSERT INTO secao (id_secao, titulo) VALUES (2, 'Comédia');
INSERT INTO secao (id_secao, titulo) VALUES (3, 'Terror');
INSERT INTO secao (id_secao, titulo) VALUES (4, 'Romance');
INSERT INTO secao (id_secao, titulo) VALUES (5, 'Animação');

-- Povoamento de "cards_do_usuário"
INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao) 
VALUES ('victorluiz', 1, 'Filmes favoritos:', 'Meus filmes favoritos são: Corra, Shrek (todos) e A Culpa é das Estrelas');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('victorluiz', 2, 'Artistas favoritos:', 'Juliette, Anitta e Luisa Sonza');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('romulodaniell2', 3, 'Frase:', 'Quando você ama, há o risco de odia -Naruto');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('romulodaniell2', 4, 'Bandas favoritas', 'Taylor, Eve e Ariana');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('romulodaniell2', 5, 'Manga favorito:', 'Solo Leveling');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('marcelo_anderson', 6, 'Card 1', 'Fã de filmes de terror.');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('fernanda_pascoal', 7, 'Card 1', 'Fã de cinema no geral, mas apaixonada por romances clichês.');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('fernanda_pascoal', 8, 'Filme favorito no momento', 'A Culpa é das Estrelas');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('carlos_roberto1', 9, 'Card 1', 'Fã de filmes no geral.');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('bruno_lima', 10, 'Filmes favs:', 'Fã de filmes de terror e ação.');

INSERT INTO cards_do_usuario (login_usuario_card, numero, titulo, descricao)
VALUES ('bruno_lima', 11, 'Artistas favs:', 'Tudo menos Beattles');


-- THREADS

-- Comédia
INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (1, 'Lancamentos de COMEDIA', 'discussao dos lancamentos de comedia');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('victorluiz', 2,1, TO_DATE ('2022-01-05 09:01', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (2, 'minha mãe é uma peça 3 é muito bom', 'cara, acho que esse foi o meu favorito entre os 3. nunca ri tanto em um filme');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('carlos_roberto1', 2, 2, TO_DATE ('2022-06-02 17:42', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (3, 'qual o filme favorito de voces de comedia?', 'o meu é se beber não case');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('romulodaniell2', 2, 3, TO_DATE ('2022-06-02 10:30', 'yyyy-mm-dd hh24:mi'));


-- Terror
INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (4, 'invocação do mal 1 segue sendo o melhor', 'lembro até hj de ter ficado traumatizado');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('marcelo_anderson', 3,4, TO_DATE ('2022-02-13 08:30', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (5, 'qual o filme de terror favorito de vocês?', 'eu fico entre invocação do mal 1 e psicose');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('bruno_lima', 3, 5, TO_DATE ('2022-02-13 08:20', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (6, 'opiniões sobre o iluminado', 'alguém aqui já assistiu? o que achou?');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('alice_sales', 3, 6, TO_DATE ('2022-03-05 10:40', 'yyyy-mm-dd hh24:mi'));

-- Ação
INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (7, 'indicação de filmes de ação pls', 'alguem me indica um filme bom de ação, eu imploro');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('carlos_roberto1', 1,7, TO_DATE ('2022-05-03 09:00', 'yyyy-mm-dd hh24:mi'));

-- Romance

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (8, 'esse é o melhor filme de romance do mundo:', '"como eu era antes de você" e quem discordar que discorde ai a sua casa');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('fernanda_pascoal', 4, 8, TO_DATE ('2022-03-14 13:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (9, 'a barraca do beijo é mt ruim', 'nem sei como isso pode ser chamado de filme, história mediocre, atuação podre e personagens entediantes');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('victorluiz', 4, 9, TO_DATE ('2022-03-14 13:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (10, 'alguem aqui gosta de "antes do amanhecer"?', 'obra prima');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('fernanda_pascoal', 4, 10, TO_DATE ('2022-05-03 9:21', 'yyyy-mm-dd hh24:mi'));

-- Animação

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (11, 'acabei de assistir encanto', 'caramba que filme bom, me prendeu do inicio ao fim. eu gostei que o final não foi previsivel.');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('karenn_', 5, 11, TO_DATE ('2022-06-02 10:30', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (12, 'encanto ganhou oscar', 'ganhou o de melhor animação. achei muito merecido');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('karenn_', 5, 12, TO_DATE ('2022-03-29 06:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO thread_tabela(id_thread, titulo, texto) VALUES (13, 'luca é o filme mais fofo do mundo', 'chorei assistindo, curti muito e a mensagem que ele passa é mt linda.');
INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread) VALUES ('ernesto32', 5, 13, TO_DATE ('2022-05-13 12:34', 'yyyy-mm-dd hh24:mi'));


-- REPLIES

-- Comédia
INSERT INTO reply(numero, mensagem) VALUES (1, 'n curti mt nenhum lançamento de comedia desse ano');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('romulodaniell2', 1, 1, TO_DATE ('2022-01-05 09:13', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (2, 'eu gostei de alguns... não achei nenhum UAU, mas tiveram alguns divertidos.');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('victorluiz', 1, 2, TO_DATE ('2022-01-05 09:15', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (3, 'cara eu curti bastante esse, mas o 1 é insuperável pra mim kkkkk');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('ernesto32', 2, 3, TO_DATE('2022-06-02 17:44', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (4, 'acho esses filmes tão chatos');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('bruno_lima', 2, 4, TO_DATE('2022-06-02 17:44', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (5, 'nada supera o 1');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('karenn_', 2, 5, TO_DATE('2022-06-02 17:44', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (6, 'minha mae e uma peca');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('ernesto32', 3, 6, TO_DATE('2022-06-02 10:45', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (7, 'nao consigo decidir um');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('fernanda_pascoal', 3, 7, TO_DATE('2022-06-02 10:50', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (8, 'meninas malvadas');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('victorluiz', 3, 8, TO_DATE('2022-06-02 10:51', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (9, 'juno');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('bruno_lima', 3, 9, TO_DATE ('2022-06-02 10:51', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (10, 'acho que "o diabo veste prada"');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('marcelo_anderson', 3, 10, TO_DATE('2022-06-02 11:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (11, 'as branquelas e meninas malvadas');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('thiago_pereira', 3, 11, TO_DATE('2022-06-02 11:57', 'yyyy-mm-dd hh24:mi'));

-- Terror

INSERT INTO reply(numero, mensagem) VALUES (12, 'invocação do mal 1');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('marcelo_anderson', 5, 12, TO_DATE('2022-02-13 08:22', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (13, 'acho que psicose também entra');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('marcelo_anderson', 5, 13, TO_DATE('2022-02-13 08:23', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (14, 'o exorcista');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('romulodaniell2', 5, 14, TO_DATE('2022-02-13 08:23', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (15, 'psicose');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('fernanda_pascoal', 5, 15, TO_DATE('2022-03-07 08:27', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (16, '2022 e você nunca viu o iluminado? wtf');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('raissa_silva', 6, 16, TO_DATE('2022-03-05 10:42', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (17, 'sem duvidas um dos filmes ja feitos');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('ernesto32', 6, 17, TO_DATE('2022-03-05 10:42', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (18, 'obra prima, assista sem medo');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('victorluiz', 6, 18, TO_DATE('2022-03-05 10:44', 'yyyy-mm-dd hh24:mi'));

-- Ação

INSERT INTO reply(numero, mensagem) VALUES (19, 'qualquer um que não seja vingadores');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('botan', 7, 19, TO_DATE('2022-05-03 09:13', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (20, 'acabei de assistir gladiador e curti bastante, recomendo');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('gabriela_pinheiro', 7, 20, TO_DATE('2022-05-03 09:15', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (21, 'vingadores');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('romulodaniell2', 7, 21, TO_DATE('2022-05-03 09:15', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (22, 'o exterminador do futuro 2, rcky um lutador e tropa de elite');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('g_machado', 7, 22, TO_DATE('2022-05-03 09:23', 'yyyy-mm-dd hh24:mi'));

-- Romance
INSERT INTO reply(numero, mensagem) VALUES (23, 'filme ruim da poxa');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('victorluiz', 8, 23, TO_DATE('2022-03-14 13:36', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (24, 'caramba, é um dos meus favoritos');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('alice_sales', 8, 24, TO_DATE('2022-03-15 00:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (25, 'filme podre');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('romulodaniell2', 9, 25, TO_DATE('2022-03-14 13:35', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (26, 'netflix sendo netflix');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('carlos_roberto1', 9, 26, TO_DATE('2022-03-14 14:47', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (27, 'horrivel');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('alice_sales', 9, 27, TO_DATE('2022-03-15 00:45', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (28, 'brega');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('alice_sales', 10, 28, TO_DATE('2022-05-03 9:31', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (29, 'curto bastante esse filme');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('carlos_roberto1', 10, 29, TO_DATE('2022-05-03 9:23', 'yyyy-mm-dd hh24:mi'));

-- Animação

INSERT INTO reply(numero, mensagem) VALUES (30, 'gostei do filme, mas achei o final meio ruim');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('victorluiz', 11, 30, TO_DATE ('2022-06-02 10:31', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (31, 'esperava mais pelo que falavam');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('romulodaniell2', 11, 31, TO_DATE ('2022-06-02 10:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (32, 'fazia tempo que eum filme de anmação não me animava tanto');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('botan', 11, 32, TO_DATE ('2022-06-02 10:34', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (33, 'preciso urgente assistir esse filme, geral ta me recomendando');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('victorluiz', 13, 33, TO_DATE ('2022-05-13 12:43', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (34, 'ainda não vi');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('romulodaniell2', 13, 34, TO_DATE ('2022-05-13 12:45', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (35, 'achei mt fofinho');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('fernanda_pascoal', 13, 35, TO_DATE ('2022-05-13 12:45', 'yyyy-mm-dd hh24:mi'));

INSERT INTO reply(numero, mensagem) VALUES (36, 'tem na netflix?');
INSERT INTO cria_resposta(login_usuario_cria_resposta, id_thread_cria_resposta, numero_reply_cria_resposta, data_hora_cria_resposta)
VALUES ('thiago_pereira', 13, 36, TO_DATE ('2022-05-13 13:01', 'yyyy-mm-dd hh24:mi'));

-- moderar seções

INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('botan', 1);
INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('botan', 2);
INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('botan', 3);
INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('botan', 4);

INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('karenn_', 3);
INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('karenn_', 4);
INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('karenn_', 5);

INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('alice_sales', 3);
INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('alice_sales', 5);

INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('marcelo_anderson', 1);

INSERT INTO modera_secao(login_moderador, id_secao_modera_secao) VALUES ('romulodaniell2', 1);

-- moderar threads

INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('alice_sales', 4, 'Editou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('alice_sales', 12, 'Fixou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('alice_sales', 6, 'Fixou');

INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('botan', 1, 'Fechou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('botan', 2, 'Editou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('botan', 3, 'Arqivou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('botan', 4, 'Dexfixou');

INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('karenn_', 4, 'Editou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('karenn_', 5, 'Editou');

INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('marcelo_anderson', 2, 'Editou');
INSERT INTO modera_thread(login_moderador, id_thread_modera_thread, acao) VALUES ('marcelo_anderson', 3, 'Fixou');

-- Banimentos

INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('g_machado', 'botan', 1);
INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('g_machado', 'botan', 2);
INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('g_machado', 'botan', 3);
INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('g_machado', 'botan', 4);

INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('gabriela_pinheiro', 'karenn_', 5);
INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('gabriela_pinheiro', 'karenn_', 4);
INSERT INTO bane(login_usuario_banido, login_moderador_bane, id_secao_bane) VALUES ('fernanda_pascoal', 'karenn_', 5);
