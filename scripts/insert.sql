/*
    Insertion des differents sites
*/
INSERT INTO Bureau(Region, Nom, Adresse, DateCreation) VALUES(1, 'Bureau du Nord', '87 Bd de Grenelle, 75015 Paris', TO_DATE('1919-04-07', 'YYYY-MM-DD'));
INSERT INTO Bureau(Region, Nom, Adresse, DateCreation) VALUES(2, 'Bureau du Sud', '74 Rue Raymond Teisseire, 13008 Marseille', TO_DATE('1928-10-25', 'YYYY-MM-DD'));
INSERT INTO Bureau(Region, Nom, Adresse, DateCreation) VALUES(3, 'Bureau de l''Ouest', 'Rue de Siam, 29200 Brest', TO_DATE('1923-06-16', 'YYYY-MM-DD'));
INSERT INTO Bureau(Region, Nom, Adresse, DateCreation) VALUES(4, 'Bureau de l''Est', '1 Place de la Cathedrale, 67000 Strasbourg', TO_DATE('1932-01-17', 'YYYY-MM-DD'));
INSERT INTO Bureau(Region, Nom, Adresse, DateCreation) VALUES(5, 'Bureau du Centre', 'Place de Jaude, 63000 Clermont-Ferrand', TO_DATE('1915-02-23', 'YYYY-MM-DD'));


/*
    Insertion de dirigeants
*/
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Cardinale', 'Gerry', 'Banquier chez Goldman Sachs, fondateur de RedBird Capital Partners');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Pinault', 'Famille', 'Proprietaire du groupe de luxe Kering');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Caillot', 'Jean-Pierre', 'Dirigeant de Transports Caillot');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Le Saint', 'Denis', 'President de Le Saint, distributeur de fruits et legumes');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Keller', 'Marc', 'Ancien footballeur international, manager general du RC Strasbourg');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Oughourlian', 'Joseph', 'Fondateur du fonds Amber Capital');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Al-Thani', 'Tamim Ben Hamad', 'Proprietaire via Qatar Sports Investments');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Textor', 'John', 'PDG de Facebank Inc, investisseur dans les clubs de football');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('McCourt', 'Frank', 'Promoteur immobilier, ancien proprietaire des Dodgers de Los Angeles');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Ratcliffe', 'Jim', 'Milliardaire britannique, fondateur du groupe Ineos');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Nicollin', 'Olivier et Laurent', 'Proprietaires de la societe de gestion des dechets');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Petermann', 'Maarten', 'Fondateur du fonds Merlyn Partners');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Lopez', 'Gerard', 'Ancien president de Lotus et Lille, investisseur dans les logiciels');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Kita', 'Waldemar', 'Fondateur de la societe Corneal specialisee dans l''ophtalmologie');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Serin', 'Bernard', 'Ingenieur, racheteur du groupe John Cockerill');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Fery', 'Loic', 'Ancien banquier, fondateur de Chenavari Investment Managers');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Al-Nahyane', 'Mansour', 'Vice-premier ministre des Emirats arabes unis, proprietaire via City Football Group');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Schaefer', 'Ahmet', 'Directeur de la holding Core Sports Capital');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Caiazzo', 'Bernard', 'Specialiste des centres d''appel');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Romeyer', 'Roland', 'President-fondateur d''une societe d''agencement');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Rybolovlev', 'Dmitri', 'Milliardaire russe residant a Monaco');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Chabane', 'Said', 'Fondateur de la societe Cosnelle, specialisee dans le negoce de la charcuterie');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Zhou', 'James', 'Fondateur d''ORG Technology, entreprise d''emballage');
INSERT INTO Dirigeant(Nom, Prenom, Profession) VALUES('Orsoni', 'Alain', 'Elu independantiste a l''assemblee de Corse, president de la holding proprietaire');


