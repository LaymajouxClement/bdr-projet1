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