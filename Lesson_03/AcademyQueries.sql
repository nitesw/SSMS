CREATE DATABASE Academy
USE Academy

CREATE TABLE Groups
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
[Name] NVARCHAR(10) NOT NULL UNIQUE CHECK(LEN([Name]) > 0),
Rating INT NOT NULL CHECK(Rating BETWEEN 0 AND 5),
[Year] INT NOT NULL CHECK([Year] BETWEEN 1 AND 5)
);
CREATE TABLE Departments
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
Financing MONEY NOT NULL DEFAULT 0 CHECK(Financing >= 0),
[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK(LEN([Name]) > 0)
);
CREATE TABLE Faculties
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK(LEN([Name]) > 0)
);
CREATE TABLE Teachers 
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
EmploymentDate DATE NOT NULL CHECK(EmploymentDate > '1990-01-01'),
[Name] NVARCHAR(max) NOT NULL CHECK(LEN([Name]) > 0),
Premium MONEY NOT NULL DEFAULT 0 CHECK(Premium >= 0),
Salary MONEY NOT NULL CHECK(Salary > 0),
Surname NVARCHAR(max) NOT NULL CHECK(LEN(Surname) > 0) 
);
DROP TABLE Teachers


--Tasks
SELECT * FROM Departments ORDER BY Id DESC
SELECT [Name] AS 'Group Name', Rating AS 'Group Rating' FROM Groups
SELECT Surname, Premium * 100.0 / Salary AS 'Premium % of Salary', Premium * 100.0 / (Salary + Premium) AS 'Premium % of Total Payment' FROM Teachers
