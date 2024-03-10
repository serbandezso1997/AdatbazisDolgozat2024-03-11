
--Serbán Dezső Dávid
--Szoftverfejlesztő- és Tesztelő technikus I/2/E
--2024-03-07

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 07. 21:33
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
-- Adatbázis: `ugynokseg`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `customername` varchar(50) DEFAULT NULL,
  `tourId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `reservations`
--

INSERT INTO `reservations` (`id`, `date`, `customername`, `tourId`) VALUES
(1, '2024-02-20', 'Kovács Péter', 3),
(2, '2024-02-21', 'Nagy Anna', 12),
(3, '2024-02-22', 'Szabó Gábor', 7),
(4, '2024-02-23', 'Kiss Zsuzsa', 25),
(5, '2024-02-24', 'Tóth István', 14),
(6, '2024-02-25', 'Varga Éva', 6),
(7, '2024-02-26', 'Molnár János', 32),
(8, '2024-02-27', 'Fekete Orsolya', 18),
(9, '2024-02-28', 'Balogh László', 9),
(10, '2024-02-29', 'Király Éva', 2),
(11, '2024-03-01', 'Papp Gergő', 29),
(12, '2024-03-02', 'Horváth Zita', 8),
(13, '2024-03-03', 'Gulyás Tamás', 15),
(14, '2024-03-04', 'Szűcs Katalin', 21),
(15, '2024-03-05', 'Simon Dóra', 27),
(16, '2024-03-06', 'Fehér Máté', 5),
(17, '2024-03-07', 'Boros Enikő', 30),
(18, '2024-03-08', 'Takács Balázs', 11),
(19, '2024-03-09', 'Váradi Petra', 17),
(20, '2024-03-10', 'Rácz Ferenc', 26),
(21, '2024-03-11', 'Kocsis Laura', 23),
(22, '2024-03-12', 'Mészáros András', 20),
(23, '2024-03-13', 'Hajdú Krisztina', 4),
(24, '2024-03-14', 'Bíró Zoltán', 31),
(25, '2024-03-15', 'Pintér Judit', 10),
(26, '2024-03-16', 'Csonka Krisztián', 1),
(27, '2024-03-17', 'Tóth Krisztina', 28),
(28, '2024-03-18', 'Makai Béla', 13),
(29, '2024-03-19', 'Balla Szilvia', 22),
(30, '2024-03-20', 'Király Gábor', 19),
(31, '2024-03-21', 'Bognár Eszter', 16),
(32, '2024-03-22', 'Farkas Gergely', 24),
(33, '2024-03-23', 'Németh Anita', 7),
(34, '2024-03-24', 'Jakab Zsolt', 34);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tours`
--

INSERT INTO `tours` (`id`, `destination`, `duration`, `price`) VALUES
(1, 'Berlin', 2, 75000),
(2, 'Paris', 5, 175000),
(3, 'London', 3, 110000),
(4, 'Rome', 7, 230000),
(5, 'Barcelona', 4, 145000),
(6, 'Vienna', 6, 195000),
(7, 'Amsterdam', 2, 90000),
(8, 'Prague', 3, 120000),
(9, 'Berlin', 4, 128500),
(10, 'Dublin', 5, 160000),
(11, 'Madrid', 7, 210000),
(12, 'Athens', 2, 82000),
(13, 'Munich', 6, 185000),
(14, 'Zurich', 4, 135000),
(15, 'Brussels', 3, 105000),
(16, 'Copenhagen', 5, 155000),
(17, 'Stockholm', 7, 200000),
(18, 'Oslo', 2, 88000),
(19, 'Helsinki', 3, 115000),
(20, 'Warsaw', 4, 130000),
(21, 'Bucharest', 6, 180000),
(22, 'Lisbon', 5, 150000),
(23, 'Dubai', 7, 220000),
(24, 'Istanbul', 2, 80000),
(25, 'Vienna', 3, 125000),
(26, 'Krakow', 4, 132000),
(27, 'Bratislava', 5, 158000),
(28, 'Berlin', 7, 205000),
(29, 'Milan', 2, 92000),
(30, 'Barcelona', 3, 118000),
(31, 'Frankfurt', 4, 126000),
(32, 'Warsaw', 6, 190000),
(33, 'Lisbon', 5, 152000),
(34, 'Copenhagen', 7, 215000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT a táblához `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