/*
    Insertion des clubs
*/
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Toulouse FC', TO_DATE('1970-08-17', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Cardinale' AND Prenom='Gerry'), 'Toulouse', 2);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Stade Rennais FC', TO_DATE('191-03-10', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Pinault' AND Prenom='Famille'), 'Rennes', 3);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Stade de Reims', TO_DATE('1910-03-18', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Caillot' AND Prenom='Jean-Pierre'), 'Reims', 1);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Stade Brestois 29', TO_DATE('1950-03-29', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Le Saint' AND Prenom='Denis'), 'Brest', 3);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('RC Strasbourg Alsace', TO_DATE('1906-06-11', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Keller' AND Prenom='Marc'), 'Strasbourg', 4);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('RC Lens', TO_DATE('1906-02-06', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Oughourlian' AND Prenom='Joseph'), 'Lens', 1);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Paris-Saint-Germain', TO_DATE('1970-08-12', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Al-Thani' AND Prenom='Tamim Ben Hamad'), 'Paris', 1);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Olympique Lyonnais', TO_DATE('1950-08-03', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Textor' AND Prenom='John'), 'Lyon', 4);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Olympique de Marseille', TO_DATE('1899-08-31', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='McCourt' AND Prenom='Frank'), 'Marseille', 2);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('OGC Nice', TO_DATE('1904-07-09', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Ratcliffe' AND Prenom='Jim'), 'Nice', 2);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Montpellier HSC', TO_DATE('1919-07-09', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Nicollin' AND Prenom='Olivier et Laurent'), 'Montpellier', 2);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('LOSC Lille', TO_DATE('1944-09-23', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Petermann' AND Prenom='Maarten'), 'Lille', 1);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Girondins de Bordeaux', TO_DATE('1881-10-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Lopez' AND Prenom='Gerard'), 'Bordeaux', 3);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('FC Nantes', TO_DATE('1943-04-21', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Kita' AND Prenom='Waldemar'), 'Nantes', 3);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('FC Metz', TO_DATE('1919-04-02', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Serin' AND Prenom='Bernard'), 'Metz', 4);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('FC Lorient', TO_DATE('1926-04-02', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Fery' AND Prenom='Loic'), 'Lorient', 3);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('ES Troyes AC', TO_DATE('1986-07-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Al-Nahyane' AND Prenom='Mansour'), 'Troyes', 5);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Clermont Foot 63', TO_DATE('1911-02-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Schaefer' AND Prenom='Ahmet'), 'Clermont-Ferrand', 5);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('AS Saint-etienne', TO_DATE('191-08-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Romeyer' AND Prenom='Roland'), 'Saint-etienne', 5);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('AS Monaco FC', TO_DATE('1919-08-23', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Rybolovlev' AND Prenom='Dmitri'), 'Monaco', 2);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('Angers SCO', TO_DATE('1919-04-10', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Chabane' AND Prenom='Said'), 'Angers', 3);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('AJ Auxerre', TO_DATE('1905-01-01', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Zhou' AND Prenom='James'), 'Auxerre', 2);
INSERT INTO ClubSportif(NomClub, DateCreation, Dirigeant, Ville, Region) VALUES('AC Ajaccio', TO_DATE('1910-05-20', 'YYYY-MM-DD'), (SELECT Code FROM Dirigeant WHERE Nom='Orsoni' AND Prenom='Alain'), 'Ajaccio', 5);


/*
    Insertion du staff technique
*/
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Philippe Montanier', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jean-Marie Huriez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Revel', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Samuel Honrubia', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Bruno Genesio', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Gragnic', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Revel', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Antonin Da Fonseca', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Oscar Garcia', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('David Caneda', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Franck Mantaux', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Antonio Pintus', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Michel Der Zakarian', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gregory Lorenzi', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Philippe Djetou', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Daniel Buchta', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Julien Stephan', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Thibaut Giroud', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Dominique Dropsy', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Frederic Bompard', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Franck Haise', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabrice Garrincha', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Nicolas Dehon', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Rizzetto', (SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Mauricio Pochettino', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jesus Perez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Toni Jimenez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Zoumana Camara', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Peter Bosz', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Hendrie Kruzen', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Arno Michels', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Roy Elferink', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jorge Sampaoli', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gabriel Macaya', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Pablo Fernandez', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Alejandro Richino', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Galtier', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Alain Blachon', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Lionel Vaillant', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Julio Tous', (SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Dall''Oglio', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Stephane Saurat', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Laurent Weber', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Cedric Bertin', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jocelyn Gourvennec', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Joao Sacramento', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Bracigliano', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gregory Dupont', (SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vladimir Petkovic', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Alain Nef', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Regis Beunardeau', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Michael Schaenen', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christian Gourcuff', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Riad Bali', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Yannick Ferrera', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Simon Colinet', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Frederic Antonetti', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Angelo Ogbonda', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Denis Petric', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Rousseau', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Christophe Pelissier', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Guegan', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gilles Bourges', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabien Valeri', (SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Laurent Batlles', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Sylvain Matrisciano', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Marc Caillet', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Vincent Thibault', (SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Pascal Gastien', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Lilian Nalis', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Guillaume Juge', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Herve Collot', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Julien Sable', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jean-Louis Gasset', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabrice Grange', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Pierre Grosset', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Niko Kovac', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Robert Kovac', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Luciano Martins', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Raul Jose', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Gerald Baticle', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Fabrice Rohr', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Denis Petric', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Nicolas Holveck', (SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Jean-Marc Furlan', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Entraineur');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Cedric Daury', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Entraineur adjoint');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Sorin', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Entraineur des gardiens');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Thibault Scotto', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), 'Preparateur physique');
INSERT INTO StaffTechnique(Nom, CodeClub, Fonction) VALUES('Olivier Pantaloni', (SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), 'Entraineur');


/*
    Insertion des stades
*/
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stadium de Toulouse', 'Toulouse', 2, 33150);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Roazhon Park', 'Rennes',3,  29778);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Auguste-Delaune', 'Reims', 1, 21684);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Francis-Le Ble', 'Brest', 3, 15097);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade de la Meinau', 'Strasbourg', 4, 26280);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Bollaert-Delelis', 'Lens', 1, 38223);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Parc des Princes', 'Paris', 1, 48712);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Groupama Stadium', 'Decines-Charpieu', 4, 59286);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Velodrome', 'Marseille', 2, 67394);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Allianz Riviera', 'Nice', 2, 35624);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade de la Mosson', 'Montpellier', 2, 32900);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Pierre-Mauroy', 'Villeneuve-d''Ascq', 1, 50186);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Matmut Atlantique', 'Bordeaux', 3, 42115);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade de la Beaujoire', 'Nantes', 3, 37473);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Saint-Symphorien', 'Metz', 4, 30389);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade du Moustoir', 'Lorient', 3, 18500);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade de l''Aube', 'Troyes', 5, 20400);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Gabriel Montpied', 'Clermont-Ferrand', 5, 11980);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Geoffroy-Guichard', 'Saint-etienne', 5, 41965);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Louis-II', 'Monaco', 2, 18523);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Raymond Kopa', 'Angers', 3, 18752);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade de l''Abbe-Deschamps', 'Auxerre', 2, 18541);
INSERT INTO Stade (Nom, Ville, Region, Capacite) VALUES ('Stade Francois Coty', 'Ajaccio', 2, 10660);


