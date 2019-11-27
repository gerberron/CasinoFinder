-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Nov 2019 um 10:22
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `casino_finder`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `casino`
--

CREATE TABLE `casino` (
  `ID_casino` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `bewertung` int(5) NOT NULL,
  `strasse` varchar(30) NOT NULL,
  `nummer` int(11) NOT NULL,
  `standort_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `casino`
--

INSERT INTO `casino` (`ID_casino`, `name`, `bewertung`, `strasse`, `nummer`, `standort_ID`) VALUES
(1, 'Grand Casino Bern', 4, 'Kornhausstrasse', 3, 2),
(2, 'Grand Casino Luzern', 4, 'Haldenstrasse', 6, 3),
(3, 'Grand Casino Baden', 4, 'Haselstrasse', 2, 12),
(4, 'Grand Casino Zuerich', 4, 'Gessnerallee', 3, 4),
(5, 'Grand Casino Basel', 4, 'Flughafenstrasse', 225, 5),
(6, 'Casino Pfaeffikon', 4, 'Sedammstrasse', 3, 6),
(7, 'Casino Barrière Mont', 4, 'Rue du Théâtre', 9, 8),
(8, 'Casino St. Gallen', 4, 'St. Jakob-Strasse', 55, 9),
(9, 'Theater Casino Zug', 4, 'Artherstrasse', 4, 10),
(10, 'Casino St. Moritz', 5, 'Via Mezdi', 29, 11),
(11, 'Spielsalon Playland ', 2, 'Hintere Bahnhofstrasse', 42, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `land`
--

CREATE TABLE `land` (
  `ID_land` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `land`
--

INSERT INTO `land` (`ID_land`, `name`) VALUES
(1, 'Schweiz');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `oeffnungszeiten`
--

CREATE TABLE `oeffnungszeiten` (
  `ID_oeffnungszeiten` int(11) NOT NULL,
  `wochentag_ID` int(11) NOT NULL,
  `casino_ID` int(11) NOT NULL,
  `ab` varchar(20) NOT NULL,
  `bis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `oeffnungszeiten`
--

INSERT INTO `oeffnungszeiten` (`ID_oeffnungszeiten`, `wochentag_ID`, `casino_ID`, `ab`, `bis`) VALUES
(1, 1, 1, '12:00', '02:00'),
(2, 2, 1, '12:00', '02:00'),
(3, 3, 1, '12:00', '02:00'),
(4, 4, 1, '12:00', '04:00'),
(5, 5, 1, '12:00', '05:00'),
(6, 6, 1, '12:00', '05:00'),
(7, 7, 1, '12:00', '02:00'),
(8, 1, 2, '09:00', '04:00'),
(9, 2, 2, '09:00', '04:00'),
(10, 3, 2, '09:00', '04:00'),
(11, 4, 2, '09:00', '04:00'),
(12, 5, 2, '09:00', '05:00'),
(13, 6, 2, '09:00', '05:00'),
(14, 7, 2, '09:00', '04:00'),
(15, 1, 3, '11:00', '04:00'),
(16, 2, 3, '11:00', '04:00'),
(17, 3, 3, '11:00', '04:00'),
(18, 4, 3, '11:00', '04:00'),
(19, 5, 3, '11:00', '05:00'),
(20, 6, 3, '11:00', '05:00'),
(21, 7, 3, '11:00', '04:00'),
(22, 1, 4, '11:00', '04:00'),
(23, 2, 4, '11:00', '04:00'),
(24, 3, 4, '11:00', '04:00'),
(25, 4, 4, '11:00', '04:00'),
(26, 5, 4, '11:00', '07:00'),
(27, 6, 4, '11:00', '07:00'),
(28, 7, 4, '11:00', '04:00'),
(29, 1, 5, '10:00', '03:00'),
(30, 2, 5, '10:00', '03:00'),
(31, 3, 5, '10:00', '03:00'),
(32, 4, 5, '10:00', '03:00'),
(33, 5, 5, '10:00', '05:00'),
(34, 6, 5, '10:00', '05:00'),
(35, 7, 5, '10:00', '03:00'),
(36, 1, 6, '12:00', '03:00'),
(37, 2, 6, '12:00', '03:00'),
(38, 3, 6, '12:00', '03:00'),
(39, 4, 6, '12:00', '03:00'),
(40, 5, 6, '12:00', '05:00'),
(41, 6, 6, '12:00', '05:00'),
(42, 7, 6, '12:00', '03:00'),
(43, 1, 7, '10:00', '03:00'),
(44, 2, 7, '10:00', '03:00'),
(45, 3, 7, '10:00', '03:00'),
(46, 4, 7, '10:00', '03:00'),
(47, 5, 7, '10:00', '05:00'),
(48, 6, 7, '10:00', '05:00'),
(49, 7, 7, '10:00', '03:00'),
(50, 1, 8, '09:00', '03:00'),
(51, 2, 8, '09:00', '03:00'),
(52, 3, 8, '09:00', '03:00'),
(53, 4, 8, '09:00', '03:00'),
(54, 5, 8, '09:00', '04:00'),
(55, 6, 8, '09:00', '04:00'),
(56, 7, 8, '09:00', '03:00'),
(57, 1, 9, '11:00', '23:00'),
(58, 2, 9, '11:00', '23:00'),
(59, 3, 9, '11:00', '23:00'),
(60, 4, 9, '11:00', '23:00'),
(61, 5, 9, '11:00', '23:00'),
(62, 6, 9, '16:00', '23:00'),
(63, 7, 9, '16:00', '23:00'),
(64, 1, 10, '20:00', '03:00'),
(65, 2, 10, '20:00', '03:00'),
(66, 3, 10, '20:00', '03:00'),
(67, 4, 10, '20:00', '03:00'),
(68, 5, 10, '20:00', '03:00'),
(69, 6, 10, '20:00', '03:00'),
(70, 7, 10, '20:00', '03:00'),
(71, 1, 11, '12:00', '22:00'),
(72, 2, 11, '12:00', '22:00'),
(73, 3, 11, '12:00', '22:00'),
(74, 4, 11, '12:00', '22:00'),
(75, 5, 11, '12:00', '23:00'),
(76, 6, 11, '12:00', '23:00'),
(77, 7, 11, '12:00', '22:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `standort`
--

CREATE TABLE `standort` (
  `ID_standort` int(11) NOT NULL,
  `stadt` varchar(20) NOT NULL,
  `land_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `standort`
--

INSERT INTO `standort` (`ID_standort`, `stadt`, `land_ID`) VALUES
(2, 'Bern', 1),
(3, 'Luzern', 1),
(4, 'Zuerich', 1),
(5, 'Basel', 1),
(6, 'Pfaeffikon', 1),
(7, 'Schaffhausen', 1),
(8, 'Montraux', 1),
(9, 'St. Gallen', 1),
(10, 'Zug', 1),
(11, 'St. Moritz', 1),
(12, 'Baden', 1),
(13, 'Aarau', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wochentag`
--

CREATE TABLE `wochentag` (
  `ID_wochentag` int(11) NOT NULL,
  `wochentag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `wochentag`
--

INSERT INTO `wochentag` (`ID_wochentag`, `wochentag`) VALUES
(1, 'Montag'),
(2, 'Dienstag'),
(3, 'Mittwoch'),
(4, 'Donnerstag'),
(5, 'Freitag'),
(6, 'Samstag'),
(7, 'Sonntag');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `casino`
--
ALTER TABLE `casino`
  ADD PRIMARY KEY (`ID_casino`);

--
-- Indizes für die Tabelle `land`
--
ALTER TABLE `land`
  ADD PRIMARY KEY (`ID_land`);

--
-- Indizes für die Tabelle `oeffnungszeiten`
--
ALTER TABLE `oeffnungszeiten`
  ADD PRIMARY KEY (`ID_oeffnungszeiten`),
  ADD KEY `wochentag_ID` (`wochentag_ID`),
  ADD KEY `casino_ID` (`casino_ID`);

--
-- Indizes für die Tabelle `standort`
--
ALTER TABLE `standort`
  ADD PRIMARY KEY (`ID_standort`),
  ADD KEY `land_ID` (`land_ID`);

--
-- Indizes für die Tabelle `wochentag`
--
ALTER TABLE `wochentag`
  ADD PRIMARY KEY (`ID_wochentag`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `casino`
--
ALTER TABLE `casino`
  MODIFY `ID_casino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `land`
--
ALTER TABLE `land`
  MODIFY `ID_land` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `oeffnungszeiten`
--
ALTER TABLE `oeffnungszeiten`
  MODIFY `ID_oeffnungszeiten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT für Tabelle `standort`
--
ALTER TABLE `standort`
  MODIFY `ID_standort` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `wochentag`
--
ALTER TABLE `wochentag`
  MODIFY `ID_wochentag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `oeffnungszeiten`
--
ALTER TABLE `oeffnungszeiten`
  ADD CONSTRAINT `casino_ID` FOREIGN KEY (`casino_ID`) REFERENCES `casino` (`ID_casino`),
  ADD CONSTRAINT `wochentag_ID` FOREIGN KEY (`wochentag_ID`) REFERENCES `wochentag` (`ID_wochentag`);

--
-- Constraints der Tabelle `standort`
--
ALTER TABLE `standort`
  ADD CONSTRAINT `land_ID` FOREIGN KEY (`land_ID`) REFERENCES `land` (`ID_land`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
