create database BB_Shop_Exam;
go
use BB_Shop_Exam;
go

create table Clients
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(50) NOT NULL CHECK(Name <> ''),
	Surname nvarchar(50) NOT NULL CHECK(Surname <> ''),
	Email nvarchar(30) NOT NULL UNIQUE,
	Phone nvarchar(50) NOT NULL 
)
go
insert into Clients (Name, Surname, Email , Phone) values ('Jenilee', 'Blackford', 'jbeagrie0@sitemeter.com', '753-103-3079');
insert into Clients (Name, Surname, Email , Phone) values ('Tanhya', 'Walliker', 'tharle1@quantcast.com', '125-664-9516');
insert into Clients (Name, Surname, Email , Phone) values ('Fifi', 'Kopp', 'fmaylour2@ehow.com', '875-846-1979');
insert into Clients (Name, Surname, Email , Phone) values ('Irwin', 'Marshall', 'itakis3@uiuc.edu', '628-894-3098');
insert into Clients (Name, Surname, Email , Phone) values ('Mercedes', 'Frichley', 'mwadlow4@wikispaces.com', '212-779-4473');
insert into Clients (Name, Surname, Email , Phone) values ('Renard', 'Kuhn', 'rkrzyzaniak5@de.vu', '210-921-1257');
insert into Clients (Name, Surname, Email , Phone) values ('Chanda', 'Wolfit', 'chazeman6@engadget.com', '510-238-3132');
insert into Clients (Name, Surname, Email , Phone) values ('Boone', 'Skeats', 'bdocherty7@livejournal.com', '650-112-6148');
insert into Clients (Name, Surname, Email , Phone) values ('Thomasin', 'Jesson', 'tkiehnlt8@linkedin.com', '692-509-8135');
insert into Clients (Name, Surname, Email , Phone) values ('Matty', 'Duggon', 'mdyke9@purevolume.com', '785-493-4891');
insert into Clients (Name, Surname, Email , Phone) values ('Diane', 'Andrusyak', 'draviliousa@istockphoto.com', '380-852-1794');
insert into Clients (Name, Surname, Email , Phone) values ('Lelah', 'Arnaez', 'llidellb@sourceforge.net', '855-906-2406');
insert into Clients (Name, Surname, Email , Phone) values ('Nikkie', 'Hyam', 'nmannionc@un.org', '692-790-9077');
insert into Clients (Name, Surname, Email , Phone) values ('Goldarina', 'Pigot', 'geamd@youku.com', '842-325-8141');
insert into Clients (Name, Surname, Email , Phone) values ('Rafe', 'Youings', 'rcandline@stanford.edu', '413-596-2736');
insert into Clients (Name, Surname, Email , Phone) values ('Linell', 'Eaken', 'lmacnultyf@paypal.com', '947-994-2577');
insert into Clients (Name, Surname, Email , Phone) values ('Grata', 'Fricke', 'gbrimsg@nytimes.com', '118-851-3496');
insert into Clients (Name, Surname, Email , Phone) values ('Shaughn', 'Curgenuer', 'slangdonh@seattletimes.com', '888-592-7784');
insert into Clients (Name, Surname, Email , Phone) values ('Lisha', 'Parfrey', 'ljillissi@samsung.com', '596-887-3423');
insert into Clients (Name, Surname, Email , Phone) values ('Gail', 'Hugues', 'gbartrumj@so-net.ne.jp', '172-941-9434');
insert into Clients (Name, Surname, Email , Phone) values ('Ham', 'Reader', 'hbenchk@businessweek.com', '342-930-8585');
insert into Clients (Name, Surname, Email , Phone) values ('Baron', 'Dudgeon', 'bwhewayl@pbs.org', '597-969-0154');
insert into Clients (Name, Surname, Email , Phone) values ('Ewell', 'Annon', 'ebardm@usatoday.com', '974-114-1597');
insert into Clients (Name, Surname, Email , Phone) values ('Maury', 'Works', 'msitlingtonn@ftc.gov', '749-963-5025');
insert into Clients (Name, Surname, Email , Phone) values ('Ilise', 'Kilmurray', 'itanfieldo@sohu.com', '190-227-1181');
insert into Clients (Name, Surname, Email , Phone) values ('Lek', 'Boram', 'llindstromp@addthis.com', '268-577-7911');
insert into Clients (Name, Surname, Email , Phone) values ('Vidovic', 'Frier', 'vhaineyq@nba.com', '350-230-6282');
insert into Clients (Name, Surname, Email , Phone) values ('Avril', 'Bercher', 'amelbournr@oakley.com', '184-606-5514');
insert into Clients (Name, Surname, Email , Phone) values ('Jess', 'Hartegan', 'jseniors@google.com.br', '617-378-3380');
insert into Clients (Name, Surname, Email , Phone) values ('Avril', 'Bercher', 'amaergbournr@oakley.com', '184-606-5514');
insert into Clients (Name, Surname, Email , Phone) values ('Jess', 'Hartegan', 'jsergors@google.com.br', '617-378-3380');
insert into Clients (Name, Surname, Email , Phone) values ('Lucienne', 'Gerard', 'lsrreggrlast@artisteer.com', '606-888-8176');
go

