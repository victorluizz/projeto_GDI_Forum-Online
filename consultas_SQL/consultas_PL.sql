CREATE OR REPLACE PROCEDURE NovaPostagem(
    p_usuario IN cria_thread.login_usuario_cria_thread%TYPE,
    p_secao IN cria_thread.id_secao_cria_thread%TYPE,
    p_titulo IN thread_tabela.titulo%TYPE,
    p_texto IN thread_tabela.texto%TYPE) IS 
-- inserir nova postagem em cria_thread e thread_tabela
retorno INTEGER;
BEGIN
    select max(id_thread) into retorno from thread_tabela;
    retorno := retorno +1;
    INSERT INTO thread_tabela(id_thread, titulo,texto)
    VALUES (retorno, p_titulo,p_texto);
    INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread)
    VALUES (p_usuario, p_secao, retorno, null);
COMMIT;
END NovaPostagem;-- NovaPostagem;
/

--EXEC NovaPostagem('victorluiz', 1, 'titulo teste', 'mensagem teste');
