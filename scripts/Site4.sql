/*
    Creation des database link
*/
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

CREATE SYNONYM MatchSite1 FOR MatchSite1@Site4ToSite1;
CREATE SYNONYM ArbitreSite1 FOR ArbitreSite1@Site4ToSite1;
CREATE SYNONYM CalendrierSite1 FOR CalendrierSite1@Site4ToSite1;
CREATE SYNONYM ClubSportifSite1 FOR ClubSportifSite1@Site4ToSite1;
CREATE SYNONYM AllClubSportifSite1 FOR AllClubSportifSite1@Site4ToSite1;

CREATE SYNONYM ClubSportifSite2 FOR ClubSportifSite2@Site4ToSite2;
CREATE SYNONYM AllClubSportifSite2 FOR AllClubSportifSite2@Site4ToSite2;


CREATE SYNONYM ClubSportifSite3 FOR ClubSportifSite3@Site4ToSite3;
CREATE SYNONYM AllClubSportifSite3 FOR AllClubSportifSite3@Site4ToSite3;


CREATE SYNONYM ClubSportifSite5 FOR ClubSportifSite5@Site4ToSite5;
CREATE SYNONYM AllClubSportifSite5 FOR AllClubSportifSite5@Site4ToSite5;


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


/*
    Creation des vues materialisees
*/
DROP MATERIALIZED VIEW AllClubSportifSite4;
CREATE MATERIALIZED VIEW AllClubSportifSite4
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


DROP MATERIALIZED VIEW CalendrierSite4;
CREATE MATERIALIZED VIEW CalendrierSite4
REFRESH ON DEMAND
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSite1 c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=4 OR c2.region=4);

DROP MATERIALIZED VIEW MatchSite4;
CREATE MATERIALIZED VIEW MatchSite4
REFRESH ON DEMAND
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=4;

DROP MATERIALIZED VIEW ArbitreSite4;
CREATE MATERIALIZED VIEW ArbitreSite4
REFRESH
NEXT TRUNC(NEXT_DAY(SYSDATE, 3) + INTERVAL '15:00' HOUR TO MINUTE)
AS 
SELECT * FROM ArbitreSite1 a
WHERE a.Code IN (SELECT m.CodeArbitre FROM MatchSite4 m, StadeSite4 s WHERE m.CodeStade=s.Code);

/*
    Creation des procedure/jobs
*/
CREATE OR REPLACE PROCEDURE RefreshAllClubSite4
IS
BEGIN
    DBMS_MVIEW.REFRESH('AllClubSportifSite4', '?');
END;
/
CREATE OR REPLACE PROCEDURE majClubSportifSite4
IS
BEGIN
    RefreshAllClubSite1@Site4ToSite1;
    RefreshAllClubSite2@Site4ToSite2;
    RefreshAllClubSite3@Site4ToSite3;
    RefreshAllClubSite4;
    RefreshAllClubSite5@Site4ToSite5;
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserClubSportifSite4',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majClubSportifSite4; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/


CREATE OR REPLACE PROCEDURE RefreshMatchSite4
IS
BEGIN
    DBMS_MVIEW.REFRESH('MatchSite4', '?');
END;
/


CREATE OR REPLACE PROCEDURE RefreshCalendrierSite4
IS
BEGIN
    DBMS_MVIEW.REFRESH('CalendrierSite4', '?');
END;
/


CREATE OR REPLACE PROCEDURE RefreshArbitreSite4
IS
BEGIN
    DBMS_MVIEW.REFRESH('ArbitreSite4', '?');
END;