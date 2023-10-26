# Base de données réparties - Projet 1
Projet de base de données pour la Fédération Française de football

## Table des matières
- [Environnement de travail](#environnement-de-travail)
- [Base de données](#base-de-données)
  - [Création des tables](#création-des-tables)
  - [Insertion des données](#insertion-des-données)
  - [Utilisateurs de bureaux](#utilisateurs-de-bureaux)
- [SiteN](#siten)
- [Couche logicielle](#couche-logicielle)
- [Auteurs](#auteurs)

## Environnement de travail
Pour la base de données, nous avons utilisé Oracle 10G Express Edition ainsi que SQL Developper.
<br>
Pour la couche logicielle, nous avons utilisé le langage de programmation Python et la bibliothèque graphique PyQt5.

## Base de données

### Création des tables
Le fichier **/scripts/model.sql** contient toutes les requêtes permettant de créer les tables demandées dans l'énoncé du sujet. Les différentes tables sont:
- La table des clubs sportifs :
```ClubSportif (CodeClub, NomClub, DateCréation, #Dirigeant, Ville, #Région)```

- La table des dirigeants des clubs :
```Dirigeant (Code, Nom, Prénom, Profession)```

- La table du staff technique des clubs :
```StaffTechnique (Code, Nom, #CodeClub, Fonction)```

- La table des stades de football :
```Stade (Code, Nom, Ville, #Région, Capacité)```

- La table des joueurs de football :
```Joueur (Code, Nom, Prénom, DateNaissance, Nationalité, poids, Taille, Classe)```

- La table des équipes de football :
```Equipe (#CodeClub, #CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, poste)```

- La table des arbitres :
```Arbitre (Code, Nom, Prénom, DateDeNaissance, #Région, ClubPréféré)```

- La table du personnel des bureaux :
```Personnel (Code, Nom, Prénom, DateDeNaissance, Fonction, #Région, Ville)```

- La table des matchs de football :
```Match (CodeMatch, NbreButsClubA, NbreButsClubB, NbreSpectateurs, #CodeArbitre, #CodeStade)```

- La table des palmarès des clubs :
```Palmarès (#CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus)```

- La table du calendrier des matchs :
```Calendrier (#codeMatch, Date, heure, #clubA, #clubB, #Stade)```

- La table des bureaux des régions :
```Bureau (Région, nom, adresse, DateCréation)```

### Insertion des données
Le fichier **/scripts/insert.sql** contient les requêtes d'insertion de données fictives pour toutes les tables afin de pouvoir tester notre base de données.

### Utilisateurs de bureaux
Le fichier **/scripts/users.sql** contient les requêtes permettant de créer les utilisateurs de chaque bureau en leur fournissant tous les droits. Les informations de connexion des utilisateurs sont les suivantes (Login / Password):
- Site1 / Site1
- Site2 / Site2
- Site3 / Site3
- Site4 / Site4
- Site5 / Site5

## SiteN
Les différents fichier **/scripts/SiteN.sql** contient les requêtes à exécuter par le SiteN (Site1.sql doit être exécuté par Site1). Les fichiers contiennent les **database link**, **fragments de table**, **vues matérialisées** et **trggers** spécifiques à chaque site en fonction des besoins.

## Couche logicielle
Pour la couche logicielle, nous avons créé un autre Github disponible grâce au [lien suivant](https://github.com/LaymajouxClement/bdr-projet1-app).

## Auteurs
- Clément Laymajoux
- Louison Diguer
- Pierre Giraud
