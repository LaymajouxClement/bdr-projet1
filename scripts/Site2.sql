CREATE DATABASE LINK Site2ToSystem
CONNECT TO system IDENTIFIED BY admin
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site2ToSite1
CONNECT TO Site1 IDENTIFIED BY Site1
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site2ToSite3
CONNECT TO Site3 IDENTIFIED BY Site3
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site2ToSite4
CONNECT TO Site4 IDENTIFIED BY Site4
USING 'localhost:1521/XE';

CREATE DATABASE LINK Site2ToSite5
CONNECT TO Site5 IDENTIFIED BY Site5
USING 'localhost:1521/XE';

/*
    Creation des synonymes
*/
CREATE SYNONYM PersonnelSystem FOR PERSONNEL@Site2ToSystem;
CREATE SYNONYM StaffTechniqueSystem FOR STAFFTECHNIQUE@Site2ToSystem;
CREATE SYNONYM DirigeantSystem FOR DIRIGEANT@Site2ToSystem;
CREATE SYNONYM CalendrierSystem FOR CALENDRIER@Site2ToSystem;
CREATE SYNONYM ArbitreSystem FOR ARBITRE@Site2ToSystem;
CREATE SYNONYM MatchSystem FOR MATCH@Site2ToSystem;
CREATE SYNONYM BureauSystem FOR BUREAU@Site2ToSystem;
CREATE SYNONYM ClubSportifSystem FOR CLUBSPORTIF@Site2ToSystem;
CREATE SYNONYM PalmaresSystem FOR PALMARES@Site2ToSystem;
CREATE SYNONYM StadeSystem FOR STADE@Site2ToSystem;
CREATE SYNONYM EquipeSystem FOR EQUIPE@Site2ToSystem;
CREATE SYNONYM JoueurSystem FOR JOUEUR@Site2ToSystem;

/*
    Creation des tables
*/
CREATE TABLE PersonnelSite2
AS
SELECT * FROM PersonnelSystem WHERE region=2;

CREATE TABLE StaffTechniqueSite2
AS
SELECT s.Code, s.Nom, s.CodeClub, s.Fonction
FROM StaffTechniqueSystem s, ClubSportifSystem c 
WHERE s.CodeClub=c.CodeClub AND c.region=2;

CREATE TABLE DirigeantSite2
AS
SELECT d.Code, d.Nom, d.Prenom, d.Profession 
FROM DirigeantSystem d, ClubSportifSystem c 
WHERE d.Code=c.Dirigeant AND c.region=2;

CREATE TABLE ClubSportifSite2
AS
SELECT * FROM ClubSportifSystem WHERE region=2;

CREATE TABLE StadeSite2
AS
SELECT * FROM StadeSystem WHERE region=2;

CREATE TABLE PalmaresSite2
AS
SELECT p.CodeClub, p.Annee, p.Trophee, p.NbreMatchsGagnes, p.NbreMatchsPerdus
FROM PalmaresSystem p, ClubSportifSystem c
WHERE p.CodeClub=c.CodeClub AND c.region=2;

CREATE TABLE JoueurSite2
AS
SELECT j.Code, j.Nom, j.Prenom, j.DateDeNaissance, j.Nationalite, j.Poids, j.Taille, j.Classe
FROM JoueurSystem j, EquipeSystem e, ClubSportifSystem c
WHERE j.Code=e.CodeJoueur AND e.CodeClub=c.CodeCLub AND region=2;

CREATE TABLE EquipeSite2
AS
SELECT e.CodeCLub, e.CodeJoueur, e.DateDebutContrat, e.DateFinContrat, e.NumeroMaillot, e.Poste
FROM EquipeSystem e, ClubSportifSystem c
WHERE e.CodeClub=c.CodeCLub AND region=2;

CREATE TABLE CalendrierSite2
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSystem c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=2 OR c2.region=2);

CREATE TABLE MatchSite2
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=2;


SELECT * FROM matchsite2 m, stadesite2 s WHERE m.codestade=s.code;

