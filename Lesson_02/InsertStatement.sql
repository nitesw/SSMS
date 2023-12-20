USE Hospital
SELECT * FROM Doctors

INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES ('', 'Bill', '1010102040', 300000, 'Hops')
INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (1, 'Bob', '1111113080', 350000, 'Lit')
INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (3, 'Shawn', '0000003080', 240000, 'Shark')

DELETE Doctors WHERE ID = 0
DELETE Doctors WHERE Phone = '1010102040'

UPDATE Doctors SET Salary = 425000 WHERE Phone = '1111113080'
UPDATE Doctors SET Phone = '1000003080' WHERE ID = 4

--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (4, 'Judy', '1000003080', 140000, 'Joe')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (5, 'Alex', '1100003080', 110000, 'Lou')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (6, 'Max', '1110003080', 540000, 'Li')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (7, 'Kobe', '1111003080', 2400000, 'Bryant')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (8, 'Joe', '1111103080', 1000000, 'Bezos')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (9, 'Kie', '1111113080', 125000, 'Bou')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (10, 'Shue', '0000004080', 190000, 'Wou')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (11, 'Camila', '1000004080', 120000, 'Kuk')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (12, 'Lofe', '1100004080', 420000, 'Kute')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (13, 'Julia', '1110004080', 170000, 'Moe')
--INSERT INTO Doctors (ID, [Name], Phone, Salary, Surname) VALUES (14, 'Robert', '1111004080', 540000, 'Bush')

SELECT * FROM Doctors WHERE Surname = 'Kuk'
UPDATE Doctors SET Salary = 100000 WHERE Surname = 'Kuk'

SELECT * FROM Doctors WHERE Phone = '1000003080'
UPDATE Doctors SET Salary = 110000 WHERE Phone = '1000003080'

SELECT * FROM Doctors WHERE Salary < 110000 AND Surname = 'Kuk'
UPDATE Doctors SET Salary = 90000 WHERE Salary < 110000 AND Surname = 'Kuk'

SELECT * FROM Doctors WHERE Salary < 120000 AND Surname = 'Kuk' AND Phone = '1000003080'

SELECT * FROM Doctors WHERE Salary < 120000