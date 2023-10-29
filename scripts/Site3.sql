/*
    Creation des database link
*/
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

CREATE SYNONYM MatchSite1 FOR MatchSite1@Site3ToSite1;
CREATE SYNONYM ArbitreSite1 FOR ArbitreSite1@Site3ToSite1;
CREATE SYNONYM CalendrierSite1 FOR CalendrierSite1@Site3ToSite1;
CREATE SYNONYM ClubSportifSite1 FOR ClubSportifSite1@Site3ToSite1;
CREATE SYNONYM AllClubSportifSite1 FOR AllClubSportifSite1@Site3ToSite1;

CREATE SYNONYM ClubSportifSite2 FOR ClubSportifSite2@Site3ToSite2;
CREATE SYNONYM AllClubSportifSite2 FOR AllClubSportifSite2@Site3ToSite2;


CREATE SYNONYM ClubSportifSite4 FOR ClubSportifSite4@Site3ToSite4;
CREATE SYNONYM AllClubSportifSite4 FOR AllClubSportifSite4@Site3ToSite4;


CREATE SYNONYM ClubSportifSite5 FOR ClubSportifSite5@Site3ToSite5;
CREATE SYNONYM AllClubSportifSite5 FOR AllClubSportifSite5@Site3ToSite5;


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


/*
    Creation des vues materialisees
*/
DROP MATERIALIZED VIEW AllClubSportifSite3;
CREATE MATERIALIZED VIEW AllClubSportifSite3
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


DROP MATERIALIZED VIEW CalendrierSite3;
CREATE MATERIALIZED VIEW CalendrierSite3
REFRESH ON DEMAND
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSite1 c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=3 OR c2.region=3);

DROP MATERIALIZED VIEW MatchSite3;
CREATE MATERIALIZED VIEW MatchSite3
REFRESH ON DEMAND
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=3;

DROP MATERIALIZED VIEW ArbitreSite3;
CREATE MATERIALIZED VIEW ArbitreSite3
REFRESH
NEXT TRUNC(NEXT_DAY(SYSDATE, 3) + INTERVAL '15:00' HOUR TO MINUTE)
AS 
SELECT * FROM ArbitreSite1 a
WHERE a.Code IN (SELECT m.CodeArbitre FROM MatchSite3 m, StadeSite3 s WHERE m.CodeStade=s.Code);

/*
    Creation des procedure/jobs
*/
CREATE OR REPLACE PROCEDURE majClubSportifSite3
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
        job_name        => 'ActualiserClubSportifSite3',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majClubSportifSite3; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/