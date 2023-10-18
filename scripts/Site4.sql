CREATE DATABASE LINK Site4ToSystem
CONNECT TO system IDENTIFIED BY admin
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site4ToSite1
CONNECT TO Site1 IDENTIFIED BY Site1
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site4ToSite2
CONNECT TO Site2 IDENTIFIED BY Site2
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site4ToSite3
CONNECT TO Site3 IDENTIFIED BY Site3
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site4ToSite5
CONNECT TO Site5 IDENTIFIED BY Site5
USING 'localhost:1521/XE';

/*
    Creation des synonymes
*/
CREATE SYNONYM PersonnelSystem FOR PERSONNEL@Site4ToSystem;
CREATE SYNONYM StaffTechniqueSystem FOR STAFFTECHNIQUE@Site4ToSystem;
CREATE SYNONYM DirigeantSystem FOR DIRIGEANT@Site4ToSystem;
CREATE SYNONYM CalendrierSystem FOR CALENDRIER@Site4ToSystem;
CREATE SYNONYM ArbitreSystem FOR ARBITRE@Site4ToSystem;
CREATE SYNONYM MatchSystem FOR MATCH@Site4ToSystem;
CREATE SYNONYM BureauSystem FOR BUREAU@Site4ToSystem;
CREATE SYNONYM ClubSportifSystem FOR CLUBSPORTIF@Site4ToSystem;
CREATE SYNONYM PalmaresSystem FOR PALMARES@Site4ToSystem;
CREATE SYNONYM StadeSystem FOR STADE@Site4ToSystem;
CREATE SYNONYM EquipeSystem FOR EQUIPE@Site4ToSystem;
CREATE SYNONYM JoueurSystem FOR JOUEUR@Site4ToSystem;

/*
    Creation des tables
*/
CREATE TABLE PersonnelSite4
AS
SELECT * FROM PersonnelSystem WHERE region=4;

CREATE TABLE StaffTechniqueSite4
AS
SELECT s.Code, s.Nom, s.CodeClub, s.Fonction
FROM StaffTechniqueSystem s, ClubSportifSystem c 
WHERE s.CodeClub=c.CodeClub AND c.region=4;

CREATE TABLE DirigeantSite4
AS
SELECT d.Code, d.Nom, d.Prenom, d.Profession 
FROM DirigeantSystem d, ClubSportifSystem c 
WHERE d.Code=c.Dirigeant AND c.region=4;

CREATE TABLE ClubSportifSite4
AS
SELECT * FROM ClubSportifSystem WHERE region=4;

CREATE TABLE StadeSite4
AS
SELECT * FROM StadeSystem WHERE region=4;

CREATE TABLE PalmaresSite4
AS
SELECT p.CodeClub, p.Annee, p.Trophee, p.NbreMatchsGagnes, p.NbreMatchsPerdus
FROM PalmaresSystem p, ClubSportifSystem c
WHERE p.CodeClub=c.CodeClub AND c.region=4;

CREATE TABLE JoueurSite4
AS
SELECT j.Code, j.Nom, j.Prenom, j.DateDeNaissance, j.Nationalite, j.Poids, j.Taille, j.Classe
FROM JoueurSystem j, EquipeSystem e, ClubSportifSystem c
WHERE j.Code=e.CodeJoueur AND e.CodeClub=c.CodeCLub AND region=4;

CREATE TABLE EquipeSite4
AS
SELECT e.CodeCLub, e.CodeJoueur, e.DateDebutContrat, e.DateFinContrat, e.NumeroMaillot, e.Poste
FROM EquipeSystem e, ClubSportifSystem c
WHERE e.CodeClub=c.CodeCLub AND region=4;

CREATE TABLE CalendrierSite4
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSystem c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=4 OR c2.region=4);

CREATE TABLE MatchSite4
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=4;


SELECT * FROM matchSite4 m, stadeSite4 s WHERE m.codestade=s.code;

