-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 20 nov. 2026 à 13:46
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loc12`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_client` int NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `num_permis` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `prenom`, `num_permis`) VALUES
(200, 'david', 'remy', 1222),
(300, 'dupont', 'clara', 287377);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `num_location` int NOT NULL,
  `date_location` date NOT NULL,
  `id-client` int NOT NULL,
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`num_location`, `date_location`, `id-client`, `immatriculation`) VALUES
(200, '2026-11-03', 200, '300 MY 300'),
(300, '2026-11-10', 300, '500 TU 500');

-- --------------------------------------------------------

--
-- Structure de la table `table reparations`
--

CREATE TABLE `table reparations` (
  `num_rep` int NOT NULL,
  `date_rep` date NOT NULL,
  `type_panne` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `lieu_rep` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prix_rep` int NOT NULL,
  `nbre_jours_rep` int NOT NULL,
  `adresse_mecanicien` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `table reparations`
--

INSERT INTO `table reparations` (`num_rep`, `date_rep`, `type_panne`, `lieu_rep`, `prix_rep`, `nbre_jours_rep`, `adresse_mecanicien`, `immatriculation`) VALUES
(600, '2026-11-06', 'panne moteur ', 'orly ville', 50, 3, 'paris', '500 TU 500'),
(700, '2026-11-04', 'changement pneu', 'villejuif metro ', 150, 5, 'tour effeil ', '300 MY 300');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `immatriculation` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `kilometrage` int NOT NULL,
  `date_circulation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `kilometrage`, `date_circulation`) VALUES
('300 MY 300', 'merco', 127000, '2026-11-10'),
('500 TU 500', 'bmw', 23000, '2026-11-04');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`num_location`),
  ADD KEY `id-client` (`id-client`),
  ADD KEY `immatriculation` (`immatriculation`);

--
-- Index pour la table `table reparations`
--
ALTER TABLE `table reparations`
  ADD PRIMARY KEY (`num_rep`),
  ADD KEY `immatriculation` (`immatriculation`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`immatriculation`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`id-client`) REFERENCES `clients` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `table reparations`
--
ALTER TABLE `table reparations`
  ADD CONSTRAINT `table reparations_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voiture` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