/*
    Insertion des joueurs et Ajout dans les equipes
*/
-- Toulouse FC
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Dupont', 'Jean', TO_DATE('1995-07-15', 'YYYY-MM-DD'), 'Francais', 75, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Martin', 'Pierre', TO_DATE('1998-02-28', 'YYYY-MM-DD'), 'Francais', 70, 175, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lefevre', 'Paul', TO_DATE('2000-11-10', 'YYYY-MM-DD'), 'Francais', 68, 178, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Dubois', 'Luc', TO_DATE('1993-09-03', 'YYYY-MM-DD'), 'Francais', 72, 182, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Leclerc', 'Thomas', TO_DATE('1997-05-20', 'YYYY-MM-DD'), 'Francais', 73, 181, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Dupont' AND Prenom='Jean'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Martin' AND Prenom='Pierre'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Lefevre' AND Prenom='Paul'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Dubois' AND Prenom='Luc'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Toulouse FC'), (SELECT Code FROM Joueur WHERE Nom='Leclerc' AND Prenom='Thomas'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Stade Rennais FC
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Garcia', 'Luis', TO_DATE('1994-04-08', 'YYYY-MM-DD'), 'Espagnol', 78, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Silva', 'Bruno', TO_DATE('1991-05-10', 'YYYY-MM-DD'), 'Portugais', 82, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Mendy', 'Ferland', TO_DATE('1995-06-08', 'YYYY-MM-DD'), 'Francais', 76, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Traore', 'Hamari', TO_DATE('1992-01-01', 'YYYY-MM-DD'), 'Ivoirien', 79, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Gboho', 'Yann', TO_DATE('2001-07-15', 'YYYY-MM-DD'), 'Francais', 70, 176, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Garcia' AND Prenom='Luis'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Silva' AND Prenom='Bruno'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Mendy' AND Prenom='Ferland'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Traore' AND Prenom='Hamari'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Rennais FC'), (SELECT Code FROM Joueur WHERE Nom='Gboho' AND Prenom='Yann'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');


-- Stade de Reims
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Martin', 'Antoine', TO_DATE('1993-12-17', 'YYYY-MM-DD'), 'Francais', 72, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Girard', 'Nicolas', TO_DATE('1996-09-25', 'YYYY-MM-DD'), 'Francais', 75, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Diawara', 'Moussa', TO_DATE('1997-04-03', 'YYYY-MM-DD'), 'Senegalais', 77, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Kone', 'Boulaye', TO_DATE('2000-08-06', 'YYYY-MM-DD'), 'Ivoirien', 74, 182, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Foket', 'Thomas', TO_DATE('1994-09-25', 'YYYY-MM-DD'), 'Belge', 70, 176, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Martin' AND Prenom='Antoine'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Girard' AND Prenom='Nicolas'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Diawara' AND Prenom='Moussa'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Kone' AND Prenom='Boulaye'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade de Reims'), (SELECT Code FROM Joueur WHERE Nom='Foket' AND Prenom='Thomas'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Stade Brestois 29
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Le Gall', 'Baptiste', TO_DATE('1994-11-15', 'YYYY-MM-DD'), 'Francais', 75, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Faussurier', 'Julien', TO_DATE('1988-02-22', 'YYYY-MM-DD'), 'Francais', 73, 181, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lasne', 'Paul', TO_DATE('1990-06-24', 'YYYY-MM-DD'), 'Francais', 72, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Cardona', 'Irvin', TO_DATE('1997-06-28', 'YYYY-MM-DD'), 'Francais', 76, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Charbonnier', 'Gaetan', TO_DATE('1988-12-27', 'YYYY-MM-DD'), 'Francais', 78, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Le Gall' AND Prenom='Baptiste'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Faussurier' AND Prenom='Julien'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Lasne' AND Prenom='Paul'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Cardona' AND Prenom='Irvin'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Stade Brestois 29'), (SELECT Code FROM Joueur WHERE Nom='Charbonnier' AND Prenom='Gaetan'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- RC Strasbourg Alsace
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Martin', 'Lucas', TO_DATE('1996-03-12', 'YYYY-MM-DD'), 'Francais', 74, 182, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Gonzalez', 'Alexander', TO_DATE('1990-01-23', 'YYYY-MM-DD'), 'Argentin', 80, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Simakan', 'Mohamed', TO_DATE('2000-05-03', 'YYYY-MM-DD'), 'Francais', 76, 184, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Thomasson', 'Adrien', TO_DATE('1993-12-10', 'YYYY-MM-DD'), 'Francais', 73, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Ajorque', 'Ludovic', TO_DATE('1989-02-19', 'YYYY-MM-DD'), 'Francais', 77, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Martin' AND Prenom='Lucas'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Gonzalez' AND Prenom='Alexander'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Simakan' AND Prenom='Mohamed'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Thomasson' AND Prenom='Adrien'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Strasbourg Alsace'), (SELECT Code FROM Joueur WHERE Nom='Ajorque' AND Prenom='Ludovic'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- RC Lens
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Fortes', 'Steven', TO_DATE('1990-07-08', 'YYYY-MM-DD'), 'Portugais', 78, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Michelin', 'Jonathan', TO_DATE('1996-06-12', 'YYYY-MM-DD'), 'Francais', 72, 175, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Clauss', 'Jonathan', TO_DATE('1992-01-22', 'YYYY-MM-DD'), 'Francais', 71, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Banza', 'Simon', TO_DATE('1997-10-29', 'YYYY-MM-DD'), 'Francais', 74, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Sotoca', 'Corentin', TO_DATE('1989-01-11', 'YYYY-MM-DD'), 'Francais', 75, 180, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Fortes' AND Prenom='Steven'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Michelin' AND Prenom='Jonathan'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Clauss' AND Prenom='Jonathan'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Banza' AND Prenom='Simon'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='RC Lens'), (SELECT Code FROM Joueur WHERE Nom='Sotoca' AND Prenom='Corentin'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Montpellier Herault SC
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Ristic', 'Mihailo', TO_DATE('1994-10-15', 'YYYY-MM-DD'), 'Serbe', 76, 182, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Mollet', 'Florent', TO_DATE('1991-11-19', 'YYYY-MM-DD'), 'Francais', 76, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Oyongo Bitolo', 'Ambroise', TO_DATE('1991-06-22', 'YYYY-MM-DD'), 'Camerounais', 73, 179, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Savanier', 'Teji', TO_DATE('1991-12-22', 'YYYY-MM-DD'), 'Francais', 67, 173, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Delort', 'Andy', TO_DATE('1991-10-09', 'YYYY-MM-DD'), 'Francais', 78, 181, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Ristic' AND Prenom='Mihailo'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Mollet' AND Prenom='Florent'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Oyongo Bitolo' AND Prenom='Ambroise'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Savanier' AND Prenom='Teji'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Montpellier HSC'), (SELECT Code FROM Joueur WHERE Nom='Delort' AND Prenom='Andy'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- Angers SCO
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Mangani', 'Thomas', TO_DATE('1987-04-29', 'YYYY-MM-DD'), 'Francais', 76, 182, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Pereira Lage', 'Angelo', TO_DATE('1998-12-25', 'YYYY-MM-DD'), 'Portugais', 78, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Capelle', 'Pierrick', TO_DATE('1987-05-15', 'YYYY-MM-DD'), 'Francais', 75, 177, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Diony', 'Lois', TO_DATE('1992-12-20', 'YYYY-MM-DD'), 'Francais', 80, 184, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Fulgini', 'Angelo', TO_DATE('1996-10-09', 'YYYY-MM-DD'), 'Francais', 77, 185, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Mangani' AND Prenom='Thomas'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Pereira Lage' AND Prenom='Angelo'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Capelle' AND Prenom='Pierrick'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Diony' AND Prenom='Lois'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Angers SCO'), (SELECT Code FROM Joueur WHERE Nom='Fulgini' AND Prenom='Angelo'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Milieu');

-- Olympique de Marseille
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Briancon', 'Anthony', TO_DATE('1994-02-10', 'YYYY-MM-DD'), 'Francais', 84, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Meling', 'Birger', TO_DATE('1994-02-17', 'YYYY-MM-DD'), 'Norvegien', 77, 182, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Ripart', 'Renaud', TO_DATE('1993-03-14', 'YYYY-MM-DD'), 'Francais', 75, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Eliasson', 'Niclas', TO_DATE('1995-12-07', 'YYYY-MM-DD'), 'Suedois', 71, 175, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Deaux', 'Lucas', TO_DATE('1988-08-28', 'YYYY-MM-DD'), 'Francais', 80, 188, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Briancon' AND Prenom='Anthony'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Meling' AND Prenom='Birger'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Ripart' AND Prenom='Renaud'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Eliasson' AND Prenom='Niclas'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique de Marseille'), (SELECT Code FROM Joueur WHERE Nom='Deaux' AND Prenom='Lucas'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Milieu');

-- FC Lorient
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Gravillon', 'Thomas', TO_DATE('1998-05-25', 'YYYY-MM-DD'), 'Francais', 82, 188, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lemoine', 'Fabien', TO_DATE('1987-03-16', 'YYYY-MM-DD'), 'Francais', 70, 172, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lauriente', 'Armand', TO_DATE('1999-02-11', 'YYYY-MM-DD'), 'Francais', 76, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Moffi', 'Terem', TO_DATE('1999-03-05', 'YYYY-MM-DD'), 'Nigerian', 78, 190, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Wissa', 'Yoane', TO_DATE('1996-03-01', 'YYYY-MM-DD'), 'Francais', 74, 175, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Gravillon' AND Prenom='Thomas'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Lemoine' AND Prenom='Fabien'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 6, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Lauriente' AND Prenom='Armand'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Milieu');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Moffi' AND Prenom='Terem'), TO_DATE('2023-04-25', 'YYYY-MM-DD'), TO_DATE('2023-12-25', 'YYYY-MM-DD'), 8, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Lorient'), (SELECT Code FROM Joueur WHERE Nom='Wissa' AND Prenom='Yoane'), TO_DATE('2023-05-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 9, 'Attaquant');

