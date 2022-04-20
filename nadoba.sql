-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 08. 11:31
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `nadoba`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `battlenet`
--

CREATE TABLE `battlenet` (
  `ID` int(30) NOT NULL,
  `Nev` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Tipus` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Kep` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Ar` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `Raktaron` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `battlenet`
--

INSERT INTO `battlenet` (`ID`, `Nev`, `Tipus`, `Kep`, `Ar`, `Raktaron`) VALUES
(1, 'Overwatch Battle.net Key', 'Global', 'overwatch.jpg', '28 EUR', 16),
(2, 'World of Warcraft Time Card Prepaid 60 Days Battle.net', 'Global', '60days.jpeg', '22 EUR', 22),
(3, 'World of Warcraft: Shadowlands | Base Edition', 'Europe', 'shadowlands.jpg', '26 EUR', 10),
(4, 'Diablo 2 (PC) - Battle.net Key ', 'Global', 'diablo2.jpeg', '7 EUR', 25);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(30) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `user_id`, `email`, `username`, `password`, `date`) VALUES
(20, 45612345, 'varsan2002@gmail.com', 'Vargasan', 'rnx2045', '2022-04-08 09:22:36'),
(21, 94817453, 'kisbencerobert2002@gmail.com', 'Troversones', 'Kisdoomritahap45', '2022-04-08 09:22:49'),
(22, 22416523, 'adminlogin@gmail.com', 'admin', 'xAd45BKeL911hgA', '2022-04-08 09:25:48'),
(23, 98127234, 'kisbence500@gmail.com', 'Kis Bence', 'hapiwi45', '2022-04-08 09:27:05'),
(24, 13469172, 'Kincsesvirag@gmail.com', 'Virág Kincses', 'Ilovemycat', '2022-04-08 09:26:55'),
(25, 32471823, 'Mohammadreza@gmail.com', 'Mohammad Reza', 'doggy435', '2022-04-08 09:27:42'),
(26, 46757263, 'katalintakacs@gmail.com', 'takacskatalin', 'fxwha9901', '2022-04-08 09:24:34');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `playstation`
--

CREATE TABLE `playstation` (
  `ID` int(30) NOT NULL,
  `Nev` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Tipus` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Kep` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Ar` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `Raktaron` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `playstation`
--

INSERT INTO `playstation` (`ID`, `Nev`, `Tipus`, `Kep`, `Ar`, `Raktaron`) VALUES
(5, 'Marvel\'s Spider-Man Remastered (PS5) PSN Key', 'Europe', 'spuderman.jpeg', '37 EUR', 11),
(6, 'Ghost of Tsushima: Director\'s Cut (PS5) PSN Key', 'Europe', 'gotdc.jpeg', '73 EUR', 9),
(7, 'Minecraft Starter Collection (PS4/PS5) PSN Key', 'Europe', 'minecraft.jpeg', '18 EUR', 22),
(8, 'Death Stranding Director\'s Cut (PS5) PSN Key', 'Europe', 'deathstranding.jpeg', '30 EUR', 12);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendelesek`
--

CREATE TABLE `rendelesek` (
  `ID` int(30) NOT NULL,
  `Név` varchar(15000) COLLATE utf8_hungarian_ci NOT NULL,
  `Ár` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `username` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Kulcs` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `steam`
--

CREATE TABLE `steam` (
  `ID` int(30) NOT NULL,
  `Nev` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Tipus` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Kep` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Ar` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `Raktaron` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `steam`
--

INSERT INTO `steam` (`ID`, `Nev`, `Tipus`, `Kep`, `Ar`, `Raktaron`) VALUES
(9, 'The Elder Scrolls V: Skyrim (Special edition) Steam Key', 'Global', 'skyrim.jpg', '11 EUR', 6),
(10, 'Terraria (PC) Steam Key', 'Global', 'terraria.jpg', '7 EUR', 11),
(11, 'Middle-earth: Shadow of Mordor (GOTY) Steam Key', 'Global', 'shadowofmordor.jpeg', '3 EUR', 22),
(12, 'No Man\'s Sky steam Key', 'Global', 'nomanssky.jpg', '14 EUR', 22);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `xbox`
--

CREATE TABLE `xbox` (
  `ID` int(30) NOT NULL,
  `Nev` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Tipus` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Kep` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `Ar` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `Raktaron` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `xbox`
--

INSERT INTO `xbox` (`ID`, `Nev`, `Tipus`, `Kep`, `Ar`, `Raktaron`) VALUES
(13, 'Sea of Thieves (Xbox One) Xbox Live', 'Global', 'seaofthieves.jpeg', '15 EUR', 14),
(14, 'Assasin\'s Creed: Unity (Xbox One) Xbox Live', 'Global', 'assasin.jpeg', '2 EUR', 16),
(15, 'Call of Duty: Vanguard (Xbox One) Xbox Live', 'Global', 'callofdutyvangouard.jpeg', '35 EUR', 22),
(16, 'Forza Horizon 4 (Xbox One) Xbox Live', 'Europe', 'forza4.jpeg', '18 EUR', 6);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `battlenet`
--
ALTER TABLE `battlenet`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `playstation`
--
ALTER TABLE `playstation`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `steam`
--
ALTER TABLE `steam`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `xbox`
--
ALTER TABLE `xbox`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `battlenet`
--
ALTER TABLE `battlenet`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `playstation`
--
ALTER TABLE `playstation`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `rendelesek`
--
ALTER TABLE `rendelesek`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `steam`
--
ALTER TABLE `steam`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `xbox`
--
ALTER TABLE `xbox`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
