-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 17 juil. 2023 à 09:51
-- Version du serveur : 8.0.30
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `etudiants_jee`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `idClasse` int NOT NULL,
  `libClasse` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`idClasse`, `libClasse`) VALUES
(1, 'Classe A'),
(2, 'Classe B'),
(3, 'Classe C');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `idEleve` int NOT NULL,
  `matElv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0000',
  `nomElv` varchar(50) NOT NULL,
  `prenomElv` varchar(50) NOT NULL,
  `dateNaissElv` varchar(10) NOT NULL,
  `lieuNaissElv` varchar(50) NOT NULL,
  `photoElv` varchar(100) NOT NULL,
  `mailElv` varchar(30) NOT NULL,
  `mdpElv` varchar(6) NOT NULL,
  `idSexe` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`idEleve`, `matElv`, `nomElv`, `prenomElv`, `dateNaissElv`, `lieuNaissElv`, `photoElv`, `mailElv`, `mdpElv`, `idSexe`) VALUES
(1, '0000', 'a', 'z', '2001-05-04', 'ALEPE', 'a.jpg', 'a@a.a', 'azerty', 1),
(2, 'E001', 'Dupont', 'Jean', '', 'Paris', 'photo1.jpg', 'test@gmail.com', '123456', 1),
(3, 'E002', 'Martin', 'Sophie', '', 'Lyon', 'photo2.jpg', 'sophie.martin@example.com', '654321', 2),
(4, 'E003', 'Dubois', 'Pierre', '', 'Marseille', 'photo3.jpg', 'pierre.dubois@example.com', '987654', 1),
(5, 'E004', 'Lefevre', 'Emma', '', 'Toulouse', 'photo4.jpg', 'emma.lefevre@example.com', '456789', 2),
(6, 'E005', 'Roux', 'Luc', '', 'Nice', 'photo5.jpg', 'luc.roux@example.com', '987123', 1),
(7, 'E006', 'Girard', 'Julie', '', 'Bordeaux', 'photo6.jpg', 'julie.girard@example.com', '321654', 2),
(8, 'E007', 'Moreau', 'Thomas', '', 'Lille', 'photo7.jpg', 'thomas.moreau@example.com', '654987', 1),
(9, 'E008', 'Lecomte', 'Alice', '', 'Strasbourg', 'photo8.jpg', 'alice.lecomte@example.com', '789456', 2),
(10, 'E009', 'Leroy', 'Hugo', '', 'Montpellier', 'photo9.jpg', 'hugo.leroy@example.com', '852369', 1),
(11, 'E010', 'Dupuis', 'Camille', '', 'Rennes', 'photo10.jpg', 'camille.dupuis@example.com', '369852', 2),
(12, '0000', 'asd', 'zs', '2008-05-04', 'ALsEPE', 'ad.jpg', 'ab@ab.ab', 'azty', 2),
(13, '0000', 'asd', 'zs', '2008-05-04', 'ALsEPE', 'ad.jpg', 'ab@ab.ab', 'azty', 2),
(14, '0000', 'a', 'z', '2001-05-04', 'ALEPE', 'a.jpg', 'a@a.a', 'azerty', 1),
(15, '0000', 'asd', 'zs', '2008-05-04', 'ALsEPE', 'ad.jpg', 'ab@ab.ab', 'azty', 2),
(16, '0000', 'asd', 'zs', '2008-05-04', 'ALsEPE', 'ad.jpg', 'ab@ab.ab', 'azty', 2),
(17, '0000', 'asd', 'zs', '2008-05-04', 'ALsEPE', 'ad.jpg', 'ab@ab.ab', 'azty', 2),
(18, 'ccc', 'koulibaly', 'Ange', '2023-07-28', 'Bondoukou', 'détailVoiture.png', 'c@c.c', 'azert', 1),
(19, 'betsa', 'gongoua', 'zouzoua', '2023-08-08', 'man', 'IconeRecerche.jpeg', 'z@z.c', 'zzzzzz', 1),
(20, 'tttt', '', '', '', '', '', '', '', 1),
(21, 'tttt', '', '', '', '', '', '', '', 1),
(22, '1azni', 'YAO', 'KAN', '2023-07-22', '', 'a.webp', 'yao@gmail.com', 'yao', 1),
(23, '0000', 'dely', 'ange', '2023-07-10', 'man', 'daciaduster2022.jpg', 'delyange.diomande@gmail.com', 'www', 1),
(24, '0000', 'dely', 'ange', '2023-08-05', 'Alepe', '', 'azerty@gmail.com', 'azerty', 1);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `idFiliere` int NOT NULL,
  `nomFiliere` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`idFiliere`, `nomFiliere`) VALUES
(71, 'actuariat'),
(72, 'statistique'),
(73, 'miage'),
(74, 'comptabilite');

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire`
--

