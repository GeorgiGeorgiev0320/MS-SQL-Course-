CREATE TABLE People
(
  Id INT PRIMARY KEY IDENTITY,
  [Name] NVARCHAR(200) NOT NULL,
  Picture VARCHAR(MAX),
  Height NUMERIC(20, 2),
  [Weight] NUMERIC(20,2),
  Gender VARCHAR(255) CHECK (Gender IN ('f', 'm')) NOT NULL,
  Birthdate DATETIME NOT NULL,
  Biography NVARCHAR(MAX) 
)

INSERT INTO People([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
VALUES
('pesho', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg', 2, 123, 'f', '10/22/2022', 'I am nigar'),
('joro', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg', 35, 167, 'm', '10/22/2023', 'I am nigar'),
('fanio', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg', 2, 123, 'f', '1/2/2029', 'I am nigar'),
('rosen', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg', 2, 123, 'f', '5/22/2022', 'I am nigar'),
('kalata', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg', 2, 123, 'm', '10/26/2022', 'I am nigar')