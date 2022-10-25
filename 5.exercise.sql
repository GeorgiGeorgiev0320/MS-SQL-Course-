CREATE DATABASE Hotel

CREATE TABLE Employees
(
   Id INT PRIMARY KEY,
   FirstName NVARCHAR(20) NOT NULL,
   LastName NVARCHAR(20) NOT NULL,
   Title NVARCHAR(20) NOT NULL,
   Notes NVARCHAR(MAX)
)
INSERT INTO Employees VALUES(1, 'Pesho', 'Peshev', 'Striptis', 'Neshto si'), (2, 'Pesho', 'Peshev', 'Striptis', 'Neshto si'),(3, 'Pesho', 'Peshev', 'Striptis', 'Neshto si')


CREATE TABLE Customers
(
   AccountNumber INT PRIMARY KEY,
   FirstName NVARCHAR(20) NOT NULL,
   LastName NVARCHAR(20) NOT NULL,
   PhoneNumber INT NOT NULL,
   EmergencyName NVARCHAR(20) NOT NULL,
   EmergencyNumber INT NOT NULL,
   Notes NVARCHAR(MAX)
)

INSERT INTO Customers VALUES(1, 'PESH', 'PESHEV', 0334343, 'NADQ', 032302,'NESHTO SI'), (2, 'PESH', 'PESHEV', 0334343, 'NADQ', 032302,'NESHTO SI'),(3, 'PESH', 'PESHEV', 0334343, 'NADQ', 032302,'NESHTO SI')


CREATE TABLE RoomStatus
(
   RoomStatus NVARCHAR(20) NOT NULL,
   Notes NVARCHAR(MAX)
)
INSERT INTO RoomStatus VALUES('Taken', 'nesho'), ('NOT TAKEN', 'Note'), ('zdf', NULL)


CREATE TABLE RoomTypes
(
   RoomType NVARCHAR(20) NOT NULL,
   Notes NVARCHAR(MAX)
)
INSERT INTO RoomTypes VALUES('Taken', 'nesho'), ('NOT TAKEN', 'Note'), ('aLREADY IN USE', 'nesho')


CREATE TABLE BedTypes
(
   BedType NVARCHAR(10) NOT NULL,
   Notes NVARCHAR(MAX)
)
INSERT INTO BedTypes VALUES('LUXURY', 'NESHTO SI'), ('SOFT', 'NESHTO SI'),('GOOD', 'NESHTO SI')


CREATE TABLE Rooms
(
   RoomNumber INT PRIMARY KEY,
   RoomType NVARCHAR(20) NOT NULL,
   BedType INT NOT NULL,
   Rate INT,
   RoomStatus NVARCHAR(20) NOT NULL,
   Notes NVARCHAR(MAX)
)
INSERT INTO Rooms VALUES(1, 'MNOGO ZNAM', 1, 4,'NZ','NESHTOSI'), (3, 'MNOGO ZNAM', 1, 4,'NZ','NESHTOSI'), (2, 'MNOGO ZNAM', 1, 4,'NZ','NESHTOSI')


CREATE TABLE Payments
(
   Id INT PRIMARY KEY,
   EmployeeId INT NOT NULL,
   PaymentDate DATETIME NOT NULL,
   AccountNumber INT NOT NULL,
   FirstDateOccupied DATETIME NOT NULL,
   LastDateOccupied DATETIME NOT NULL,
   TotalDays INT NOT NULL,
   AmountCharged INT NOT NULL,
   TaxRate INT NOT NULL,
   TaxAmount INT NOT NULL,
   PaymentTotal INT NOT NULL, 
   Notes NVARCHAR(MAX)
)
INSERT INTO Payments VALUES(1, 1, '10/10/2022', 1, '10/10/2022', '10/17/2022', 7, 1000, 30, 300, 1300, 'NESHTOO'),
(2, 1, '10/10/2022', 1, '10/10/2022', '10/17/2022', 7, 1000, 30, 300, 1300, 'NESHTOO'),
(3, 1, '10/10/2022', 1, '10/10/2022', '10/17/2022', 7, 1000, 30, 300, 1300, 'NESHTOO')

CREATE TABLE Occupancies
(
  Id INT PRIMARY KEY,
   EmployeeId INT NOT NULL,
   DateOccupied DATETIME NOT NULL,
   AccountNumber INT NOT NULL,
   RoomNumber INT NOT NULL,
   RateApplied INT NOT NULL,
   PhoneCharge BIT NOT NULL, 
   Notes NVARCHAR(MAX)
)
INSERT INTO Occupancies VALUES(1, 1, '10/10/2022', 0888, 1, 2, 1, 'NESHTOO'),
(2, 1, '10/10/2022', 0888, 1, 2, 1, 'NESHTOO'),
(3, 1, '10/10/2022', 0888, 1, 2, 1, 'NESHTOO')
