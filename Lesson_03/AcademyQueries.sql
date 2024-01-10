CREATE DATABASE Academy
USE Academy

CREATE TABLE Departments
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
Financing MONEY NOT NULL DEFAULT 0 CHECK(Financing >= 0),
[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK(LEN([Name]) > 0)
);
GO

CREATE TABLE Faculties
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
Dean NVARCHAR(MAX) NOT NULL CHECK(Dean <> ''),
[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK([Name] <> '')
);
GO

CREATE TABLE Groups
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
[Name] NVARCHAR(10) NOT NULL UNIQUE CHECK(LEN([Name]) > 0),
Rating INT NOT NULL CHECK(Rating BETWEEN 0 AND 5),
[Year] INT NOT NULL CHECK([Year] BETWEEN 1 AND 5)
);
GO

CREATE TABLE Teachers 
(
Id INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
EmploymentDate DATE NOT NULL CHECK(EmploymentDate > '1990-01-01'),
IsAssistant BIT NOT NULL DEFAULT 0,
IsProfessor BIT NOT NULL DEFAULT 0,
[Name] NVARCHAR(MAX) NOT NULL CHECK(LEN([Name]) > 0),
Position NVARCHAR(MAX) NOT NULL CHECK(Position <> ''),
Premium MONEY NOT NULL DEFAULT 0 CHECK(Premium >= 0),
Salary MONEY NOT NULL CHECK(Salary > 0),
Surname NVARCHAR(MAX) NOT NULL CHECK(LEN(Surname) > 0) 
);
DROP TABLE Departments
DROP TABLE Faculties
DROP TABLE Groups
DROP TABLE Teachers

SELECT * FROM Departments
SELECT * FROM Faculties
SELECT * FROM Groups
SELECT * FROM Teachers
--Tasks
SELECT * FROM Departments ORDER BY Id DESC
SELECT [Name] AS 'Group Name', Rating AS 'Group Rating' FROM Groups
SELECT Surname, Premium * 100.0 / Salary AS 'Premium % of Salary', Premium * 100.0 / (Salary + Premium) AS 'Premium % of Total Payment' FROM Teachers
SELECT 'The dean of faculty ' + [Name] + ' is ' + [Dean] + '.' AS FacultyInfo FROM Faculties
SELECT Surname, Position, EmploymentDate, Salary FROM Teachers WHERE IsProfessor = 1 AND Salary > 1050
SELECT [Name], Financing FROM Departments WHERE Financing < 11000 OR Financing > 25000
SELECT [Name] FROM Faculties WHERE [Name] NOT LIKE 'Computer Science'
SELECT Surname, Position, EmploymentDate FROM Teachers WHERE IsProfessor = 0
SELECT Surname, Position, EmploymentDate, Salary, Premium FROM Teachers WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550
SELECT Surname, Salary FROM Teachers WHERE IsAssistant = 1
SELECT Surname, Position, EmploymentDate FROM Teachers WHERE EmploymentDate < '2000-01-01'
SELECT [Name] AS 'Name of Department' FROM Departments WHERE [Name] < 'Software Development' ORDER BY [Name]
SELECT Surname, Position, Salary, Premium FROM Teachers WHERE IsAssistant = 1 AND Salary + Premium < 1200
SELECT [Name], Rating From Groups WHERE [Year] = 5 AND Rating BETWEEN 2 AND 4
SELECT Surname, Salary, Premium FROM Teachers WHERE IsAssistant = 1 AND Salary < 550 OR	Premium < 200