-- AS Monaco FC
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Nubel', 'Alexander', TO_DATE('1996-09-30', 'YYYY-MM-DD'), 'Allemand', 90, 193, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Sidibe', 'Djibril', TO_DATE('1992-07-29', 'YYYY-MM-DD'), 'Francais', 76, 184, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Maripan', 'Guillermo', TO_DATE('1994-05-06', 'YYYY-MM-DD'), 'Chilien', 84, 193, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Badiashile', 'Benjamin', TO_DATE('2001-03-26', 'YYYY-MM-DD'), 'Francais', 78, 193, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Disasi', 'Axel', TO_DATE('1998-03-11', 'YYYY-MM-DD'), 'Francais', 80, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Nubel' AND Prenom='Alexander'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Sidibe' AND Prenom='Djibril'), TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 2, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Maripan' AND Prenom='Guillermo'), TO_DATE('2023-03-06', 'YYYY-MM-DD'), TO_DATE('2023-12-06', 'YYYY-MM-DD'), 3, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Badiashile' AND Prenom='Benjamin'), TO_DATE('2023-04-18', 'YYYY-MM-DD'), TO_DATE('2023-12-18', 'YYYY-MM-DD'), 4, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Monaco FC'), (SELECT Code FROM Joueur WHERE Nom='Disasi' AND Prenom='Axel'), TO_DATE('2023-05-22', 'YYYY-MM-DD'), TO_DATE('2023-12-22', 'YYYY-MM-DD'), 5, 'Defenseur');

