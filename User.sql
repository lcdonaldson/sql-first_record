Instructions:

UserID is a Foreign Key to the User table and needs to be represented as so.  Insert 5 users with 2 addresses each.  Below you will find all the queries.

Queries

·   All users with all columns from the User table ordered by last name and CreatedDateTime adjusted to the local datetime.

·   UserId, First Name, Last Name, Email Address, Address Id, Street Address 1, Street Address 2, Postal Code, City, State from both tables joined together using an INNER JOIN

// SQL:

CREATE DATABASE my_db;

CREATE TABLE [User]
(
UserId bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
FirstName nvarchar(255) NOT NULL,
LastName nvarchar(255) NOT NULL,
EmailAddress nvarchar(255) NOT NULL,
CreatedDateTime datetimeoffset NOT NULL
);

CREATE TABLE Address
(
AddressId bigint NOT NULL IDENTITY(1,1) PRIMARY KEY,
UserID bigint NOT NULL FOREIGN KEY REFERENCES [User](UserId),
StreetAddress1 nvarchar(255) NOT NULL,
StreetAddress2 nvarchar(255),
PostalCode nvarchar(255) NOT NULL,
City nvarchar(255) NOT NULL,
State nvarchar(255) NOT NULL,
CreatedDateTime datetimeoffset NOT NULL 
);

// User initial

INSERT INTO [User](UserId, FirstName, LastName, EmailAddress, CreatedDateTime)
VALUES (1, 'Levi', 'Donaldson', 'levid@salestaxdatalink.com', '2016-09-06);

UPDATE Address
SET StreetAddress2=' '
WHERE UserID=1;

// User

INSERT INTO [User] (FirstName, LastName, EmailAddress, CreatedDateTime)
VALUES ('zack', 'davis', 'zackd@salestaxdatalink.com', '2016-03-01');

INSERT INTO [User] (FirstName, LastName, EmailAddress, CreatedDateTime)
VALUES ('leonard', 'hoffsteader', 'leo@caltek.com', '2016-09-06');

INSERT INTO [User] (FirstName, LastName, EmailAddress, CreatedDateTime)
VALUES ('sheldon', 'cooper', 'shelly@caltek.com', '2016-09-06');

INSERT INTO [User] (FirstName, LastName, EmailAddress, CreatedDateTime)
VALUES ('raj', 'kuthropali', 'raj@caltek.com', '2016-09-06');

// ADDRESS initial

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (1, '105 SE Executive Dr', ' ', '72712', 'Bentonville', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (2, '105 SE Executive Dr', ' ', '72712', 'Bentonville', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (3, '105 SE Executive Dr', ' ', '72712', 'Bentonville', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (4, '105 SE Executive Dr', ' ', '72712', 'Bentonville', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (5, '105 SE Executive Dr', ' ', '72712', 'Bentonville', 'AR', '2016-09-06');

// ADDRESS 

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (1, '101 Easy St', ' ', '72756', 'Rogers', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (2, '102 Easy St', ' ', '72756', 'Rogers', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (3, '103 Easy St', ' ', '72756', 'Rogers', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (4, '104 Easy St', ' ', '72756', 'Rogers', 'AR', '2016-09-06');

INSERT INTO Address (UserID, StreetAddress1, StreetAddress2, PostalCode, City, State, CreatedDateTime)
VALUES (5, '22 Elm St', ' ', '72770', 'Farmington', 'AR', '2016-09-06');

// 1st query

SELECT * FROM [User]
ORDER BY LastName, CreatedDateTime, CONVERT(datetimeoffset, GETDATE());

// 2nd query

SELECT Address.AddressId, Address.UserID, Address.StreetAddress1, Address.StreetAddress2, Address.PostalCode, Address.City, Address.State, Address.CreatedDateTime
FROM Address
INNER JOIN [User]
ON Address.UserID=[User].UserId;
