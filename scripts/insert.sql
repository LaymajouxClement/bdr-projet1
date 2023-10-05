/*
    Insertion des différents sites
*/
INSERT INTO Bureau(Région, Nom, Adresse, DateCréation) VALUES(1, 'Bureau du Nord', '87 Bd de Grenelle, 75015 Paris', TO_DATE('1919-04-07', 'YYYY-MM-DD'));
INSERT INTO Bureau(Région, Nom, Adresse, DateCréation) VALUES(2, 'Bureau du Sud', '74 Rue Raymond Teisseire, 13008 Marseille', TO_DATE('1928-10-25', 'YYYY-MM-DD'));
INSERT INTO Bureau(Région, Nom, Adresse, DateCréation) VALUES(3, 'Bureau de l''Ouest', 'Rue de Siam, 29200 Brest', TO_DATE('1923-06-16', 'YYYY-MM-DD'));
INSERT INTO Bureau(Région, Nom, Adresse, DateCréation) VALUES(4, 'Bureau de l''Est', '1 Place de la Cathédrale, 67000 Strasbourg', TO_DATE('1932-01-17', 'YYYY-MM-DD'));
INSERT INTO Bureau(Région, Nom, Adresse, DateCréation) VALUES(5, 'Bureau du Centre', 'Place de Jaude, 63000 Clermont-Ferrand', TO_DATE('1915-02-23', 'YYYY-MM-DD'));


/*
    Insertion de dirigeants
*/
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Cardinale', 'Gerry', 'Banquier chez Goldman Sachs, fondateur de RedBird Capital Partners');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Pinault', 'Famille', 'Propriétaire du groupe de luxe Kering');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Caillot', 'Jean-Pierre', 'Dirigeant de Transports Caillot');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Le Saint', 'Denis', 'Président de Le Saint, distributeur de fruits et légumes');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Keller', 'Marc', 'Ancien footballeur international, manager général du RC Strasbourg');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Oughourlian', 'Joseph', 'Fondateur du fonds Amber Capital');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Al-Thani', 'Tamim Ben Hamad', 'Propriétaire via Qatar Sports Investments');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Textor', 'John', 'PDG de Facebank Inc, investisseur dans les clubs de football');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('McCourt', 'Frank', 'Promoteur immobilier, ancien propriétaire des Dodgers de Los Angeles');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Ratcliffe', 'Jim', 'Milliardaire britannique, fondateur du groupe Ineos');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Nicollin', 'Olivier et Laurent', 'Propriétaires de la société de gestion des déchets');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Petermann', 'Maarten', 'Fondateur du fonds Merlyn Partners');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Lopez', 'Gérard', 'Ancien président de Lotus et Lille, investisseur dans les logiciels');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Kita', 'Waldemar', 'Fondateur de la société Cornéal spécialisée dans l''ophtalmologie');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Serin', 'Bernard', 'Ingénieur, racheteur du groupe John Cockerill');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Féry', 'Loïc', 'Ancien banquier, fondateur de Chenavari Investment Managers');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Al-Nahyane', 'Mansour', 'Vice-premier ministre des Emirats arabes unis, propriétaire via City Football Group');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Schaefer', 'Ahmet', 'Directeur de la holding Core Sports Capital');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Caïazzo', 'Bernard', 'Spécialiste des centres d''appel');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Romeyer', 'Roland', 'Président-fondateur d''une société d''agencement');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Rybolovlev', 'Dmitri', 'Milliardaire russe résidant à Monaco');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Chabane', 'Saïd', 'Fondateur de la société Cosnelle, spécialisée dans le négoce de la charcuterie');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Zhou', 'James', 'Fondateur d''ORG Technology, entreprise d''emballage');
INSERT INTO Dirigeant(Nom, Prénom, Profession) VALUES('Orsoni', 'Alain', 'Elu indépendantiste à l''assemblée de Corse, président de la holding propriétaire');


