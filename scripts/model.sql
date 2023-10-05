/*
    Creation des sequences
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
    Creation des tables
*/
CREATE TABLE ClubSportif(
    CodeClub NUMBER PRIMARY KEY,
    NomClub VARCHAR(50) NOT NULL,
    DateCreation DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Dirigeant INT NOT NULL CHECK(Dirigeant > 0),
    Ville VARCHAR(100) NOT NULL,
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5)
);

CREATE TABLE Dirigeant(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Profession VARCHAR(100) NOT NULL
);

CREATE TABLE StaffTechnique(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    CodeClub INT NOT NULL CHECK(CodeClub > 0),
    Fonction VARCHAR(100) NOT NULL,
    FOREIGN KEY (CodeClub) REFERENCES ClubSportif(CodeClub)
);

CREATE TABLE Stade(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Ville VARCHAR(100) NOT NULL,
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5),
    Capacite INT NOT NULL CHECK (Capacite > 0)
);

CREATE TABLE Joueur(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    DateDeNaissance DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Nationalite VARCHAR(50) NOT NULL,
    Poids FLOAT NOT NULL CHECK(Poids > 0), /* Poids en kg */
    Taille INT NOT NULL CHECK(Taille > 0), /* Taille en cm */
    Classe Varchar(20)
);

CREATE TABLE Equipe(
    CodeClub INT NOT NULL CHECK(CodeClub > 0),
    CodeJoueur INT NOT NULL CHECK(CodeJoueur > 0),
    DateDebutContrat DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    DateFinContrat DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    NumeroMaillot INT NOT NULL CHECK(NumeroMaillot >= 0),
    Poste VARCHAR(50) NOT NULL,
    PRIMARY KEY(CodeClub, CodeJoueur),
    FOREIGN KEY (CodeClub) REFERENCES ClubSportif(CodeClub),
    FOREIGN KEY (CodeJoueur) REFERENCES Joueur(Code)
);

CREATE TABLE Arbitre(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    DateDeNaissance DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5),
    ClubPrefere VARCHAR(50) NOT NULL
);

CREATE TABLE Personnel(
    Code NUMBER PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    DateDeNaissance DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Fonction VARCHAR(100) NOT NULL,
    Region INT NOT NULL CHECK(Region >=1 AND Region <=5),
    Ville VARCHAR(100) NOT NULL
);

CREATE TABLE Match(
    CodeMatch NUMBER PRIMARY KEY,
    NbreButsClubA INT NOT NULL CHECK(NbreButsClubA >= 0),
    NbreButsClubB INT NOT NULL CHECK(NbreButsClubB >= 0),
    NbreSpectateurs INT NOT NULL CHECK(NbreSpectateurs >= 0),
    CodeArbitre INT NOT NULL CHECK(CodeArbitre > 0),
    CodeStade INT NOT NULL CHECK(CodeStade > 0),
    FOREIGN KEY (CodeArbitre) REFERENCES Arbitre(Code),
    FOREIGN KEY (CodeStade) REFERENCES Stade(Code)
);

CREATE TABLE Palmarès(
    CodeClub INT NOT NULL CHECK(CodeClub > 0),
    Annee DATE NOT NULL, 
    Trophee VARCHAR(50) NOT NULL,
    NbreMatchsGagnes INT NOT NULL CHECK(NbreMatchsGagnes >= 0),
    NbreMatchsPerdus INT NOT NULL CHECK(NbreMatchsPerdus >= 0),
    PRIMARY KEY (Annee, Trophee),
    FOREIGN KEY (CodeClub) REFERENCES ClubSportif(CodeClub)
);

CREATE TABLE Calendrier(
    CodeMatch INT NOT NULL PRIMARY KEY CHECK(CodeMatch > 0),
    DateMatch DATE NOT NULL, /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
    Heure TIMESTAMP NOT NULL, /* TO_TIMESTAMP('10:30:00', 'HH24:MI:SS') */
    ClubA INT NOT NULL CHECK(ClubA > 0),
    ClubB INT NOT NULL CHECK(ClubB > 0),
    Stade INT NOT NULL CHECK(Stade > 0),
    FOREIGN KEY (CodeMatch) REFERENCES Match(CodeMatch),
    FOREIGN KEY (ClubA) REFERENCES ClubSportif(CodeClub),
    FOREIGN KEY (ClubB) REFERENCES ClubSportif(CodeClub),
    FOREIGN KEY (Stade) REFERENCES Stade(Code)
);

CREATE TABLE Bureau(
    Region INT NOT NULL PRIMARY KEY CHECK(Region >=1 AND Region <=5),
    Nom VARCHAR(50) NOT NULL,
    Adresse VARCHAR(100) NOT NULL,
    DateCreation DATE NOT NULL /* TO_DATE('2023-10-25', 'YYYY-MM-DD') */
);


/*
    Ajout des cles etrangères
*/
ALTER TABLE ClubSportif
ADD FOREIGN KEY (Dirigeant) REFERENCES Dirigeant(Code);

ALTER TABLE ClubSportif
ADD FOREIGN KEY (Region) REFERENCES Bureau(Region);

ALTER TABLE Stade
ADD FOREIGN KEY (Region) REFERENCES Bureau(Region);

ALTER TABLE Arbitre
ADD FOREIGN KEY (Region) REFERENCES Bureau(Region);

ALTER TABLE Personnel
ADD FOREIGN KEY (Region) REFERENCES Bureau(Region);


/*
    Creation des triggers d'auto-incrementation
*/
CREATE OR REPLACE TRIGGER ClubSportifOnInsert
  BEFORE INSERT ON ClubSportif
  FOR EACH ROW
BEGIN
  SELECT ClubSportifSeq.nextval
  INTO :new.CodeClub
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER DirigeantOnInsert
  BEFORE INSERT ON Dirigeant
  FOR EACH ROW
BEGIN
  SELECT DirigeantSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER StaffTechniqueOnInsert
  BEFORE INSERT ON StaffTechnique
  FOR EACH ROW
BEGIN
  SELECT StaffTechniqueSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER StadeOnInsert
  BEFORE INSERT ON Stade
  FOR EACH ROW
BEGIN
  SELECT StadeSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER JoueurOnInsert
  BEFORE INSERT ON Joueur
  FOR EACH ROW
BEGIN
  SELECT JoueurSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER ArbitreOnInsert
  BEFORE INSERT ON Arbitre
  FOR EACH ROW
BEGIN
  SELECT ArbitreSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER PersonnelOnInsert
  BEFORE INSERT ON Personnel
  FOR EACH ROW
BEGIN
  SELECT PersonnelSeq.nextval
  INTO :new.Code
  FROM dual;
END;
/
CREATE OR REPLACE TRIGGER MatchOnInsert
  BEFORE INSERT ON Match
  FOR EACH ROW
BEGIN
  SELECT MatchSeq.nextval
  INTO :new.CodeMatch
  FROM dual;
END;