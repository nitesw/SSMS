CREATE DATABASE Demo
DROP DATABASE Demo

BACKUP DATABASE Demo
TO DISK = 'E:\ITStep_SQL_Lessons\Lesson_01\Demo.bak'

USE Demo

--CREATE TABLE Users
--(
--Id int,
--FirstName varchar(128),
--LastName varchar(128),
--Email varchar(256),
--City varchar(128),
--Age smallint
--);
--DROP TABLE Users

CREATE TABLE SteamUsers
(
Id int,
[Login] varchar(128),
[Password] varchar(256),
NickName varchar(128),
Email varchar(256),
Phone int,
FirstName varchar(128),
LastName varchar(128),
Country varchar(128),
AmountOfGames smallint,
Balance smallmoney
);
DROP TABLE SteamUsers

ALTER TABLE SteamUsers ADD City varchar(128)
ALTER TABLE SteamUsers ADD [Level] smallint
ALTER TABLE SteamUsers ADD Friends tinyint
ALTER TABLE SteamUsers DROP COLUMN City
--ALTER TABLE SteamUsers RENAME COLUMN NickName TO UserName
sp_rename 'SteamUsers.NickName', 'Username', 'Column'


CREATE TABLE SteamUsers
(
Id int PRIMARY KEY,
[Login] varchar(128) NOT NULL UNIQUE,
[Password] varchar(256) NOT NULL,
NickName varchar(128) NOT NULL UNIQUE,
Email varchar(256) NOT NULL UNIQUE,
Phone int NOT NULL UNIQUE,
FirstName varchar(128) NOT NULL,
LastName varchar(128) NOT NULL,
Country varchar(128) DEFAULT 'Ukraine',
AmountOfGames smallint DEFAULT 0,
Balance smallmoney DEFAULT 0
);



--TASK
CREATE DATABASE Hospital

BACKUP DATABASE Hospital 
TO DISK = 'E:\ITStep_SQL_Lessons\Lesson_01\Hospital.bak'

USE Hospital

CREATE TABLE Departments
(
ID int PRIMARY KEY NOT NULL,
Building int NOT NULL CHECK(Building >= 1 AND Building <= 5),
Financing money NOT NULL DEFAULT 0 CHECK(Financing > 0),
[Name] nvarchar(100) NOT NULL UNIQUE CHECK(LEN([Name]) > 0)
);
CREATE TABLE Diseases
(
ID int PRIMARY KEY NOT NULL,
[Name] nvarchar(100) NOT NULL UNIQUE CHECK(LEN([Name]) > 0),
Severity int NOT NULL DEFAULT 1 CHECK(Severity > 0)
);
CREATE TABLE Doctors
(
ID int PRIMARY KEY NOT NULL,
[Name] nvarchar(max) NOT NULL CHECK(LEN([Name]) > 0),
Phone char(10) NOT NULL,
Salary money NOT NULL CHECK(Salary > 0),
Surname nvarchar(max) NOT NULL CHECK(LEN(Surname) > 0)
);
CREATE TABLE Examinations
(
ID int PRIMARY KEY NOT NULL,
[DayOfWeek] int NOT NULL CHECK([DayOfWeek] > 0 AND [DayOfWeek] < 8),
[Name] nvarchar(100) NOT NULL UNIQUE CHECK(LEN([Name]) > 0),
StartTime time NOT NULL CHECK(StartTime BETWEEN '08:00:00' AND '18:00:00'),
EndTime time NOT NULL,
CHECK(EndTime > StartTime)
);