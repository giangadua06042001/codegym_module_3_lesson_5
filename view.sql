USE customers;
CREATE TABLE cus(
ID INT NOT NULL AUTO_iNCREMENT PRIMARY KEY,
cusName VARCHAR(60) NOT NULL,
Age INT NOT NULL,
Addess VARCHAR(80));
INSERT INTO cus(ID, cusName,Age,Addess)
VALUES(1,'Nguyen Hai Son',29,'Nam Dinh');
INSERT INTO cus(cusName,Age,Addess)
VALUES('Le Thi Ngoc Anh',21,'Phu Tho');
INSERT INTO cus(cusName,Age,Addess)
VALUES('Giang Thi Dua',22,'Lao Cai');
CREATE VIEW custer AS SELECT ID, cusName,Age
FROM cus;
SELECT *FROM custer;
UPDATE custer
SET cusName='Le Thi Anh Duong'
WHERE ID=2;
DELETE FROM custer
WHERE ID=1;
