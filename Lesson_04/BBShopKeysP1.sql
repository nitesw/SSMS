CREATE DATABASE BB_Shop
USE BB_Shop

CREATE TABLE Clients
(
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(60) NOT NULL CHECK([Name] <> ''),
	Surname nvarchar(60) NOT NULL CHECK(Surname <> '' ),
	Email nvarchar(120) NOT NULL UNIQUE,
	Phone nvarchar(30) NOT NULL
)
GO

INSERT INTO Clients ([Name], Surname, Email, Phone)
VALUES 
	('Tommas', 'Andersen', 'toma@email.com', '097-12-34-567'),
	('Mary', 'Johnson', 'mary@example.com', '111-222-3333'),
	('Robert', 'Garcia', 'robert@example.com', '444-555-6666'),
	('Emma', 'Wilson', 'emma@example.com', '777-888-9999'),
	('Daniel', 'Martinez', 'daniel@example.com', '101-202-3030'),
	('Olivia', 'Lee', 'olivia@example.com', '404-505-6060'),
	('Ethan', 'Lopez', 'ethan@example.com', '707-808-9090'),
	('Ava', 'Harris', 'ava@example.com', '212-313-4141'),
	('Liam', 'Clark', 'liam@example.com', '515-616-7171'),
	('Mia', 'Thomas', 'mia@example.com', '818-919-2020'),
	('Noah', 'Moore', 'noah@example.com', '999-888-7777'),
	('Abigail', 'King', 'abigail@example.com', '333-222-1111'),
	('Alexander', 'Scott', 'alexander@example.com', '777-666-5555'),
	('Sophie', 'Baker', 'sophie@example.com', '111-000-9999'),
	('Elijah', 'Young', 'elijah@example.com', '444-333-2222'),
	('Grace', 'Evans', 'grace@example.com', '888-777-6666'),
	('Logan', 'Gomez', 'logan@example.com', '222-111-0000'),
	('Avery', 'Perry', 'avery@example.com', '555-444-3333'),
	('Victoria', 'Howard', 'victoria@example.com', '999-888-7777'),
	('Henry', 'Rivera', 'henry@example.com', '333-222-1111');
GO
SELECT * FROM Clients


CREATE TABLE Positions
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	[Name] nvarchar(100) NOT NULL CHECK([Name] <> '') UNIQUE
)
GO
INSERT Positions ([Name]) 
VALUES 
('Chief-Barber'), ('Senior-Barber'), ('Middle-Barber'),('Junior-Barber')
GO
SELECT * FROM Positions


CREATE TABLE Barbers
(
	Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] nvarchar(100) NOT NULL CHECK([Name] <> ''),
	Surname nvarchar(100) NOT NULL CHECK(Surname <> ''),
	Gender nvarchar(1) NOT NULL,
	Phone nvarchar(100) NOT NULL,
	Email nvarchar(max) null,
	BirthDate date NOT NULL CHECK(BirthDate < GETDATE()),
	HireDate date NOT NULL DEFAULT(GETDATE()),
	PositionId INT FOREIGN KEY REFERENCES Positions(Id)
)
GO
INSERT INTO Barbers([Name], Surname, Gender, Phone, Email, BirthDate, HireDate, PositionId)
VALUES
	('Richardo', 'Diples', 'M', '066-19-24-507', 'annonimous@email.com', '1995-05-10', '2019-01-11', 1),
	('Sophia', 'Gonzalez', 'F', '123-456-7890', 'sophia@email.com', '1987-08-12', '2017-06-01', 4),
	('William', 'Rodriguez', 'M', '234-567-8901', 'william@email.com', '1992-02-28', '2019-04-15', 3),
	('Isabella', 'Lopez', 'F', '345-678-9012', 'isabella@email.com', '1996-11-05', '2020-10-20', 2),
	('James', 'Perez', 'M', '456-789-0123', 'james@email.com', '1983-05-20', '2015-09-10', 1),
	('Chloe', 'Diaz', 'F', '987-654-3210', 'chloe@email.com', '1991-04-18', '2016-08-25', 3),
	('Owen', 'Ward', 'M', '876-543-2109', 'owen@email.com', '1994-07-30', '2020-12-10', 1),
	('Zoe', 'Foster', 'F', '765-432-1098', 'zoe@email.com', '1988-10-22', '2018-05-05', 2),
	('Luke', 'Hamilton', 'M', '654-321-0987', 'luke@email.com', '1980-12-12', '2019-09-20', 4),
	('Stella', 'Barnes', 'F', '543-210-9876', 'stella@email.com', '1997-01-05', '2021-03-15', 2);
GO
SELECT * FROM Barbers