/*
    Insertion des clubs
*/
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Toulouse FC', TO_DATE('1970-08-17', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Cardinale' AND Prénom='Gerry'), 'Toulouse', 2);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Stade Rennais FC', TO_DATE('191-03-10', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Pinault' AND Prénom='Famille'), 'Rennes', 3);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Stade de Reims', TO_DATE('1910-03-18', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Caillot' AND Prénom='Jean-Pierre'), 'Reims', 1);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Stade Brestois 29', TO_DATE('1950-03-29', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Le Saint' AND Prénom='Denis'), 'Brest', 3);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('RC Strasbourg Alsace', TO_DATE('1906-06-11', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Keller' AND Prénom='Marc'), 'Strasbourg', 4);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('RC Lens', TO_DATE('1906-02-06', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Oughourlian' AND Prénom='Joseph'), 'Lens', 1);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Paris-Saint-Germain', TO_DATE('1970-08-12', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Al-Thani' AND Prénom='Tamim Ben Hamad'), 'Paris', 1);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Olympique Lyonnais', TO_DATE('1950-08-03', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Textor' AND Prénom='John'), 'Lyon', 4);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Olympique de Marseille', TO_DATE('1899-08-31', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='McCourt' AND Prénom='Frank'), 'Marseille', 2);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('OGC Nice', TO_DATE('1904-07-09', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Ratcliffe' AND Prénom='Jim'), 'Nice', 2);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Montpellier HSC', TO_DATE('1919-07-09', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Nicollin' AND Prénom='Olivier et Laurent'), 'Montpellier', 2);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('LOSC Lille', TO_DATE('1944-09-23', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Petermann' AND Prénom='Maarten'), 'Lille', 1);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Girondins de Bordeaux', TO_DATE('1881-10-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Lopez' AND Prénom='Gérard'), 'Bordeaux', 3);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('FC Nantes', TO_DATE('1943-04-21', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Kita' AND Prénom='Waldemar'), 'Nantes', 3);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('FC Metz', TO_DATE('1919-04-02', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Serin' AND Prénom='Bernard'), 'Metz', 4);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('FC Lorient', TO_DATE('1926-04-02', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Féry' AND Prénom='Loïc'), 'Lorient', 3);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('ES Troyes AC', TO_DATE('1986-07-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Al-Nahyane' AND Prénom='Mansour'), 'Troyes', 5);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Clermont Foot 63', TO_DATE('1911-02-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Schaefer' AND Prénom='Ahmet'), 'Clermont-Ferrand', 5);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('AS Saint-Étienne', TO_DATE('191-08-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Romeyer' AND Prénom='Roland'), 'Saint-Étienne', 5);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('AS Monaco FC', TO_DATE('1919-08-23', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Rybolovlev' AND Prénom='Dmitri'), 'Monaco', 2);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('Angers SCO', TO_DATE('1919-04-10', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Chabane' AND Prénom='Saïd'), 'Angers', 3);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('AJ Auxerre', TO_DATE('1905-01-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Zhou' AND Prénom='James'), 'Auxerre', 2);
INSERT INTO ClubSportif(NomClub, DateCréation, Dirigeant, Ville, Région) VALUES('AC Ajaccio', TO_DATE('1910-05-20', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Orsoni' AND Prénom='Alain'), 'Ajaccio', 5);


/*
    Insertion du staff technique
*/
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Philippe Montanier', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jean-Marie Huriez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Revel', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Samuel Honrubia', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Bruno Génésio', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Gragnic', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Revel', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Antonin Da Fonseca', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Oscar Garcia', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('David Caneda', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Franck Mantaux', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Antonio Pintus', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Michel Der Zakarian', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Grégory Lorenzi', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Philippe Djetou', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Daniel Buchta', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Julien Stéphan', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Thibaut Giroud', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Dominique Dropsy', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Frédéric Bompard', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Franck Haise', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabrice Garrincha', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Nicolas Dehon', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Rizzetto', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Mauricio Pochettino', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jesús Pérez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Toni Jiménez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Zoumana Camara', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Peter Bosz', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Hendrie Krüzen', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Arno Michels', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Roy Elferink', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jorge Sampaoli', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gabriel Macaya', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Pablo Fernandez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Alejandro Richino', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Galtier', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Alain Blachon', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Lionel Vaillant', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Julio Tous', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Dall''Oglio', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Stéphane Saurat', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Laurent Weber', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Cédric Bertin', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jocelyn Gourvennec', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('João Sacramento', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Bracigliano', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Grégory Dupont', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vladimir Petković', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Alain Nef', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Régis Beunardeau', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Michael Schaenen', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christian Gourcuff', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Riad Bali', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Yannick Ferrera', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Simon Colinet', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Frédéric Antonetti', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Angelo Ogbonda', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Denis Petric', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Rousseau', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Pélissier', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Guégan', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gilles Bourges', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabien Valéri', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Laurent Batlles', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Sylvain Matrisciano', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Marc Caillet', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Thibault', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Pascal Gastien', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Lilian Nalis', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Guillaume Juge', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Hervé Collot', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Julien Sablé', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jean-Louis Gasset', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabrice Grange', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Pierre Grosset', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Niko Kovač', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Robert Kovac', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Luciano Martins', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Raul Jose', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gérald Baticle', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabrice Rohr', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Denis Petric', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Nicolas Holveck', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jean-Marc Furlan', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Entraîneur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Cédric Daury', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Entraîneur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Sorin', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Entraîneur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Thibault Scotto', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Préparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Pantaloni', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), 'Entraîneur');


/*
    Insertion des stades
*/
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stadium de Toulouse', 'Toulouse', 2, 33150);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Roazhon Park', 'Rennes',3,  29778);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Auguste-Delaune', 'Reims', 1, 21684);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Francis-Le Blé', 'Brest', 3, 15097);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade de la Meinau', 'Strasbourg', 4, 26280);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Bollaert-Delelis', 'Lens', 1, 38223);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Parc des Princes', 'Paris', 1, 48712);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Groupama Stadium', 'Décines-Charpieu', 4, 59286);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Vélodrome', 'Marseille', 2, 67394);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Allianz Riviera', 'Nice', 2, 35624);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade de la Mosson', 'Montpellier', 2, 32900);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Pierre-Mauroy', 'Villeneuve-d''Ascq', 1, 50186);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Matmut Atlantique', 'Bordeaux', 3, 42115);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade de la Beaujoire', 'Nantes', 3, 37473);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Saint-Symphorien', 'Metz', 4, 30389);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade du Moustoir', 'Lorient', 3, 18500);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade de l''Aube', 'Troyes', 5, 20400);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Gabriel Montpied', 'Clermont-Ferrand', 5, 11980);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Geoffroy-Guichard', 'Saint-Étienne', 5, 41965);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Louis-II', 'Monaco', 2, 18523);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade Raymond Kopa', 'Angers', 3, 18752);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade de l''Abbé-Deschamps', 'Auxerre', 2, 18541);
INSERT INTO Stade (Nom, Ville, Région, Capacité) VALUES ('Stade François Coty', 'Ajaccio', 2, 10660);


