CREATE TABLE tk_m_belongs (
    belongsno NUMBER(5) PRIMARY KEY,
    belongsnm VARCHAR2(10),
    castle VARCHAR2(10),
    city VARCHAR2(10)
);

ALTER TABLE tk_m_belongs ADD castle VARCHAR2(10);
ALTER TABLE tk_m_belongs ADD city VARCHAR2(10);

SELECT * FROM tk_m_belongs;

commit;

INSERT INTO tk_m_belongs VALUES (0,'무소속','','');
INSERT INTO tk_m_belongs VALUES (1,'허창','허난성','쉬창시');
INSERT INTO tk_m_belongs VALUES (2,'성도','쓰촨성','청두시');
INSERT INTO tk_m_belongs VALUES (3,'건업','장쑤성','난징시');
INSERT INTO tk_m_belongs VALUES (4,'낙양','허난성','뤄양시');
INSERT INTO tk_m_belongs VALUES (5,'장안','산시성','시안시');