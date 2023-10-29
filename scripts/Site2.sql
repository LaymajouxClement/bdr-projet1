/*
    Creation des database link
*/
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

CREATE SYNONYM MatchSite1 FOR MatchSite1@Site2ToSite1;
CREATE SYNONYM ArbitreSite1 FOR ArbitreSite1@Site2ToSite1;
CREATE SYNONYM CalendrierSite1 FOR CalendrierSite1@Site2ToSite1;
CREATE SYNONYM ClubSportifSite1 FOR ClubSportifSite1@Site2ToSite1;
CREATE SYNONYM AllClubSportifSite1 FOR AllClubSportifSite1@Site2ToSite1;

CREATE SYNONYM ClubSportifSite3 FOR ClubSportifSite3@Site2ToSite3;
CREATE SYNONYM AllClubSportifSite3 FOR AllClubSportifSite3@Site2ToSite3;


CREATE SYNONYM ClubSportifSite4 FOR ClubSportifSite4@Site2ToSite4;
CREATE SYNONYM AllClubSportifSite4 FOR AllClubSportifSite4@Site2ToSite4;


CREATE SYNONYM ClubSportifSite5 FOR ClubSportifSite5@Site2ToSite5;
CREATE SYNONYM AllClubSportifSite5 FOR AllClubSportifSite5@Site2ToSite5;

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

/*
    Creation des vues materialisees
*/
DROP MATERIALIZED VIEW AllClubSportifSite2;
CREATE MATERIALIZED VIEW AllClubSportifSite2
REFRESH ON DEMAND
AS 
SELECT * FROM ClubSportifSite1
UNION ALL
SELECT * FROM ClubSportifSite2
UNION ALL
SELECT * FROM ClubSportifSite3
UNION ALL
SELECT * FROM ClubSportifSite4
UNION ALL
SELECT * FROM ClubSportifSite5;


DROP MATERIALIZED VIEW CalendrierSite2;
CREATE MATERIALIZED VIEW CalendrierSite2
REFRESH ON DEMAND
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSite1 c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=2 OR c2.region=2);

DROP MATERIALIZED VIEW MatchSite2;
CREATE MATERIALIZED VIEW MatchSite2
REFRESH ON DEMAND
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=2;

DROP MATERIALIZED VIEW ArbitreSite2;
CREATE MATERIALIZED VIEW ArbitreSite2
REFRESH
NEXT TRUNC(NEXT_DAY(SYSDATE, 3) + INTERVAL '15:00' HOUR TO MINUTE)
AS 
SELECT * FROM ArbitreSite1 a
WHERE a.Code IN (SELECT m.CodeArbitre FROM MatchSite2 m, StadeSite2 s WHERE m.CodeStade=s.Code);

/*
    Creation des procedure/jobs
*/

CREATE OR REPLACE PROCEDURE majClubSportifSite2
IS
BEGIN
    DBMS_MVIEW.REFRESH('AllClubSportifSite2', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite1', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite3', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite4', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite5', 'F');
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserClubSportifSite2',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majClubSportifSite2; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/