/*
    Insertion des joueurs et Ajout dans les équipes
*/
-- Toulouse FC
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Dupont', 'Jean', TO_DATE('1995-07-15', 'YYYY-MM-DD'), 'Français', 75, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Martin', 'Pierre', TO_DATE('1998-02-28', 'YYYY-MM-DD'), 'Français', 70, 175, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lefevre', 'Paul', TO_DATE('2000-11-10', 'YYYY-MM-DD'), 'Français', 68, 178, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Dubois', 'Luc', TO_DATE('1993-09-03', 'YYYY-MM-DD'), 'Français', 72, 182, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Leclerc', 'Thomas', TO_DATE('1997-05-20', 'YYYY-MM-DD'), 'Français', 73, 181, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Dupont' AND Prénom='Jean'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Martin' AND Prénom='Pierre'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Lefevre' AND Prénom='Paul'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Dubois' AND Prénom='Luc'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Leclerc' AND Prénom='Thomas'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Stade Rennais FC
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Garcia', 'Luis', TO_DATE('1994-04-08', 'YYYY-MM-DD'), 'Espagnol', 78, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Silva', 'Bruno', TO_DATE('1991-05-10', 'YYYY-MM-DD'), 'Portugais', 82, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Mendy', 'Ferland', TO_DATE('1995-06-08', 'YYYY-MM-DD'), 'Français', 76, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Traoré', 'Hamari', TO_DATE('1992-01-01', 'YYYY-MM-DD'), 'Ivoirien', 79, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Gboho', 'Yann', TO_DATE('2001-07-15', 'YYYY-MM-DD'), 'Français', 70, 176, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Garcia' AND Prénom='Luis'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Silva' AND Prénom='Bruno'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Mendy' AND Prénom='Ferland'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Traoré' AND Prénom='Hamari'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Gboho' AND Prénom='Yann'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');


-- Stade de Reims
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Martin', 'Antoine', TO_DATE('1993-12-17', 'YYYY-MM-DD'), 'Français', 72, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Girard', 'Nicolas', TO_DATE('1996-09-25', 'YYYY-MM-DD'), 'Français', 75, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Diawara', 'Moussa', TO_DATE('1997-04-03', 'YYYY-MM-DD'), 'Sénégalais', 77, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Kone', 'Boulaye', TO_DATE('2000-08-06', 'YYYY-MM-DD'), 'Ivoirien', 74, 182, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Foket', 'Thomas', TO_DATE('1994-09-25', 'YYYY-MM-DD'), 'Belge', 70, 176, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Martin' AND Prénom='Antoine'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Girard' AND Prénom='Nicolas'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Diawara' AND Prénom='Moussa'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Kone' AND Prénom='Boulaye'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Foket' AND Prénom='Thomas'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Stade Brestois 29
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Le Gall', 'Baptiste', TO_DATE('1994-11-15', 'YYYY-MM-DD'), 'Français', 75, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Faussurier', 'Julien', TO_DATE('1988-02-22', 'YYYY-MM-DD'), 'Français', 73, 181, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lasne', 'Paul', TO_DATE('1990-06-24', 'YYYY-MM-DD'), 'Français', 72, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Cardona', 'Irvin', TO_DATE('1997-06-28', 'YYYY-MM-DD'), 'Français', 76, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Charbonnier', 'Gaëtan', TO_DATE('1988-12-27', 'YYYY-MM-DD'), 'Français', 78, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Le Gall' AND Prénom='Baptiste'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Faussurier' AND Prénom='Julien'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Lasne' AND Prénom='Paul'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Cardona' AND Prénom='Irvin'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Charbonnier' AND Prénom='Gaëtan'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- RC Strasbourg Alsace
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Martin', 'Lucas', TO_DATE('1996-03-12', 'YYYY-MM-DD'), 'Français', 74, 182, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Gonzalez', 'Alexander', TO_DATE('1990-01-23', 'YYYY-MM-DD'), 'Argentin', 80, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Simakan', 'Mohamed', TO_DATE('2000-05-03', 'YYYY-MM-DD'), 'Français', 76, 184, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Thomasson', 'Adrien', TO_DATE('1993-12-10', 'YYYY-MM-DD'), 'Français', 73, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Ajorque', 'Ludovic', TO_DATE('1989-02-19', 'YYYY-MM-DD'), 'Français', 77, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Martin' AND Prénom='Lucas'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Gonzalez' AND Prénom='Alexander'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Simakan' AND Prénom='Mohamed'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Thomasson' AND Prénom='Adrien'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Ajorque' AND Prénom='Ludovic'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- RC Lens
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Fortes', 'Steven', TO_DATE('1990-07-08', 'YYYY-MM-DD'), 'Portugais', 78, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Michelin', 'Jonathan', TO_DATE('1996-06-12', 'YYYY-MM-DD'), 'Français', 72, 175, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Clauss', 'Jonathan', TO_DATE('1992-01-22', 'YYYY-MM-DD'), 'Français', 71, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Banza', 'Simon', TO_DATE('1997-10-29', 'YYYY-MM-DD'), 'Français', 74, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Sotoca', 'Corentin', TO_DATE('1989-01-11', 'YYYY-MM-DD'), 'Français', 75, 180, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Fortes' AND Prénom='Steven'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Michelin' AND Prénom='Jonathan'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Clauss' AND Prénom='Jonathan'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Banza' AND Prénom='Simon'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Sotoca' AND Prénom='Corentin'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Montpellier Hérault SC
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Ristic', 'Mihailo', TO_DATE('1994-10-15', 'YYYY-MM-DD'), 'Serbe', 76, 182, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Mollet', 'Florent', TO_DATE('1991-11-19', 'YYYY-MM-DD'), 'Français', 76, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Oyongo Bitolo', 'Ambroise', TO_DATE('1991-06-22', 'YYYY-MM-DD'), 'Camerounais', 73, 179, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Savanier', 'Teji', TO_DATE('1991-12-22', 'YYYY-MM-DD'), 'Français', 67, 173, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Delort', 'Andy', TO_DATE('1991-10-09', 'YYYY-MM-DD'), 'Français', 78, 181, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Ristic' AND Prénom='Mihailo'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Mollet' AND Prénom='Florent'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Oyongo Bitolo' AND Prénom='Ambroise'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Savanier' AND Prénom='Teji'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Delort' AND Prénom='Andy'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Angers SCO
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Mangani', 'Thomas', TO_DATE('1987-04-29', 'YYYY-MM-DD'), 'Français', 76, 182, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Pereira Lage', 'Angelo', TO_DATE('1998-12-25', 'YYYY-MM-DD'), 'Portugais', 78, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Capelle', 'Pierrick', TO_DATE('1987-05-15', 'YYYY-MM-DD'), 'Français', 75, 177, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Diony', 'Loïs', TO_DATE('1992-12-20', 'YYYY-MM-DD'), 'Français', 80, 184, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Fulgini', 'Angelo', TO_DATE('1996-10-09', 'YYYY-MM-DD'), 'Français', 77, 185, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Mangani' AND Prénom='Thomas'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Pereira Lage' AND Prénom='Angelo'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Capelle' AND Prénom='Pierrick'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Diony' AND Prénom='Loïs'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Fulgini' AND Prénom='Angelo'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Milieu');