-- AS Saint-etienne
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Moulin', 'Jessy', TO_DATE('1986-01-13', 'YYYY-MM-DD'), 'Francais', 75, 188, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Moukoudi', 'Harold', TO_DATE('1997-07-27', 'YYYY-MM-DD'), 'Francais', 80, 194, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Kolo', 'Panagiotis Retsos', TO_DATE('1998-08-05', 'YYYY-MM-DD'), 'Grec', 85, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Debuchy', 'Mathieu', TO_DATE('1985-07-28', 'YYYY-MM-DD'), 'Francais', 76, 176, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Macon', 'Julien', TO_DATE('1999-10-03', 'YYYY-MM-DD'), 'Francais', 74, 178, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), (SELECT Code FROM Joueur WHERE Nom='Moulin' AND Prenom='Jessy'), TO_DATE('2023-01-13', 'YYYY-MM-DD'), TO_DATE('2023-12-13', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), (SELECT Code FROM Joueur WHERE Nom='Moukoudi' AND Prenom='Harold'), TO_DATE('2023-02-27', 'YYYY-MM-DD'), TO_DATE('2023-12-27', 'YYYY-MM-DD'), 2, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), (SELECT Code FROM Joueur WHERE Nom='Kolo' AND Prenom='Panagiotis Retsos'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 3, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), (SELECT Code FROM Joueur WHERE Nom='Debuchy' AND Prenom='Mathieu'), TO_DATE('2023-04-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 4, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AS Saint-etienne'), (SELECT Code FROM Joueur WHERE Nom='Macon' AND Prenom='Julien'), TO_DATE('2023-05-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 'Defenseur');

-- Paris-Saint-Germain
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Neymar', 'Jr', TO_DATE('1992-02-05', 'YYYY-MM-DD'), 'Bresilien', 68, 175, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Mbappe', 'Kylian', TO_DATE('1998-12-20', 'YYYY-MM-DD'), 'Francais', 73, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Navas', 'Keylor', TO_DATE('1986-12-15', 'YYYY-MM-DD'), 'Costaricain', 80, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Marquinhos', 'Correa', TO_DATE('1994-05-14', 'YYYY-MM-DD'), 'Bresilien', 78, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Herrera', 'Ander', TO_DATE('1989-08-14', 'YYYY-MM-DD'), 'Espagnol', 77, 182, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Neymar' AND Prenom='Jr'), TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-12-05', 'YYYY-MM-DD'), 10, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Mbappe' AND Prenom='Kylian'), TO_DATE('2023-02-20', 'YYYY-MM-DD'), TO_DATE('2023-12-20', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Navas' AND Prenom='Keylor'), TO_DATE('2023-03-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Marquinhos' AND Prenom='Correa'), TO_DATE('2023-04-14', 'YYYY-MM-DD'), TO_DATE('2023-12-14', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Paris-Saint-Germain'), (SELECT Code FROM Joueur WHERE Nom='Herrera' AND Prenom='Ander'), TO_DATE('2023-05-14', 'YYYY-MM-DD'), TO_DATE('2023-12-14', 'YYYY-MM-DD'), 21, 'Milieu de terrain');

-- Olympique Lyonnais
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Aouar', 'Houssem', TO_DATE('1998-06-30', 'YYYY-MM-DD'), 'Francais', 70, 175, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Depay', 'Memphis', TO_DATE('1994-02-13', 'YYYY-MM-DD'), 'Neerlandais', 80, 176, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lopes', 'Anthony', TO_DATE('1995-10-01', 'YYYY-MM-DD'), 'Portugais', 82, 184, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Toko Ekambi', 'Karl', TO_DATE('1992-09-14', 'YYYY-MM-DD'), 'Camerounais', 77, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Denayer', 'Jason', TO_DATE('1995-06-28', 'YYYY-MM-DD'), 'Belge', 80, 187, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Aouar' AND Prenom='Houssem'), TO_DATE('2023-01-30', 'YYYY-MM-DD'), TO_DATE('2023-12-30', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Depay' AND Prenom='Memphis'), TO_DATE('2023-02-13', 'YYYY-MM-DD'), TO_DATE('2023-12-13', 'YYYY-MM-DD'), 10, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Lopes' AND Prenom='Anthony'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Toko Ekambi' AND Prenom='Karl'), TO_DATE('2023-04-10', 'YYYY-MM-DD'), TO_DATE('2023-12-10', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Olympique Lyonnais'), (SELECT Code FROM Joueur WHERE Nom='Denayer' AND Prenom='Jason'), TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2023-12-01', 'YYYY-MM-DD'), 5, 'Defenseur');

