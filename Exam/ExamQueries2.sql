SELECT * FROM Bookings 
SELECT * FROM Schedules 
SELECT * FROM BarbersServices
SELECT * FROM Services
SELECT * FROM Barbers
SELECT * FROM Archive
SELECT * FROM Feedbacks
SELECT * FROM Positions

--1. Зробити процедуру яка знаходить всі записи конкретного барбера (id)
CREATE PROCEDURE spShowBarberBookings @BarberId INT
AS
BEGIN
	SELECT bo.Id, c.[Name] AS ClientName, b.[Name] AS BarberName, bo.[Date], bo.[Time], bo.ServiceId FROM Bookings AS bo
	JOIN Barbers AS b
	ON b.Id = bo.BarberId
	JOIN Clients AS c 
	ON c.Id = bo.ClientId WHERE BarberId = @BarberId
END
spShowBarberBookings @BarberId = 5

--2. За допомогою join показати барберів та які послуги вони надають
SELECT b.Id, b.[Name], b.Surname, b.PositionId, bs.BarberId, bs.ServiceId, s.[Name] AS ServiceName FROM Barbers AS b
JOIN BarbersServices AS bs 
ON b.Id = bs.BarberId 
JOIN Services AS s 
ON bs.ServiceId = s.Id 

--3. Написати транзакцію яка додає нового барбера та сервіси які він може робити
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO Barbers VALUES ('Jack', 'Hamilton', 'M', 123123123, 'jackham@xing.com', '2000-11-01', '2015-01-11', 1)
			
			INSERT INTO BarbersServices (BarberId, ServiceId)
			VALUES
			(26, 1),
			(26, 3),
			(26, 5),
			(26, 2),
			(26, 10),
			(26, 4),
			(26, 7)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
END

--4. Зробити процедуру яка перейминовує барбера (ім'я)
CREATE PROCEDURE spRenameBarber @Id INT, @Name NVARCHAR(100)
AS 
BEGIN
	UPDATE Barbers SET [Name] = @Name WHERE Id = @Id
END
spRenameBarber 26, 'Alex'

--5. Вивести клієнта який найбільше разів відвідав барбершоп
SELECT TOP(1) c.Id, c.[Name], COUNT(f.ClientId) AS TotalVisits FROM Feedbacks AS f
JOIN Clients AS c
ON f.ClientId = c.Id 
GROUP BY c.Id, c.[Name] ORDER BY TotalVisits DESC

--6. Знайти барбера який має найдорожчу ціну за його послуги (в сумі які він має)
SELECT TOP(1) bs.BarberId, b.[Name], b.Surname, b.PositionId, SUM(s.Price) AS SumOfServices FROM BarbersServices AS bs
JOIN Services AS s
ON bs.ServiceId = s.Id 
JOIN Barbers AS b
ON b.Id = bs.BarberId
GROUP BY bs.BarberId, b.[Name], b.Surname, b.PositionId ORDER BY SumOfServices DESC

--7. Вивести на екран всіх барберів окрім seniors
SELECT * FROM Barbers WHERE PositionId NOT LIKE 3

--8. Знайти барбера і всі відгуки про нього (використовуючи join)
SELECT b.Id, b.[Name], b.Surname, p.[Name] AS Position, f.Id, f.BarberId, f.ClientId, f.Mark, f.[Text] FROM Barbers AS b
JOIN Positions AS p
ON p.Id = b.PositionId
JOIN Feedbacks AS f
ON b.Id = f.BarberId WHERE b.Id = 11

--9. Зробити транзакцію яка імітує роботу барбершопу
SELECT * FROM Bookings
SELECT * FROM Schedules 
SELECT * FROM Feedbacks 
SELECT * FROM Archive
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO Bookings VALUES (11, 21, '2024-02-04', '14:00:00', 5)
			INSERT INTO Schedules VALUES ('2024-02-04', '14:00:00', '14:30:00', 21)
			
			INSERT INTO Feedbacks VALUES ('OK', 3, 21, 16)
			
			INSERT INTO Archive VALUES (5, 36, 110, 27)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
END

--11, 10 - Придумати 2 запити самому
--10. Зробити процедуру яка знаходить всіх барберів які мають певну позицію (PositionId)
CREATE PROCEDURE spShowPositionBarbers @PositionId INT
AS
BEGIN
	SELECT * FROM Barbers WHERE PositionId = @PositionId
END
spShowPositionBarbers @PositionId = 3

--11. Вивести назву позиції барбера яка зустрічається найчастіше
SELECT TOP(1) p.Id AS PositionId, p.[Name] AS PositionName, COUNT(b.PositionId) AS TotalPosition FROM Positions AS p
JOIN Barbers AS b
ON b.PositionId = p.Id 
GROUP BY p.Id, p.[Name] ORDER BY TotalPosition DESC