-- Olympique de Marseille
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Briançon', 'Anthony', TO_DATE('1994-02-10', 'YYYY-MM-DD'), 'Français', 84, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Meling', 'Birger', TO_DATE('1994-02-17', 'YYYY-MM-DD'), 'Norvégien', 77, 182, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Ripart', 'Renaud', TO_DATE('1993-03-14', 'YYYY-MM-DD'), 'Français', 75, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Eliasson', 'Niclas', TO_DATE('1995-12-07', 'YYYY-MM-DD'), 'Suédois', 71, 175, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Deaux', 'Lucas', TO_DATE('1988-08-28', 'YYYY-MM-DD'), 'Français', 80, 188, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Briançon' AND Prénom='Anthony'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Meling' AND Prénom='Birger'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Ripart' AND Prénom='Renaud'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Eliasson' AND Prénom='Niclas'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Deaux' AND Prénom='Lucas'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Milieu');

-- FC Lorient
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Gravillon', 'Thomas', TO_DATE('1998-05-25', 'YYYY-MM-DD'), 'Français', 82, 188, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lemoine', 'Fabien', TO_DATE('1987-03-16', 'YYYY-MM-DD'), 'Français', 70, 172, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Laurienté', 'Armand', TO_DATE('1999-02-11', 'YYYY-MM-DD'), 'Français', 76, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Moffi', 'Terem', TO_DATE('1999-03-05', 'YYYY-MM-DD'), 'Nigérian', 78, 190, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Wissa', 'Yoane', TO_DATE('1996-03-01', 'YYYY-MM-DD'), 'Français', 74, 175, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Gravillon' AND Prénom='Thomas'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Lemoine' AND Prénom='Fabien'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Laurienté' AND Prénom='Armand'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Moffi' AND Prénom='Terem'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Wissa' AND Prénom='Yoane'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- AS Monaco FC
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Nübel', 'Alexander', TO_DATE('1996-09-30', 'YYYY-MM-DD'), 'Allemand', 90, 193, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Sidibé', 'Djibril', TO_DATE('1992-07-29', 'YYYY-MM-DD'), 'Français', 76, 184, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Maripán', 'Guillermo', TO_DATE('1994-05-06', 'YYYY-MM-DD'), 'Chilien', 84, 193, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Badiashile', 'Benjamin', TO_DATE('2001-03-26', 'YYYY-MM-DD'), 'Français', 78, 193, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Disasi', 'Axel', TO_DATE('1998-03-11', 'YYYY-MM-DD'), 'Français', 80, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Nübel' AND Prénom='Alexander'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Sidibé' AND Prénom='Djibril'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 2, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Maripán' AND Prénom='Guillermo'), TO_DATE('2023-03-06', 'YYYY-MM-DD'), TO_DATE('2023-12-06', 'YYYY-MM-DD'), 3, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Badiashile' AND Prénom='Benjamin'), TO_DATE('2023-04-18', 'YYYY-MM-DD'), TO_DATE('2023-12-18', 'YYYY-MM-DD'), 4, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Disasi' AND Prénom='Axel'), TO_DATE('2023-05-22', 'YYYY-MM-DD'), TO_DATE('2023-12-22', 'YYYY-MM-DD'), 5, 'Défenseur');

-- AS Saint-Étienne
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Moulin', 'Jessy', TO_DATE('1986-01-13', 'YYYY-MM-DD'), 'Français', 75, 188, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Moukoudi', 'Harold', TO_DATE('1997-07-27', 'YYYY-MM-DD'), 'Français', 80, 194, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Kolo', 'Panagiotis Retsos', TO_DATE('1998-08-05', 'YYYY-MM-DD'), 'Grec', 85, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Debuchy', 'Mathieu', TO_DATE('1985-07-28', 'YYYY-MM-DD'), 'Français', 76, 176, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Maçon', 'Julien', TO_DATE('1999-10-03', 'YYYY-MM-DD'), 'Français', 74, 178, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), (SELECT Code FROM Joueur WHERE Nom='Moulin' AND Prénom='Jessy'), TO_DATE('2023-01-13', 'YYYY-MM-DD'), TO_DATE('2023-12-13', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), (SELECT Code FROM Joueur WHERE Nom='Moukoudi' AND Prénom='Harold'), TO_DATE('2023-02-27', 'YYYY-MM-DD'), TO_DATE('2023-12-27', 'YYYY-MM-DD'), 2, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), (SELECT Code FROM Joueur WHERE Nom='Kolo' AND Prénom='Panagiotis Retsos'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 3, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), (SELECT Code FROM Joueur WHERE Nom='Debuchy' AND Prénom='Mathieu'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 4, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-Étienne'), (SELECT Code FROM Joueur WHERE Nom='Maçon' AND Prénom='Julien'), TO_DATE('2023-05-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Défenseur');

