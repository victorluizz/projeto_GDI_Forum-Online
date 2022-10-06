-- POVOANDO A TABELA "tb_usuarios"

insert into tb_usuarios values(
    tp_usuario(
    'victorluiz',
    TO_DATE ('2022-01-04 19:50', 'yyyy-mm-dd hh24:mi'),
    'vitinholuizz',
    'Victor Luiz',
    'https://avatarfiles.alphacoders.com/241/thumb-241064.jpg',
    tp_endereco(
        04,
        '52041-701',
        'Pernambuco',
        'Rua Ascenso Ferreira',
        'Recife'
        )
    ,
    tp_emails(tp_email('victorluiz300@gmail.com'),tp_email('victorluiz300@hotmail.com')),
    tp_lista_cards(tp_card_usuario(1, 'Filmes favoritos:', 'Meus filmes favoritos são: Corra, Shrek (todos) e A Culpa é das Estrelas'), tp_card_usuario(2, 'Artistas favoritos:', 'Juliette, Anitta e Luisa Sonza'))
    )
);

insert into tb_usuarios values(
    tp_usuario(
    'carlos_roberto1', 
    TO_DATE ('2022-05-01 12:59', 'yyyy-mm-dd hh24:mi'), 
    'carlosrpereira', 
    'Carlos Roberto', 
    'https://avatarfiles.alphacoders.com/106/thumb-106992.png',
    tp_endereco(
        43, 
        '55850-971', 
        'Pernambuco', 
        'Rua Abdon José de Lima 12', 
        'Vicência'
        )
    ,
    tp_emails(tp_email('carlosroberopereira5@gmail.com'), tp_email('carlosroberopereira2@gmail.com'), tp_email('carlosroberobertoo75@gmail.com')),
    tp_lista_cards(tp_card_usuario(3, 'Card 1', 'Fã de filmes no geral.'))
    )
);


insert into tb_usuarios values(
    tp_usuario(
    'g_machado', 
    TO_DATE ('2022-02-07 12:57', 'yyyy-mm-dd hh24:mi'), 
    'odeiolol', 
    'Gabriel Machado', 
    'https://avatarfiles.alphacoders.com/294/thumb-294910.jpg',
    tp_endereco(
        12, 
        '45295-970', 
        'Bahia', 
        'Rua Ruy Barbosa', 
        'Água Doce'
        )
    ,
    tp_emails(tp_email('gabsmachad0@gmail.com')),
    tp_lista_cards()
    )
);


insert into tb_usuarios values(
    tp_usuario(
    'fernanda_pascoal', 
    TO_DATE ('2022-03-07 05:30', 'yyyy-mm-dd hh24:mi'), 
    'amocerveja', 
    'Fernanda Pascoal', 
    'https://avatarfiles.alphacoders.com/314/thumb-314751.jpg',
    tp_endereco(
        87, 
        '36803-971', 
        'Minas Gerais', 
        'Praça Nascimento Leal 96', 
        'Alvorada'
        )
    ,
    tp_emails(tp_email('fernandapasc@gmail.com')),
    tp_lista_cards(tp_card_usuario(4, 'Card 1', 'Fã de cinema no geral, mas apaixonada por romances clichês.'), tp_card_usuario(5, 'Filme favorito no momento', 'A Culpa é das Estrelas'))
    )
);

INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'bruno_lima', 
    TO_DATE ('2022-05-05 12:30', 'yyyy-mm-dd hh24:mi'), 
    'petvicamo',
    'Bruno Lima',
    'https://i.pinimg.com/736x/59/78/93/59789370da99e5d88648467e36f58ca2.jpg',
    tp_endereco(
        16, 
        '69903-022', 
        'Acre', 
        'Rua Travessa Manaus', 
        'Rio Branco'
        )
    ,
    tp_emails(tp_email('brunaolimao@gmail.com'),tp_email('brunaolimao2@hotmail.com')),
    tp_lista_cards(tp_card_usuario(6, 'Filmes favs:', 'Fã de filmes de terror e ação.'), tp_card_usuario(7, 'Artistas favs:', 'Tudo menos Beattles'))
    )
);


INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'thiago_pereira', 
    TO_DATE ('2022-03-10 10:00', 'yyyy-mm-dd hh24:mi'), 
    'thiagoalice',
    'Thiago Pereira',
    'https://pbs.twimg.com/media/E5zLZVYX0AkgVPI.jpg',
    tp_endereco(
        25, 
        '58046-528', 
        'Paraíba', 
        'Rua Orlando Falcone de Oliveira', 
        'João Pessoa'
        )
    ,
    tp_emails(tp_email('thiagoalice@gmail.com'),tp_email('thiagoalice2@hotmail.com')),
    tp_lista_cards()
    )
);

INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'raissa_silva', 
    TO_DATE ('2022-01-11 05:00', 'yyyy-mm-dd hh24:mi'), 
    'manubela',
    'Raissa Silva',
    'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/bltfd1b78b5bd31bac9/629149121a5eff4c4c377593/Lol_EM_PRIDE_2022_EXP.jpg',
    tp_endereco(
        65, 
        '58400-299', 
        'Paraíba', 
        'Travessa Presidente Epitácio Pessoa', 
        'Campina Grande'
        )
    ,
    tp_emails(tp_email('estrelamanubela@gmail.com'),tp_email('estrelamanubela2@hotmail.com')),
    tp_lista_cards()
    )
);

INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'gabriela_pinheiro', 
    TO_DATE ('2022-01-11 16:11', 'yyyy-mm-dd hh24:mi'), 
    'gabijesusefiel',
    'Gabriela Pinheiro',
    'https://st2.depositphotos.com/5686448/45955/v/600/depositphotos_459558582-stock-illustration-abstract-woman-profile-portrait-with.jpg',
    tp_endereco(
        72, 
        '38700-492', 
        'Minas Gerais', 
        'Rua Rondônia', 
        'Patos de Minas'
        )
    ,
    tp_emails(tp_email('gabijesus@gmail.com'),tp_email('gabijesus02@hotmail.com')),
    tp_lista_cards()
    )
);


INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'ernesto32', 
    TO_DATE ('2022-04-01 17:45', 'yyyy-mm-dd hh24:mi'), 
    'ernestofielacristo',
    'Ernesto', 'https
    //avatarfiles.alphacoders.com/823/thumb-82389.png',
    tp_endereco(
        65, 
        '13052-763', 
        'São Paulo', 
        'Rua Victalina de Oliveira Astolfi', 
        'Campinas'
        )
    ,
    tp_emails(tp_email('ernestogonc@gmail.com'),tp_email('ernestogonc2@hotmail.com')),
    tp_lista_cards()
    )
);


-- POVOANDO A TABELA "tb_moderador"

insert into tb_moderadores values(
    tp_moderador(
    'alice_sales', 
    TO_DATE ('2022-03-05 10:34', 'yyyy-mm-dd hh24:mi'), 
    'floquinho2015', 
    'Alice Sales', 
    'https://avatarfiles.alphacoders.com/181/thumb-181638.png',
    tp_endereco(
        78, 
        '54789-430', 
        'Pernambuco', 
        'Rua Lindos Poemas', 
        'Camaragibe'
        )
    ,
    tp_emails(tp_email('alice12sales@gmail.com')),
    tp_lista_cards(),
    1
    )
);


insert into tb_moderadores values(
    tp_moderador(
    'botan', 
    TO_DATE ('2022-02-07 16:43', 'yyyy-mm-dd hh24:mi'), 
    'amoinfrahw', 
    'Botan', 
    'https://avatars.alphacoders.com/avatars/view/43265',
    tp_endereco(
        22, 
        '54705-370', 
        'Pernambuco', 
        'Rua São João do Piauí', 
        'São Lourenço da Mata'
        )
    ,
    tp_emails(tp_email('renatoalpes@gmail.com'), tp_email('renatoalpes@hotmail.com')),
    tp_lista_cards(),
    3
    )
);


