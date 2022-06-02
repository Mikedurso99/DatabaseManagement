CREATE TABLE Users
	(
	 UNum NVARCHAR2(4),
	 UserName NVARCHAR2(20),
	 Mastery INTEGER,
	 Hometown NVARCHAR2(25),
	 CONSTRAINT pk_Users PRIMARY KEY (UNum)
	);



INSERT INTO Users (UNum, UserName, Mastery, Hometown)
	VALUES ('U10', 'Sheldon', 20, 'Tokyo');

INSERT INTO Users (UNum, UserName, Mastery, Hometown)
	VALUES ('U20', 'Missy', 10, 'NewYork');

INSERT INTO Users (UNum, UserName, Mastery, Hometown)
	VALUES ('U30', 'Meemaw', 30, 'NewYork');

INSERT INTO Users (UNum, UserName, Mastery, Hometown)
	VALUES ('U40', 'George', 20, 'Tokyo');

INSERT INTO Users (UNum, UserName, Mastery, Hometown)
	VALUES ('U50', 'Mary', 30, 'Seattle');