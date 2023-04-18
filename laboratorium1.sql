-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Lut 2023, 10:12
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `laboratorium1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_praccownika` int(10) NOT NULL,
  `imie` char(50) NOT NULL,
  `nazwisko` char(50) NOT NULL,
  `stanowisko` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id_praccownika`, `imie`, `nazwisko`, `stanowisko`) VALUES
(1, 'Anna', 'Kowalska', 1),
(2, 'Monika', 'Nowak', 2),
(3, 'Ewelina', 'Nowakowska', 2),
(4, 'Anna', 'Przybylska', 3),
(5, 'Marta', 'Kowal', 3),
(6, 'Ewa', 'Nowacka', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(6) NOT NULL,
  `nazwa_produktu` char(20) NOT NULL,
  `cena_produktu` int(120) NOT NULL,
  `ilosc_produktu` int(25) NOT NULL,
  `data_dodania_produktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa_produktu`, `cena_produktu`, `ilosc_produktu`, `data_dodania_produktu`) VALUES
(5, 'Spodnie Jeans', 110, 5, '2019-04-04'),
(6, 'Spodnie Dres', 90, 7, '2019-04-04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE `rezerwacja` (
  `nr_stolika` int(10) NOT NULL,
  `data_rez` date NOT NULL,
  `liczba_osob` int(10) NOT NULL,
  `numer_tele` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `rezerwacja`
--

INSERT INTO `rezerwacja` (`nr_stolika`, `data_rez`, `liczba_osob`, `numer_tele`) VALUES
(1, '2017-07-04', 4, 111222333),
(2, '2017-07-05', 2, 1112225633),
(3, '2017-07-06', 3, 121442353),
(4, '2017-07-07', 3, 771221133),
(5, '2017-07-10', 3, 771255133);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_praccownika`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indeksy dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD PRIMARY KEY (`nr_stolika`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
