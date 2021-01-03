-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 03 jan. 2021 à 20:09
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocomplete`
--

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `title`) VALUES
(1, 'Le cercle des poètes disparus'),
(2, 'Forrest Gump'),
(3, 'Les évadés'),
(4, 'Paul'),
(5, 'Les temps modernes'),
(6, 'Les trois frères'),
(7, 'Pulp fiction'),
(8, 'Snowden'),
(9, 'Sharknado 6 '),
(10, 'Chihiro'),
(11, 'Back to the future'),
(12, 'Wayne\'s world'),
(13, 'Snatch'),
(14, 'Lost highway'),
(15, 'La cité de la peur'),
(16, 'Limitless'),
(17, 'Kaamelott'),
(18, 'Le Hobbit'),
(19, 'Divergente'),
(20, 'Les gardiens de la galaxie'),
(21, 'Hold Up !');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