insert into tb_moderadores values(
    tp_moderador(
    'karenn_', 
    TO_DATE ('2022-03-14 22:25', 'yyyy-mm-dd hh24:mi'), 
    'karendoismilevintedois', 
    'Karen', 
    'https://avatarfiles.alphacoders.com/272/thumb-272946.jpg',
    tp_endereco(
        09, 
        '01405-020', 
        'São Paulo', 
        'Jardim Maria Badra', 
        'São Paulo'
        )
    ,
    tp_emails(tp_email('karenbarbosasilva@gmail.com')),
    tp_lista_cards(),
    2
    )
);


INSERT INTO tb_moderadores VALUES (
    tp_moderador( 
    'marcelo_anderson', 
    TO_DATE ('2022-02-12 10:30', 'yyyy-mm-dd hh24:mi'), 
    'eissoglr',
    'Marcelo Anderson',
    'https://i.pinimg.com/originals/b5/73/28/b57328c8c5d2b872a69d0c70156d4c71.jpg',
    tp_endereco(
        21, 
        '69901-375', 
        'Acre', 
        'Rua Doutor Adalberto Costa e Silva', 
        'Rio Branco'
        )
    ,
    tp_emails(tp_email('marcelinhodosolhinhos@gmail.com'),tp_email('marcelinhodosolhinhos2@hotmail.com')),
    tp_lista_cards(tp_card_usuario(8, 'Card 1', 'Fã de filmes de terror.')),
    1
    )
);

INSERT INTO tb_moderadores VALUES (
    tp_moderador( 
    'romulodaniell2', 
    TO_DATE ('2022-01-04 20:50', 'yyyy-mm-dd hh24:mi'), 
    'x1lixo_yasuo',
    'Romulo Daniell',
    'https://avatarfiles.alphacoders.com/236/236565.jpg',
    tp_endereco(
        04, 
        '52041-701', 
        'Pernambuco', 
        'Rua Ascenso Ferreira', 
        'Recife'
        )
    ,
    tp_emails(tp_email('romulodaniell2013@gmail.com'),tp_email('romulodaniell2015@hotmail.com')),
    tp_lista_cards(tp_card_usuario(9, 'Frase:', 'Quando você ama, há o risco de odia -Naruto'), tp_card_usuario(10, 'Bandas favoritas', 'Taylor, Eve e Ariana'), tp_card_usuario(11, 'Manga favorito:', 'Solo Leveling')),
    4
    )
);

-- POVOANDO A TABELA "tb_envia_mensagem"

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   1,
    (SELECT REF (E) FROM tb_usuarios E WHERE E.login ='victorluizz'),
    (SELECT REF (R) FROM tb_moderadores R WHERE R.login ='romulodaniell2'),
    TIMESTAMP'2022-01-13 22:30:14.23',
    'ja assistiu corra?'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   2,
    (SELECT REF (E) FROM tb_moderadores E WHERE E.login ='romulodaniell2'),
    (SELECT REF (R) FROM tb_usuarios R WHERE R.login ='victorluiz'),
    TIMESTAMP'2022-01-13 22:32:12.44',
    'sim, curti bastante'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   3,
    (SELECT REF (E) FROM tb_usuarios E WHERE E.login ='fernanda_pascoal'),
    (SELECT REF (R) FROM tb_moderadores R WHERE R.login ='karenn_'),
    TIMESTAMP'2022-03-15 10:30:11.55',
    'me indica um filme?'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   4,
    (SELECT REF (E) FROM tb_usuarios E WHERE E.login ='fernanda_pascoal'),
    (SELECT REF (R) FROM tb_moderadores R WHERE R.login ='karenn_'),
    TIMESTAMP'2022-03-15 10:31:12.43',
    'um de terror, de pREFerencia'
));


INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   5,
    (SELECT REF (E) FROM tb_moderadores E WHERE E.login ='karenn_'),
    (SELECT REF (R) FROM tb_usuarios R WHERE R.login ='fernanda_pascoal'),
    TIMESTAMP'2022-03-15 10:36:11.22',
    'vixi, nao conheco mts'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   6,
    (SELECT REF (E) FROM tb_usuarios E WHERE E.login ='victorluiz'),
    (SELECT REF (R) FROM tb_moderadores R WHERE R.login ='romulodaniell2'),
    TIMESTAMP'2022-03-04 23:45:33.12',
    'escuta essa musica:'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   7,
    (SELECT REF (E) FROM tb_usuarios E WHERE E.login ='victorluiz'),
    (SELECT REF (R) FROM tb_moderadores R WHERE R.login ='romulodaniell2'),
    TIMESTAMP'2022-03-04 23:45:33.12',
    'escuta essa musica:'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   8,
    (SELECT REF (E) FROM tb_moderadores E WHERE E.login ='romulodaniell2'),
    (SELECT REF (R) FROM tb_usuarios R WHERE R.login ='victorluiz'),
    TIMESTAMP'2022-03-14 23:10:53.12',
    'olha isso'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   9,
    (SELECT REF (E) FROM tb_usuarios E WHERE E.login ='carlos_roberto1'),
    (SELECT REF (R) FROM tb_usuarios R WHERE R.login ='victorluiz'),
    TIMESTAMP'2022-05-14 23:34:44.45',
    'aqui o link que falei no topico'
));

INSERT INTO tb_envia_mensagem
VALUES (tp_envia_mensagem
(   10,
    (SELECT REF (E) FROM tb_moderadores E WHERE E.login ='karenn_'),
    (SELECT REF (R) FROM tb_usuarios R WHERE R.login ='fernanda_pascoal'),
    TIMESTAMP'2022-04-01 11:32:13.14',
    'escuta essa musica:'
));

-- POVOANDO A TABELA "tb_anexos"

-- ANEXOS
INSERT INTO tb_anexos VALUES (tp_anexo
(   1,
    (SELECT REF (M) FROM tb_envia_mensagem M WHERE numero = 7),
    'https://www.youtube.com/watch?v=-CmadmM5cOk'
));

INSERT INTO tb_anexos VALUES (tp_anexo
(   2,
    (SELECT REF (M) FROM tb_envia_mensagem M WHERE numero = 8),
    'https://www.youtube.com/watch?v=iRzDyUQi2Qk'
));

INSERT INTO tb_anexos VALUES (tp_anexo
(   3,
    (SELECT REF (M) FROM tb_envia_mensagem M WHERE numero = 9),
    'https://www.youtube.com/watch?v=A3xUeelVels'

));

INSERT INTO tb_anexos VALUES (tp_anexo
(   4,
    (SELECT REF (M) FROM tb_envia_mensagem M WHERE numero = 10),
    'https://www.youtube.com/watch?v=PnqUs3xiAVI'
));

-- POVOANDO A TABELA "tb_secoes"

INSERT INTO tb_secoes VALUES(
    tp_secao(
    1,
    'Ação'
    )
);

INSERT INTO tb_secoes VALUES(
    tp_secao(
    2,
    'Comédia'
    )
);

INSERT INTO tb_secoes VALUES(
    tp_secao(
    3,
    'Terror'
    )
);

INSERT INTO tb_secoes VALUES(
    tp_secao(
    4,
    'Romance'
    )
);

INSERT INTO tb_secoes VALUES(
    tp_secao(
    5,
    'Animação'
    )
);

-- POVOANDO A TABELA "tb_threads"

-- Seção "Comédia"
INSERT INTO tb_threads VALUES(
    tp_thread(
    1, 
    'Lancamentos de COMEDIA', 
    'discussao dos lancamentos de comedia'  
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    2, 
    'minha mãe é uma peça 3 é muito bom', 
    'cara, acho que esse foi o meu favorito entre os 3. nunca ri tanto em um filme' 
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    3, 
    'qual o filme favorito de voces de comedia?', 
    'o meu é se beber não case' 
    )
);

-- Seção "Terror"

INSERT INTO tb_threads VALUES(
    tp_thread(
    4, 
    'invocação do mal 1 segue sendo o melhor', 
    'lembro até hj de ter ficado traumatizado'
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    5, 
    'qual o filme de terror favorito de vocês?', 
    'eu fico entre invocação do mal 1 e psicose'
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    6, 
    'opiniões sobre o iluminado', 
    'alguém aqui já assistiu? o que achou?'
    )
);

