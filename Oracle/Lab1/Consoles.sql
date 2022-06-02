CREATE TABLE Consoles
	(
	 CNum NVARCHAR2(4),
	 ConsoleName NVARCHAR2(20),
	 Price NUMBER(*,2),
	 ManuLoc NVARCHAR2(25),
	 CONSTRAINT pk_Consoles PRIMARY KEY (CNum)
	);



INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C1', 'Atari', 99.99,'NewYork');

INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C2', 'Intellivision', 129.99,'Peking');

INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C3', 'Nintendo', 119.99,'Seattle');

INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C4', 'PlayStation', 89.99,'Seattle');

INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C5', 'Coleco', 189.99,'Tokyo');

INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C6', 'GameBoy', 129.99,'Poughkeepsie');

INSERT INTO Consoles (CNum, ConsoleName, Price, ManuLoc)
	VALUES ('C7', 'SegaGenesis', 129.99,'Tokyo');