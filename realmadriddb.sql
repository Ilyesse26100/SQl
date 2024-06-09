-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 09 juin 2024 à 12:52
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `realmadriddb`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
CREATE TABLE IF NOT EXISTS `equipes` (
  `equipe_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `stade` varchar(255) DEFAULT NULL,
  `entraineur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`equipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`equipe_id`, `nom`, `stade`, `entraineur`) VALUES
(1, 'Real Madrid CF', 'santiago bernabeu', 'Carlo Ancelotti'),
(2, 'Manchester City FC', 'Zetla', 'Pep Guardiola');

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

DROP TABLE IF EXISTS `joueurs`;
CREATE TABLE IF NOT EXISTS `joueurs` (
  `joueur_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `poste` varchar(255) DEFAULT NULL,
  `prix_achat` decimal(10,2) DEFAULT NULL,
  `equipe_id` int DEFAULT NULL,
  PRIMARY KEY (`joueur_id`),
  KEY `equipe_id` (`equipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`joueur_id`, `nom`, `prenom`, `age`, `date_naissance`, `poste`, `prix_achat`, `equipe_id`) VALUES
(1, 'Courtois', 'Thibaut', 31, '1992-05-11', 'Gardien', 75000000.00, 1),
(2, 'dzqzdqd', 'dzqdqz', 32, '1992-01-11', 'gardien', 25000000.00, 1),
(3, 'Militao', 'Eder', 26, '1997-01-18', 'Defenseur', 55000000.00, 1),
(4, 'Alaba', 'David', 31, '1992-06-24', 'Defenseur', 55000000.00, 1),
(5, 'Mendy', 'Ferland', 28, '1995-06-08', 'Defenseur', 30000000.00, 1),
(6, 'Kroos', 'Toni', 34, '1990-01-04', 'Milieu', 30000000.00, 1),
(7, 'Modric', 'Luka', 38, '1985-09-09', 'Milieu', 10000000.00, 1),
(8, 'Valverde', 'Federico', 25, '1998-07-22', 'Milieu', 70000000.00, 1),
(9, 'Camavinga', 'Eduardo', 21, '2002-11-10', 'Milieu', 65000000.00, 1),
(10, 'Vinicius', 'Junior', 23, '2000-07-12', 'Attaquant', 85000000.00, 1),
(11, 'Rodrygo', 'Goes', 23, '2001-01-09', 'Attaquant', 60000000.00, 1),
(12, 'Ederson', 'Moraes', 31, '1993-08-17', 'Gardien', 50000000.00, 2),
(13, 'Walker', 'Kyle', 34, '1990-05-28', 'Defenseur', 20000000.00, 2),
(14, 'Dias', 'Ruben', 27, '1997-05-14', 'Defenseur', 75000000.00, 2),
(15, 'Stones', 'John', 30, '1994-05-28', 'Defenseur', 60000000.00, 2),
(16, 'Cancelo', 'Joao', 30, '1994-05-27', 'Defenseur', 70000000.00, 2),
(17, 'De Bruyne', 'Kevin', 33, '1991-06-28', 'Milieu', 80000000.00, 2),
(18, 'Gundogan', 'Ilkay', 33, '1990-10-24', 'Milieu', 40000000.00, 2),
(19, 'Rodri', 'Hernandez', 27, '1996-06-22', 'Milieu', 75000000.00, 2),
(20, 'Foden', 'Phil', 24, '2000-05-28', 'Milieu', 90000000.00, 2),
(21, 'Haaland', 'Erling', 24, '2000-07-21', 'Attaquant', 99999999.99, 2),
(22, 'Grealish', 'Jack', 28, '1995-09-10', 'Attaquant', 80000000.00, 2);

-- --------------------------------------------------------

--
-- Structure de la table `matches`
--

DROP TABLE IF EXISTS `matches`;
CREATE TABLE IF NOT EXISTS `matches` (
  `match_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `equipe_domicile_id` int DEFAULT NULL,
  `equipe_exterieur_id` int DEFAULT NULL,
  `Resultat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `equipe_domicile_id` (`equipe_domicile_id`),
  KEY `equipe_exterieur_id` (`equipe_exterieur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matches`
--

INSERT INTO `matches` (`match_id`, `date`, `equipe_domicile_id`, `equipe_exterieur_id`, `Resultat`) VALUES
(1, '2024-04-15', 2, 1, '0-1'),
(2, '2024-05-05', 1, 2, '?'),
(3, '2024-06-20', 1, 2, '?');

-- --------------------------------------------------------

--
-- Structure de la table `paris`
--

DROP TABLE IF EXISTS `paris`;
CREATE TABLE IF NOT EXISTS `paris` (
  `paris_id` int NOT NULL AUTO_INCREMENT,
  `match_id` int DEFAULT NULL,
  `supporteur_id` int DEFAULT NULL,
  `mise` decimal(10,2) DEFAULT NULL,
  `Resultat_Prédit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`paris_id`),
  KEY `match_id` (`match_id`),
  KEY `supporteur_id` (`supporteur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `paris`
--

INSERT INTO `paris` (`paris_id`, `match_id`, `supporteur_id`, `mise`, `Resultat_Prédit`) VALUES
(1, 1, 1, 20.00, '1-3');

-- --------------------------------------------------------

--
-- Structure de la table `performances`
--

DROP TABLE IF EXISTS `performances`;
CREATE TABLE IF NOT EXISTS `performances` (
  `performances_id` int NOT NULL AUTO_INCREMENT,
  `joueur_id` int DEFAULT NULL,
  `match_id` int DEFAULT NULL,
  `buts` int DEFAULT '0',
  `passes_decisives` int DEFAULT '0',
  PRIMARY KEY (`performances_id`),
  KEY `joueur_id` (`joueur_id`),
  KEY `match_id` (`match_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `performances`
--

INSERT INTO `performances` (`performances_id`, `joueur_id`, `match_id`, `buts`, `passes_decisives`) VALUES
(1, 7, 1, 0, 1),
(2, 10, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `supporteurs`
--

DROP TABLE IF EXISTS `supporteurs`;
CREATE TABLE IF NOT EXISTS `supporteurs` (
  `supporteur_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`supporteur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `supporteurs`
--

INSERT INTO `supporteurs` (`supporteur_id`, `nom`, `prenom`) VALUES
(1, 'Ilyesse', 'Kebaili');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
