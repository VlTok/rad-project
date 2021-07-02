/******************************************************************************/
/***         Generated by IBExpert 2019.3.10.1 02.07.2021 19:29:54          ***/
/******************************************************************************/

SET SQL DIALECT 3;

SET NAMES NONE;

CREATE DATABASE 'C:\Users\User\Desktop\RAD\db\DB.FDB'
USER 'SYSDBA' PASSWORD '12345'
PAGE_SIZE 16384
DEFAULT CHARACTER SET NONE COLLATION NONE;



/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/

CREATE DOMAIN D_DTS AS
TIMESTAMP;

CREATE DOMAIN D_INT AS
INTEGER;

CREATE DOMAIN D_INT_NN AS
INTEGER
NOT NULL;

CREATE DOMAIN D_MONEY AS
NUMERIC(15,2);

CREATE DOMAIN D_QNT AS
NUMERIC(15,6);

CREATE DOMAIN D_VARCHAR10 AS
VARCHAR(10) CHARACTER SET WIN1251;

CREATE DOMAIN D_VARCHAR200 AS
VARCHAR(200) CHARACTER SET WIN1251;

CREATE DOMAIN D_VARCHAR50 AS
VARCHAR(50) CHARACTER SET WIN1251;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_EXPENSES_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_EXPENSES_ID TO 0;

CREATE GENERATOR GEN_INCOMING_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_INCOMING_ID TO 0;

CREATE GENERATOR GEN_INCOMING_RESULT_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_INCOMING_RESULT_ID TO 0;

CREATE GENERATOR GEN_INFO_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_INFO_ID TO 0;

CREATE GENERATOR GEN_REPORT_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_REPORT_ID TO 0;

CREATE GENERATOR GEN_WORKERS_ID START WITH 0 INCREMENT BY 1;
SET GENERATOR GEN_WORKERS_ID TO 0;



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

CREATE PROCEDURE EXPENSES_DEL (
    IN_ID D_INT)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE EXPENSES_EDIT (
    IN_ID D_INT,
    IN_TITLE D_VARCHAR200)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE EXPENSES_NEW (
    IN_TITLE D_VARCHAR200)
RETURNS (
    OUT_ID D_INT)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE INFO_ADD (
    IN_ID_REPORT D_INT,
    IN_ID_EXPENSES D_INT,
    IN_QUANTITY D_QNT,
    IN_SUMMA D_MONEY)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INFO_DEL (
    IN_ID_REPORT D_INT,
    IN_ID_EXPENSES D_INT)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE REPORT_DEL (
    IN_ID D_INT)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE REPORT_NEW (
    IN_TOTAL_SUM FLOAT,
    IN_ID_WORKERS D_VARCHAR50,
    IN_FINISH_DATE D_DTS)
RETURNS (
    OUT_ID D_INT)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE WORKERS_DEL (
    IN_ID D_INT_NN)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE WORKERS_EDIT (
    IN_ID D_INT_NN,
    IN_NAME D_VARCHAR50,
    IN_SURNAME D_VARCHAR50)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE WORKERS_NEW (
    IN_NAME D_VARCHAR50,
    IN_SURNAME D_VARCHAR50)
RETURNS (
    OUT_ID D_INT)
AS
BEGIN
  SUSPEND;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE EXPENSES (
    ID     D_INT_NN NOT NULL,
    TITLE  D_VARCHAR200
);

CREATE TABLE INCOMING (
    ID         D_INT_NN NOT NULL,
    "DATE"     D_DTS,
    TOTAL_SUM  FLOAT
);

CREATE TABLE INCOMING_RESULT (
    ID           D_INT_NN NOT NULL,
    ID_WORKER    D_INT_NN,
    ID_INCOMING  D_INT_NN,
    GOT_SUM      FLOAT
);

CREATE TABLE INFO (
    ID_REPORT    D_INT_NN NOT NULL,
    ID_EXPENSES  D_INT_NN NOT NULL,
    QUANTITY     D_QNT,
    SUMMA        D_MONEY
);

CREATE TABLE REPORT (
    ID           D_INT_NN NOT NULL,
    ID_WORKERS   D_INT_NN NOT NULL,
    FINISH_DATE  D_DTS,
    TOTAL_SUM    FLOAT
);

CREATE TABLE WORKERS (
    ID       D_INT_NN NOT NULL,
    NAME     D_VARCHAR50,
    SURNAME  D_VARCHAR50
);



