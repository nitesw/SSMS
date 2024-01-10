USE StackOverflow

SELECT TOP(1000000) * FROM Badges

SELECT COUNT(*) FROM Comments
SELECT TOP(10) * FROM Comments 
SELECT TOP(1000) * FROM Comments Order by Id desc 
SELECT TOP(1000) * FROM Comments Order by CreationDate desc

SELECT COUNT(*) FROM Users
SELECT TOP(1000) * FROM Users

SELECT TOP(1000) Title FROM Posts

SELECT COUNT(*) FROM Posts
SELECT TOP(50) * FROM Posts

SELECT * FROM Users WHERE [Location]  Like '%Rivne%' or [Location]  Like '%рівне%' Order By DisplayName

SELECT * FROM Users WHERE DisplayName = 'Oleksandr Kravchuk' AND [Location] Like '%rivne%'
SELECT TOP(1000000) * FROM Posts WHERE OwnerUserId = 186580
SELECT TOP(1000000) Body FROM Posts WHERE OwnerUserId = 186580 Order By CreationDate desc

SELECT TOP(1000000) * FROM Comments WHERE UserId = 186580

SELECT * FROM Posts WHERE Id = 56726362

SELECT TOP(10000000) * FROM Posts

SELECT TOP(1) * FROM Posts
SELECT TOP(1) * FROM Comments
SELECT TOP(1) * FROM Users

SELECT TOP(1000000) p.Id, Body, p.CreationDate, LastActivityDate, OwnerUserId, Score, u.Id, u.CreationDate, DisplayName, [Location], WebsiteUrl FROM Posts as p
JOIN  Users as u
ON  p.OwnerUserId = u.Id WHERE u.[Location] Like '%rivne'


SELECT TOP(1000000) p.Id, Body, p.CreationDate, LastActivityDate, OwnerUserId, Score, u.Id, u.CreationDate, DisplayName, [Location], WebsiteUrl FROM Posts AS p
JOIN Users AS u
ON p.OwnerUserId = u.Id WHERE u.DisplayName LIKE 'Oleksandr Kravchuk'

SELECT TOP(1) p.Id, Body, p.CreationDate, LastActivityDate, OwnerUserId, Score, u.Id, u.CreationDate, DisplayName, [Location], WebsiteUrl FROM Posts AS p
JOIN Users AS u
ON p.OwnerUserId = u.Id WHERE u.DisplayName LIKE 'Oleksandr Kravchuk' ORDER BY p.CreationDate DESC

SELECT TOP(100) c.Id, c.[Text], c.CreationDate, p.Id, Body, p.CreationDate, LastActivityDate, OwnerUserId, p.Score FROM Comments AS c
JOIN Posts AS p
ON c.PostId = p.Id WHERE p.Id = 13593807