create table Positions
(
	Id int primary key identity(1,1),
	Name nvarchar(100) NOT NULL check(Name <> '') unique	
)
go
insert into Positions (Name)
values	('Chief-Barber'),
		('Junior-Barber'),
		('Sinior-Barber');
go

create table Barbers
(
	Id int identity(1,1) NOT NULL primary key,
	Name nvarchar(100) NOT NULL check(Name <> ''),
	Surname nvarchar(100) NOT NULL check(Surname <> ''),
	Gender NVarchar(1)NOT NULL,
	Phone nvarchar(10) not null,
	Email nvarchar(max) null,
	BirthDate date Not null check(BirthDate < GETDATE()),
	HireDate date not null default(GETDATE()),
	PositionId int foreign key references Positions(Id)
);
go
insert into Barbers (Name, Surname, Gender, Phone, Email, BirthDate, HireDate, PositionId)
values 
	('Richardo', 'Durrans', 'M', '6402994179', 'rnissle0@guardian.co.uk', '1995/05/10', '2006/06/06', 1),
	('Terrel', 'Gallichan', 'M', '2974671597', 'tvassman1@sun.com', '1993/10/31', '2018/02/12', 2),
	('Aura', 'Maylam', 'F', '2605172534', 'afindley2@github.com', '1998/04/15', '2020/05/07', 3),
	('Udall', 'Sharple', 'M', '3903427010', 'uchatell3@issuu.com', '1994/12/05', '1992/02/12', 2),
	('Gibbie', 'Cawthra', 'M', '3025838816', 'gmacgiolla4@51.la', '1994/03/16', '2008/08/27', 2),
	('Lamar', 'Toms', 'M', '9936106041', 'linworth5@mit.edu', '1997/11/27', '2010/02/27', 3),
	('Zachary', 'Chicken', 'M', '5184431350', 'zhallgarth6@hc360.com', '1990/02/07', '2001/08/26', 2),
	('Dusty', 'Lissandre', 'F', '7943026012', 'dsturley7@stumbleupon.com', '2000/10/14', '2013/03/10', 3),
	('Ilaire', 'Leacock', 'M', '1614853950', 'irigge8@xing.com', '1995/05/10', '2018/01/29', 2),
	('Cristina', 'Sydall', 'F', '7394973403', 'cgammie9@prnewswire.com', '1998/10/18', '1995/04/04', 3),
	('Thekla', 'Cotherill', 'F', '1738043203', 'tbirdseya@samsung.com', '1998/01/30', '2006/05/22', 3),
	('Adolphus', 'Acton', 'M', '4075222537', 'acarrabotb@cdbaby.com', '1997/11/29', '2005/12/26', 2),
	('Margy', 'Conyer', 'F', '5113050283', 'mmcphelimc@mashable.com', '1994/02/27', '2006/05/15', 3),
	('Ellissa', 'Frangleton', 'F', '7057537163', 'eprattd@rakuten.co.jp', '1992/02/11', '2005/12/26', 3),
	('Shelby', 'Ibbs', 'M', '7459962099', 'sfrittere@google.de', '1991/03/07', '2007/11/10', 3),
	('Florrie', 'Damrell', 'F', '2919175601', 'fdominof@wired.com', '1996/01/08', '2014/07/26', 3),
	('Trey', 'Olcot', 'M', '7332761629', 'tchadwyckg@barnesandnoble.com', '1992/12/31', '2010/09/29', 3),
	('Pearla', 'Prattington', 'F', '7631221033', 'plemarieh@jigsy.com', '1991/04/07', '2005/08/21', 2),
	('Dannie', 'McSorley', 'M', '5892560447', 'dargeri@foxnews.com', '1994/04/08', '1997/01/28', 2),
	('Vikki', 'Cholerton', 'F', '9488183877', 'vmcgreayj@printfriendly.com', '1991/05/25', '2017/02/06', 2);
