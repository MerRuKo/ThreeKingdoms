CREATE TABLE tk_g_general (
	generalno NUMBER(10) PRIMARY KEY,
    kingdomsno NUMBER(10),
    belongsno NUMBER(10),
    name VARCHAR2(10),
    nickname VARCHAR2(10),
    command NUMBER(10),
    power NUMBER(10),
    brain NUMBER(10),
    politic NUMBER(10),
    story VARCHAR2(500)
);

ALTER TABLE tk_g_general
ADD CONSTRAINT fk_kingdomsno FOREIGN KEY (kingdomsno) REFERENCES tk_m_kingdoms (kingdomsno);

ALTER TABLE tk_g_general
ADD CONSTRAINT fk_belongsno FOREIGN KEY (belongsno) REFERENCES tk_m_belongs (belongsno);

SELECT * FROM tk_g_general;

commit;

INSERT INTO tk_g_general VALUES (1,2,2,'조운','자룡',91,96,76,65,
'강직하고 온화한 성품의 소유자로 공과 사의 구분이 뚜렷하여 일처리가 공정하고 허물이 없었으며, 후세에는 삼국시대 인물을 통틀어 관우, 제갈량과 함께 역대제왕묘에 공신으로 배향되었을 정도로 후대의 평가까지 훌륭한 인물.');

INSERT INTO tk_g_general VALUES (2,2,2,'제갈량','공명',93,38,100,96,
'유표 치하의 형주에서 유비를 따르기 시작했으며, 유비 사후 촉한의 초대 승상을 지내며 국정 전반을 총괄하였다. 뛰어난 능력 뿐 아니라 탁월한 충성심으로 후대에 중국을 포함한 동아시아에서 훌륭한 신하이자 재상의 상징과 같은 인물로 여겨진다.');

INSERT INTO tk_g_general VALUES (3,1,1,'장료','문원',95,92,78,58,
'삼국이 정립되었을 당시 대촉(對蜀)전선의 장합과 더불어 대오(對吳)전선을 책임졌던 위의 명장.');

INSERT INTO tk_g_general VALUES (4,2,2,'강유','백약',91,89,90,67,
'제갈량으로부터 "마량 이상의 재능의 소유자, 양주 최고의 인물이자 기린아"라고 불리는 절찬을 받았다. 위나라 출신의 항장으로, 개국공신 가문도 아니고 촉한에 아무런 연고가 없음에도 촉의 대장군까지 오른 입지전적의 인물이기도 하다.');

INSERT INTO tk_g_general VALUES (5,2,2,'마초','맹기',90,96,44,26,
'후세에는 천하의 조조마저 죽음 직전까지 몰고간 그의 용력과 중원을 진동시켰던 명성이 높이 평가되어 "신위천장군(神威天將軍=하늘이 내린 장군)", "서량의 금마초"라는 이명과 함께 당대를 호령했던 영웅호걸로 전해지고 있다.');

INSERT INTO tk_g_general VALUES (6,2,2,'관우','운장',96,97,75,64,
'삼국지를 대표하는 명장으로, 지금도 역대 왕조를 비롯하여 민간에서도 굉장히 높은 인기와 명성을 자랑하는 인물이다. 그는 중국인들에게 무(武)와 충(忠), 의리(義理)와 재물(財物)의 화신(化神)으로 인지되며 오늘날까지도 신으로서 숭앙을 받는다. 말 그대로 사람으로 태어나 신이 된 남자.');

INSERT INTO tk_g_general VALUES (7,4,4,'여포','봉선',95,100,26,13,
'정사에서는 전한 시대 비장이라 불린 이광과 비견될 정도로 무명(武名)을 떨친 인물이자《조만전》에 따르면 인중여포 마중적토(人中呂布 馬中赤兔)로 기록되는 등, 당대 이름을 날리던 여러 명장들 중에서도 특히나 명성을 떨치던 맹장이었다.');

INSERT INTO tk_g_general VALUES (8,1,1,'조조','맹덕',98,72,91,94,
'후한 말의 정치가로 길고 길던 400년 왕조 한나라의 마지막 승상이자 최초의 위왕(魏王), 그리고 삼국시대 위나라의 추존 황제이다.');

INSERT INTO tk_g_general VALUES (9,3,3,'육손','백약',96,69,95,88,
'이릉대전에서 이름을 떨치고, 손권에게 군사와 정치 양쪽에서 중용되었으나, 말년에는 손권에게 간언하다 핍박받고 분사하였다. 주유와 견줄 만큼 공적이 큰 인물이다.');

INSERT INTO tk_g_general VALUES (10,1,1,'등애','사재',94,87,89,81,
'삼국지연의의 후반기 주인공격인 강유의 라이벌격으로 묘사된 인물. 실제 역사에서도 강유의 구벌중원을 방어하고 결정적인 타격을 가한 후반기 삼국지 최고의 명장 중 한 명이다.');

INSERT INTO tk_g_general VALUES (11,3,3,'주유','공근',97,71,96,86,
'손책과 손권 휘하의 전략가로, 세간에는 적벽대전의 주연으로 널리 알려져 있는 인물이다. 외모, 성격, 무예, 전술, 가문, 통찰력 등 출중한 능력으로 오나라를 이끈 당대의 천재였다.');

INSERT INTO tk_g_general VALUES (12,2,2,'황충','한승',87,93,63,52,
'촉한의 인물들 중에서도 조운과 더불어 굳세고 강직하면서 인정이 두텁고 온화한 인품을 지녔기에 편입된 장수임에도 불구하고 유비의 남다른 신임을 받았다. 동시에 《삼국지연의》를 통해 최고의 명궁이자 노장(老將)의 대명사로 알려진 인물.');