-- Seção "Ação"

INSERT INTO tb_threads VALUES(
    tp_thread(
    7, 
    'indicação de filmes de ação pls', 
    'alguem me indica um filme bom de ação, eu imploro'
    )
);


-- Seção 'Romance'

INSERT INTO tb_threads VALUES(
    tp_thread(
    8, 
    'esse é o melhor filme de romance do mundo:', 
    '"como eu era antes de você" e quem discordar que discorde ai a sua casa'
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    9, 
    'a barraca do beijo é mt ruim', 
    'nem sei como isso pode ser chamado de filme, história mediocre, atuação podre e personagens entediantes'
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    10, 
    'alguem aqui gosta de "antes do amanhecer"?', 
    'obra prima'
    )
);

-- Seção "Animação"

INSERT INTO tb_threads VALUES(
    tp_thread(
    11, 
    'acabei de assistir encanto', 
    'caramba que filme bom, me prendeu do inicio ao fim. eu gostei que o final não foi previsivel.'
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    12, 
    'encanto ganhou oscar', 
    'ganhou o de melhor animação. achei muito merecido'
    )
);

INSERT INTO tb_threads VALUES(
    tp_thread(
    13, 
    'luca é o filme mais fofo do mundo', 
    'chorei assistindo, curti muito e a mensagem que ele passa é mt linda.'
    )
);

-- POVOANDO A TABELA "tb_cria_thread"

-- Seção "Comédia"

INSERT INTO tb_cria_thread VALUES(
    1,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='victorluiz'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 1),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 2),
    TO_DATE ('2022-01-05 09:01', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    2,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='carlos_roberto1'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 2),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 2),
    TO_DATE ('2022-06-02 17:42', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    3,
    (SELECT REF (P) FROM tb_moderadores P WHERE login ='romulodaniell2'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 3),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 2),
    TO_DATE ('2022-06-02 10:30', 'yyyy-mm-dd hh24:mi')
);


-- Seção "Terror"

INSERT INTO tb_cria_thread VALUES(
    4,
    (SELECT REF (P) FROM tb_moderadores P WHERE login ='marcelo_anderson'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 4),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 3),
    TO_DATE ('2022-02-13 08:30', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    5,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='bruno_lima'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 5),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 3),
    TO_DATE ('2022-02-13 08:20', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    6,
    (SELECT REF (P) FROM tb_moderadores P WHERE login ='alice_sales'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 6),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 3),
    TO_DATE ('2022-03-05 10:40', 'yyyy-mm-dd hh24:mi')
);

-- Seção "Ação"

INSERT INTO tb_cria_thread VALUES(
    7,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='carlos_roberto1'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 7),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 1),
    TO_DATE ('2022-05-03 09:00', 'yyyy-mm-dd hh24:mi')
);

-- Seção "Romance"

INSERT INTO tb_cria_thread VALUES(
    8,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='fernanda_pascoal'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 8),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 4),
    TO_DATE ('2022-03-14 13:34', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    9,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='victorluiz'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 9),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 4),
    TO_DATE ('2022-03-14 13:34', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    10,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='fernanda_pascoal'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 10),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 4),
    TO_DATE ('2022-05-03 9:21', 'yyyy-mm-dd hh24:mi')
);

-- Seção "Animação"

