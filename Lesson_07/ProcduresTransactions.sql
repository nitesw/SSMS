USE BB_Shop

SELECT TOP(1) * FROM Barbers
SELECT TOP(1) * FROM Clients
SELECT TOP(1) * FROM Feedbacks
SELECT TOP(1) * FROM Services

SELECT Barbers.[Name], Gender, Email, PositionId FROM Barbers
JOIN Positions
ON Barbers.PositionId = Positions.Id
 
CREATE PROCEDURE spGetBarber
AS
BEGIN
	SELECT [Name], Gender FROM Barbers
END
spGetBarber


--Tasks
CREATE PROCEDURE spInsertFeedback @Text NVARCHAR(MAX), @Rating INT, @ClientId INT, @BarberId INT
AS
BEGIN
	INSERT INTO Feedbacks VALUES (@Text, @Rating, @ClientId, @BarberId)
END
spInsertFeedback @Text = NULL, @Rating = 3, @ClientId = 2, @BarberId = 9

CREATE PROCEDURE spUpdateFeedback @Id INT, @Text NVARCHAR(MAX), @Rating INT, @ClientId INT, @BarberId INT
AS
BEGIN
	UPDATE Feedbacks SET
		[Text] = @Text,
		Rating = @Rating,
		ClientId = @ClientId,
		BarberId = @BarberId
	WHERE 
		Id = @Id
END
spUpdateFeedback @Id = 6, @Text = 'Perfect job!', @Rating = 5, @ClientId = 4, @BarberId = 8

CREATE PROCEDURE spDeleteFeedback @Id INT
AS
BEGIN
	DELETE FROM Feedbacks WHERE Id = @Id
END
spDeleteFeedback @Id = 11

SELECT * FROM Barbers
SELECT * FROM Clients
SELECT * FROM Feedbacks


INSERT INTO Barbers VALUES ('John', 'Bosh', 'M', '123-987-000', 'john@email.com', '2000-01-02', '2022-06-22', 3)
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION

		UPDATE Feedbacks SET Rating = 3
		WHERE ClientId = 7 AND BarberId = 7

		UPDATE Clients SET Surname = 'Curry'
		WHERE Id = 2

		UPDATE Barbers SET PositionId = 3
		WHERE Surname = 'Hamilton' AND [Name] = 'Luke'

		--DEADLOCK ERROR
		--UPDATE Barbers SET Id = 12
		--WHERE Id = 11
		--UPDATE Barbers SET [Name] = 'Seth'
		--WHERE Id = 11

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
END