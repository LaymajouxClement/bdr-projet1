/*
    Suppression des sequences
*/
DROP SEQUENCE ClubSportifSeq;
DROP SEQUENCE DirigeantSeq;
DROP SEQUENCE StaffTechniqueSeq;
DROP SEQUENCE StadeSeq;
DROP SEQUENCE JoueurSeq;
DROP SEQUENCE ArbitreSeq;
DROP SEQUENCE PersonnelSeq;
DROP SEQUENCE MatchSeq;

/*
    Suppression des triggers
*/
DROP TRIGGER ClubSportifOnInsert;
DROP TRIGGER DirigeantOnInsert;
DROP TRIGGER StaffTechniqueOnInsert;
DROP TRIGGER StadeOnInsert;
DROP TRIGGER JoueurOnInsert;
DROP TRIGGER ArbitreOnInsert;
DROP TRIGGER PersonnelOnInsert;
DROP TRIGGER MatchOnInsert;

/*
    Suppression des tables
*/
DROP TABLE Calendrier;
DROP TABLE Palmares;
DROP TABLE Match;
DROP TABLE Personnel;
DROP TABLE Stade;
DROP TABLE StaffTechnique;
DROP TABLE Equipe;
DROP TABLE Joueur;
DROP TABLE Arbitre;
DROP TABLE ClubSportif;
DROP TABLE Dirigeant;
DROP TABLE Bureau;