INSERT INTO tb_cria_thread VALUES(
    11,
    (SELECT REF (P) FROM tb_moderadores P WHERE login ='karenn_'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 11),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 5),
    TO_DATE ('2022-06-02 10:30', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    12,
    (SELECT REF (P) FROM tb_moderadores P WHERE login ='karenn_'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 12),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 5),
    TO_DATE ('2022-03-29 06:34', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_thread VALUES(
    13,
    (SELECT REF (P) FROM tb_usuarios P WHERE login ='ernesto32'),
    (SELECT REF (G) FROM tb_threads G WHERE id_thread = 13),
    (SELECT REF (Z) FROM tb_secoes Z WHERE id_secao = 5),
    TO_DATE ('2022-05-13 12:34', 'yyyy-mm-dd hh24:mi')
);

-- POVOAMENTO DA TABELA "tb_replies"

-- Seção "Comédia"

INSERT INTO tb_replies VALUES(
    1,
    'n curti mt nenhum lançamento de comedia desse ano'
);

INSERT INTO tb_replies VALUES(
    2,
    'eu gostei de alguns... não achei nenhum UAU, mas tiveram alguns divertidos.'
);

INSERT INTO tb_replies VALUES(
    3,
    'cara eu curti bastante esse, mas o 1 é insuperável pra mim kkkkk'
);

INSERT INTO tb_replies VALUES(
    4,
    'acho esses filmes tão chatos'
);

INSERT INTO tb_replies VALUES(
    5,
    'nada supera o 1'
);

INSERT INTO tb_replies VALUES(
    6,
    'minha mae e uma peca'
);

INSERT INTO tb_replies VALUES(
    7,
    'nao consigo decidir um'
);

INSERT INTO tb_replies VALUES(
    8,
    'meninas malvadas'
);

INSERT INTO tb_replies VALUES(
    9,
    'juno'
);

INSERT INTO tb_replies VALUES(
    10,
    'acho que "o diabo veste prada"'
);

INSERT INTO tb_replies VALUES(
    11,
   'as branquelas e meninas malvadas'
);

-- Seção "Terror"

INSERT INTO tb_replies VALUES(
    12,
   'invocação do mal 1'
);

INSERT INTO tb_replies VALUES(
    13,
   'acho que psicose também entra'
);

INSERT INTO tb_replies VALUES(
    14,
   'o exorcista'
);

INSERT INTO tb_replies VALUES(
    15,
   'psicose'
);

INSERT INTO tb_replies VALUES(
    16,
   '2022 e você nunca viu o iluminado? wtf'
);

INSERT INTO tb_replies VALUES(
    17,
   'sem duvidas um dos filmes ja feitos'
);

INSERT INTO tb_replies VALUES(
    18,
   'obra prima, assista sem medo'
);

-- Seção "Ação"


INSERT INTO tb_replies VALUES(
    19,
   'qualquer um que não seja vingadores'
);

INSERT INTO tb_replies VALUES(
    20,
   'acabei de assistir gladiador e curti bastante, recomendo'
);

INSERT INTO tb_replies VALUES(
    21,
   'vingadores'
);

INSERT INTO tb_replies VALUES(
    22,
   'o exterminador do futuro 2, rcky um lutador e tropa de elite'
);

-- Seção "Romance"

INSERT INTO tb_replies VALUES(
    23,
   'filme ruim da poxa'
);

INSERT INTO tb_replies VALUES(
    24,
   'caramba, é um dos meus favoritos'
);

INSERT INTO tb_replies VALUES(
    25,
   'filme podre'
);


INSERT INTO tb_replies VALUES(
    26,
   'netflix sendo netflix'
);

INSERT INTO tb_replies VALUES(
    27,
   'horrivel'
);

INSERT INTO tb_replies VALUES(
    28,
   'brega'
);

INSERT INTO tb_replies VALUES(
    29,
   'curto bastante esse filme'
);

-- Seção "Animações"

INSERT INTO tb_replies VALUES(
    30,
   'gostei do filme, mas achei o final meio ruim'
);

INSERT INTO tb_replies VALUES(
    31,
   'esperava mais pelo que falavam'
);

INSERT INTO tb_replies VALUES(
    32,
   'fazia tempo que eum filme de anmação não me animava tanto'
);

INSERT INTO tb_replies VALUES(
    33,
   'preciso urgente assistir esse filme, geral ta me recomendando'
);

INSERT INTO tb_replies VALUES(
    34,
   'ainda não vi'
);

INSERT INTO tb_replies VALUES(
    35,
   'achei mt fofinho'
);

INSERT INTO tb_replies VALUES(
    36,
   'tem na netflix?'
);

-- POVOAMENTO DA TABELA "tb_cria_reply"

-- Seção "Comédia"

INSERT INTO tb_cria_reply VALUES(
    1,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 1),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 1),
    TO_DATE ('2022-01-05 09:13', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    2,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='victorluiz'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 1),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 2),
    TO_DATE ('2022-01-05 09:15', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    3,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='ernesto32'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 2),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 3),
    TO_DATE('2022-06-02 17:44', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    4,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='bruno_lima'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 2),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 4),
    TO_DATE('2022-06-02 17:44', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    5,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='karenn_'),
     (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 2),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 5),
    TO_DATE('2022-06-02 17:44', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    6,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='ernesto32'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 3),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 6),
    TO_DATE('2022-06-02 10:45', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    7,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='fernanda_pascoal'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 3),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 7),
    TO_DATE('2022-06-02 10:50', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    8,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='victorluiz'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 3),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 8),
    TO_DATE('2022-06-02 10:51', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    9,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='bruno_lima'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 3),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 9),
    TO_DATE ('2022-06-02 10:51', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    10,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='marcelo_anderson'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 3),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 10),
    TO_DATE('2022-06-02 11:34', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    11,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='thiago_pereira'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 3),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 11),
    TO_DATE('2022-06-02 11:57', 'yyyy-mm-dd hh24:mi')

);

