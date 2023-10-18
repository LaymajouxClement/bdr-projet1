CREATE DATABASE LINK Site5ToSystem
CONNECT TO system IDENTIFIED BY admin
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site5ToSite1
CONNECT TO Site1 IDENTIFIED BY Site1
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site5ToSite2
CONNECT TO Site2 IDENTIFIED BY Site2
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site5ToSite3
CONNECT TO Site3 IDENTIFIED BY Site3
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site5ToSite4
CONNECT TO Site4 IDENTIFIED BY Site4
USING 'localhost:1521/XE';

/*
    Creation des synonymes
*/
CREATE SYNONYM PersonnelSystem FOR PERSONNEL@Site5ToSystem;
CREATE SYNONYM StaffTechniqueSystem FOR STAFFTECHNIQUE@Site5ToSystem;
CREATE SYNONYM DirigeantSystem FOR DIRIGEANT@Site5ToSystem;
CREATE SYNONYM CalendrierSystem FOR CALENDRIER@Site5ToSystem;
CREATE SYNONYM ArbitreSystem FOR ARBITRE@Site5ToSystem;
CREATE SYNONYM MatchSystem FOR MATCH@Site5ToSystem;
CREATE SYNONYM BureauSystem FOR BUREAU@Site5ToSystem;
CREATE SYNONYM ClubSportifSystem FOR CLUBSPORTIF@Site5ToSystem;
CREATE SYNONYM PalmaresSystem FOR PALMARES@Site5ToSystem;
CREATE SYNONYM StadeSystem FOR STADE@Site5ToSystem;
CREATE SYNONYM EquipeSystem FOR EQUIPE@Site5ToSystem;
CREATE SYNONYM JoueurSystem FOR JOUEUR@Site5ToSystem;

/*
    Creation des tables
*/
CREATE TABLE PersonnelSite5
AS
SELECT * FROM PersonnelSystem WHERE region=5;

CREATE TABLE StaffTechniqueSite5
AS
SELECT s.Code, s.Nom, s.CodeClub, s.Fonction
FROM StaffTechniqueSystem s, ClubSportifSystem c 
WHERE s.CodeClub=c.CodeClub AND c.region=5;

CREATE TABLE DirigeantSite5
AS
SELECT d.Code, d.Nom, d.Prenom, d.Profession 
FROM DirigeantSystem d, ClubSportifSystem c 
WHERE d.Code=c.Dirigeant AND c.region=5;

CREATE TABLE ClubSportifSite5
AS
SELECT * FROM ClubSportifSystem WHERE region=5;

CREATE TABLE StadeSite5
AS
SELECT * FROM StadeSystem WHERE region=5;

CREATE TABLE PalmaresSite5
AS
SELECT p.CodeClub, p.Annee, p.Trophee, p.NbreMatchsGagnes, p.NbreMatchsPerdus
FROM PalmaresSystem p, ClubSportifSystem c
WHERE p.CodeClub=c.CodeClub AND c.region=5;

CREATE TABLE JoueurSite5
AS
SELECT j.Code, j.Nom, j.Prenom, j.DateDeNaissance, j.Nationalite, j.Poids, j.Taille, j.Classe
FROM JoueurSystem j, EquipeSystem e, ClubSportifSystem c
WHERE j.Code=e.CodeJoueur AND e.CodeClub=c.CodeCLub AND region=5;

CREATE TABLE EquipeSite5
AS
SELECT e.CodeCLub, e.CodeJoueur, e.DateDebutContrat, e.DateFinContrat, e.NumeroMaillot, e.Poste
FROM EquipeSystem e, ClubSportifSystem c
WHERE e.CodeClub=c.CodeCLub AND region=5;

CREATE TABLE CalendrierSite5
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSystem c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=5 OR c2.region=5);

CREATE TABLE MatchSite5
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=5;


SELECT * FROM matchSite5 m, stadeSite5 s WHERE m.codestade=s.code;

