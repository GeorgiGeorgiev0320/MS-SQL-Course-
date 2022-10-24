CREATE DATABASE Minions

CREATE TABLE Minions
(
    Id int PRIMARY KEY,
	[Name] varchar(10),
	Age int
)

CREATE TABLE Towns
(
    Id int PRIMARY KEY,
	[Name] varchar(10),
)

ALTER table Minions add TownId int

ALTER table Minions add foreign key (TownId) references Towns(Id) 


insert into Towns values (1, 'Sofia'), (2, 'Plovdiv'), (3,'Varna')

insert into Minions values (1, 'Kevin', 22, 1)

insert into Minions values (2, 'Bob', 15, 3), (3, 'Steward', NULL, 2)

delete from Minions

drop table Minions
drop table Towns
