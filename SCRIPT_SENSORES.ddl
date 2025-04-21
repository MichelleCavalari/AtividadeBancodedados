-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-04-21 16:17:11 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE CULTURA 
    ( 
     ID_CULTURA    VARCHAR2 (15)  NOT NULL , 
     NOME_CULTURA  VARCHAR2 (15)  NOT NULL , 
     EPOCA_PLANTIO VARCHAR2 (15)  NOT NULL 
    ) 
;

ALTER TABLE CULTURA 
    ADD CONSTRAINT PK_CULTURA PRIMARY KEY ( ID_CULTURA ) ;

CREATE TABLE LEITURA 
    ( 
     ID_SENSOR          NUMBER (5)  NOT NULL , 
     ID_LEITURA         NUMBER (5)  NOT NULL , 
     DATA_HORA          DATE  NOT NULL , 
     UMIDADE            NUMBER (5,2)  NOT NULL , 
     PH                 NUMBER (3,1)  NOT NULL , 
     FOSFORO            NUMBER (5,2)  NOT NULL , 
     POTASSIO           NUMBER (5,2)  NOT NULL , 
     SENSOR_ID_SENSOR   NUMBER (5)  NOT NULL , 
     CULTURA_ID_CULTURA VARCHAR2 (15)  NOT NULL 
    ) 
;

ALTER TABLE LEITURA 
    ADD CONSTRAINT PK_LEITURA PRIMARY KEY ( ID_LEITURA, ID_SENSOR ) ;

CREATE TABLE REGISTRAv2 
    ( 
     CULTURA_ID_CULTURA VARCHAR2 (15)  NOT NULL , 
     SENSOR_ID_SENSOR   NUMBER (5)  NOT NULL 
    ) 
;

ALTER TABLE REGISTRAv2 
    ADD CONSTRAINT PK_REGISTRAv2 PRIMARY KEY ( CULTURA_ID_CULTURA, SENSOR_ID_SENSOR ) ;

CREATE TABLE SENSOR 
    ( 
     ID_SENSOR   NUMBER (5)  NOT NULL , 
     TIPO_SENSOR VARCHAR2 (15 CHAR)  NOT NULL , 
     ID_CULTURA  VARCHAR2 (15 CHAR)  NOT NULL 
    ) 
;

ALTER TABLE SENSOR 
    ADD CONSTRAINT PK_SENSOR PRIMARY KEY ( ID_SENSOR ) ;

ALTER TABLE LEITURA 
    ADD CONSTRAINT FK_LEITURA_CULTURA FOREIGN KEY 
    ( 
     CULTURA_ID_CULTURA
    ) 
    REFERENCES CULTURA 
    ( 
     ID_CULTURA
    ) 
;

ALTER TABLE LEITURA 
    ADD CONSTRAINT FK_LEITURA_SENSOR FOREIGN KEY 
    ( 
     SENSOR_ID_SENSOR
    ) 
    REFERENCES SENSOR 
    ( 
     ID_SENSOR
    ) 
;

ALTER TABLE REGISTRAv2 
    ADD CONSTRAINT FK_REGISTRAv2_CULTURA FOREIGN KEY 
    ( 
     CULTURA_ID_CULTURA
    ) 
    REFERENCES CULTURA 
    ( 
     ID_CULTURA
    ) 
;

ALTER TABLE REGISTRAv2 
    ADD CONSTRAINT FK_REGISTRAv2_SENSOR FOREIGN KEY 
    ( 
     SENSOR_ID_SENSOR
    ) 
    REFERENCES SENSOR 
    ( 
     ID_SENSOR
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              8
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
