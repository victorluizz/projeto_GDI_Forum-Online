select * from tb_usuarios;
select U.login, U.data_hora, U.senha, U.nome, u.foto_de_perfil, (U.endereco).cep, (U.endereco).estado,
(U.endereco).cidade, (U.endereco).rua, (U.endereco).numero from tb_usuarios U;

SELECT E.endereco_email carlos_emails FROM tb_usuarios U, TABLE (U.emails) E WHERE U.login = 'carlos';

SELECT 'carlos' as Usuario_Cards, T.numero, T.titulo, T.descricao FROM TABLE (SELECT U.lista_cards FROM tb_usuarios U WHERE U.login = 'carlos') T;
/

SELECT DEREF(M.login_envia).login as login_envia, DEREF(M.login_recebe).login as login_recebe, M.data_hora, M.texto, M.numero FROM tb_envia_mensagem M;
SELECT DEREF(DEREF(A.numero_msg).login_envia).login as login_envia, DEREF(DEREF(A.numero_msg).login_recebe).login as login_recebe, DEREF(A.numero_msg).texto as mensagem, A.link_anexo, A.id_anexo FROM tb_anexos A;
SELECT DEREF(M.login_moderador).login as MODERADOR_LOGIN, DEREF(M.id_secao).titulo as SECAO_TITULO, M.id_modera_secao FROM tb_modera_secao M; 
SELECT DEREF(M.login_moderador).login as MODERADOR_LOGIN, DEREF(M.id_thread).titulo as THREAD_TITULO, M.acao, M.id_modera FROM tb_modera_thread M; 

select * from tb_moderadores;
select * from tb_secoes;
select * from tb_threads;
SELECT DEREF(C.login).login as Criador, DEREF(C.id_thread).titulo as Titulo, DEREF(C.id_secao).titulo as Secao, 
C.data_hora as Data_Criacao FROM tb_cria_thread C;
