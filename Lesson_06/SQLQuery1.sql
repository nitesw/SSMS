USE StackOverflow

SELECT TOP(1) * FROM Comments

SELECT TOP(1) * FROM PostHistory

SELECT TOP(1) * FROM Users

SELECT TOP(1) * FROM Posts

SELECT TOP(1) p.Id, p.FavoriteCount, p.CommentCount, u.Id, u.DisplayName FROM Posts AS p 
JOIN Users AS u
ON p.OwnerUserId = u.Id ORDER BY p.FavoriteCount DESC

SELECT TOP(1) p.Id, p.FavoriteCount, p.Body, p.CommentCount, p.OwnerUserId, u.Id, u.DisplayName FROM Posts AS p 
JOIN Users AS u
ON p.OwnerUserId = u.Id WHERE p.Id = 388242

SELECT TOP(1000000) * FROM Users ORDER BY Reputation DESC
SELECT AVG(Reputation) FROM Users

SELECT TOP(2000000) * FROM Users WHERE YEAR(CreationDate) = 2020

SELECT TOP(1000000) u.Id, u.DisplayName, u.[Location], p.Id, p.OwnerUserId, p.CreationDate FROM Users AS u
JOIN Posts AS p
ON u.Id = p.OwnerUserId WHERE [Location] LIKE '%Ukraine%' AND YEAR(p.CreationDate) = 2020

SELECT TOP(1) u.Id, u.DisplayName, u.[Location], COUNT(p.OwnerUserId) AS TotalPosts FROM Users AS u
JOIN Posts AS p
ON u.Id = p.OwnerUserId WHERE [Location] LIKE '%Ukraine%' AND YEAR(p.CreationDate) = 2020 
GROUP BY u.Id, u.DisplayName, u.[Location] ORDER BY TotalPosts DESC

SELECT TOP(1) u.Id, u.DisplayName, u.[Location], p.Id, p.OwnerUserId, p.CreationDate, p.ViewCount FROM Users AS u
JOIN Posts AS p
ON u.Id = p.OwnerUserId WHERE [Location] LIKE '%Ukraine%' AND YEAR(p.CreationDate) = 2020 ORDER BY p.ViewCount DESC