-- Paris-Saint-Germain
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Neymar', 'Jr', TO_DATE('1992-02-05', 'YYYY-MM-DD'), 'Brésilien', 68, 175, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Mbappé', 'Kylian', TO_DATE('1998-12-20', 'YYYY-MM-DD'), 'Français', 73, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Navas', 'Keylor', TO_DATE('1986-12-15', 'YYYY-MM-DD'), 'Costaricain', 80, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Marquinhos', 'Correa', TO_DATE('1994-05-14', 'YYYY-MM-DD'), 'Brésilien', 78, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Herrera', 'Ander', TO_DATE('1989-08-14', 'YYYY-MM-DD'), 'Espagnol', 77, 182, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Neymar' AND Prénom='Jr'), TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-12-05', 'YYYY-MM-DD'), 10, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Mbappé' AND Prénom='Kylian'), TO_DATE('2023-02-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Navas' AND Prénom='Keylor'), TO_DATE('2023-03-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Marquinhos' AND Prénom='Correa'), TO_DATE('2023-04-14', 'YYYY-MM-DD'), TO_DATE('2023-12-14', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Herrera' AND Prénom='Ander'), TO_DATE('2023-05-14', 'YYYY-MM-DD'), TO_DATE('2023-12-14', 'YYYY-MM-DD'), 21, 'Milieu de terrain');

-- Olympique Lyonnais
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Aouar', 'Houssem', TO_DATE('1998-06-30', 'YYYY-MM-DD'), 'Français', 70, 175, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Depay', 'Memphis', TO_DATE('1994-02-13', 'YYYY-MM-DD'), 'Néerlandais', 80, 176, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lopes', 'Anthony', TO_DATE('1995-10-01', 'YYYY-MM-DD'), 'Portugais', 82, 184, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Toko Ekambi', 'Karl', TO_DATE('1992-09-14', 'YYYY-MM-DD'), 'Camerounais', 77, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Denayer', 'Jason', TO_DATE('1995-06-28', 'YYYY-MM-DD'), 'Belge', 80, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Aouar' AND Prénom='Houssem'), TO_DATE('2023-01-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Depay' AND Prénom='Memphis'), TO_DATE('2023-02-13', 'YYYY-MM-DD'), TO_DATE('2023-12-13', 'YYYY-MM-DD'), 10, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Lopes' AND Prénom='Anthony'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Toko Ekambi' AND Prénom='Karl'), TO_DATE('2023-04-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Denayer' AND Prénom='Jason'), TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'), 5, 'Défenseur');

-- OGC Nice
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Dolberg', 'Kasper', TO_DATE('1997-10-06', 'YYYY-MM-DD'), 'Danois', 78, 192, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lees-Melou', 'Pierre', TO_DATE('1993-10-25', 'YYYY-MM-DD'), 'Français', 77, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Gouiri', 'Amine', TO_DATE('2000-02-07', 'YYYY-MM-DD'), 'Français', 78, 180, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Atal', 'Youcef', TO_DATE('1996-05-17', 'YYYY-MM-DD'), 'Algérien', 70, 177, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Dante', 'Bonfim Costa Santos', TO_DATE('1983-10-18', 'YYYY-MM-DD'), 'Brésilien', 85, 188, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Dolberg' AND Prénom='Kasper'), TO_DATE('2023-10-06', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Lees-Melou' AND Prénom='Pierre'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Gouiri' AND Prénom='Amine'), TO_DATE('2023-02-07', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Atal' AND Prénom='Youcef'), TO_DATE('2023-05-17', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 21, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Dante' AND Prénom='Bonfim Costa Santos'), TO_DATE('2023-10-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 3, 'Défenseur');

-- LOSC Lille
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Yilmaz', 'Burak', TO_DATE('1985-07-15', 'YYYY-MM-DD'), 'Turc', 84, 188, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Araujo', 'Luiz', TO_DATE('1996-03-22', 'YYYY-MM-DD'), 'Brésilien', 73, 183, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Sanches', 'Renato', TO_DATE('1997-08-18', 'YYYY-MM-DD'), 'Portugais', 70, 176, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Botman', 'Sven', TO_DATE('2000-01-12', 'YYYY-MM-DD'), 'Néerlandais', 80, 193, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Maignan', 'Mike', TO_DATE('1995-07-03', 'YYYY-MM-DD'), 'Français', 80, 188, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Yilmaz' AND Prénom='Burak'), TO_DATE('2023-07-15', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 17, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Araujo' AND Prénom='Luiz'), TO_DATE('2023-03-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Sanches' AND Prénom='Renato'), TO_DATE('2023-08-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 18, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Botman' AND Prénom='Sven'), TO_DATE('2023-01-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 6, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Maignan' AND Prénom='Mike'), TO_DATE('2023-07-03', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 16, 'Gardien de but');

-- Girondins de Bordeaux
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Hwang', 'Ui-Jo', TO_DATE('1992-07-28', 'YYYY-MM-DD'), 'Coréen', 76, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('De Préville', 'Gaëtan', TO_DATE('1991-05-22', 'YYYY-MM-DD'), 'Français', 80, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Kwateng', 'Youssouf', TO_DATE('1997-01-09', 'YYYY-MM-DD'), 'Français', 76, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Oudin', 'Rémi', TO_DATE('1996-03-22', 'YYYY-MM-DD'), 'Français', 75, 184, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Basic', 'Toma', TO_DATE('1996-12-04', 'YYYY-MM-DD'), 'Croate', 78, 186, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Hwang' AND Prénom='Ui-Jo'), TO_DATE('2023-07-28', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='De Préville' AND Prénom='Gaëtan'), TO_DATE('2023-05-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Kwateng' AND Prénom='Youssouf'), TO_DATE('2023-01-09', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 2, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Oudin' AND Prénom='Rémi'), TO_DATE('2023-03-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 11, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Basic' AND Prénom='Toma'), TO_DATE('2023-12-04', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 22, 'Milieu de terrain');