go

create table Schedules
(
	Id int primary key identity(1,1),
	Date date not null  default(getdate()),
	StartTime time not null check (StartTime >= '08:00'),
	EndTime time not null check (EndTime <= '20:00'),
	BarberId int foreign key references Barbers(Id),
	CHECK(EndTime>StartTime)
)
go
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-21', '10:55', '19:44', 12);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-15', '10:46', '14:19', 8);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-11', '12:01', '19:22', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-24', '12:51', '15:51', 7);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-24', '11:24', '17:34', 3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-31', '10:25', '17:49', 17);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-11', '12:52', '15:58', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-03', '11:12', '19:40', 12);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-13', '9:21', '18:49', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-17', '13:33', '18:22', 2);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-05', '10:36', '18:42', 18);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-25', '9:04', '19:21', 11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-08', '9:08', '17:33', 19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-03', '11:19', '19:05', 4);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-26', '13:34', '18:42', 14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-15', '9:25', '14:19', 2);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-25', '11:25', '15:02',  19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-04', '11:05', '19:52',  6);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-14', '8:16', '18:07',  18);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-19', '12:01', '14:32',  3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-04', '12:28', '18:47',  16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-07', '11:28', '15:11',  6);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-16', '13:47', '19:01',  11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-21', '13:23', '15:47',  6);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-17', '13:36', '16:19',  3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-31', '13:17', '19:51',  17);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-23', '9:43', '14:56',  5);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-04', '11:42', '14:29',  5);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-19', '8:53', '17:28',  14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-28', '8:43', '19:46',  13);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-23', '9:31', '17:26',  3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-30', '9:53', '19:43',  19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-20', '13:30', '16:46',  11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-16', '11:18', '14:48',  13);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-23', '8:43', '19:07',  19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-26', '8:14', '17:29',  18);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-27', '9:29', '19:12',  14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-22', '10:12', '17:51', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-24', '8:52', '14:01', 11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-06', '8:52', '18:40', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-13', '9:44', '19:25', 1);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-30', '8:22', '15:40', 19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-26', '11:55', '17:39',  11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-11', '13:14', '15:00',  3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-08', '10:00', '14:06',  7);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-22', '11:32', '17:48',  13);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-12', '11:03', '14:53',  12);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-21', '12:11', '18:31',  12);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-29', '10:04', '17:52',  6);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-30', '11:56', '16:51',  17);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-21', '8:00', '18:44', 3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-04', '8:30', '15:55', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-08', '10:38', '19:42', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-11', '9:53', '16:40', 1);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-20', '12:15', '16:19', 9);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-06', '8:30', '18:33', 4);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-16', '11:25', '18:19', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-18', '12:04', '19:38', 7);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-28', '10:39', '16:42', 17);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-11', '9:58', '18:29', 3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-12', '13:27', '15:54', 5);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-28', '12:04', '17:31', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-14', '9:04', '17:36', 14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-28', '10:58', '18:20', 17);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-19', '12:51', '19:05', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-04', '8:52', '16:25', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-24', '13:25', '19:59', 2);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-19', '10:31', '14:51', 20);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-23', '8:02', '18:45', 4);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-18', '13:15', '16:40', 14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-07', '12:42', '19:27', 10);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-29', '10:50', '18:13', 3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-30', '13:46', '17:31', 3);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-17', '10:01', '19:35', 9);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-24', '10:35', '14:12', 19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-05', '12:31', '14:38', 14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-29', '13:32', '17:44', 13);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-07', '11:36', '15:37', 9);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-28', '9:26', '18:26', 11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-19', '13:51', '18:18', 12);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-11-20', '8:36', '18:17', 6);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-14', '8:28', '16:49', 2);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-14', '11:59', '17:21', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-22', '8:43', '16:15', 14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-24', '12:55', '14:00', 17);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-03', '12:47', '16:31', 10);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-17', '8:44', '19:41', 5);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-19', '8:32', '19:42', 16);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-09', '10:31', '18:37', 11);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-06', '13:19', '14:01', 5);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-02', '9:13', '14:56', 5);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-02', '8:28', '17:40', 10);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-10', '9:19', '19:46', 14);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-29', '13:14', '15:40', 18);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-16', '10:34', '19:30', 19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-20', '13:19', '18:18', 6);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-02-15', '12:53', '19:12', 12);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2020-12-01', '9:00', '18:45', 13);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-19', '9:48', '18:41', 19);
insert into Schedules (Date, StartTime, EndTime, BarberId) values ('2021-01-26', '11:31', '16:44', 13);
go

