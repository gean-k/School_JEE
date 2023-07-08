-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 08 juil. 2023 à 14:56
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
  `matElv` varchar(10) NOT NULL,
  `nomElv` varchar(50) NOT NULL,
  `prenomElv` varchar(50) NOT NULL,
  `dateNaissElv` date NOT NULL,
  `lieuNaissElv` varchar(50) NOT NULL,
  `photoElv` varchar(100) NOT NULL,
  `mailElv` varchar(30) NOT NULL,
  `mdpElv` varchar(6) NOT NULL,
  `idSexe` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`matElv`, `nomElv`, `prenomElv`, `dateNaissElv`, `lieuNaissElv`, `photoElv`, `mailElv`, `mdpElv`, `idSexe`) VALUES
('E001', 'Dupont', 'Jean', '1990-05-15', 'Paris', 'photo1.jpg', 'jean.dupont@example.com', '123456', 1),
('E002', 'Martin', 'Sophie', '1992-08-22', 'Lyon', 'photo2.jpg', 'sophie.martin@example.com', '654321', 2),
('E003', 'Dubois', 'Pierre', '1991-11-10', 'Marseille', 'photo3.jpg', 'pierre.dubois@example.com', '987654', 1),
('E004', 'Lefevre', 'Emma', '1993-02-28', 'Toulouse', 'photo4.jpg', 'emma.lefevre@example.com', '456789', 2),
('E005', 'Roux', 'Luc', '1990-07-19', 'Nice', 'photo5.jpg', 'luc.roux@example.com', '987123', 1),
('E006', 'Girard', 'Julie', '1992-10-05', 'Bordeaux', 'photo6.jpg', 'julie.girard@example.com', '321654', 2),
('E007', 'Moreau', 'Thomas', '1991-03-12', 'Lille', 'photo7.jpg', 'thomas.moreau@example.com', '654987', 1),
('E008', 'Lecomte', 'Alice', '1993-06-25', 'Strasbourg', 'photo8.jpg', 'alice.lecomte@example.com', '789456', 2),
('E009', 'Leroy', 'Hugo', '1990-09-08', 'Montpellier', 'photo9.jpg', 'hugo.leroy@example.com', '852369', 1),
('E010', 'Dupuis', 'Camille', '1992-12-01', 'Rennes', 'photo10.jpg', 'camille.dupuis@example.com', '369852', 2);

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
(1, 'Informatique'),
(2, 'Gestion'),
(3, 'Marketing'),
(4, 'Informatique'),
(5, 'Gestion'),
(6, 'Marketing'),
(7, 'Informatique'),
(8, 'Gestion'),
(9, 'Marketing'),
(10, 'Informatique'),
(11, 'Informatique'),
(12, 'Gestion'),
(13, 'Marketing'),
(14, 'Informatique'),
(15, 'Gestion'),
(16, 'Marketing'),
(17, 'Informatique'),
(18, 'Gestion'),
(19, 'Marketing'),
(20, 'Informatique'),
(21, 'Informatique'),
(22, 'Gestion'),
(23, 'Marketing'),
(24, 'Informatique'),
(25, 'Gestion'),
(26, 'Marketing'),
(27, 'Informatique'),
(28, 'Gestion'),
(29, 'Marketing'),
(30, 'Informatique'),
(31, 'Informatique'),
(32, 'Gestion'),
(33, 'Marketing'),
(34, 'Informatique'),
(35, 'Gestion'),
(36, 'Marketing'),
(37, 'Informatique'),
(38, 'Gestion'),
(39, 'Marketing'),
(40, 'Informatique'),
(41, 'Informatique'),
(42, 'Gestion'),
(43, 'Marketing'),
(44, 'Informatique'),
(45, 'Gestion'),
(46, 'Marketing'),
(47, 'Informatique'),
(48, 'Gestion'),
(49, 'Marketing'),
(50, 'Informatique'),
(51, 'Informatique'),
(52, 'Gestion'),
(53, 'Marketing'),
(54, 'Informatique'),
(55, 'Gestion'),
(56, 'Marketing'),
(57, 'Informatique'),
(58, 'Gestion'),
(59, 'Marketing'),
(60, 'Informatique'),
(61, 'Informatique'),
(62, 'Gestion'),
(63, 'Marketing'),
(64, 'Informatique'),
(65, 'Gestion'),
(66, 'Marketing'),
(67, 'Informatique'),
(68, 'Gestion'),
(69, 'Marketing'),
(70, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

CREATE TABLE `inscrit` (
  `matElv` varchar(8) NOT NULL,
  `idNiveau` int NOT NULL,
  `idFiliere` int NOT NULL,
  `DateInscription` date NOT NULL,
  `status_Inscription` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `inscrit`
--

INSERT INTO `inscrit` (`matElv`, `idNiveau`, `idFiliere`, `DateInscription`, `status_Inscription`) VALUES
('E001', 1, 1, '2022-11-01', 0),
('E002', 1, 2, '2022-09-01', 1),
('E003', 2, 1, '2022-05-01', 1),
('E004', 2, 3, '2022-06-01', 1),
('E005', 3, 1, '2022-07-01', 0),
('E006', 1, 3, '2022-07-01', 0),
('E007', 2, 2, '2022-06-01', 0),
('E008', 3, 1, '2022-02-01', 0),
('E009', 1, 2, '2022-02-01', 1),
('E010', 2, 3, '2022-02-01', 1);

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
(5, 'M2', 2),
(6, 'L1', 1),
(7, 'L2', 2),
(8, 'L3', 3),
(9, 'M1', 1),
(10, 'M2', 2),
(11, 'L1', 1),
(12, 'L2', 2),
(13, 'L3', 3),
(14, 'M1', 1),
(15, 'M2', 2),
(16, 'L1', 1),
(17, 'L2', 2),
(18, 'L3', 3),
(19, 'M1', 1),
(20, 'M2', 2),
(21, 'L1', 1),
(22, 'L2', 2),
(23, 'L3', 3),
(24, 'M1', 1),
(25, 'M2', 2);

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
  ADD PRIMARY KEY (`matElv`),
  ADD KEY `idSexe` (`idSexe`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`idFiliere`);

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
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `idFiliere` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
