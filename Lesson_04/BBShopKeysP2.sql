SELECT * FROM Barbers
SELECT * FROM Positions

CREATE TABLE Schedules
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	[Date] date NOT NULL DEFAULT(GETDATE()),
	StartTime time NOT NULL CHECK(StartTime >= '09:00'),
	EndTime time NOT NULL CHECK(EndTime <= '19:00'),
	BarberId INT FOREIGN KEY REFERENCES Barbers(Id),
	CHECK(EndTime > StartTime)
)
GO
INSERT INTO Schedules ([Date], StartTime, EndTime, BarberId) 
VALUES 
('2023-12-23', '10:40', '11:10', 6),
('2023-12-23', '11:00', '11:30', 2),
('2023-12-24', '10:00', '10:30', 3),
('2023-12-23', '15:00', '15:30', 1),
('2023-12-25', '17:00', '17:30', 8),
('2023-12-25', '18:30', '19:00', 10),
('2023-12-24', '12:00', '12:30', 4),
('2023-12-24', '13:00', '13:30', 5),
('2023-12-23', '17:00', '18:30', 7),
('2023-12-23', '18:00', '18:30', 9)

CREATE TABLE Registers
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	ClientId INT NOT NULL REFERENCES Clients(Id),
	ScheduleId INT NOT NULL REFERENCES Schedules(Id),
	[Time] time NOT NULL CHECK([Time] >= '00:00')
)
GO

INSERT Registers (ClientId, ScheduleId, [Time])
VALUES
(10, 1, '12:30'),
(11, 2, '14:00'), 
(12, 3, '10:15'), 
(13, 4, '15:20'), 
(14, 5, '17:10'), 
(15, 6, '18:40'), 
(16, 7, '11:45'), 
(17, 8, '13:15'), 
(18, 9, '16:30'), 
(19, 10, '09:30');

SELECT * FROM Registers
SELECT * FROM Schedules
SELECT * FROM Barbers WHERE Id = 6