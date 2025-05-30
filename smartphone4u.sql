-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 nov 2024 om 08:46
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartphone4u`
--
CREATE DATABASE IF NOT EXISTS `smartphone4u` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smartphone4u`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `smartphone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `purchase`
--

INSERT INTO `purchase` (`id`, `fname`, `lname`, `email`, `address`, `zipcode`, `city`, `date`, `smartphone_id`) VALUES
(1, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 8),
(2, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 8),
(3, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 9),
(4, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 5),
(5, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 7),
(6, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 5),
(7, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 10),
(8, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 1),
(9, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 9),
(10, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 5),
(11, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 8),
(12, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 9),
(13, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-06-21', 8),
(14, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-09-24', 8),
(15, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-09-27', 8),
(16, 'Donald', 'Duck', 'donald@duck.nl', 'duckstraat 1', '1234DD', 'Duck city', '2024-09-27', 8),
(17, 'Donald', 'Duck', 'donald@duck.nl', 'Duckstad 7', '1234DF', 'Delft', '2024-10-10', 10),
(18, 'Donald', 'Duck', 'duck@duck.nl', 'a', '344', 'rrwer', '2024-10-29', 9),
(19, 'Piet', 'de Wit', 'l@l.nl', 'beetje', '2345DF', 'Delft', '2024-11-04', 8);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `smartphone`
--

CREATE TABLE `smartphone` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `smartphone`
--

INSERT INTO `smartphone` (`id`, `name`, `picture`, `description`, `price`, `vendor_id`) VALUES
(1, 'Samsung Galaxy S24 256GB Zwart 5G', 'galaxy24_black.png', 'De Samsung Galaxy S24 256GB Zwart 5G is een compacte topklasse smartphone met een ingebouwde AI assistent. Met Galaxy AI bewerk je gemakkelijk foto\'s en teksten of vertaal je zelfs live telefoongesprekken. Dankzij het 6,2 inch full hd scherm past de Samsung S24 gemakkelijk in je broekzak. De Galaxy S24 is geschikt voor de zwaarste taken. Je speelt zonder problemen 3D games of bewerkt foto\'s en video\'s. Op de achterkant van de Samsung S24 vind je 3 camera\'s: een standaard-, groothoek- en telelens. Hiermee maak je ook bij weinig licht haarscherpe foto\'s en 8K video\'s. De 4.000 mAh batterij van de S24 is aan de kleine kant. Bij intensief gebruik moet je het toestel gedurende de dag opladen. Dit doe je met een los verkrijgbare 25 watt snellader. Op het ruime 256 GB opslaggeheugen is ruimte voor foto\'s, apps en series of films die je downloadt.\r\n', 959.00, 2),
(5, 'Samsung Galaxy A35 128GB Donkerblauw 5G', 'galaxy35_black.png', 'De Samsung Galaxy A35 128GB Donkerblauw 5G is een middenklasse smartphone waar je scherpe foto\'s mee maakt. Op de achterkant vind je een standaard-, groothoek- en een macrolens. Met de groothoeklens maak je gemakkelijk foto\'s van een groot gebouw of weids landschap. Je bewaart je foto\'s, apps en andere bestanden op het 128 GB opslaggeheugen. Wil je niet om de zoveel tijd het geheugen opruimen? Ga dan voor de 256 GB variant van de A35. Op het 6,6 inch full hd scherm van de Samsung A35 kijk je naar series op Netflix of video\'s op YouTube. Wel bedien je het scherm door zijn formaat moeilijk met één hand. De Samsung A35 is geschikt voor lichte spellen en apps zoals Instagram. Dankzij de grote 5.000 mAh batterij gaat de Galaxy A35 bij gemiddeld gebruik een hele dag mee. Je laadt de batterij op met een los verkrijgbare 25 watt snellader. Binnen 30 minuten zit de batterij voor ongeveer 60 procent vol.\r\n\r\n\r\n', 379.00, 2),
(7, 'Apple iPhone 14 128GB Zwart', 'iphone14_128black.png', 'Apple iPhone 14 128GB Zwart is een alleskunner. Met de verbeterde standaard- en groothoeklens maak je nog scherpere foto\'s dan zijn voorganger, Apple iPhone 13. Daarnaast heeft de TrueDepth selfiecamera autofocus. Zo ligt de focus sneller op je gezicht en blijft het beeld bijvoorbeeld scherp als je beweegt tijdens het videobellen, ook bij weinig licht. Dankzij de krachtige A15 Bionic chip en 4 GB werkgeheugen bewerk je snel al je foto\'s en multitask je erop los. Je bewaart je foto\'s en apps op het 128 GB opslaggeheugen. Met de speciale Action Mode blijven al je video\'s stabiel als je iets opneemt waarbij je veel beweegt. Op het 6,1 inch OLED scherm kijk je in hoge kwaliteit naar al je favoriete series en films. Wil je meer schermruimte? Kies van voor iPhone 14 Plus.', 749.00, 1),
(8, 'Apple iPhone 14 128GB Blauw', 'iphone14_128blue.png', 'Apple iPhone 14 128GB Blauw is een alleskunner. Met de verbeterde standaard- en groothoeklens maak je nog scherpere foto\'s dan zijn voorganger, Apple iPhone 13. Daarnaast heeft de TrueDepth selfiecamera autofocus. Zo ligt de focus sneller op je gezicht en blijft het beeld bijvoorbeeld scherp als je beweegt tijdens het videobellen, ook bij weinig licht. Dankzij de krachtige A15 Bionic chip en 4 GB werkgeheugen bewerk je snel al je foto\'s en multitask je erop los. Je bewaart je foto\'s en apps op het 128 GB opslaggeheugen. Met de speciale Action Mode blijven al je video\'s stabiel als je iets opneemt waarbij je veel beweegt. Op het 6,1 inch OLED scherm kijk je in hoge kwaliteit naar al je favoriete series en films. Wil je meer schermruimte? Kies van voor iPhone 14 Plus.\r\n\r\n\r\n', 749.00, 1),
(9, 'Apple iPhone 15 128GB Roze', 'iphone15_128pink.png', 'Apple iPhone 15 128GB Roze is het instapmodel in de iPhone 15 serie met een 6.1 inch scherm. De smartphone heeft 2 camera\'s op de achterkant. Hiermee maak je mooie foto\'s. Dankzij de extra zoom-functie zoom je 2 keer in met minder kwaliteitsverlies. Met de groothoeklens zet je ook grote gebouwen volledig op de foto. Met Dynamic Island voer je snelle acties uit, zo pauzeer je bijvoorbeeld je muziek. De batterij van iPhone 15 gaat bij gemiddeld gebruik één dag mee. Deze iPhone heeft een usb C aansluiting, daardoor passen je oude accessoires met een Lightning aansluiting niet meer. Je hebt beperkt ruimte voor je foto\'s en video\'s op het 128 GB opslaggeheugen. Ga voor 256 GB opslaggeheugen, want dan hoef je minder vaak je bestanden over te zetten.\r\n\r\nLet op: Apple levert geen oplader en oordopjes mee. Hebben je huidige accessoires geen usb C aansluiting? Schaf deze dan los aan.\r\n', 819.00, 1),
(10, 'Apple iPhone 15 128GB Geel', 'iphone15_128yellow.png', 'Apple iPhone 15 128GB Geel is het instapmodel in de iPhone 15 serie met een 6.1 inch scherm. De smartphone heeft 2 camera\'s op de achterkant. Hiermee maak je mooie foto\'s. Dankzij de extra zoom-functie zoom je 2 keer in met minder kwaliteitsverlies. Met de groothoeklens zet je ook grote gebouwen volledig op de foto. Met Dynamic Island voer je snelle acties uit, zo pauzeer je bijvoorbeeld je muziek. De batterij van iPhone 15 gaat bij gemiddeld gebruik één dag mee. Deze iPhone heeft een usb C aansluiting, daardoor passen je oude accessoires met een Lightning aansluiting niet meer. Je hebt beperkt ruimte voor je foto\'s en video\'s op het 128 GB opslaggeheugen. Ga voor 256 GB opslaggeheugen, want dan hoef je minder vaak je bestanden over te zetten.\r\n\r\nLet op: Apple levert geen oplader en oordopjes mee. Hebben je huidige accessoires geen usb C aansluiting? Schaf deze dan los aan.\r\n', 819.00, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` enum('member','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `first_name`, `last_name`, `role`) VALUES
(1, 'admin@smartphone.com', 'qwerty', 'Piet ', 'Klaassen', 'admin'),
(6, 'duck@duck.nl', 'qwerty', 'Donald', 'Duck', 'member'),
(7, 'Klaas@dfs.nl', 'n', 'Peter van', 'Rens', 'member'),
(8, 'peter@caiway.nl', '$2y$10$CijP6zzJi.9Hoinz1kyPj.JnE2.hzfEBGYtwsGewOoi4GmfN04agK', 'Mark', 'Rutte', 'member');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `picture`, `description`) VALUES
(1, 'Apple', 'apple.png', 'smartphones van Apple met iOS'),
(2, 'Samsung', 'samsung.png', 'smartphones van Samsung met Android'),
(5, 'Fairphone', 'fairphone.png', 'De milieu bewuste klant');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`smartphone_id`);

--
-- Indexen voor tabel `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`vendor_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexen voor tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `smartphone`
--
ALTER TABLE `smartphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`smartphone_id`) REFERENCES `smartphone` (`id`);

--
-- Beperkingen voor tabel `smartphone`
--
ALTER TABLE `smartphone`
  ADD CONSTRAINT `smartphone_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
