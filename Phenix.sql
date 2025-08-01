create database Phenix
use Phenix
CREATE TABLE Stud (
reg_no INT PRIMARY KEY,
name VARCHAR(20) NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Stud(reg_no,name,department,year) VALUES
(111,'xxx','AI&DS',4),
(122,'yyy','CSE',3),
(124,'zzz','it',3),
(130,'abc','cyberSecurity',1);
SELECT * FROM Stud;
UPDATE Stud
SET name='sdf',
department='BCA',
year=3 WHERE reg_no=122;

INSERT INTO Stud(reg_no,name,department,year)
value (145,'sdfg','MSC CS',2);
SELECT * FROM Stud;


ALTER TABLE Stud 
ADD phone_num VARCHAR(13);
UPDATE Stud 
SET phone_num = '8610352635' WHERE reg_no = 111;

UPDATE Stud
SET phone_num = '9500415383' WHERE reg_no = 122;

UPDATE Stud
SET phone_num = '9080459918' WHERE reg_no = 124;

UPDATE Stud
SET phone_num = '9500501302' WHERE reg_no = 130;

UPDATE Stud
SET phone_num = '8122459918' WHERE reg_no = 145;

SELECT COUNT(*)AS tot_Student FROM Stud;
SELECT MAX(year) AS max_yr FROM Stud;
SELECT MIN(year) AS min_yr FROM Stud;
SELECT AVG(year) AS av_yr FROM Stud;

SELECT department,COUNT(*) As dept_count FROM Stud GROUP BY department;

SELECT department,MAX(year) AS max_yr FROM Stud
GROUP BY department;

SELECT * FROM Stud
ORDER BY year ASC;

SELECT * FROM Stud
ORDER BY name;

SELECT * FROM Stud
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM Stud;
SELECT UPPER(name) AS name_upr FROM Stud;
SELECT LOWER(name) AS name_upr FROM Stud;
SELECT LEFT(name,2) AS srt FROM Stud;
SELECT name,LENGTH(name) AS name_ln FROM Stud;

SELECT CONCAT(name,' - ',department) AS combine
FROM Stud;

SELECT name,year,year + 1 AS nx_yr FROM Stud;
SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud;

ALTER TABLE Stud
ADD Date_Detail DATE;
SELECT * FROM Stud;

UPDATE Stud SET Date_Detail='2021-08-18' WHERE reg_no=111;
UPDATE Stud SET Date_Detail='2021-07-18' WHERE reg_no=122;
UPDATE Stud SET Date_Detail='2021-06-18' WHERE reg_no=124;
UPDATE Stud SET Date_Detail='2021-05-18' WHERE reg_no=130;
UPDATE Stud SET Date_Detail='2021-04-18' WHERE reg_no=145;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM Stud;