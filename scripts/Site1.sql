CREATE DATABASE LINK Site1ToSystem
CONNECT TO system IDENTIFIED BY admin
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site1ToSite2
CONNECT TO Site2 IDENTIFIED BY Site2
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site1ToSite3
CONNECT TO Site3 IDENTIFIED BY Site3
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site1ToSite4
CONNECT TO Site4 IDENTIFIED BY Site4
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site1ToSite5
CONNECT TO Site5 IDENTIFIED BY Site5
USING 'localhost:1521/XE';

CREATE SYNONYM PersonnelSystem FOR PERSONNEL@Site1ToSystem;
CREATE SYNONYM StaffTechnique FOR STAFFTECHNIQUE@Site1ToSystem;
CREATE SYNONYM CalendrierSystem FOR CALENDRIER@Site1ToSystem;
CREATE SYNONYM ArbitreSystem FOR ARBITRE@Site1ToSystem;
CREATE SYNONYM MatchSystem FOR MATCH@Site1ToSystem;
CREATE SYNONYM BureauSystem FOR BUREAU@Site1ToSystem;
CREATE SYNONYM ClubSportifSystem FOR CLUBSPORTIF@Site1ToSystem;
CREATE SYNONYM PalmaresSystem FOR PALMARES@Site1ToSystem;
CREATE SYNONYM StadeSystem FOR STADE@Site1ToSystem;
CREATE SYNONYM EquipeSystem FOR EQUIPE@Site1ToSystem;
CREATE SYNONYM JoueurSystem FOR JOUEUR@Site1ToSystem;
CREATE SYNONYM DirigeantSystem FOR DIRIGEANT@Site1ToSystem;


CREATE TABLE PersonnelSite1
AS 
SELECT * FROM PersonnelSystem WHERE region=1;

CREATE TABLE StaffTechniqueSite1
AS
SELECT ST.* FROM STAFFTECHNIQUE ST JOIN CLUBSPORTIF C ON ST.CodeClub=C.CodeClub WHERE C.Region=1; 

CREATE TABLE CalendrierSite1
AS
SELECT * FROM CalendrierSystem;

CREATE TABLE ArbitreSite1
AS
SELECT * FROM ArbitreSystem;

CREATE TABLE BureauSite1
AS
SELECT * FROM BureauSystem;

CREATE TABLE ClubSportifSite1
AS
SELECT * FROM ClubSportifSystem WHERE region=1;

CREATE TABLE StadeSite1
AS
SELECT * FROM StadeSystem WHERE region=1;

CREATE TABLE EquipeSite1
AS
SELECT EQ.* FROM EquipeSystem EQ JOIN ClubSportifSystem C ON EQ.CodeClub=C.CodeClub WHERE C.Region=1;


CREATE TABLE JoueurSite1
AS
SELECT J.* FROM JoueurSystem J JOIN EquipeSystem EQ ON J.Code=EQ.CodeJoueur JOIN ClubSportifSystem C ON C.CodeClub=EQ.CodeClub WHERE C.Region=1;


CREATE TABLE DirigeantSite1
AS
SELECT * FROM DirigeantSystem D JOIN ClubSportifSystem C ON D.Code=C.Dirigeant WHERE C.Region=1;

CREATE TABLE MatchSite1
AS
SELECT m.* FROM matchsystem m JOIN stadesystem s ON s.Code=m.CodeStade WHERE S.Region=1;

CREATE TABLE PalmaresSite1
AS
SELECT P.* FROM PalmaresSystem P JOIN ClubSportifSystem C ON P.CodeClub=C.CodeClub WHERE C.Region=1;

