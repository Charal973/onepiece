-- Création de la table Pirates
CREATE TABLE Pirates (
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    surnom VARCHAR(100),
    prime BIGINT,
    affiliation VARCHAR(100)
);

-- Création de la table FruitsDuDémon
CREATE TABLE FruitsDuDémon (
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    type VARCHAR(50),
    description TEXT
);

-- Création de la table Équipages
CREATE TABLE Equipages (
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    capitaine_id INT,
    FOREIGN KEY (capitaine_id) REFERENCES Pirates(id)
);

INSERT INTO Pirates (id, nom, surnom, prime, affiliation) VALUES
(1, 'Monkey D. Luffy', 'Chapeau de Paille', 300000000, 'Équipage du Chapeau de Paille'),
(2, 'Roronoa Zoro', 'Pirate Chasseur de Pirates', 1111000000, 'Équipage du Chapeau de Paille'),
(3, 'Nami', 'La navigatrice', 366000000, 'Équipage du Chapeau de Paille'),
(4, 'Usopp', 'Sniper King', 500000000, 'Équipage du Chapeau de Paille'),
(5, 'Sanji', 'Le cuistot', 1032000000, 'Équipage du Chapeau de Paille'),
(6, 'Tony Tony Chopper', 'Le médecin', 1000, 'Équipage du Chapeau de Paille'),
(7, 'Nico Robin', 'Lumière de la Révolution', 930000000, 'Équipage du Chapeau de Paille'),
(8, 'Franky', 'Le cyborg', 394000000, 'Équipage du Chapeau de Paille'),
(9, 'Brook', 'Le musicien', 383000000, 'Équipage du Chapeau de Paille'),
(10, 'Jinbe', 'Le chevalier de la mer', 1100000000, 'Équipage du Chapeau de Paille');

INSERT INTO FruitsDuDémon (id, nom, type, description) VALUES
(1, 'Gomu Gomu no Mi', 'Paramecia', 'Permet à l utilisateur de devenir un homme élastique.'),
(2, 'Hana Hana no Mi', 'Paramecia', 'Permet à l utilisateur de faire pousser des parties de son corps sur des surfaces.'),
(3, 'Hitto Hitto no Mi', 'Paramecia', 'Permet à l utilisateur de créer et de contrôler les tempêtes.'),
(4, 'Mera Mera no Mi', 'Logia', 'Permet à l utilisateur de devenir et de contrôler le feu.'),
(5, 'Gura Gura no Mi', 'Paramecia', 'Permet à l utilisateur de créer des séismes.'),
(6, 'Yami Yami no Mi', 'Logia', 'Permet à l utilisateur de manipuler et d absorber les ténèbres.'),
(7, 'Ope Ope no Mi', 'Paramecia', 'Permet à l utilisateur de créer une zone sphérique à l intérieur de laquelle il peut contrôler tout.'),
(8, 'Goro Goro no Mi', 'Logia', 'Permet à l utilisateur de devenir et de contrôler la foudre.'),
(9, 'Pika Pika no Mi', 'Logia', 'Permet à l utilisateur de devenir et de contrôler la lumière.'),
(10, 'Moku Moku no Mi', 'Logia', 'Permet à l utilisateur de devenir et de contrôler la fumée.');


INSERT INTO Equipages (id, nom, capitaine_id) VALUES
(1, 'Équipage du Chapeau de Paille', 1),
(2, 'Équipage de Baggy le Clown', 11),
(3, 'Équipage du Lion d Or', 12),
(4, 'Équipage de Barbe Noire', 13),
(5, 'Équipage du Heart', 14),
(6, 'Équipage des Pirates du Soleil', 15),
(7, 'Équipage du Fire Tank', 16),
(8, 'Équipage des Pirates du Soleil', 17),
(9, 'Équipage du New Onigashima', 18),
(10, 'Équipage des Pirates à Long Bras', 19);
