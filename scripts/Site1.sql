/*
    Creation des database link
*/
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


/*
    Creation des synonymes
*/
CREATE SYNONYM PersonnelSystem FOR PERSONNEL@Site1ToSystem;
CREATE SYNONYM StaffTechniqueSystem FOR STAFFTECHNIQUE@Site1ToSystem;
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

CREATE SYNONYM MatchSite2 FOR MatchSite2@Site1ToSite2;
CREATE SYNONYM MatchSite3 FOR MatchSite3@Site1ToSite3;
CREATE SYNONYM MatchSite4 FOR MatchSite4@Site1ToSite4;
CREATE SYNONYM MatchSite5 FOR MatchSite5@Site1ToSite5;

CREATE SYNONYM ClubSportifSite2 FOR ClubSportifSite2@Site1ToSite2;
CREATE SYNONYM StadeSite2 FOR StadeSite2@Site1ToSite2;
CREATE SYNONYM AllClubSportifSite2 FOR AllClubSportifSite2@Site1ToSite2;

CREATE SYNONYM ClubSportifSite3 FOR ClubSportifSite3@Site1ToSite3;
CREATE SYNONYM StadeSite3 FOR StadeSite3@Site1ToSite3;
CREATE SYNONYM AllClubSportifSite3 FOR AllClubSportifSite3@Site1ToSite3;

CREATE SYNONYM ClubSportifSite4 FOR ClubSportifSite4@Site1ToSite4;
CREATE SYNONYM StadeSite4 FOR StadeSite4@Site1ToSite4;
CREATE SYNONYM AllClubSportifSite4 FOR AllClubSportifSite4@Site1ToSite4;

CREATE SYNONYM ClubSportifSite5 FOR ClubSportifSite5@Site1ToSite5;
CREATE SYNONYM StadeSite5 FOR StadeSite5@Site1ToSite5;
CREATE SYNONYM AllClubSportifSite5 FOR AllClubSportifSite5@Site1ToSite5;

/*
    Creation des tables
*/
CREATE TABLE PersonnelSite1
AS 
SELECT * FROM PersonnelSystem WHERE region=1;

CREATE TABLE StaffTechniqueSite1
AS
SELECT ST.* FROM StaffTechniqueSystem ST JOIN ClubSportifSystem C ON ST.CodeClub=C.CodeClub WHERE C.Region=1; 

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
SELECT * FROM matchsystem;

CREATE TABLE PalmaresSite1
AS
SELECT P.* FROM PalmaresSystem P JOIN ClubSportifSystem C ON P.CodeClub=C.CodeClub WHERE C.Region=1;

DROP MATERIALIZED VIEW AllClubSportifSite1;
CREATE MATERIALIZED VIEW AllClubSportifSite1
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

select * from clubsportifsite1;
INSERT INTO ClubSportifSite1(CodeClub, NomClub, DateCreation, Dirigeant, Ville, Region) VALUES(23, 'Le Mans FC', TO_DATE('1970-08-17', 'YYYY-MM-DD'), 1, 'Le Mans', 2);*

DROP MATERIALIZED VIEW AllStadeSite1;
CREATE MATERIALIZED VIEW AllStadeSite1
REFRESH ON DEMAND
AS 
SELECT * FROM StadeSite1
UNION ALL
SELECT * FROM StadeSite2
UNION ALL
SELECT * FROM StadeSite3
UNION ALL
SELECT * FROM StadeSite4
UNION ALL
SELECT * FROM StadeSite5;
/*
    Creation des procedures et jobs de mise a jour
*/
CREATE OR REPLACE PROCEDURE majMatchSite1
IS
BEGIN
    DBMS_MVIEW.REFRESH('MatchSite2@Site1ToSite2', 'F');
    DBMS_MVIEW.REFRESH('MatchSite3@Site1ToSite3', 'F');
    DBMS_MVIEW.REFRESH('MatchSite4@Site1ToSite4', 'F');
    DBMS_MVIEW.REFRESH('MatchSite5@Site1ToSite5', 'F');
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserMatchSite1',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majMatchSite1; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/


CREATE OR REPLACE PROCEDURE majCalendrierSite1
IS
BEGIN
    DBMS_MVIEW.REFRESH('CalendrierSite2@Site1ToSite2', 'F');
    DBMS_MVIEW.REFRESH('CalendrierSite3@Site1ToSite3', 'F');
    DBMS_MVIEW.REFRESH('CalendrierSite4@Site1ToSite4', 'F');
    DBMS_MVIEW.REFRESH('CalendrierSite5@Site1ToSite5', 'F');
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserCalendrierSite1',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majCalendrierSite1; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/


CREATE OR REPLACE PROCEDURE majArbitreSite1
IS
BEGIN
    DBMS_MVIEW.REFRESH('ArbitreSite2@Site1ToSite2', 'F');
    DBMS_MVIEW.REFRESH('ArbitreSite3@Site1ToSite3', 'F');
    DBMS_MVIEW.REFRESH('ArbitreSite4@Site1ToSite4', 'F');
    DBMS_MVIEW.REFRESH('ArbitreSite5@Site1ToSite5', 'F');
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserArbitreSite1',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majArbitreSite1; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/


CREATE OR REPLACE PROCEDURE majClubSportifSite1
IS
BEGIN
    DBMS_MVIEW.REFRESH('AllClubSportifSite1', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite2', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite3', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite4', 'F');
    DBMS_MVIEW.REFRESH('AllClubSportifSite5', 'F');
END;
/
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
        job_name        => 'ActualiserClubSportifSite1',
        job_type        => 'PLSQL_BLOCK',
        job_action      => 'BEGIN majClubSportifSite1; END;',
        start_date      => SYSTIMESTAMP,
        repeat_interval => 'FREQ=DAILY; INTERVAL=1',
        enabled         => TRUE);
END;
/