create table Services
(
	Id int primary key identity(1,1),
	Name nvarchar(100) not null check(Name <> ''),
	Price money not null check(Price > 0),
	Duration time not null check(Duration <> '' and Duration > '00:00:00')
)
go
insert into Services(Name, Price, Duration)
values
	('Haircut ', 70, '00:02:00'),
	('Buzzcut ', 90, '00:27:30'),
	('Wash, Haircut & Style', 230, '00:12:00'),
	('Wash, Creative Cut / Restyle', 260, '00:15:59'),
	('Wash, Zero Fade & Style', 110, '00:7:57'),
	('Wash, Longer Layered Haircut & Style', 285, '00:8:00'),
	('Two Grade Clipper Cut', 150, '00:13:00'),
	('Two Grade Clipper Cut', 75, '00:9:45'),
	('Beard Sculpt', 120, '00:13:33'),
	('One Grade Clipper Cut', 160, '00:33:44')
go

create table Bookings
(
    Id int identity(1,1) not null primary key,
	ClientId int References Clients(Id) not null,
	BarberId int references Barbers(Id) not null,
	Date date not null check(Date >= '2021-01-01'),
	Time time not null check (Time >= '00:00'),
	ServiceId int null references Services(Id),
)
go
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (3, 16, '2021-10-10', '9:20', 2);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (15, 8, '2021-07-03', '16:56', 9);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (19, 2, '2021-06-28', '15:44', 8);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (17, 18, '2021-08-02', '12:29', 3);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (25, 5, '2021-09-10', '12:15', 10);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (14, 4, '2021-06-22', '16:10', 1);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (14, 14, '2021-09-06', '13:03', 8);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (7, 5, '2021-06-26', '12:05', 10);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (6, 8, '2021-08-18', '11:55', 3);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (2, 20, '2021-08-18', '11:39', 7);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (25, 13, '2021-09-29', '20:48', 5);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (22, 6, '2021-09-14', '10:33', 2);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (1, 12, '2021-09-07', '8:50', 8);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (12, 16, '2021-09-24', '15:52', 3);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (29, 1, '2021-09-17', '16:31', 6);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (16, 5, '2021-06-27', '13:02', 1);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (12, 1, '2021-08-01', '14:56', 3);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (9, 4, '2021-09-16', '12:16', 7);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (20, 5, '2021-09-14', '9:28', 3);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (16, 14, '2021-06-24', '13:12', 8);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (10, 4, '2021-07-31', '16:59', 9);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (22, 13, '2021-06-20', '8:27', 7);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (21, 20, '2021-09-18', '10:07', 3);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (25, 7, '2021-08-11', '12:09', 10);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (29, 13, '2021-09-04', '13:38', 7);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (14, 18, '2021-09-02', '17:44', 6);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (22, 4, '2021-09-30', '11:50', 1);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (19, 6, '2021-08-03', '11:26', 6);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (11, 5, '2021-10-03', '10:36', 1);
insert into Bookings (ClientId, BarberId, Date, Time, ServiceId) values (25, 10, '2021-08-03', '16:48', 7);

