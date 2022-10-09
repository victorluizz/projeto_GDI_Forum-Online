-- SELECT REF  e DREF
/* CONSULTA 1
Descrição: Consultando a tabela de mensagens para mostrar todas as mensagens enviadas, assim como os
anexos que estavam nelas.
*/

SELECT DEREF(M.login_envia).login as login_envia, DEREF(M.login_recebe).login as login_recebe, M.data_hora, M.texto, M.numero FROM tb_envia_mensagem M;
SELECT DEREF(DEREF(A.numero_msg).login_envia).login as login_envia, DEREF(DEREF(A.numero_msg).login_recebe).login as login_recebe, DEREF(A.numero_msg).texto as mensagem, A.link_anexo, A.id_anexo FROM tb_anexos A;

/* CONSULTA 2
Descrição: Consultando a cidade em que cada moderador mora.
*/
SELECT C.nome, DEREF (C.endereco).cidade as CIDADE_MODERADOR FROM tb_moderadores C;


/* CONSULTA 3
Descrição: Consultando todos os moderadores que já fizeram algo em alguma thread.
*/

SELECT DEREF (M.login_moderador).login as LOGIN_MODERADOR, DEREF (M.id_thread).id_thread AS ID_THREAD, M.acao FROM tb_modera_thread M;


/*CONSULTA 4
Descrição: Consultando todos as mensagens que possuem um anexo, assim como o login do usuário que enviou, a data e a hora.
*/
SELECT DEREF(A.numero_msg).texto as NUMERO_MENSAGEM, DEREF(DEREF(A.numero_msg).login_envia).login as USUARIO_ENVIA, DEREF(A.numero_msg).data_hora as DATA_HORA, A.link_anexo FROM tb_anexos A;

/*CONSULTA 5
Descrição: Criando uma função para saber quantos cards alguns usuários e moderadores possuem.
*/

-- Usuário: "victorluiz"
DECLARE
n tb_usuarios.lista_cards%type;
BEGIN
SELECT c.lista_cards into n from tb_usuarios c
    WHERE c.login = 'victorluiz';
DBMS_OUTPUT.PUT_LINE('Número de cards: = '||n.count);
END;
/

-- Moderador: "romulodaniell2"
DECLARE
n tb_moderadores.lista_cards%type;
BEGIN
SELECT m.lista_cards into n from tb_moderadores m
    WHERE m.login = 'romulodaniell2';
DBMS_OUTPUT.PUT_LINE('Número de cards: = '||n.count);
END;
/

-- CONSULTAS A UM VARRAY

