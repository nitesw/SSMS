USE Users
SELECT * FROM Users WHERE Country = 'Ukraine'

SELECT * FROM Users WHERE Country NOT IN('Ukraine', 'Morocco', 'India', 'Algeria')

SELECT * FROM Users WHERE Country IN('Ukraine', 'Morocco', 'India', 'Algeria') 
SELECT * FROM Users WHERE Country IN('Ukraine', 'Morocco', 'India', 'Algeria') AND Salary < 20000

SELECT * FROM Users WHERE Country IN('Ukraine', 'Morocco', 'India', 'Algeria') AND Salary BETWEEN 20000 AND 35000
SELECT * FROM Users WHERE Country IN('Ukraine', 'Morocco', 'India', 'Algeria') AND Salary > 20000 OR Salary < 35000
SELECT * FROM Users WHERE Country IN('Ukraine', 'Morocco', 'India', 'Algeria') AND Salary > 20000 AND Salary < 35000

SELECT * FROM Users WHERE FirstName = 'Kelly'
SELECT * FROM Users WHERE Country = 'Czech Republic'
SELECT * FROM Users WHERE Country IN('Czech Republic') OR FirstName = 'Kelly'
SELECT * FROM Users ORDER BY Salary DESC
SELECT * FROM Users WHERE Country = 'France' ORDER BY Salary DESC

SELECT AVG(Salary) FROM Users WHERE Country = 'France'

SELECT MAX(Salary) FROM Users WHERE Country = 'France' 
SELECT MIN(Salary) FROM Users WHERE Country = 'France' 

SELECT TOP(1) * FROM Users WHERE Country = 'France' ORDER BY Salary DESC
SELECT TOP(1) * FROM Users WHERE Country = 'France' ORDER BY Salary ASC