-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 jan. 2024 à 19:03
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `campus_university`
--

-- --------------------------------------------------------

--
-- Structure de la table `fees`
--

CREATE TABLE `fees` (
  `mobile` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fees`
--

INSERT INTO `fees` (`mobile`, `month`, `amount`) VALUES
('0611111111', 'Jan-2024', '6000'),
('0611112222', 'Jan-2024', '6000'),
('0511110000', 'Jan-2024', '6000');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `number` varchar(10) NOT NULL,
  `activate` varchar(50) NOT NULL,
  `roomStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`number`, `activate`, `roomStatus`) VALUES
('003', 'Yes', 'Not Booked'),
('005', 'Yes', 'Not Booked'),
('123', 'Yes', 'Not Booked'),
('124', 'Yes', 'Not Booked'),
('125', 'Yes', 'Not Booked'),
('126', 'Yes', 'Not Booked');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `mobile` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `college_name` varchar(50) NOT NULL,
  `massar_code` varchar(50) NOT NULL,
  `room_number` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`mobile`, `name`, `father_name`, `mother_name`, `email`, `address`, `college_name`, `massar_code`, `room_number`, `status`) VALUES
('0511110000', 'noha ', 'mohammed', 'fatima', 'noha@gmail.com', 'marrakech', 'ensa', 'G12346789', '125', 'Living'),
('0611111111', 'khadija laamiri', 'abd el jalil laamiri', 'aicha lahmidi', 'khadija.laamiri19@gmail.com', 'marrakech', 'ensa', 'G132487644', '004', 'Living'),
('0611112222', 'hiba enami', 'mohammed enami', 'khadija allam', 'hiba.mohamed19@gmail.com', 'marrakech', 'ensa', 'F34589008', '123', 'Living'),
('100', 'hdskfiu4972', '3wf', 'dgdsg', 'dsvdfb@gmail.com', 'dfiweu', 'enaan', 'iewjfpjqf', '002', 'living'),
('5656', 'Enami', 'Mustpha', 'Malika', 'email@gmail.com', 'marrakech', 'ENSA', 'g123456789', '002', 'leaved');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verifyCode` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userID`, `userName`, `email`, `password`, `verifyCode`, `status`) VALUES
(46, 'enami fatima', 'enamifatimazahrae@gmail.com', 'enn123', '', 'Verified');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`number`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`mobile`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userID` (`userID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
