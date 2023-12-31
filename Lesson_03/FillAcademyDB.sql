INSERT INTO Groups([Name], Rating, [Year])
VALUES
	('A1', 1, 1),
	('B1', 3, 1),
	('C1', 0, 1),
	('D1', 4, 1),
	('A2', 2, 2),
	('B2', 5, 2),
	('A3', 1, 3),
	('B3', 3, 3),
	('C3', 2, 3),
	('D3', 4, 3),
	('A4', 2, 4),
	('B4', 3, 4),
	('C4', 0, 4),
	('A5', 5, 5),
	('B5', 2, 5),
	('C5', 1, 5),
    ('D5', 4, 5),
    ('E1', 3, 1),
    ('E2', 4, 2),
    ('C6', 5, 3),
    ('D6', 2, 3),
    ('E3', 0, 3),
    ('C7', 2, 4),
    ('D7', 3, 4),
    ('E4', 1, 4);

INSERT INTO Departments ([Name], Financing)
VALUES
	('Mathematics', 50000),
	('Physics', 60000),
	('Biology', 55000),
	('Chemistry', 52000),
	('Computer Science', 58000),
	('Literature', 48000),
	('History', 53000),
	('Geography', 54000),
	('Music', 49000),
	('Art', 51000),
	('Economics', 56000),
    ('Engineering', 62000),
    ('Psychology', 57000),
    ('Sociology', 54000),
    ('Statistics', 58000),
    ('Philosophy', 53000),
    ('Health Sciences', 59000),
    ('Political Science', 55000),
    ('Languages', 60000),
    ('Environmental Studies', 61000);

INSERT INTO Faculties ([Name])
VALUES
	('Engineering'),
	('Computer Science'),
	('Arts'),
	('Business'),
	('Medicine'),
	('Social Sciences'),
	('Law'),
	('Education'),
	('Information Technology'),
	('Agriculture'),
	('Nursing'),
    ('Architecture'),
    ('Dentistry'),
    ('Communication'),
    ('Hospitality Management'),
    ('Fine Arts'),
    ('Criminal Justice'),
    ('Public Health'),
    ('Design'),
    ('Economics');

INSERT INTO Teachers (EmploymentDate, [Name], Premium, Salary, Surname)
VALUES
	('1995-03-15', 'John', 500, 40000, 'Smith'),
	('1998-07-21', 'Alice', 600, 45000, 'Johnson'),
	('1993-11-05', 'Michael', 700, 48000, 'Williams'),
	('2000-02-10', 'Emily', 550, 42000, 'Jones'),
	('1997-09-18', 'Daniel', 480, 39000, 'Brown'),
	('1992-06-25', 'Sophia', 520, 41000, 'Miller'),
	('2003-04-30', 'James', 530, 43000, 'Davis'),
	('1994-08-12', 'Olivia', 580, 47000, 'Garcia'),
	('1999-12-08', 'William', 560, 44000, 'Rodriguez'),
	('1991-05-20', 'Charlotte', 540, 42000, 'Martinez'),
	('2006-06-08', 'Emma', 600, 50000, 'Wilson'),
	('1995-10-17', 'Liam', 650, 52000, 'Moore'),
	('1998-03-24', 'Ava', 700, 54000, 'Taylor'),
	('1993-12-02', 'Noah', 550, 48000, 'Anderson'),
	('2005-09-29', 'Isabella', 580, 47000, 'Thomas'),
	('1994-05-14', 'Mason', 600, 50000, 'Jackson'),
	('2003-06-08', 'Sophie', 620, 51000, 'White'),
    ('2004-04-04', 'Ethan', 570, 46000, 'Harris'),
    ('2002-11-11', 'Amelia', 590, 49000, 'Martin'),
	('1997-07-07', 'James', 630, 53000, 'Lee'),
	('1995-03-15', 'John', 500, 40000, 'Smith'),
    ('1998-07-21', 'Alice', 600, 45000, 'Johnson'),
    ('1993-11-05', 'Michael', 700, 48000, 'Williams'),
    ('2000-02-10', 'Emily', 550, 42000, 'Jones'),
    ('1997-09-18', 'Daniel', 480, 39000, 'Brown'),
    ('1992-06-25', 'Sophia', 520, 41000, 'Miller'),
    ('1996-04-30', 'James', 530, 43000, 'Davis'),
    ('1994-08-12', 'Olivia', 580, 47000, 'Garcia'),
    ('1999-12-08', 'William', 560, 44000, 'Rodriguez'),
    ('2008-05-20', 'Charlotte', 540, 42000, 'Martinez'),
    ('1990-06-08', 'Emma', 600, 50000, 'Wilson'),
    ('2016-10-17', 'Liam', 650, 52000, 'Moore'),
    ('1998-03-24', 'Ava', 700, 54000, 'Taylor'),
    ('1993-12-02', 'Noah', 550, 48000, 'Anderson'),
    ('2002-09-29', 'Isabella', 580, 47000, 'Thomas'),
    ('1994-05-14', 'Mason', 600, 50000, 'Jackson'),
    ('2000-08-21', 'Sophia', 620, 51000, 'White'),
    ('1996-04-04', 'Ethan', 570, 46000, 'Harris'),
    ('2006-11-11', 'Amelia', 590, 49000, 'Martin'),
    ('1997-07-07', 'James', 630, 53000, 'Lee'),
    ('2005-02-05', 'Benjamin', 560, 49000, 'Thompson'),
    ('2010-09-09', 'Mia', 590, 51000, 'Gonzalez'),
    ('1998-12-12', 'Harper', 610, 53000, 'Lopez'),
    ('1993-06-06', 'Evelyn', 540, 48000, 'Perez'),
    ('2011-03-03', 'Elijah', 570, 47000, 'Wang'),
    ('1996-11-11', 'Layla', 600, 50000, 'Nguyen'),
    ('1991-08-08', 'Alexander', 630, 54000, 'Kim'),
    ('1995-04-04', 'Grace', 660, 55000, 'Singh'),
    ('2015-10-10', 'Luna', 580, 49000, 'Gupta'),
    ('1993-12-01', 'Carter', 610, 52000, 'Chen'),
    ('1999-09-19', 'Zoey', 590, 48000, 'Ali'),
    ('2005-05-05', 'Aiden', 640, 53000, 'Khan'),
    ('2002-07-07', 'Axel', 600, 47000, 'Wong'),
    ('2004-02-02', 'Aria', 620, 52000, 'Patel'),
    ('2003-09-09', 'Liam', 650, 55000, 'Sharma'),
    ('2006-04-04', 'Nora', 570, 49000, 'Das');