go



create table Feedbacks
(
	Id int identity(1,1) not null primary key,
	Text nvarchar(MAX) null,
	Mark int not null check(Mark between 1 and 5),
	ClientId int not null references Clients(Id),
	BarberId int not null references Barbers(Id)
);
go
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Good', 2, 23, 8);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 2, 17, 9);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Very Good', 3, 5, 12);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Normal', 5, 14, 14);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Beautiful Barber', 4, 4, 10);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Good', 5, 6, 3);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Thanks', 4, 16, 15);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Beautiful Barber', 5, 21, 11);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 2, 27, 20);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 4, 14, 16);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 4, 2, 6);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Great Work', 1, 19, 11);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Beautiful Barber', 3, 17, 17);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Great Work', 1, 12, 20);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values ('Thanks', 4, 26, 8);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 5, 24, 12);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 3, 18, 11);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 1, 13, 19);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 2, 12, 2);
insert into Feedbacks (Text, Mark, ClientId, BarberId) values (null, 3, 14, 12);
go

create table Archive
(
	Id int identity(1,1) not null primary key,
	ServiceId int not null references Services(Id),
	BookingId int not null references Bookings(Id),
	Price money NOT NULL check(Price >= 0),
	FeedbackId int not null references Feedbacks(Id)
)
go
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (11, 17, 2438, 2);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (28, 15, 373, 7);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (27, 9, 2915, 10);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (17, 19, 2605, 8);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (9, 18, 615, 6);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (28, 13, 2076, 4);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (16, 1, 1139, 2);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (19, 20, 1808, 9);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (9, 9, 2449, 4);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (28, 11, 2227, 10);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (3, 19, 185, 6);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (19, 3, 420, 6);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (25, 7, 2522, 3);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (30, 14, 538, 4);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (10, 16, 2100, 3);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (10, 18, 431, 9);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (2, 9, 356, 8);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (2, 2, 2750, 8);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (2, 4, 2158, 2);
insert into Archive (BookingId, FeedbackId, Price, ServiceId) values (12, 12, 1662, 4);


create table BarbersServices
(
  BarberId INT References Barbers(ID) NOT NULL,
  ServiceId INT References Services(ID) NOT NULL,
  primary key (BarberId, ServiceId)
);
go
INSERT INTO BarbersServices(BarberId, ServiceId)
VALUES (10,6),
       (6,5),
       (8,6),
       (2,8),
       (3,1),
       (7,7),
       (18,1),
       (8,9),
       (7,8),
       (13,5),
       (10,9),
       (9,9),
       (2,2),
       (20,1),
       (17,6),
       (17,2),
       (8,2),
       (7,1),
       (20,7),
       (15,7)
go