-- FC Nantes
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lafont', 'Alban', TO_DATE('1999-01-23', 'YYYY-MM-DD'), 'Français', 85, 193, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Simon', 'Moses', TO_DATE('1995-07-12', 'YYYY-MM-DD'), 'Nigérian', 70, 171, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Traoré', 'Charles', TO_DATE('1993-01-01', 'YYYY-MM-DD'), 'Ivoirien', 70, 176, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Girotto', 'Andrei', TO_DATE('1992-11-30', 'YYYY-MM-DD'), 'Brésilien', 78, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Blas', 'Ludovic', TO_DATE('1997-12-31', 'YYYY-MM-DD'), 'Français', 75, 178, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Lafont' AND Prénom='Alban'), TO_DATE('2023-01-23', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Simon' AND Prénom='Moses'), TO_DATE('2023-07-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Traoré' AND Prénom='Charles'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 26, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Girotto' AND Prénom='Andrei'), TO_DATE('2022-11-30', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 5, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Blas' AND Prénom='Ludovic'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 11, 'Milieu de terrain');

-- FC Metz
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Nguette', 'Opa', TO_DATE('1994-01-16', 'YYYY-MM-DD'), 'Sénégalais', 76, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Maïga', 'Papa', TO_DATE('1988-04-18', 'YYYY-MM-DD'), 'Malien', 80, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Centonze', 'Fabien', TO_DATE('1996-08-04', 'YYYY-MM-DD'), 'Français', 75, 181, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Fofana', 'Boubakar', TO_DATE('1991-05-12', 'YYYY-MM-DD'), 'Malien', 75, 179, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Sarr', 'Mamadou Fofana', TO_DATE('1998-03-20', 'YYYY-MM-DD'), 'Sénégalais', 82, 183, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Nguette' AND Prénom='Opa'), TO_DATE('2023-01-16', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 11, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Maïga' AND Prénom='Papa'), TO_DATE('2022-04-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Centonze' AND Prénom='Fabien'), TO_DATE('2023-08-04', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 24, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Fofana' AND Prénom='Boubakar'), TO_DATE('2022-05-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 19, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Sarr' AND Prénom='Mamadou Fofana'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 3, 'Défenseur');

-- ES Troyes AC
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Ballo-Touré', 'Fodé', TO_DATE('1997-01-03', 'YYYY-MM-DD'), 'Français', 81, 187, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Raveloson', 'Anicet Abel', TO_DATE('1994-01-15', 'YYYY-MM-DD'), 'Malgache', 71, 176, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Tardieu', 'Yoann', TO_DATE('1993-11-21', 'YYYY-MM-DD'), 'Français', 72, 180, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Kouamé', 'Jérémy', TO_DATE('1998-06-05', 'YYYY-MM-DD'), 'Ivoirien', 77, 185, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Chambost', 'Raphaël', TO_DATE('1999-01-08', 'YYYY-MM-DD'), 'Français', 74, 178, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Ballo-Touré' AND Prénom='Fodé'), TO_DATE('2023-01-03', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 15, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Raveloson' AND Prénom='Anicet Abel'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Tardieu' AND Prénom='Yoann'), TO_DATE('2023-11-21', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 18, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Kouamé' AND Prénom='Jérémy'), TO_DATE('2023-06-05', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 19, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Chambost' AND Prénom='Raphaël'), TO_DATE('2023-01-08', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 28, 'Milieu de terrain');