-- Seção "Terror"

INSERT INTO tb_cria_reply VALUES(
    12,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='marcelo_anderson'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 5),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 12),
    TO_DATE('2022-02-13 08:22', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    13,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='marcelo_anderson'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 5),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 13),
    TO_DATE('2022-02-13 08:23', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    14,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 5),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 14),
    TO_DATE('2022-02-13 08:23', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    15,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='fernanda_pascoal'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 5),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 15),
    TO_DATE('2022-03-07 08:27', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    16,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='raissa_silva'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 6),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 16),
    TO_DATE('2022-03-05 10:42', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    17,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='ernesto32'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 6),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 17),
    TO_DATE('2022-03-05 10:42', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    18,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='victorluiz'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 6),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 18),
    TO_DATE('2022-03-05 10:44', 'yyyy-mm-dd hh24:mi')

);

-- Seção "Ação"

INSERT INTO tb_cria_reply VALUES(
    19,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='botan'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 7),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 19),
    TO_DATE('2022-05-03 09:13', 'yyyy-mm-dd hh24:mi')

);


INSERT INTO tb_cria_reply VALUES(
    20,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='gabriela_pinheiro'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 7),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 20),
    TO_DATE('2022-05-03 09:15', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    21,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 7),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 21),
    TO_DATE('2022-05-03 09:15', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    22,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='g_machado'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 7),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 22),
    TO_DATE('2022-05-03 09:23', 'yyyy-mm-dd hh24:mi')

);


-- Seção "Romance"

INSERT INTO tb_cria_reply VALUES(
    23,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='victorluiz'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 8),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 23),
    TO_DATE('2022-03-14 13:36', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    24,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='alice_sales'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 8),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 24),
    TO_DATE('2022-03-15 00:34', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    25,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 9),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 25),
    TO_DATE('2022-03-14 13:35', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    26,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='carlos_roberto1'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 9),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 26),
    TO_DATE('2022-03-14 14:47', 'yyyy-mm-dd hh24:mi')

);

INSERT INTO tb_cria_reply VALUES(
    27,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='alice_sales'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 9),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 27),
    TO_DATE('2022-03-15 00:45', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    28,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='alice_sales'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 10),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 28),
    TO_DATE('2022-05-03 9:31', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    29,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='carlos_roberto1'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 10),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 29),
    TO_DATE('2022-05-03 9:23', 'yyyy-mm-dd hh24:mi')
);

-- Seção "Animação"

