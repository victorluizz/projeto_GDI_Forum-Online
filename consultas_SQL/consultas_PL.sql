-- 1. USO DE RECORD
-- 2. USO DE ESTRUTURA DE DADOS DO TIPO TABLE
-- 3. BLOCO ANÔNIMO
-- 7. %ROWTYPE
-- 8. IF ELSIF
-- 9. CASE WHEN
-- 10. LOOP EXIT WHEN
-- 11. WHILE LOOP
-- 12. FOR IN LOOP
-- 14. CURSOR (OPEN, FETCH e CLOSE)
-- 19. CREATE OR REPLACE TRIGGER (COMANDO)
-- 20. CREATE OR REPLACE TRIGGER (LINHA)


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
--SELECT UltimaPostagem from dual;


-- NAO TA FUNCIONANDO
CREATE OR REPLACE FUNCTION UltimaAtividade RETURN
TIMESTAMP IS
retorno TIMESTAMP;
BEGIN
    select max(data_hora_thread) into retorno from cria_thread;
    return retorno;
END UltimaAtividade;
/

SELECT UltimaAtividade from dual;

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

EXEC UsuarioPackage.NovaPostagem('victorluiz', 1, 'titulo teste', 'mensagem teste ');