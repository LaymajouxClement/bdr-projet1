/*
    Creation des database link
*/
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

CREATE SYNONYM MatchSite1 FOR MatchSite1@Site5ToSite1;
CREATE SYNONYM ArbitreSite1 FOR ArbitreSite1@Site5ToSite1;
CREATE SYNONYM CalendrierSite1 FOR CalendrierSite1@Site5ToSite1;
CREATE SYNONYM ClubSportifSite1 FOR ClubSportifSite1@Site5ToSite1;
CREATE SYNONYM AllClubSportifSite1 FOR AllClubSportifSite1@Site5ToSite1;

CREATE SYNONYM ClubSportifSite2 FOR ClubSportifSite2@Site5ToSite2;
CREATE SYNONYM AllClubSportifSite2 FOR AllClubSportifSite2@Site5ToSite2;


CREATE SYNONYM ClubSportifSite3 FOR ClubSportifSite3@Site5ToSite3;
CREATE SYNONYM AllClubSportifSite3 FOR AllClubSportifSite3@Site5ToSite3;


CREATE SYNONYM ClubSportifSite4 FOR ClubSportifSite4@Site5ToSite4;
CREATE SYNONYM AllClubSportifSite4 FOR AllClubSportifSite4@Site5ToSite4;


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


/*
    Creation des vues materialisees
*/
DROP MATERIALIZED VIEW AllClubSportifSite5;
CREATE MATERIALIZED VIEW AllClubSportifSite5
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


DROP MATERIALIZED VIEW CalendrierSite5;
CREATE MATERIALIZED VIEW CalendrierSite5
REFRESH ON DEMAND
AS
SELECT c.CodeMatch, c.DateMatch, c.Heure, c.ClubA, c.CLubB, c.Stade
FROM CalendrierSite1 c, ClubSportifSystem c1, ClubSportifSystem c2
WHERE c.ClubA=c1.CodeClub AND c.ClubB=c2.CodeCLub AND (c1.region=5 OR c2.region=5);

DROP MATERIALIZED VIEW MatchSite5;
CREATE MATERIALIZED VIEW MatchSite5
REFRESH ON DEMAND
AS
SELECT m.CodeMatch, m.NbreButsClubA, m.NbreButsClubB, m.NbreSpectateurs, m.CodeArbitre, m.CodeStade
FROM MatchSystem m, StadeSystem s
WHERE m.CodeStade=s.Code AND s.region=5;

DROP MATERIALIZED VIEW ArbitreSite5;
CREATE MATERIALIZED VIEW ArbitreSite5
REFRESH
NEXT TRUNC(NEXT_DAY(SYSDATE, 3) + INTERVAL '15:00' HOUR TO MINUTE)
AS 
SELECT * FROM ArbitreSite1 a
WHERE a.Code IN (SELECT m.CodeArbitre FROM MatchSite5 m, StadeSite5 s WHERE m.CodeStade=s.Code);

/*
    Creation des procedure/jobs
*/
CREATE OR REPLACE PROCEDURE RefreshAllClubSite5
IS
BEGIN
    DBMS_MVIEW.REFRESH('AllClubSportifSite5', '?');
END;
/
CREATE OR REPLACE PROCEDURE majClubSportifSite5
IS
BEGIN
    RefreshAllClubSite1@Site5ToSite1;
    RefreshAllClubSite2@Site5ToSite2;
    RefreshAllClubSite3@Site5ToSite3;
    RefreshAllClubSite4@Site5ToSite4;
    RefreshAllClubSite5;
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserClubSportifSite5',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majClubSportifSite5; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/


CREATE OR REPLACE PROCEDURE RefreshMatchSite5
IS
BEGIN
    DBMS_MVIEW.REFRESH('MatchSite5', '?');
END;
/


CREATE OR REPLACE PROCEDURE RefreshCalendrierSite5
IS
BEGIN
    DBMS_MVIEW.REFRESH('CalendrierSite5', '?');
END;
/


CREATE OR REPLACE PROCEDURE RefreshArbitreSite5
IS
BEGIN
    DBMS_MVIEW.REFRESH('ArbitreSite5', '?');
END;