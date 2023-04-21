CREATE TABLE tk_m_belongs (
    belongsno NUMBER(5) PRIMARY KEY,
    belongsnm VARCHAR2(10)
);

SELECT * FROM tk_m_belongs;

commit;

INSERT INTO tk_m_belongs VALUES (0,'무소속');
INSERT INTO tk_m_belongs VALUES (1,'허창');
INSERT INTO tk_m_belongs VALUES (2,'성도');
INSERT INTO tk_m_belongs VALUES (3,'건업');
INSERT INTO tk_m_belongs VALUES (4,'낙양');