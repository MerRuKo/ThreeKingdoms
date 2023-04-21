CREATE TABLE tk_m_kingdoms (
    kingdomsno NUMBER(5) PRIMARY KEY,
    kingdomsnm VARCHAR2(10)
);

SELECT * FROM tk_m_kingdoms;

commit;

INSERT INTO tk_m_kingdoms VALUES (0,'재야');
INSERT INTO tk_m_kingdoms VALUES (1,'위');
INSERT INTO tk_m_kingdoms VALUES (2,'촉');
INSERT INTO tk_m_kingdoms VALUES (3,'오');
INSERT INTO tk_m_kingdoms VALUES (4,'한');