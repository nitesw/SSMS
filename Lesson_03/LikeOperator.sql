SELECT * FROM Users

SELECT TOP(10) * FROM Users
SELECT TOP(1) * FROM Users

SELECT TOP(1) * FROM Users ORDER BY UsersID DESC

SELECT TOP(100) * FROM Users
SELECT TOP(1) FirstName, Surname, Country, City, Salary FROM Users ORDER BY Salary
SELECT TOP(1) FirstName, Surname, Country, City, Salary FROM Users ORDER BY Salary DESC

SELECT * FROM Users WHERE City = 'Chiclayo'
UPDATE Users SET Salary = 99988 WHERE Email = 'vivamus@icloud.ca'

SELECT FirstName, Surname, City, Country, Salary FROM Users WHERE Country = 'France' ORDER BY Salary
SELECT TOP(1) FirstName, Surname, City, Country, Salary FROM Users WHERE Country = 'France' ORDER BY Salary DESC

SELECT MAX(Salary) AS MaxSalary FROM Users WHERE Country = 'France'
SELECT MIN(Salary) AS MinSalary FROM Users WHERE Country = 'France'
SELECT AVG(Salary) AS AvgSalary FROM Users WHERE Country = 'France'

--ends with a (% means anything (depends where it placed))
SELECT * FROM Users WHERE City LIKE '%a'
SELECT * FROM Users WHERE City LIKE '%ne'
SELECT * FROM Users WHERE Email LIKE '%@icloud.com'

--begins with k (% means anything (depends where it placed))
SELECT * FROM Users WHERE City LIKE 'k%'

--need to be 50 anywhere
SELECT * FROM Users WHERE Salary LIKE '%50%'

--need to be L anywhere in Surname but not in FirstName
SELECT * FROM Users WHERE Surname LIKE '%l%' AND FirstName NOT LIKE '%l%'

SELECT * FROM Users WHERE Surname LIKE '%m%' AND FirstName LIKE '%l%'
SELECT * FROM Users WHERE Surname LIKE 'm%' AND FirstName LIKE '%l%'
SELECT * FROM Users WHERE Surname LIKE 'm%' OR FirstName LIKE '%l%'

--Tasks
SELECT * FROM Users WHERE Email LIKE '%@aol.%' AND Country = 'Italy'
SELECT * FROM Users WHERE Country LIKE 'a%' AND Salary > 65000 AND FirstName NOT LIKE 'Genevieve' ORDER BY Salary DESC
SELECT * FROM Users WHERE Email LIKE '%@protonmail.%' OR Email LIKE '%@hotmail.%' OR Email LIKE '%@icloud.%' ORDER BY Country


SELECT * FROM Users WHERE FirstName LIKE '[a-d]%'
SELECT * FROM Users WHERE Salary BETWEEN 10000 AND 20000
SELECT * FROM Users WHERE Country = 'Israel' AND Salary BETWEEN 20000 AND 30000