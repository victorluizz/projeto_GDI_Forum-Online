
-- SELECT REF 




-- SELECT DREF
/* CONSULTA 1
Descrição: Consultando a tabela de mensagens para mostrar todas as mensagens enviadas, assim como os
anexos que estavam nelas.
*/

SELECT DEREF(M.login_envia).login as login_envia, DEREF(M.login_recebe).login as login_recebe, M.data_hora, M.texto, M.numero FROM tb_envia_mensagem M;
SELECT DEREF(DEREF(A.numero_msg).login_envia).login as login_envia, DEREF(DEREF(A.numero_msg).login_recebe).login as login_recebe, DEREF(A.numero_msg).texto as mensagem, A.link_anexo, A.id_anexo FROM tb_anexos A;

/* CONSULTA 2
*/


SELECT DEREF(M.login_moderador).login as MODERADOR_LOGIN, DEREF(M.id_secao).titulo as SECAO_TITULO, M.id_modera_secao FROM tb_modera_secao M; 
SELECT DEREF(M.login_moderador).login as MODERADOR_LOGIN, DEREF(M.id_thread).titulo as THREAD_TITULO, M.acao, M.id_modera FROM tb_modera_thread M; 
