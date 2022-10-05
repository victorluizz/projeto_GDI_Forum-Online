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
