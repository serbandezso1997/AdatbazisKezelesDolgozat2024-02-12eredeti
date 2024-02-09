-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 08. 18:00
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `diary`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `grades`
--

INSERT INTO `grades` (`id`, `grade`, `studentId`) VALUES
(1, 5, 1),
(2, 3, 2),
(3, 5, 3),
(4, 5, 4),
(5, 3, 5),
(6, 5, 6),
(7, 2, 7),
(8, 1, 8),
(9, 5, 1),
(10, 3, 2),
(11, 5, 3),
(12, 5, 4),
(13, 4, 5),
(14, 5, 6),
(15, 3, 7),
(16, 3, 8),
(17, 5, 1),
(18, 3, 2),
(19, 5, 3),
(20, 4, 4),
(21, 5, 5),
(22, 5, 6),
(23, 5, 7),
(24, 2, 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `students`
--

INSERT INTO `students` (`id`, `name`, `city`) VALUES
(1, 'Szerda Ferenc', 'Szeged'),
(2, 'Rendes Géza', 'Szeged'),
(3, 'Ferde József', 'Szolnok'),
(4, 'Csingó Árpád', 'Szolnok'),
(5, 'Cseti Ilona', 'Szeged'),
(6, 'Vesi Péter', 'Hatvan'),
(7, 'Arany Ágnes', 'Miskolc'),
(8, 'Rang Katalain', 'Szeged');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
