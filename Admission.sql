create database Admissions
use Admissions

CREATE TABLE Admis (
reg_no INT PRIMARY KEY,
name VARCHAR(20) NULL,
department VARCHAR(40) NOT NULL,
cutoff INT NOT NULL);

INSERT INTO Admis(reg_no,name,department,cutoff) VALUES
(111,'xxx','AI&DS',150),
(122,'yyy','CSE',125),
(124,'zzz','it',120),
(130,'abc','cyberSecurity',140);
SELECT * FROM Admis;

UPDATE Admis
SET name='sdf',
department='MCA',
cutoff=166 WHERE reg_no=122;

INSERT INTO Admis(reg_no,name,department,cutoff)
value (145,'sdfg','MSC CS',180);
SELECT * FROM Admis;

ALTER TABLE Admis
ADD phone_num VARCHAR(13);

UPDATE Admis 
SET phone_num = '8610352635' WHERE reg_no = 111;

UPDATE Admis
SET phone_num = '9500415383' WHERE reg_no = 122;

UPDATE Admis
SET phone_num = '9080459918' WHERE reg_no = 124;

UPDATE Admis
SET phone_num = '9500501302' WHERE reg_no = 130;

UPDATE Admis
SET phone_num = '8122459918' WHERE reg_no = 145;
SELECT * FROM Admis;

ALTER TABLE Admis
ADD place VARCHAR(30);

UPDATE Admis
SET place = 'Salem' WHERE reg_no = 111;

UPDATE Admis
SET place = 'Attur' WHERE reg_no = 122;

UPDATE Admis
SET place = 'Trichy' WHERE reg_no = 124;

UPDATE Admis
SET place = 'Mattur' WHERE reg_no = 130;

UPDATE Admis
SET place = 'Palakadu' WHERE reg_no = 145;
select * FROM Admis


