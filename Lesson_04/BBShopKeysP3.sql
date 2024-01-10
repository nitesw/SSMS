CREATE TABLE Services
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	[Name] nvarchar(100) NOT NULL CHECK([Name] <> ''),
	Price money NOT NULL CHECK(Price > 0),
	Duration time NOT NULL CHECK(Duration <> '' AND Duration > '00:00:00')
)
DELETE FROM Services
INSERT INTO Services ([Name], Price, Duration)
VALUES
('Beard Trim', 200, '00:15:00'),
('Haircut', 250, '00:30:00'),
('Waxing', 450, '01:00:00'),
('Fade', 150, '00:10:00'),
('Hair Wash', 50, '00:05:00'),
('Brow Shaping', 50, '00:05:00'),
('Hot Towel Shave', 300, '00:25:00'),
('Beard Shaping', 200, '00:15:00'),
('Hot Lather', 250, '00:10:00'),
('Scalp massage', 500, '00:10:00')

CREATE TABLE Feedbacks
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	[Text] nvarchar(max) NULL,
	Rating INT NOT NULL CHECK(Rating BETWEEN 1 AND 5),
	ClientId INT NOT NULL REFERENCES Clients(Id),
	BarberId INT NOT NULL REFERENCES Barbers(Id)
)
INSERT INTO Feedbacks ([Text], Rating, ClientId, BarberId)
VALUES
('Great service!', 5, 1, 1),
('Very professional barber!', 4, 2, 2),
('Good haircut', 3, 3, 3),
('Could be better', 2, 4, 4),
('Not satisfied', 1, 5, 5),
('Excellent job!', 5, 6, 6),
('Friendly staff', 4, 7, 7),
('Average service', 3, 8, 8),
('Highly recommended', 5, 9, 9),
('Fantastic experience', 5, 10, 10)


CREATE TABLE VisitArchive
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	ClientId INT NOT NULL REFERENCES Clients(Id),
	BarberId INT NOT NULL REFERENCES Barbers(Id),
	ServiceId INT NOT NULL REFERENCES Services(Id),
	[Date] date NOT NULL CHECK([Date] <= GETDATE()),
	TotalPrice money NOT NULL CHECK(TotalPrice >= 0),
	FeedBackId INT NOT NULL REFERENCES Feedbacks(Id)
)
INSERT INTO VisitArchive (ClientId, BarberId, ServiceId, [Date], TotalPrice, FeedBackId)
VALUES
(1, 1, 12, '2023-12-23', 200, 1),
(2, 2, 13, '2023-12-23', 250, 2),
(3, 3, 14, '2023-12-24', 450, 3),
(4, 4, 15, '2023-12-23', 150, 4),
(5, 5, 16, '2023-12-25', 50, 5),
(6, 6, 17, '2023-12-25', 200, 6),
(7, 7, 18, '2023-12-24', 300, 7),
(8, 8, 19, '2023-12-24', 50, 8),
(9, 9, 20, '2023-12-23', 500, 9),
(10, 10, 21, '2023-12-23', 500, 10)


CREATE TABLE BarbersService
(
	BarberId INT NOT NULL REFERENCES Barbers(Id),
	ServiceId INT NOT NULL REFERENCES Services(Id),
	PRIMARY KEY (BarberId, ServiceId)
)

INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 1, Id FROM Services;
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 5, Id FROM Services;
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 7, Id FROM Services;
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 4, Id FROM Services WHERE Id NOT IN (15, 21);
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 8, Id FROM Services WHERE Id NOT IN (15, 21);
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 10, Id FROM Services WHERE Id NOT IN (15, 21);
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 3, Id FROM Services WHERE Id IN (12, 13, 14, 15, 16);
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 6, Id FROM Services WHERE Id IN (12, 13, 14, 15, 16);
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 2, Id FROM Services WHERE Id IN (15, 17, 19);
INSERT INTO BarbersService (BarberId, ServiceId)
SELECT 9, Id FROM Services WHERE Id IN (15, 17, 19);

SELECT * FROM Barbers
SELECT * FROM BarbersService
SELECT * FROM Clients
SELECT * FROM Feedbacks
SELECT * FROM Positions 
SELECT * FROM Registers
SELECT * FROM Schedules
SELECT * FROM Services
SELECT * FROM VisitArchive