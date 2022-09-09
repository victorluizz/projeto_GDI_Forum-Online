-- 1. USO DE RECORD
-- 2. USO DE ESTRUTURA DE DADOS DO TIPO TABLE
-- 3. BLOCO ANÔNIMO
-- 7. %ROWTYPE
-- 9. CASE WHEN
-- 10. LOOP EXIT WHEN
-- 11. WHILE LOOP
-- 12. FOR IN LOOP
-- 14. CURSOR (OPEN, FETCH e CLOSE)


-- trigger, if 
CREATE OR REPLACE TRIGGER SpamDetection before insert on thread_tabela
FOR EACH ROW
declare qtd number;
BEGIN

    select count(*) into qtd from thread_tabela where titulo = :NEW.titulo;
    if qtd !=0 then
        :NEW.titulo := 'SPAM';
    elsif :NEW.titulo is null then
        :NEW.titulo := 'Sem Titulo';
    end if;
END SpamDetection;
/

-- CREATE FUNCTION
CREATE OR REPLACE FUNCTION UltimaPostagem RETURN TIMESTAMP IS
retorno TIMESTAMP;
BEGIN
    select max(data_hora_thread) into retorno from cria_thread;
    return retorno;
END UltimaPostagem;
/

--SELECT UltimaAtividade from dual;

CREATE OR REPLACE TRIGGER SpamDetection before update on thread_tabela
FOR EACH ROW
BEGIN
    IF :NEW.titulo = :OLD.titulo THEN
        :NEW.titulo := 'SPAM'; 
    end if;
END SpamDetection;
/

CREATE OR REPLACE PACKAGE UsuarioPackage AS
PROCEDURE NovaPostagem(
    p_usuario IN cria_thread.login_usuario_cria_thread%TYPE,
    p_secao IN cria_thread.id_secao_cria_thread%TYPE,
    p_titulo IN thread_tabela.titulo%TYPE,
    p_texto IN thread_tabela.texto%TYPE);
END UsuarioPackage;
/

CREATE OR REPLACE PACKAGE BODY UsuarioPackage AS
PROCEDURE NovaPostagem(
    p_usuario IN cria_thread.login_usuario_cria_thread%TYPE,
    p_secao IN cria_thread.id_secao_cria_thread%TYPE,
    p_titulo IN thread_tabela.titulo%TYPE,
    p_texto IN thread_tabela.texto%TYPE) IS 
-- inserir nova postagem em cria_thread e thread_tabela
retorno INTEGER;
CHECK_CONSTRAINT_VIOLATED EXCEPTION;
PRAGMA EXCEPTION_INIT(CHECK_CONSTRAINT_VIOLATED, -2291);
STRING_RANGE_VIOLATED EXCEPTION;
PRAGMA EXCEPTION_INIT(STRING_RANGE_VIOLATED, -12899);

BEGIN
    select max(id_thread) into retorno from thread_tabela;
    retorno := retorno +1;
    INSERT INTO thread_tabela(id_thread, titulo,texto)
    VALUES (retorno, p_titulo,p_texto);
    INSERT INTO cria_thread(login_usuario_cria_thread, id_secao_cria_thread, id_thread_cria_thread, data_hora_thread)
    VALUES (p_usuario, p_secao, retorno, CURRENT_TIMESTAMP);
EXCEPTION 
   WHEN CHECK_CONSTRAINT_VIOLATED THEN 
      dbms_output.put_line('Dados incorretos (usuario/secao)!'); 
   WHEN STRING_RANGE_VIOLATED THEN 
      dbms_output.put_line('STRING LONGO DEMAIS! (titulo/texto)'); 

END NovaPostagem;-- NovaPostagem;

END UsuarioPackage;
/

--EXEC UsuarioPackage.NovaPostagem('victorluiz', 1, 'titulo teste', 'mensagem teste ');

--TRIGGER, RECORD
/*
(Antes de deletar uma thread da THREAD_TABELA, o trigger deleta todas as ocorrencias nas tabelas: CRIA_THREAD, MODERA_THREAD E CRIA_RESPOSTA
e salva os dados e a data de quando foi deletada em um record)
*/
CREATE OR REPLACE TRIGGER DELETOU
BEFORE DELETE ON THREAD_TABELA
FOR EACH ROW
DECLARE
LOGIN CRIA_THREAD.LOGIN_USUARIO_CRIA_THREAD%TYPE;
ID_SECAO CRIA_THREAD.ID_SECAO_CRIA_THREAD%TYPE;
ID_THREAD CRIA_THREAD.ID_THREAD_CRIA_THREAD%TYPE;
DATA_HORA CRIA_THREAD.DATA_HORA_THREAD%TYPE;

TYPE THREAD_ARQUIVADA is record
    (login_usuario_arq_thread VARCHAR2(30)
    ,id_secao_arq_thread NUMBER
    ,id_thread_arq_thread NUMBER
    ,data_hora_thread DATE);
THREAD_ARQ THREAD_ARQUIVADA;
date1 DATE;
pragma autonomous_transaction;


BEGIN

    SELECT LOGIN_USUARIO_CRIA_THREAD, ID_SECAO_CRIA_THREAD,	ID_THREAD_CRIA_THREAD INTO LOGIN, ID_SECAO, ID_THREAD
    FROM CRIA_THREAD CT
    INNER JOIN THREAD_TABELA T
    ON CT.ID_THREAD_CRIA_THREAD = T.ID_THREAD
    WHERE CT.ID_THREAD_CRIA_THREAD = :OLD.ID_THREAD;
    
    DELETE FROM CRIA_THREAD WHERE ID_THREAD_CRIA_THREAD	 = ID_THREAD; 
    COMMIT;
    DELETE FROM MODERA_THREAD WHERE ID_THREAD_MODERA_THREAD = ID_THREAD; 
    COMMIT;
    DELETE FROM CRIA_RESPOSTA WHERE id_thread_cria_resposta = ID_THREAD; 
    COMMIT;

    
    date1 := CURRENT_TIMESTAMP();
    THREAD_ARQ.login_usuario_arq_thread := LOGIN;
    THREAD_ARQ.id_secao_arq_thread := ID_SECAO;
    THREAD_ARQ.id_thread_arq_thread := ID_THREAD;
    THREAD_ARQ.data_hora_thread := date1;
    
    DBMS_OUTPUT.PUT_LINE('login: '|| THREAD_ARQ.login_usuario_arq_thread);
    DBMS_OUTPUT.PUT_LINE('id da secao: '|| THREAD_ARQ.id_secao_arq_thread);
    DBMS_OUTPUT.PUT_LINE('id da thread: '|| THREAD_ARQ.id_thread_arq_thread);
    DBMS_OUTPUT.PUT_LINE('data e hora: '|| THREAD_ARQ.data_hora_thread);
    
END;
/
/*TESTE*/
    DELETE FROM THREAD_TABELA WHERE TITULO LIKE 'Lancamentos de COMEDIA';