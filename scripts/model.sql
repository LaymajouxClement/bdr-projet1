/*
    CrÃ©ation des sÃ©quences
*/
CREATE SEQUENCE ClubSportifSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE DirigeantSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE StaffTechniqueSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE StadeSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE JoueurSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE ArbitreSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE PersonnelSeq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE MatchSeq START WITH 1 INCREMENT BY 1;


/*
    CrÃ©ation des tables
*/
CREATE TABLE CLUBSPORTIF(
    CodeClub NUMBER PRIMARY KEY,
    NomClub VARCHAR(50) NOT NULL,
    DateCreation DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Dirigeant INT NOT NULL CHECK(Dirigeant > 0),
    Ville VARCHAR(100) NOT NULL,
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5)
);

CREATE TABLE DIRIGEANT(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Profession VARCHAR(100) NOT NULL
);

CREATE TABLE STAFFTECHNIQUE(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    CodeClub INT NOT NULL CHECK(CodeClub > 0),
    Fonction VARCHAR(100) NOT NULL,
    FOREIGN KEY (CodeClub) REFERENCES CLUBSPORTIF(CodeClub)
);

CREATE TABLE STADE(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Ville VARCHAR(100) NOT NULL,
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5),
    Capacite INT NOT NULL CHECK (Capacite > 0)
);

CREATE TABLE JOUEUR(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    DateDeNaissance DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Nationalite VARCHAR(50) NOT NULL,
    Poids FLOAT NOT NULL CHECK(Poids > 0), /* Poids en kg */
    Taille INT NOT NULL CHECK(Taille > 0), /* Taille en cm */
    Classe Varchar(20)
);

CREATE TABLE EQUIPE(
    CodeClub INT NOT NULL CHECK(CodeClub > 0),
    CodeJoueur INT NOT NULL CHECK(CodeJoueur > 0),
    DateDebutContrat DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    DateFinContrat DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    NumeroMaillot INT NOT NULL CHECK(NumeroMaillot >= 0),
    Poste VARCHAR(50) NOT NULL,
    PRIMARY KEY(CodeClub, CodeJoueur),
    FOREIGN KEY (CodeClub) REFERENCES CLUBSPORTIF(CodeClub),
    FOREIGN KEY (CodeJoueur) REFERENCES JOUEUR(Code)
);

CREATE TABLE ARBITRE(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    DateDeNaissance DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5),
    ClubPrefere VARCHAR(50) NOT NULL
);

CREATE TABLE PERSONNEL(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    DateDeNaissance DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Fonction VARCHAR(100) NOT NULL,
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5),
    Ville VARCHAR(100) NOT NULL
);

CREATE TABLE MATCH(
    CodeMatch NUMBER PRIMARY KEY,
    NbreButsClubA INT NOT NULL CHECK(NbreButsClubA >= 0),
    NbreButsClubB INT NOT NULL CHECK(NbreButsClubB >= 0),
    NbreSpectateurs INT NOT NULL CHECK(NbreSpectateurs >= 0),
    CodeArbitre INT NOT NULL CHECK(CodeArbitre > 0),
    CodeStade INT NOT NULL CHECK(CodeStade > 0),
    FOREIGN KEY (CodeArbitre) REFERENCES ARBITRE(Code),
    FOREIGN KEY (CodeStade) REFERENCES STADE(Code)
);

CREATE TABLE PALMARES(
    CodeClub INT NOT NULL CHECK(CodeClub > 0),
    Annee DATE NOT NULL, 
    Trophee VARCHAR(50) NOT NULL,
    NbreMatchsGagnes INT NOT NULL CHECK(NbreMatchsGagnes >= 0),
    NbreMatchsPerdus INT NOT NULL CHECK(NbreMatchsPerdus >= 0),
    PRIMARY KEY (Annee, Trophee),
    FOREIGN KEY (CodeClub) REFERENCES CLUBSPORTIF(CodeClub)
);

CREATE TABLE CALENDRIER(
    CodeMatch INT NOT NULL PRIMARY KEY CHECK(CodeMatch > 0),
    DateMatch DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Heure TIMESTAMP NOT NULL, /* TO_TIMESTAMP('10:30:00', 'HH24:MI:SS') */
    ClubA INT NOT NULL CHECK(ClubA > 0),
    ClubB INT NOT NULL CHECK(ClubB > 0),
    Stade INT NOT NULL CHECK(Stade > 0),
    FOREIGN KEY (CodeMatch) REFERENCES MATCH(CodeMatch),
    FOREIGN KEY (ClubA) REFERENCES CLUBSPORTIF(CodeClub),
    FOREIGN KEY (ClubB) REFERENCES CLUBSPORTIF(CodeClub),
    FOREIGN KEY (Stade) REFERENCES STADE(Code)
);

CREATE TABLE BUREAU(
    Region INT NOT NULL PRIMARY KEY CHECK(Region >=1 AND Region <=5),
    Nom VARCHAR(50) NOT NULL,
    Adresse VARCHAR(100) NOT NULL,
    DateCreation DATE NOT NULL /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
);


/*
    Ajout des clÃ©s Ã©trangÃ¨res
*/
ALTER TABLE CLUBSPORTIF
ADD FOREIGN KEY (Dirigeant) REFERENCES DIRIGEANT(Code);

ALTER TABLE CLUBSPORTIF
ADD FOREIGN KEY (Region) REFERENCES BUREAU(Region);

ALTER TABLE STADE
ADD FOREIGN KEY (Region) REFERENCES BUREAU(Region);

ALTER TABLE ARBITRE
ADD FOREIGN KEY (Region) REFERENCES BUREAU(Region);

ALTER TABLE PERSONNEL
ADD FOREIGN KEY (Region) REFERENCES BUREAU(Region);


/*
    CrÃ©ation des triggers d'auto-incrÃ©mentation
*/
CREATE OR REPLACE TRIGGER ClubSportifOnInsert
  BEFORE INSERT ON CLUBSPORTIF
  FOR EACH ROW
BEGIN
  SELECT ClubSportifSeq.nextval
  INTO :new.CodeClub
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER DirigeantOnInsert
  BEFORE INSERT ON DIRIGEANT
  FOR EACH ROW
BEGIN
  SELECT DirigeantSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER StaffTechniqueOnInsert
  BEFORE INSERT ON STAFFTECHNIQUE
  FOR EACH ROW
BEGIN
  SELECT StaffTechniqueSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER StadeOnInsert
  BEFORE INSERT ON STADE
  FOR EACH ROW
BEGIN
  SELECT StadeSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER JoueurOnInsert
  BEFORE INSERT ON JOUEUR
  FOR EACH ROW
BEGIN
  SELECT JoueurSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER ArbitreOnInsert
  BEFORE INSERT ON ARBITRE
  FOR EACH ROW
BEGIN
  SELECT ArbitreSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER PersonnelOnInsert
  BEFORE INSERT ON PERSONNEL
  FOR EACH ROW
BEGIN
  SELECT PersonnelSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER MatchOnInsert
  BEFORE INSERT ON MATCH
  FOR EACH ROW
BEGIN
  SELECT MatchSeq.nextval
  INTO :new.CodeMatch
  FROM dual;
END;