INSERT INTO tb_cria_reply VALUES(
    30,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='victorluiz'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 11),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 30),
    TO_DATE ('2022-06-02 10:31', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    31,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 11),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 31),
    TO_DATE ('2022-06-02 10:31', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    32,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 11),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 32),
    TO_DATE ('2022-06-02 10:34', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    33,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='victorluiz'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 13),
    (SELECT REF (N) FROM tb_replies N WHERE numero  = 33),
    TO_DATE ('2022-05-13 12:43', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    34,
    (SELECT REF (C) FROM tb_moderadores C WHERE login ='romulodaniell2'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 13),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 34),
    TO_DATE ('2022-05-13 12:45', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    35,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='fernanda_pascoal'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 13),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 35),
    TO_DATE ('2022-05-13 12:45', 'yyyy-mm-dd hh24:mi')
);

INSERT INTO tb_cria_reply VALUES(
    36,
    (SELECT REF (C) FROM tb_usuarios C WHERE login ='thiago_pereira'),
    (SELECT REF (I) FROM tb_threads I WHERE  id_thread = 13),
    (SELECT REF (N) FROM tb_replies N WHERE numero = 36),
    TO_DATE ('2022-05-13 13:01', 'yyyy-mm-dd hh24:mi')
);


-- POVOAMENTO DA TABELA "tb_modera_secao"

INSERT INTO tb_modera_secao VALUES(
    1,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 1)
);

INSERT INTO tb_modera_secao VALUES(
    2,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 2)
);

INSERT INTO tb_modera_secao VALUES(
    3,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 3)
);

INSERT INTO tb_modera_secao VALUES(
    4,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 4)
);

INSERT INTO tb_modera_secao VALUES(
    5,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 3)
);

INSERT INTO tb_modera_secao VALUES(
    6,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 4)
);


INSERT INTO tb_modera_secao VALUES(
    7,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 5)
);

INSERT INTO tb_modera_secao VALUES(
    8,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'alice_sales'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 3)
);

INSERT INTO tb_modera_secao VALUES(
    9,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'alice_sales'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 5)
);

INSERT INTO tb_modera_secao VALUES(
    10,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'marcelo_anderson'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 1)
);

INSERT INTO tb_modera_secao VALUES(
    11,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'romulodaniell2'),
    (SELECT REF (S) FROM tb_secoes S WHERE id_secao = 1)
);

-- POVOAMENTO DA TABELA "tb_modera_thread"

INSERT INTO tb_modera_thread VALUES(
    1,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'alice_sales'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 4),
    'Editou'
);

INSERT INTO tb_modera_thread VALUES(
    2,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'alice_sales'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 12),
    'Fixou'
);

INSERT INTO tb_modera_thread VALUES(
    3,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'alice_sales'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 6),
    'Fixou'
);


INSERT INTO tb_modera_thread VALUES(
    4,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 1),
    'Fechou'
);

INSERT INTO tb_modera_thread VALUES(
    5,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 2),
    'Editou'
);

INSERT INTO tb_modera_thread VALUES(
    6,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 3),
    'Arquivou'
);

INSERT INTO tb_modera_thread VALUES(
    7,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 4),
    'Desfixou'
);

INSERT INTO tb_modera_thread VALUES(
    8,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 4),
    'Editou'
);

INSERT INTO tb_modera_thread VALUES(
    9,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 5),
    'Editou'
);

INSERT INTO tb_modera_thread VALUES(
    10,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'marcelo_anderson'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 2),
    'Editou'
);

INSERT INTO tb_modera_thread VALUES(
    11,
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'marcelo_anderson'),
    (SELECT REF (I) FROM tb_threads I WHERE id_thread = 3),
    'Fixou'
);

-- POVOAMENTO DA TABELA "tb_bane"
INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'g_machado'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 1)

);

INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'g_machado'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 2)

);

INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'g_machado'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 3)

);

INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'g_machado'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'botan_'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 4)

);

INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'gabriela_pinheiro'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 5)

);

INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'gabriela_pinheiro'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 4)

);

INSERT INTO tb_bane VALUES(
    (SELECT REF (B) FROM tb_usuarios B WHERE login = 'fernanda_pascoal'),
    (SELECT REF (M) FROM tb_moderadores M WHERE login = 'karenn_'),
    (SELECT REF (I) FROM tb_secoes I WHERE id_secao = 5)

);
