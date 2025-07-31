create database Empy
use Empy
CREATE TABLE Stud (
emp_id INT PRIMARY KEY,
name VARCHAR(20) NULL,
department VARCHAR(40) NOT NULL,
experience VARCHAR(10) NOT NULL);
INSERT INTO Stud(emp_id,name,department,experience) VALUES
(111,'xxx','AI&DS',4),
(122,'yyy','CSE',3),
(124,'zzz','it',3),
(130,'abc','cyberSecurity',1);
SELECT * FROM Stud;
UPDATE Stud
SET name='sdf',
department='BCA',
experience=3 WHERE emp_id=130;

INSERT INTO Stud(emp_id,name,department,experience)value 
(145,'sethu','MSC CS',2);
SELECT * FROM Stud;


ALTER TABLE Stud 
ADD Salary VARCHAR(30);
UPDATE Stud 
SET Salary= '20000' WHERE emp_id = 111;

UPDATE Stud 
SET Salary= '21000' WHERE emp_id = 122;

UPDATE Stud 
SET Salary = '25000' WHERE emp_id = 124;

UPDATE Stud 
SET Salary = '26000' WHERE emp_id = 130;

UPDATE Stud 
SET Salary = '30000' WHERE emp_id = 145;

SELECT * FROM Stud;