CREATE TABLE `gestionnaire` (
  `id_gestionaire` int NOT NULL,
  `mailGest` varchar(50) NOT NULL,
  `mdpGest` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `gestionnaire`
--

INSERT INTO `gestionnaire` (`id_gestionaire`, `mailGest`, `mdpGest`) VALUES
(1, 'root@root.root', 'root');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

CREATE TABLE `inscrit` (
  `matElv` varchar(8) NOT NULL,
  `idNiveau` int NOT NULL,
  `idFiliere` int NOT NULL,
  `DateInscription` varchar(18) NOT NULL,
  `status_Inscription` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `inscrit`
--

INSERT INTO `inscrit` (`matElv`, `idNiveau`, `idFiliere`, `DateInscription`, `status_Inscription`) VALUES
('E001', 1, 1, '', 0),
('E002', 1, 2, '', 1),
('E003', 2, 1, '', 1),
('E004', 2, 3, '', 1),
('E005', 3, 1, '', 0),
('E006', 1, 3, '', 0),
('E007', 2, 2, '', 0),
('E008', 3, 1, '', 0),
('E009', 1, 2, '', 1),
('E010', 2, 3, '', 1),
('007', 1, 74, '06-05-2023', 0),
('007', 1, 74, '06-05-2023', 0),
('008', 1, 74, '24-05-2023', 0),
('008', 1, 74, '24-05-2023', 0),
('009', 2, 72, '25-06-2023', 0),
('009', 2, 72, '25-06-2023', 0),
('219', 2, 72, '25-06-2023', 0),
('119', 2, 72, '25-06-2023', 0),
('219', 2, 72, '25-06-2023', 0),
('319', 2, 72, '25-06-2023', 0),
('119', 2, 72, '25-06-2023', 0),
('119', 2, 72, '25-06-2023', 0),
('119', 2, 72, '25-06-2023', 0),
('219', 2, 72, '25-06-2023', 0),
('219', 2, 72, '25-06-2023', 0),
('19', 2, 72, '25-06-2023', 0),
('20', 2, 72, '25-06-2023', 0),
('20', 2, 72, '25-06-2023', 0),
('20', 2, 72, '25-06-2023', 0),
('12jiini', 2, 72, '25-06-2023', 0),
('1azni', 2, 72, '25-06-2023', 0),
('22222', 2, 73, '11-11-111', 0),
('4444', 4, 74, '44-44-444', 0),
('4444', 4, 74, '44-44-444', 0),
('5555', 2, 71, '55-55-555', 0),
('5555', 2, 71, '55-55-555', 0),
('5555', 2, 71, '55-55-555', 0),
('5555', 2, 71, '55-55-555', 0),
('5555', 2, 71, '55-55-555', 0),
('5555', 2, 71, '55-55-555', 0),
('5555', 2, 71, '55-55-555', 0),
('666', 3, 74, '66-66-66', 0),
('777', 4, 72, '77-77-77', 0),
('777', 4, 72, '77-77-77', 0),
('1234', 1, 74, '33-33-3333', 0),
('AZERTY', 5, 74, 'sd', 0),
('4444', 4, 74, '44-44-444', 0),
('sqd', 1, 74, 'za', 0),
('sqd', 1, 74, 'za', 0),
('', 1, 74, '', 0),
('1111', 1, 74, 'za', 0),
('', 1, 74, '', 0),
('', 1, 74, '', 0),
('4444', 4, 74, '44-44-444', 0),
('4444', 4, 74, '44-44-444', 0),
('AZERTY', 1, 74, 'za', 0),
('qsd', 1, 74, '30-06-2023', 0),
('tttt', 1, 74, '', 0),
('tttt', 1, 74, '', 0),
('cvbn', 1, 74, 'za', 0),
('AZERTY', 1, 74, '', 0),
('AAAAAAAA', 3, 74, 'BBBB', 0),
('XXXX', 1, 74, 'DDDD', 0),
('ccc', 1, 74, '22-22-2222', 0),
('ccc', 1, 74, '22-22-2222', 0),
('AZERTY', 1, 74, '', 0),
('betsa', 1, 73, '22-22-2222', 0);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `idNiveau` int NOT NULL,
  `libNiveau` varchar(50) NOT NULL,
  `idClasse` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`idNiveau`, `libNiveau`, `idClasse`) VALUES
(1, 'L1', 1),
(2, 'L2', 2),
(3, 'L3', 3),
(4, 'M1', 1),
(5, 'M2', 2);

-- --------------------------------------------------------

--
-- Structure de la table `sexe`
--

CREATE TABLE `sexe` (
  `idSexe` int NOT NULL,
  `libSexe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sexe`
--

INSERT INTO `sexe` (`idSexe`, `libSexe`) VALUES
(1, 'Masculin'),
(2, 'Féminin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`idClasse`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`idEleve`),
  ADD KEY `idSexe` (`idSexe`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`idFiliere`);

--
-- Index pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  ADD PRIMARY KEY (`id_gestionaire`);

--
-- Index pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD KEY `matElv` (`matElv`),
  ADD KEY `idNiveau` (`idNiveau`),
  ADD KEY `idFiliere` (`idFiliere`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`idNiveau`),
  ADD KEY `idClasse` (`idClasse`);

--
-- Index pour la table `sexe`
--
ALTER TABLE `sexe`
  ADD PRIMARY KEY (`idSexe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `idClasse` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `idEleve` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `idFiliere` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  MODIFY `id_gestionaire` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `idNiveau` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `sexe`
--
ALTER TABLE `sexe`
  MODIFY `idSexe` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
