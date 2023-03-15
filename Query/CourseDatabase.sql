--CREATE DATABASE Course
--USE Course

CREATE TABLE Teachers(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(50) NOT NULL,
	Surname NVARCHAR(50),
	Email NVARCHAR(100) UNIQUE,
	Salary DECIMAL
)
SELECT * FROM Teachers;
ALTER TABLE Teachers ADD Age INT
INSERT INTO Teachers(Name,Surname,Email,Salary,Age) VALUES
('Cavid','Bashirov','javid.bashirov@code.edu.az',2800,29),
('Huseyn','Ashurlu','huseyn.ashurlu@code.edu.az',2500,24),
('Hemid','Memmedov','hemid.memmedov@mail.ru',2000,35),
('Chinara','Ibadova','chinara.ibadova@code.edu.az',1500,22),
('Konul','Ibrahimova','konul.ibrahimova@mail.ru',1200,27),
('Roya','Meherremova','roya.meherremova@mail.ru',999,26)


--Yashi butun muellimlerin orta yashindan boyuk olan muellimlerin siyahisi.
SELECT AVG(Age) FROM Teachers
SELECT * FROM Teachers WHERE Age > (SELECT AVG(Age) FROM Teachers)

--Maashi 1000  ve 3000 araliqinda olan muellimlerin siyahisi.
SELECT Salary FROM Teachers
SELECT * FROM Teachers WHERE Salary BETWEEN 1000 AND 3000 AND Salary NOT IN(1000,3000)


--Emailin sonu mail.ru olan muellimlerin adi ve soyadi
SELECT Name,Surname FROM Teachers WHERE Email LIKE('%mail.ru');

--Adi C herfi ile bashlayan muellimlerin siyahisi.
SELECT * FROM Teachers WHERE Name LIKE('C%');
