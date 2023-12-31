/*
    Création des utilisateurs avec tous les droits
*/
-- Région 1
CREATE USER Site1 IDENTIFIED BY Site1;
GRANT ALL PRIVILEGES TO Site1;
-- Région 2
CREATE USER Site2 IDENTIFIED BY Site2;
GRANT ALL PRIVILEGES TO Site2;
-- Région 3
CREATE USER Site3 IDENTIFIED BY Site3;
GRANT ALL PRIVILEGES TO Site3;
-- Région 4
CREATE USER Site4 IDENTIFIED BY Site4;
GRANT ALL PRIVILEGES TO Site4;
-- Région 5
CREATE USER Site5 IDENTIFIED BY Site5;
GRANT ALL PRIVILEGES TO Site5;

/*
    Allocation de la memoire
*/
ALTER USER Site1 QUOTA 128M ON SYSTEM;
ALTER USER Site2 QUOTA 128M ON SYSTEM;
ALTER USER Site3 QUOTA 128M ON SYSTEM;
ALTER USER Site4 QUOTA 128M ON SYSTEM;
ALTER USER Site5 QUOTA 128M ON SYSTEM;
