CREATE TABLE tk_m_kingdoms (
    kingdomsno NUMBER(5) PRIMARY KEY,
    kingdomsnm VARCHAR2(10),
    capital VARCHAR2(10),
    founder VARCHAR2(10),
    foundyear VARCHAR2(10),
    fallyear VARCHAR2(10)
);

ALTER TABLE tk_m_kingdoms ADD capital VARCHAR2(10);
ALTER TABLE tk_m_kingdoms ADD founder VARCHAR2(10);
ALTER TABLE tk_m_kingdoms ADD foundyear VARCHAR2(10);
ALTER TABLE tk_m_kingdoms ADD fallyear VARCHAR2(10);

SELECT * FROM tk_m_kingdoms;

commit;

INSERT INTO tk_m_kingdoms VALUES (0,'재야','','','','');
INSERT INTO tk_m_kingdoms VALUES (1,'위','허창','조조','AD.220','AD.265');
INSERT INTO tk_m_kingdoms VALUES (2,'촉','성도','유비','AD.221','AD.263');
INSERT INTO tk_m_kingdoms VALUES (3,'오','건업','손권','AD.229','AD.280');
INSERT INTO tk_m_kingdoms VALUES (4,'한','낙양','유방','BC.202','AD.220');
INSERT INTO tk_m_kingdoms VALUES (5,'진','장안','사마염','AD.265','AD.420');