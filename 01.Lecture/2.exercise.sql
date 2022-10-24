CREATE TABLE Users
(
   Id BIGINT PRIMARY KEY IDENTITY,
   Username VARCHAR(30) NOT NULL,
   [Password] VARCHAR(26) NOT NULL,
   ProfilePicture VARCHAR(MAX),
   LastLoginTime DATETIME,
   IsDeleted BIT
)

INSERT INTO Users (Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
VALUES
('pesho', 'sadadad', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg','1/2/2022', 0),
('trg', 'sadadgrrgad', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg','1/12/2002', 0),
('wweew', 'gr', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg','1/2/2072', 1),
('iii', 'ere', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg','1/2/2082', 0),
('gege', 'ppp', 'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg','1/2/2042', 1)

DELETE FROM Users

ALTER TABLE Users DROP CONSTRAINT PK__Users__3214EC07574DC3C3

ALTER TABLE Users ADD CONSTRAINT PK_IdUsername PRIMARY KEY(Id, Username)

ALTER TABLE Users 
ADD CONSTRAINT CH_PasswordIsAtLeast5Symbols CHECK (LEN([Password]) > 5)

ALTER TABLE Users 
ADD CONSTRAINT DF_LOgintTime DEFAULT GETDATE() FOR LastLoginTime
ALTER TABLE Users DROP CONSTRAINT PK_IdUsername
ALTER TABLE Users ADD CONSTRAINT PK_Id PRIMARY KEY(Id)

ALTER TABLE Users 
ADD CONSTRAINT CH_Username5Chars CHECK (LEN(Username) > 3)


