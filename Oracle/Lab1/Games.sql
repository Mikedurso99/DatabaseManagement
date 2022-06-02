CREATE TABLE Games
	(
	 GNum NVARCHAR2(4),
	 GameName NVARCHAR2(20),
	 ListPrice NUMBER(*,2),
	 VersionNum INTEGER,
	 CityCreated NVARCHAR2(25),
	 CONSTRAINT pk_Games PRIMARY KEY (GNum)	 
	);



INSERT INTO Games (GNum, GameName, ListPrice, VersionNum, CityCreated)
	VALUES ('G100', 'Pong', 9.99, 12, 'Tokyo');

INSERT INTO Games (GNum, GameName, ListPrice, VersionNum, CityCreated)
	VALUES ('G200', 'PacMan', 24.99, 6, 'NewYork');

INSERT INTO Games (GNum, GameName, ListPrice, VersionNum, CityCreated)
	VALUES ('G300', 'Zelda', 19.99, 8, 'Peking');

INSERT INTO Games (GNum, GameName, ListPrice, VersionNum, CityCreated)
	VALUES ('G400', 'Doom', 9.99, 15, 'Tokyo');

INSERT INTO Games (Gnum, GameName, ListPrice, VersionNum, CityCreated)
	VALUES ('G500', 'MarioBros', 19.99, 10, 'NewYork');

INSERT INTO Games (GNum, GameName, ListPrice, VersionNum, CityCreated)
	VALUES ('G600', 'Pitfall', 9.99, 4, 'Tokyo');