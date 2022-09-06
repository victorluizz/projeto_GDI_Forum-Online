-- select threads por secao 
select * from thread_tabela where id_thread in (select id_thread_cria_thread from cria_thread where id_secao_cria_thread = 3);

-- select threads por criador
select * from thread_tabela where id_thread in (select id_thread_cria_thread from cria_thread where login_usuario_cria_thread = 'victorluiz');

-- select replies por criador
select * from reply where numero in (select numero_reply_cria_resposta from cria_resposta where login_usuario_cria_resposta = 'carlos_roberto1');

-- select replies por thread
select * from reply where numero in (select numero_reply_cria_resposta from cria_resposta where id_thread_cria_resposta = 4);