-- OGC Nice
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Dolberg', 'Kasper', TO_DATE('1997-10-06', 'YYYY-MM-DD'), 'Danois', 78, 192, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lees-Melou', 'Pierre', TO_DATE('1993-10-25', 'YYYY-MM-DD'), 'Francais', 77, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Gouiri', 'Amine', TO_DATE('2000-02-07', 'YYYY-MM-DD'), 'Francais', 78, 180, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Atal', 'Youcef', TO_DATE('1996-05-17', 'YYYY-MM-DD'), 'Algerien', 70, 177, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Dante', 'Bonfim Costa Santos', TO_DATE('1983-10-18', 'YYYY-MM-DD'), 'Bresilien', 85, 188, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Dolberg' AND Prenom='Kasper'), TO_DATE('2023-10-06', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Lees-Melou' AND Prenom='Pierre'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Gouiri' AND Prenom='Amine'), TO_DATE('2023-02-07', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Atal' AND Prenom='Youcef'), TO_DATE('2023-05-17', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 21, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='OGC Nice'), (SELECT Code FROM Joueur WHERE Nom='Dante' AND Prenom='Bonfim Costa Santos'), TO_DATE('2023-10-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 3, 'Defenseur');

-- LOSC Lille
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Yilmaz', 'Burak', TO_DATE('1985-07-15', 'YYYY-MM-DD'), 'Turc', 84, 188, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Araujo', 'Luiz', TO_DATE('1996-03-22', 'YYYY-MM-DD'), 'Bresilien', 73, 183, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Sanches', 'Renato', TO_DATE('1997-08-18', 'YYYY-MM-DD'), 'Portugais', 70, 176, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Botman', 'Sven', TO_DATE('2000-01-12', 'YYYY-MM-DD'), 'Neerlandais', 80, 193, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Maignan', 'Mike', TO_DATE('1995-07-03', 'YYYY-MM-DD'), 'Francais', 80, 188, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Yilmaz' AND Prenom='Burak'), TO_DATE('2023-07-15', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 17, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Araujo' AND Prenom='Luiz'), TO_DATE('2023-03-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Sanches' AND Prenom='Renato'), TO_DATE('2023-08-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 18, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Botman' AND Prenom='Sven'), TO_DATE('2023-01-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 6, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='LOSC Lille'), (SELECT Code FROM Joueur WHERE Nom='Maignan' AND Prenom='Mike'), TO_DATE('2023-07-03', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 16, 'Gardien de but');

-- Girondins de Bordeaux
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Hwang', 'Ui-Jo', TO_DATE('1992-07-28', 'YYYY-MM-DD'), 'Coreen', 76, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('De Preville', 'Gaetan', TO_DATE('1991-05-22', 'YYYY-MM-DD'), 'Francais', 80, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Kwateng', 'Youssouf', TO_DATE('1997-01-09', 'YYYY-MM-DD'), 'Francais', 76, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Oudin', 'Remi', TO_DATE('1996-03-22', 'YYYY-MM-DD'), 'Francais', 75, 184, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Basic', 'Toma', TO_DATE('1996-12-04', 'YYYY-MM-DD'), 'Croate', 78, 186, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Hwang' AND Prenom='Ui-Jo'), TO_DATE('2023-07-28', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='De Preville' AND Prenom='Gaetan'), TO_DATE('2023-05-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Kwateng' AND Prenom='Youssouf'), TO_DATE('2023-01-09', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 2, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Oudin' AND Prenom='Remi'), TO_DATE('2023-03-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 11, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Girondins de Bordeaux'), (SELECT Code FROM Joueur WHERE Nom='Basic' AND Prenom='Toma'), TO_DATE('2023-12-04', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 22, 'Milieu de terrain');