-- Clermont Foot 63
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Bayo', 'Mohamed', TO_DATE('1997-11-05', 'YYYY-MM-DD'), 'Burkinabé', 81, 188, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Iglesias', 'Jason', TO_DATE('1993-06-18', 'YYYY-MM-DD'), 'Espagnol', 75, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Hountondji', 'Cédric', TO_DATE('1994-12-19', 'YYYY-MM-DD'), 'Béninois', 80, 194, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Rajot', 'Mathis', TO_DATE('2001-01-24', 'YYYY-MM-DD'), 'Français', 75, 185, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Magnin', 'Johan', TO_DATE('1986-07-17', 'YYYY-MM-DD'), 'Français', 73, 178, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Bayo' AND Prénom='Mohamed'), TO_DATE('2023-11-05', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Iglesias' AND Prénom='Jason'), TO_DATE('2023-06-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Hountondji' AND Prénom='Cédric'), TO_DATE('2023-12-19', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 2, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Rajot' AND Prénom='Mathis'), TO_DATE('2023-01-24', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 26, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Magnin' AND Prénom='Johan'), TO_DATE('2023-07-17', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 16, 'Milieu de terrain');

-- AJ Auxerre
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Ngando', 'Axel', TO_DATE('1993-12-08', 'YYYY-MM-DD'), 'Français', 76, 178, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lloris', 'Hugo', TO_DATE('1999-08-09', 'YYYY-MM-DD'), 'Français', 80, 187, 'Junior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Sakhi', 'Hamza', TO_DATE('1995-10-19', 'YYYY-MM-DD'), 'Français', 75, 177, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Sidibé', 'Formose', TO_DATE('1999-06-21', 'YYYY-MM-DD'), 'Ivoirien', 77, 186, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Ntumba', 'Bryan', TO_DATE('2002-04-07', 'YYYY-MM-DD'), 'Français', 74, 184, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Ngando' AND Prénom='Axel'), TO_DATE('2023-12-08', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Lloris' AND Prénom='Hugo'), TO_DATE('2023-08-09', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Sakhi' AND Prénom='Hamza'), TO_DATE('2023-10-19', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Sidibé' AND Prénom='Formose'), TO_DATE('2023-06-21', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Ntumba' AND Prénom='Bryan'), TO_DATE('2023-04-07', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 22, 'Milieu de terrain');

-- AC Ajaccio
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Bayala', 'Hassane', TO_DATE('1997-01-01', 'YYYY-MM-DD'), 'Burkinabé', 77, 181, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Lejeune', 'Mickaël', TO_DATE('1997-04-16', 'YYYY-MM-DD'), 'Français', 72, 177, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Marchetti', 'Mathieu', TO_DATE('1987-09-14', 'YYYY-MM-DD'), 'Français', 76, 177, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Coutadeur', 'Mathieu', TO_DATE('1986-06-17', 'YYYY-MM-DD'), 'Français', 78, 182, 'Senior');
INSERT INTO Joueur(Nom, Prénom, DateDeNaissance, Nationalité, Poids, Taille, Classe) VALUES('Cissé', 'Dante', TO_DATE('1999-10-22', 'YYYY-MM-DD'), 'Français', 75, 185, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Bayala' AND Prénom='Hassane'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Lejeune' AND Prénom='Mickaël'), TO_DATE('2023-04-16', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Marchetti' AND Prénom='Mathieu'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Coutadeur' AND Prénom='Mathieu'), TO_DATE('2023-06-17', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 5, 'Défenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Cissé' AND Prénom='Dante'), TO_DATE('2023-10-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 22, 'Milieu de terrain');


/*
    Insertion des arbitres
*/
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Martin', 'Jean', TO_DATE('1980-03-15', 'YYYY-MM-DD'), 1, 'Paris Saint-Germain');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Lefevre', 'Paul', TO_DATE('1985-05-22', 'YYYY-MM-DD'), 2, 'Olympique de Marseille');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Dupont', 'Pierre', TO_DATE('1990-09-10', 'YYYY-MM-DD'), 4, 'Olympique Lyonnais');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Garcia', 'Lucas', TO_DATE('1988-07-03', 'YYYY-MM-DD'), 2, 'AS Monaco FC');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Benoit', 'Alexandra', TO_DATE('1982-12-25', 'YYYY-MM-DD'), 3, 'Girondins de Bordeaux');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Martin', 'Sarah', TO_DATE('1987-04-18', 'YYYY-MM-DD'), 1, 'Lille OSC');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Lemoine', 'Nicolas', TO_DATE('1975-10-30', 'YYYY-MM-DD'), 3, 'Stade Rennais');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Leclerc', 'Mélissa', TO_DATE('1992-02-20', 'YYYY-MM-DD'), 1, 'Stade de Reims');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Dubois', 'Thomas', TO_DATE('1984-06-12', 'YYYY-MM-DD'), 2, 'OGC Nice');
INSERT INTO Arbitre(Nom, Prénom, DateDeNaissance, Région, ClubPréféré) VALUES('Moreau', 'Emma', TO_DATE('1989-08-08', 'YYYY-MM-DD'), 2, 'Montpellier HSC');


/*
    Insertion de palmarès
*/
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(1, TO_DATE('2022', 'YYYY'), 'Championnat national', 18, 2);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(3, TO_DATE('2011', 'YYYY'), 'Coupe nationale', 16, 4);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(5, TO_DATE('1994', 'YYYY'), 'Ligue des Champions', 13, 1);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(7, TO_DATE('1978', 'YYYY'), 'Ligue Europa', 12, 0);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(9, TO_DATE('2002', 'YYYY'), 'Coupe du Monde des Clubs', 11, 3);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(11, TO_DATE('2014', 'YYYY'), 'Coupe intercontinentale', 14, 5);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(13, TO_DATE('1999', 'YYYY'), 'Supercoupe nationale', 19, 2);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(15, TO_DATE('1998', 'YYYY'), 'Supercoupe de l''UEFA', 15, 1);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(17, TO_DATE('2016', 'YYYY'), 'Coupe de la Ligue', 20, 4);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(19, TO_DATE('2004', 'YYYY'), 'Coupe de la Confédération', 17, 0);
INSERT INTO Palmarès(CodeClub, Année, Trophée, NbreMatchsGagnés, NbreMatchsPerdus) VALUES(21, TO_DATE('2009', 'YYYY'), 'Coupe régionale', 16, 2);