/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE EXPENSES ADD CONSTRAINT PK_EXPENSES PRIMARY KEY (ID);
ALTER TABLE INCOMING ADD CONSTRAINT PK_INCOMING PRIMARY KEY (ID);
ALTER TABLE INCOMING_RESULT ADD CONSTRAINT PK_INCOMING_RESULT PRIMARY KEY (ID);
ALTER TABLE INFO ADD CONSTRAINT PK_INFO PRIMARY KEY (ID_REPORT, ID_EXPENSES);
ALTER TABLE REPORT ADD CONSTRAINT PK_REPORT PRIMARY KEY (ID);
ALTER TABLE WORKERS ADD CONSTRAINT PK_WORKERS PRIMARY KEY (ID);


/******************************************************************************/
/***                              Foreign keys                              ***/
/******************************************************************************/

ALTER TABLE INCOMING_RESULT ADD CONSTRAINT FK_INCOMING_RESULT_1 FOREIGN KEY (ID_WORKER) REFERENCES WORKERS (ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE INCOMING_RESULT ADD CONSTRAINT FK_INCOMING_RESULT_2 FOREIGN KEY (ID_INCOMING) REFERENCES INCOMING (ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE INFO ADD CONSTRAINT FK_INFO_1 FOREIGN KEY (ID_REPORT) REFERENCES REPORT (ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE INFO ADD CONSTRAINT FK_INFO_2 FOREIGN KEY (ID_EXPENSES) REFERENCES EXPENSES (ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE REPORT ADD CONSTRAINT FK_REPORT_1 FOREIGN KEY (ID_WORKERS) REFERENCES WORKERS (ID) ON DELETE CASCADE ON UPDATE CASCADE;


/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

ALTER PROCEDURE EXPENSES_DEL (
    IN_ID D_INT)
AS
begin
  delete from expenses
  where id=:in_id;
end^


ALTER PROCEDURE EXPENSES_EDIT (
    IN_ID D_INT,
    IN_TITLE D_VARCHAR200)
AS
begin
  update expenses
  set
  title=:in_title
  where id=:in_id;
end^


ALTER PROCEDURE EXPENSES_NEW (
    IN_TITLE D_VARCHAR200)
RETURNS (
    OUT_ID D_INT)
AS
begin
out_id=gen_id(gen_expenses_id, 1);
  insert into expenses(id, title) values(:out_id, :in_title);
end^


ALTER PROCEDURE INFO_ADD (
    IN_ID_REPORT D_INT,
    IN_ID_EXPENSES D_INT,
    IN_QUANTITY D_QNT,
    IN_SUMMA D_MONEY)
AS
begin
  if(exists( select * from info
  where id_report=:in_id_report and id_expenses=:in_id_expenses)) then
  update info
  set
  quantity=quantity + :in_quantity,
  summa=summa + :in_summa
  where id_report=:in_id_report and id_expenses=:in_id_expenses;
  else
  insert into info(id_report, id_expenses, quantity, summa)
  values(:in_id_report, :in_id_expenses,:in_quantity,:in_summa);
end^


ALTER PROCEDURE INFO_DEL (
    IN_ID_REPORT D_INT,
    IN_ID_EXPENSES D_INT)
AS
begin
  delete from info
  where id_report=:in_id_report and id_expenses=:in_id_expenses;
end^


ALTER PROCEDURE REPORT_DEL (
    IN_ID D_INT)
AS
begin
  delete from report
  where id=:in_id;
end^


ALTER PROCEDURE REPORT_NEW (
    IN_TOTAL_SUM FLOAT,
    IN_ID_WORKERS D_VARCHAR50,
    IN_FINISH_DATE D_DTS)
RETURNS (
    OUT_ID D_INT)
AS
begin
   out_id=gen_id(gen_report_id, 1);
   insert into report(id,id_workers,finish_date) values(:out_id,:in_id_workers,:in_finish_date);
end^


ALTER PROCEDURE WORKERS_DEL (
    IN_ID D_INT_NN)
AS
begin
  delete from workers
  where id=:in_id;
end^


ALTER PROCEDURE WORKERS_EDIT (
    IN_ID D_INT_NN,
    IN_NAME D_VARCHAR50,
    IN_SURNAME D_VARCHAR50)
AS
begin
  update workers
  set
  name=:in_name,
  surname=:in_surname
  where id=:in_id;
end^


ALTER PROCEDURE WORKERS_NEW (
    IN_NAME D_VARCHAR50,
    IN_SURNAME D_VARCHAR50)
RETURNS (
    OUT_ID D_INT)
AS
begin
   out_id=gen_id(gen_workers_id, 1);
   insert into workers(id,name,surname) values(:out_id,:in_name,:in_surname);
end^



SET TERM ; ^