-- FC Nantes
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lafont', 'Alban', TO_DATE('1999-01-23', 'YYYY-MM-DD'), 'Francais', 85, 193, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Simon', 'Moses', TO_DATE('1995-07-12', 'YYYY-MM-DD'), 'Nigerian', 70, 171, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Traore', 'Charles', TO_DATE('1993-01-01', 'YYYY-MM-DD'), 'Ivoirien', 70, 176, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Girotto', 'Andrei', TO_DATE('1992-11-30', 'YYYY-MM-DD'), 'Bresilien', 78, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Blas', 'Ludovic', TO_DATE('1997-12-31', 'YYYY-MM-DD'), 'Francais', 75, 178, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Lafont' AND Prenom='Alban'), TO_DATE('2023-01-23', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1, 'Gardien de but');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Simon' AND Prenom='Moses'), TO_DATE('2023-07-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Traore' AND Prenom='Charles'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 26, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Girotto' AND Prenom='Andrei'), TO_DATE('2022-11-30', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 5, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Nantes'), (SELECT Code FROM Joueur WHERE Nom='Blas' AND Prenom='Ludovic'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 11, 'Milieu de terrain');

-- FC Metz
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Nguette', 'Opa', TO_DATE('1994-01-16', 'YYYY-MM-DD'), 'Senegalais', 76, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Maiga', 'Papa', TO_DATE('1988-04-18', 'YYYY-MM-DD'), 'Malien', 80, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Centonze', 'Fabien', TO_DATE('1996-08-04', 'YYYY-MM-DD'), 'Francais', 75, 181, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Fofana', 'Boubakar', TO_DATE('1991-05-12', 'YYYY-MM-DD'), 'Malien', 75, 179, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Sarr', 'Mamadou Fofana', TO_DATE('1998-03-20', 'YYYY-MM-DD'), 'Senegalais', 82, 183, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Nguette' AND Prenom='Opa'), TO_DATE('2023-01-16', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 11, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Maiga' AND Prenom='Papa'), TO_DATE('2022-04-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Centonze' AND Prenom='Fabien'), TO_DATE('2023-08-04', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 24, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Fofana' AND Prenom='Boubakar'), TO_DATE('2022-05-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 19, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='FC Metz'), (SELECT Code FROM Joueur WHERE Nom='Sarr' AND Prenom='Mamadou Fofana'), TO_DATE('2023-03-20', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 3, 'Defenseur');

-- ES Troyes AC
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Ballo-Toure', 'Fode', TO_DATE('1997-01-03', 'YYYY-MM-DD'), 'Francais', 81, 187, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Raveloson', 'Anicet Abel', TO_DATE('1994-01-15', 'YYYY-MM-DD'), 'Malgache', 71, 176, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Tardieu', 'Yoann', TO_DATE('1993-11-21', 'YYYY-MM-DD'), 'Francais', 72, 180, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Kouame', 'Jeremy', TO_DATE('1998-06-05', 'YYYY-MM-DD'), 'Ivoirien', 77, 185, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Chambost', 'Raphael', TO_DATE('1999-01-08', 'YYYY-MM-DD'), 'Francais', 74, 178, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Ballo-Toure' AND Prenom='Fode'), TO_DATE('2023-01-03', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 15, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Raveloson' AND Prenom='Anicet Abel'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Tardieu' AND Prenom='Yoann'), TO_DATE('2023-11-21', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 18, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Kouame' AND Prenom='Jeremy'), TO_DATE('2023-06-05', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 19, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='ES Troyes AC'), (SELECT Code FROM Joueur WHERE Nom='Chambost' AND Prenom='Raphael'), TO_DATE('2023-01-08', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 28, 'Milieu de terrain');

-- Clermont Foot 63
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Bayo', 'Mohamed', TO_DATE('1997-11-05', 'YYYY-MM-DD'), 'Burkinabe', 81, 188, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Iglesias', 'Jason', TO_DATE('1993-06-18', 'YYYY-MM-DD'), 'Espagnol', 75, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Hountondji', 'Cedric', TO_DATE('1994-12-19', 'YYYY-MM-DD'), 'Beninois', 80, 194, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Rajot', 'Mathis', TO_DATE('2001-01-24', 'YYYY-MM-DD'), 'Francais', 75, 185, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Magnin', 'Johan', TO_DATE('1986-07-17', 'YYYY-MM-DD'), 'Francais', 73, 178, 'Senior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Bayo' AND Prenom='Mohamed'), TO_DATE('2023-11-05', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Iglesias' AND Prenom='Jason'), TO_DATE('2023-06-18', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 7, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Hountondji' AND Prenom='Cedric'), TO_DATE('2023-12-19', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 2, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Rajot' AND Prenom='Mathis'), TO_DATE('2023-01-24', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 26, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='Clermont Foot 63'), (SELECT Code FROM Joueur WHERE Nom='Magnin' AND Prenom='Johan'), TO_DATE('2023-07-17', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 16, 'Milieu de terrain');

-- AJ Auxerre
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Ngando', 'Axel', TO_DATE('1993-12-08', 'YYYY-MM-DD'), 'Francais', 76, 178, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lloris', 'Hugo', TO_DATE('1999-08-09', 'YYYY-MM-DD'), 'Francais', 80, 187, 'Junior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Sakhi', 'Hamza', TO_DATE('1995-10-19', 'YYYY-MM-DD'), 'Francais', 75, 177, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Sidibe', 'Formose', TO_DATE('1999-06-21', 'YYYY-MM-DD'), 'Ivoirien', 77, 186, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Ntumba', 'Bryan', TO_DATE('2002-04-07', 'YYYY-MM-DD'), 'Francais', 74, 184, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Ngando' AND Prenom='Axel'), TO_DATE('2023-12-08', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Lloris' AND Prenom='Hugo'), TO_DATE('2023-08-09', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Sakhi' AND Prenom='Hamza'), TO_DATE('2023-10-19', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Sidibe' AND Prenom='Formose'), TO_DATE('2023-06-21', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AJ Auxerre'), (SELECT Code FROM Joueur WHERE Nom='Ntumba' AND Prenom='Bryan'), TO_DATE('2023-04-07', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 22, 'Milieu de terrain');

-- AC Ajaccio
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Bayala', 'Hassane', TO_DATE('1997-01-01', 'YYYY-MM-DD'), 'Burkinabe', 77, 181, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Lejeune', 'Mickael', TO_DATE('1997-04-16', 'YYYY-MM-DD'), 'Francais', 72, 177, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Marchetti', 'Mathieu', TO_DATE('1987-09-14', 'YYYY-MM-DD'), 'Francais', 76, 177, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Coutadeur', 'Mathieu', TO_DATE('1986-06-17', 'YYYY-MM-DD'), 'Francais', 78, 182, 'Senior');
INSERT INTO Joueur(Nom, Prenom, DateDeNaissance, Nationalite, Poids, Taille, Classe) VALUES('Cisse', 'Dante', TO_DATE('1999-10-22', 'YYYY-MM-DD'), 'Francais', 75, 185, 'Junior');

INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Bayala' AND Prenom='Hassane'), TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 8, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Lejeune' AND Prenom='Mickael'), TO_DATE('2023-04-16', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 9, 'Attaquant');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Marchetti' AND Prenom='Mathieu'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 10, 'Milieu de terrain');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Coutadeur' AND Prenom='Mathieu'), TO_DATE('2023-06-17', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 5, 'Defenseur');
INSERT INTO Equipe(CodeClub, CodeJoueur, DateDebutContrat, DateFinContrat, NumeroMaillot, Poste) VALUES((SELECT CodeClub FROM ClubSportif WHERE NomClub='AC Ajaccio'), (SELECT Code FROM Joueur WHERE Nom='Cisse' AND Prenom='Dante'), TO_DATE('2023-10-22', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 22, 'Milieu de terrain');


/*
    Insertion des arbitres
*/
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Martin', 'Jean', TO_DATE('1980-03-15', 'YYYY-MM-DD'), 1, 'Paris Saint-Germain');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Lefevre', 'Paul', TO_DATE('1985-05-22', 'YYYY-MM-DD'), 2, 'Olympique de Marseille');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Dupont', 'Pierre', TO_DATE('1990-09-10', 'YYYY-MM-DD'), 4, 'Olympique Lyonnais');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Garcia', 'Lucas', TO_DATE('1988-07-03', 'YYYY-MM-DD'), 2, 'AS Monaco FC');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Benoit', 'Alexandra', TO_DATE('1982-12-25', 'YYYY-MM-DD'), 3, 'Girondins de Bordeaux');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Martin', 'Sarah', TO_DATE('1987-04-18', 'YYYY-MM-DD'), 1, 'Lille OSC');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Lemoine', 'Nicolas', TO_DATE('1975-10-30', 'YYYY-MM-DD'), 3, 'Stade Rennais');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Leclerc', 'Melissa', TO_DATE('1992-02-20', 'YYYY-MM-DD'), 1, 'Stade de Reims');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Dubois', 'Thomas', TO_DATE('1984-06-12', 'YYYY-MM-DD'), 2, 'OGC Nice');
INSERT INTO Arbitre(Nom, Prenom, DateDeNaissance, Region, ClubPrefere) VALUES('Moreau', 'Emma', TO_DATE('1989-08-08', 'YYYY-MM-DD'), 2, 'Montpellier HSC');


/*
    Insertion de palmarès
*/
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(1, TO_DATE('2022', 'YYYY'), 'Championnat national', 18, 2);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(3, TO_DATE('2011', 'YYYY'), 'Coupe nationale', 16, 4);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(5, TO_DATE('1994', 'YYYY'), 'Ligue des Champions', 13, 1);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(7, TO_DATE('1978', 'YYYY'), 'Ligue Europa', 12, 0);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(9, TO_DATE('2002', 'YYYY'), 'Coupe du Monde des Clubs', 11, 3);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(11, TO_DATE('2014', 'YYYY'), 'Coupe intercontinentale', 14, 5);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(13, TO_DATE('1999', 'YYYY'), 'Supercoupe nationale', 19, 2);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(15, TO_DATE('1998', 'YYYY'), 'Supercoupe de l''UEFA', 15, 1);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(17, TO_DATE('2016', 'YYYY'), 'Coupe de la Ligue', 20, 4);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(19, TO_DATE('2004', 'YYYY'), 'Coupe de la Confederation', 17, 0);
INSERT INTO Palmarès(CodeClub, Annee, Trophee, NbreMatchsGagnes, NbreMatchsPerdus) VALUES(21, TO_DATE('2009', 'YYYY'), 'Coupe regionale', 16, 2);


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
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Dupont', 'Jean', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Manager', 1, 'Paris');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Martin', 'Sophie', TO_DATE('1988-08-15', 'YYYY-MM-DD'), 'Assistant', 4, 'Lyon');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Lefevre', 'Pierre', TO_DATE('1980-03-10', 'YYYY-MM-DD'), 'Analyste', 2, 'Marseille');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Lemoine', 'Marie', TO_DATE('1987-11-25', 'YYYY-MM-DD'), 'Secretaire', 3, 'Bordeaux');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Leroux', 'Nicolas', TO_DATE('1990-07-03', 'YYYY-MM-DD'), 'Technicien', 2, 'Toulouse');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Fournier', 'Pauline', TO_DATE('1983-12-18', 'YYYY-MM-DD'), 'Comptable', 2, 'Nice');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Mercier', 'Luc', TO_DATE('1986-09-02', 'YYYY-MM-DD'), 'Ingenieur', 4, 'Strasbourg');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Leclerc', 'Celine', TO_DATE('1989-06-29', 'YYYY-MM-DD'), 'Analyste', 1, 'Lille');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Girard', 'Thomas', TO_DATE('1982-04-12', 'YYYY-MM-DD'), 'Manager', 3, 'Nantes');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Legrand', 'Camille', TO_DATE('1984-10-07', 'YYYY-MM-DD'), 'Assistant', 2, 'Montpellier');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Perrin', 'Philippe', TO_DATE('1981-01-23', 'YYYY-MM-DD'), 'Technicien', 3, 'Rennes');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Roussel', 'Isabelle', TO_DATE('1988-02-09', 'YYYY-MM-DD'), 'Ingenieur', 5, 'Grenoble');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Colin', 'Franck', TO_DATE('1987-06-14', 'YYYY-MM-DD'), 'Secretaire', 2, 'Toulon');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Moulin', 'Nathalie', TO_DATE('1980-08-30', 'YYYY-MM-DD'), 'Comptable', 3, 'Angers');
INSERT INTO Personnel(Nom, Prenom, DateDeNaissance, Fonction, Region, Ville) VALUES('Pierre', 'Mathieu', TO_DATE('1983-03-05', 'YYYY-MM-DD'), 'Manager', 4, 'Dijon');
