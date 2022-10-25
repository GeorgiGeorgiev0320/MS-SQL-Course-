CREATE DATABASE Movies

CREATE TABLE Directors
(
  Id INT PRIMARY KEY,
  DirectorName NVARCHAR(25) NOT NULL,
  Notes NVARCHAR(MAX)
)
INSERT INTO Directors VALUES(1, 'Pipi', 'SSS'), (2, 'Pipi', 'SSS'), (3, 'Pipi', 'SSS'), (4, 'Pipi', 'SSS'), (5, 'Pipi', 'SSS')



CREATE TABLE Genres
(
  Id INT PRIMARY KEY,
  GenreName NVARCHAR(25) NOT NULL,
  Notes NVARCHAR(MAX)
)
INSERT INTO Genres VALUES(1, 'Triller', 'SSS'), (2, 'Comedy', 'SSS'), (3, 'Comedy', 'SSS'), (4, 'Horror', 'SSS'), (5, 'Fantasy', 'SSS')

CREATE TABLE Categories
(
  Id INT PRIMARY KEY,
  CategoryName NVARCHAR(25) NOT NULL,
  Notes NVARCHAR(MAX)
)
INSERT INTO Categories VALUES(1, 'NEshto', 'SSS'), (2, 'Banica', 'SSS'), (3, 'Park', 'SSS'), (4, 'Kids', 'SSS'), (5, 'Adults', 'SSS')

CREATE TABLE Movies
(
  Id INT PRIMARY KEY,
  Title NVARCHAR(25) NOT NULL,
  DirectorId INT NOT NULL,
  CopyrightYear DATETIME,
  Lenght INT,
  GenreId INT NOT NULL,
  CategoryId INT NOT NULL,
  Rating INT, 
  Notes NVARCHAR(MAX)
)
INSERT INTO Movies VALUES(1, 'Triller', 1, '10/22/2022', 2, 1, 1, 4, 'SSSS'),
(2, 'Triller', 2, '10/22/2022', 2, 2, 2, 4, 'SSSS'), 
(3, 'Triller', 3, '10/22/2022', 2, 3, 3, 4, 'SSSS'), (4, 'Triller', 4, '10/22/2022', 2, 4, 4, 4, 'SSSS'), 
(5, 'Triller', 5, '10/22/2022', 2, 5, 5, 4, 'SSSS')