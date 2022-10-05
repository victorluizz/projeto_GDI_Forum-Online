-- Povoamento de tb_usuarios
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
    tp_lista_cards()
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
    tp_lista_cards()
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
    'https://i.pinimg.com/736x/59/78/93/59789370da99e5d88648467e36f58ca2.jpg'
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
    'marcelo_anderson', 
    TO_DATE ('2022-02-12 10:30', 'yyyy-mm-dd hh24:mi'), 
    'eissoglr',
    'Marcelo Anderson',
    'https://i.pinimg.com/originals/b5/73/28/b57328c8c5d2b872a69d0c70156d4c71.jpg'
    tp_endereco(
        21, 
        '69901-375', 
        'Acre', 
        'Rua Doutor Adalberto Costa e Silva', 
        'Rio Branco'
        )
    ,
    tp_emails(tp_email('marcelinhodosolhinhos@gmail.com'),tp_email('marcelinhodosolhinhos2@hotmail.com')),
    tp_lista_cards(tp_card_usuario(8, 'Card 1', 'Fã de filmes de terror.'))
    )
);


INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'thiago_pereira', 
    TO_DATE ('2022-03-10 10:00', 'yyyy-mm-dd hh24:mi'), 
    'thiagoalice',
    'Thiago Pereira',
    'https://pbs.twimg.com/media/E5zLZVYX0AkgVPI.jpg'
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
    'https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/bltfd1b78b5bd31bac9/629149121a5eff4c4c377593/Lol_EM_PRIDE_2022_EXP.jpg'
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
    'https://st2.depositphotos.com/5686448/45955/v/600/depositphotos_459558582-stock-illustration-abstract-woman-profile-portrait-with.jpg'
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
    'romulodaniell2', 
    TO_DATE ('2022-01-04 20:50', 'yyyy-mm-dd hh24:mi'), 
    'x1lixo_yasuo',
    'Romulo Daniell',
    'https://avatarfiles.alphacoders.com/236/236565.jpg'
    tp_endereco(
        04, 
        '52041-701', 
        'Pernambuco', 
        'Rua Ascenso Ferreira', 
        'Recife'
        )
    ,
    tp_emails(tp_email('romulodaniell2013@gmail.com'),tp_email('romulodaniell2015@hotmail.com')),
    tp_lista_cards(tp_card_usuario(9, 'Frase:', 'Quando você ama, há o risco de odia -Naruto'), tp_card_usuario(10, 'Bandas favoritas', 'Taylor, Eve e Ariana'), tp_card_usuario(11, 'Manga favorito:', 'Solo Leveling'))
    )
);

INSERT INTO tb_usuarios VALUES (
    tp_usuario( 
    'ernesto32', 
    TO_DATE ('2022-04-01 17:45', 'yyyy-mm-dd hh24:mi'), 
    'ernestofielacristo',
    'Ernesto', 'https
    //avatarfiles.alphacoders.com/823/thumb-82389.png'
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
