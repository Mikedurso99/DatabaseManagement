CREATE TABLE Plays
	(
	 UNum NVARCHAR2(4),
	 GNum NVARCHAR2(4),
	 CNum NVARCHAR2(4),
	 TimesPlayed INTEGER,
	 CONSTRAINT pk_Plays PRIMARY KEY (UNum, GNum, CNum),
	 CONSTRAINT fk_PlaysU FOREIGN KEY (UNum) REFERENCES Users(UNum),
	 CONSTRAINT fk_PlaysG FOREIGN KEY (GNum) REFERENCES Games(GNum),
	 CONSTRAINT fk_PlaysC FOREIGN KEY (CNum) REFERENCES Consoles(CNum)
	);


INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U10', 'G100', 'C1', 22);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U10', 'G100', 'C4', 72);

INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C1', 44);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C2', 25);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C3', 27);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C4', 55);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C5', 69);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C6', 44);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G300', 'C7', 86);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U20', 'G500', 'C2', 14);

INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U30', 'G300', 'C1', 21);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U30', 'G400', 'C2', 52);

INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U40', 'G600', 'C3', 33);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U40', 'G600', 'C7', 38);

INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G100', 'C4', 15);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G200', 'C2', 27);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G200', 'C4', 14);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G300', 'C4', 2);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G400', 'C4', 8);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G500', 'C4', 44);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G500', 'C5', 56);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G500', 'C7', 1);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G600', 'C2', 24);
INSERT INTO Plays (UNum, GNum, CNum, TimesPlayed)
	VALUES ('U50', 'G600', 'C4', 55);




