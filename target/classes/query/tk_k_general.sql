CREATE TABLE tk_k_general (
	applyno NUMBER(10) PRIMARY KEY,
    name VARCHAR2(10),
    nickname VARCHAR2(10),
    command NUMBER(10),
    power NUMBER(10),
    brain NUMBER(10),
    politic NUMBER(10),
    story VARCHAR2(500)
);

SELECT * FROM tk_k_general;

commit;