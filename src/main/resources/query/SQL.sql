CREATE TABLE tk_general (
	generalno NUMBER(5) PRIMARY KEY,
    name VARCHAR2(5),
    nickname VARCHAR2(5),
    command NUMBER(5),
    power NUMBER(5),
    brain NUMBER(5),
    politic NUMBER(5),
    story VARCHAR2(200)
);

SELECT * FROM tk_general;

INSERT INTO tk_general VALUES ('1','조운','자룡',92,96,75,65,
'후한 말의 인물. 삼국시대 촉한의 무장. 기주 상산(常山) 진정(眞定) 사람으로 자는 자룡(子龍)이다. 시호는 순평후(順平侯).');