/*
    Insertion des matchs
*/
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(3, 2, 25000, 5, 12);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(1, 0, 18000, 8, 6);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(2, 2, 21000, 3, 18);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(4, 1, 30000, 9, 2);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(3, 3, 26000, 6, 14);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(0, 1, 19000, 7, 10);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(2, 0, 22000, 4, 22);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(1, 1, 17000, 1, 21);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(3, 2, 27000, 10, 17);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(2, 1, 24000, 2, 15);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(4, 0, 32000, 5, 9);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(1, 2, 20000, 8, 3);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(2, 3, 23000, 3, 13);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(3, 1, 28000, 9, 4);
INSERT INTO Match(NbreButsClubA, NbreButsClubB, NbreSpectateurs, CodeArbitre, CodeStade) VALUES(1, 1, 21000, 6, 1);


/*
 Insertion des dates de match
*/
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(1, TO_DATE('1995-07-12', 'YYYY-MM-DD'), TO_TIMESTAMP('14:30:00', 'HH24:MI:SS'), 3, 7, 1);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(2, TO_DATE('2000-02-07', 'YYYY-MM-DD'), TO_TIMESTAMP('17:45:00', 'HH24:MI:SS'), 11, 18, 6);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(3, TO_DATE('1999-10-22', 'YYYY-MM-DD'), TO_TIMESTAMP('19:15:00', 'HH24:MI:SS'), 5, 16, 18);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(4, TO_DATE('1985-07-15', 'YYYY-MM-DD'), TO_TIMESTAMP('15:30:00', 'HH24:MI:SS'), 9, 14, 2);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(5, TO_DATE('1983-10-18', 'YYYY-MM-DD'), TO_TIMESTAMP('12:00:00', 'HH24:MI:SS'), 8, 20, 14);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(6, TO_DATE('2002-04-07', 'YYYY-MM-DD'), TO_TIMESTAMP('20:00:00', 'HH24:MI:SS'), 13, 1, 10);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(7, TO_DATE('1992-11-30', 'YYYY-MM-DD'), TO_TIMESTAMP('11:30:00', 'HH24:MI:SS'), 17, 10, 22);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(8, TO_DATE('1998-03-20', 'YYYY-MM-DD'), TO_TIMESTAMP('18:45:00', 'HH24:MI:SS'), 2, 15, 21);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(9, TO_DATE('1986-07-17', 'YYYY-MM-DD'), TO_TIMESTAMP('16:00:00', 'HH24:MI:SS'), 6, 3, 17);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(10, TO_DATE('1997-08-18', 'YYYY-MM-DD'), TO_TIMESTAMP('13:45:00', 'HH24:MI:SS'), 12, 19, 15);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(11, TO_DATE('1994-01-15', 'YYYY-MM-DD'), TO_TIMESTAMP('11:00:00', 'HH24:MI:SS'), 4, 2, 9);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(12, TO_DATE('2001-01-24', 'YYYY-MM-DD'), TO_TIMESTAMP('14:30:00', 'HH24:MI:SS'), 21, 11, 3);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(13, TO_DATE('1999-06-21', 'YYYY-MM-DD'), TO_TIMESTAMP('16:45:00', 'HH24:MI:SS'), 7, 8, 13);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(14, TO_DATE('1986-06-17', 'YYYY-MM-DD'), TO_TIMESTAMP('20:15:00', 'HH24:MI:SS'), 16, 21, 4);
INSERT INTO Calendrier(CodeMatch, DateMatch, Heure, ClubA, ClubB, Stade) VALUES(15, TO_DATE('1987-09-14', 'YYYY-MM-DD'), TO_TIMESTAMP('18:30:00', 'HH24:MI:SS'), 19, 22, 1);


/*
    Insertion du personnel
*/
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Dupont', 'Jean', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Manager', 1, 'Paris');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Martin', 'Sophie', TO_DATE('1988-08-15', 'YYYY-MM-DD'), 'Assistant', 4, 'Lyon');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Lefevre', 'Pierre', TO_DATE('1980-03-10', 'YYYY-MM-DD'), 'Analyste', 2, 'Marseille');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Lemoine', 'Marie', TO_DATE('1987-11-25', 'YYYY-MM-DD'), 'Secrétaire', 3, 'Bordeaux');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Leroux', 'Nicolas', TO_DATE('1990-07-03', 'YYYY-MM-DD'), 'Technicien', 2, 'Toulouse');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Fournier', 'Pauline', TO_DATE('1983-12-18', 'YYYY-MM-DD'), 'Comptable', 2, 'Nice');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Mercier', 'Luc', TO_DATE('1986-09-02', 'YYYY-MM-DD'), 'Ingénieur', 4, 'Strasbourg');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Leclerc', 'Céline', TO_DATE('1989-06-29', 'YYYY-MM-DD'), 'Analyste', 1, 'Lille');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Girard', 'Thomas', TO_DATE('1982-04-12', 'YYYY-MM-DD'), 'Manager', 3, 'Nantes');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Legrand', 'Camille', TO_DATE('1984-10-07', 'YYYY-MM-DD'), 'Assistant', 2, 'Montpellier');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Perrin', 'Philippe', TO_DATE('1981-01-23', 'YYYY-MM-DD'), 'Technicien', 3, 'Rennes');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Roussel', 'Isabelle', TO_DATE('1988-02-09', 'YYYY-MM-DD'), 'Ingénieur', 5, 'Grenoble');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Colin', 'Franck', TO_DATE('1987-06-14', 'YYYY-MM-DD'), 'Secrétaire', 2, 'Toulon');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Moulin', 'Nathalie', TO_DATE('1980-08-30', 'YYYY-MM-DD'), 'Comptable', 3, 'Angers');
INSERT INTO Personnel(Nom, Prénom, DateDeNaissance, Fonction, Région, Ville) VALUES('Pierre', 'Mathieu', TO_DATE('1983-03-05', 'YYYY-MM-DD'), 'Manager', 4, 'Dijon');
