-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-12-04 19:59:09 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE EMPRESTIMO 
    ( 
     cd_emprestimo              NUMBER (6)  NOT NULL , 
     dt_emprestimo              DATE  NOT NULL , 
     dt_vencimento_emprestimo   DATE  NOT NULL , 
     dt_devolucao_emprestimo    DATE , 
     FUNCIONARIO_cd_funcionario NUMBER (6)  NOT NULL , 
     LEITOR_cd_leitor           NUMBER (6)  NOT NULL 
    ) 
;

ALTER TABLE EMPRESTIMO 
    ADD CONSTRAINT EMPRESTIMO_PK PRIMARY KEY ( cd_emprestimo ) ;

CREATE TABLE EMPRESTIMO_LIVRO 
    ( 
     EMPRESTIMO_cd_emprestimo NUMBER (6)  NOT NULL , 
     LIVRO_cd_livro           NUMBER (6)  NOT NULL , 
     ds_observacao            VARCHAR2 (200) 
    ) 
;

ALTER TABLE EMPRESTIMO_LIVRO 
    ADD CONSTRAINT EMPRESTIMO_LIVRO_PK PRIMARY KEY ( EMPRESTIMO_cd_emprestimo, LIVRO_cd_livro ) ;

CREATE TABLE FUNCIONARIO 
    ( 
     cd_funcionario          NUMBER (6)  NOT NULL , 
     nm_funcionario          VARCHAR2 (100)  NOT NULL , 
     nm_cargo_funcionario    VARCHAR2 (50)  NOT NULL , 
     cd_telefone_funcionario VARCHAR2 (20)  NOT NULL , 
     cd_email_funcionario    VARCHAR2 (80) 
    ) 
;

ALTER TABLE FUNCIONARIO 
    ADD CONSTRAINT FUNCIONARIO_PK PRIMARY KEY ( cd_funcionario ) ;

CREATE TABLE LEITOR 
    ( 
     cd_leitor          NUMBER (6)  NOT NULL , 
     nm_leitor          VARCHAR2 (100)  NOT NULL , 
     cd_telefone_leitor VARCHAR2 (20)  NOT NULL , 
     cd_email_leitor    VARCHAR2 (80) , 
     dt_cadastro_leitor DATE  NOT NULL 
    ) 
;

ALTER TABLE LEITOR 
    ADD CONSTRAINT LEITOR_PK PRIMARY KEY ( cd_leitor ) ;

CREATE TABLE LIVRO 
    ( 
     cd_livro            NUMBER (6)  NOT NULL , 
     nm_titulo_livro     VARCHAR2 (150)  NOT NULL , 
     nm_autor_livro      VARCHAR2 (100)  NOT NULL , 
     nm_editora_livro    VARCHAR2 (80) , 
     aa_publicacao_livro NUMBER (4) 
    ) 
;

ALTER TABLE LIVRO 
    ADD CONSTRAINT LIVRO_PK PRIMARY KEY ( cd_livro ) ;

ALTER TABLE EMPRESTIMO 
    ADD CONSTRAINT EMPRESTIMO_FUNCIONARIO_FK FOREIGN KEY 
    ( 
     FUNCIONARIO_cd_funcionario
    ) 
    REFERENCES FUNCIONARIO 
    ( 
     cd_funcionario
    ) 
;

ALTER TABLE EMPRESTIMO 
    ADD CONSTRAINT EMPRESTIMO_LEITOR_FK FOREIGN KEY 
    ( 
     LEITOR_cd_leitor
    ) 
    REFERENCES LEITOR 
    ( 
     cd_leitor
    ) 
;

ALTER TABLE EMPRESTIMO_LIVRO 
    ADD CONSTRAINT EMPRESTIMO_LIVRO_EMPRESTIMO_FK FOREIGN KEY 
    ( 
     EMPRESTIMO_cd_emprestimo
    ) 
    REFERENCES EMPRESTIMO 
    ( 
     cd_emprestimo
    ) 
;

ALTER TABLE EMPRESTIMO_LIVRO 
    ADD CONSTRAINT EMPRESTIMO_LIVRO_LIVRO_FK FOREIGN KEY 
    ( 
     LIVRO_cd_livro
    ) 
    REFERENCES LIVRO 
    ( 
     cd_livro
    ) 
;


-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
