CREATE DATABASE LINK Site3ToSystem
CONNECT TO system IDENTIFIED BY admin
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site3ToSite1
CONNECT TO Site1 IDENTIFIED BY Site1
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site3ToSite2
CONNECT TO Site2 IDENTIFIED BY Site2
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site3ToSite4
CONNECT TO Site4 IDENTIFIED BY Site4
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site3ToSite5
CONNECT TO Site5 IDENTIFIED BY Site5
USING 'localhost:1521/XE';

/*
    Creation des synonymes
*/
CREATE SYNONYM PersonnelSystem FOR PERSONNEL@Site3ToSystem;
CREATE SYNONYM StaffTechniqueSystem FOR STAFFTECHNIQUE@Site3ToSystem;
CREATE SYNONYM DirigeantSystem FOR DIRIGEANT@Site3ToSystem;
CREATE SYNONYM CalendrierSystem FOR CALENDRIER@Site3ToSystem;
CREATE SYNONYM ArbitreSystem FOR ARBITRE@Site3ToSystem;
CREATE SYNONYM MatchSystem FOR MATCH@Site3ToSystem;
CREATE SYNONYM BureauSystem FOR BUREAU@Site3ToSystem;
CREATE SYNONYM ClubSportifSystem FOR CLUBSPORTIF@Site3ToSystem;
CREATE SYNONYM PalmaresSystem FOR PALMARES@Site3ToSystem;
CREATE SYNONYM StadeSystem FOR STADE@Site3ToSystem;
CREATE SYNONYM EquipeSystem FOR EQUIPE@Site3ToSystem;
CREATE SYNONYM JoueurSystem FOR JOUEUR@Site3ToSystem;

/*
    Creation des tables
*/
CREATE TABLE PersonnelSite3
AS
SELECT * FROM PersonnelSystem WHERE region=3;

CREATE TABLE StaffTechniqueSite3
AS
SELECT s.Code, s.Nom, s.CodeClub, s.Fonction
FROM StaffTechniqueSystem s, ClubSportifSystem c 
WHERE s.CodeClub=c.CodeClub AND c.region=3;

CREATE TABLE DirigeantSite3
AS
SELECT d.Code, d.Nom, d.Prenom, d.Profession 
FROM DirigeantSystem d, ClubSportifSystem c 
WHERE d.Code=c.Dirigeant AND c.region=3;

CREATE TABLE ClubSportifSite3
AS
SELECT * FROM ClubSportifSystem WHERE region=3;

CREATE TABLE StadeSite3
AS
SELECT * FROM StadeSystem WHERE region=3;

CREATE TABLE PalmaresSite3
AS
SELECT p.CodeClub, p.Annee, p.Trophee, p.NbreMatchsGagnes, p.NbreMatchsPerdus
FROM PalmaresSystem p, ClubSportifSystem c
WHERE p.CodeClub=c.CodeClub AND c.region=3;

CREATE TABLE JoueurSite3
AS
SELECT j.Code, j.Nom, j.Prenom, j.DateDeNaissance, j.Nationalite, j.Poids, j.Taille, j.Classe
FROM JoueurSystem j, EquipeSystem e, ClubSportifSystem c
WHERE j.Code=e.CodeJoueur AND e.CodeClub=c.CodeCLub AND region=3;

CREATE TABLE EquipeSite3
AS
SELECT e.CodeCLub, e.CodeJoueur, e.DateDebutContrat, e.DateFinContrat, e.NumeroMaillot, e.Poste
FROM EquipeSystem e, ClubSportifSystem c
WHERE e.CodeClub=c.CodeCLub AND region=3;

CREATE TABLE CalendrierSite3
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSystem c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=3 OR c2.region=3);

CREATE TABLE MatchSite3
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=3;


SELECT * FROM matchSite3 m, stadeSite3 s WHERE m.codestade=s.code;

