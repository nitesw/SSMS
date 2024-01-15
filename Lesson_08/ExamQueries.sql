SELECT * FROM Barbers
SELECT * FROM Bookings
SELECT * FROM Schedules
SELECT * FROM Feedbacks
SELECT * FROM Archive

SELECT * FROM Barbers WHERE Gender = 'M'
SELECT * FROM Barbers WHERE Email LIKE '%@google.%'
SELECT * FROM Barbers WHERE YEAR(HireDate) > 1995
SELECT TOP(1) * FROM Barbers ORDER BY BirthDate DESC
SELECT TOP(1) * FROM Barbers ORDER BY BirthDate ASC
SELECT AVG(YEAR(BirthDate)) AS AvgBirthYear FROM Barbers

CREATE PROCEDURE spShowBarberSchedules @BarberId INT
AS
BEGIN
	SELECT * FROM Schedules WHERE BarberId = @BarberId
END
spShowBarberSchedules @BarberId = 2

BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION

			INSERT INTO Bookings VALUES (5, 1, '2024-01-04', '13:00:00', 3)
			INSERT INTO Schedules VALUES ('2024-01-04', '13:00:00', '14:30:00', 1)

			INSERT INTO Feedbacks VALUES ('Perfect job! An incredible barber!', 5, 5, 1)

			INSERT INTO Archive VALUES (3, 31, 322, 21)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
END