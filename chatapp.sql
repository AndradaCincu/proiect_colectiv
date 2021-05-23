-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mai 23, 2021 la 05:12 PM
-- Versiune server: 10.4.18-MariaDB
-- Versiune PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `chatapp`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `message` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `messages`
--

INSERT INTO `messages` (`id`, `username`, `message`, `ip`, `date`) VALUES
(1, 'ana', 's', '::1', '2021-05-23 14:17:46'),
(3, 'aba', 'd', '::1', '2021-05-23 17:33:55');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `messagess`
--

CREATE TABLE `messagess` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `messagess`
--

INSERT INTO `messagess` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 462079783, 946523201, 'hei'),
(2, 946523201, 462079783, 'hei'),
(3, 462079783, 946523201, 'cf'),
(4, 946523201, 462079783, 'bn'),
(5, 946523201, 462079783, 'u'),
(6, 462079783, 946523201, 'bn'),
(7, 462079783, 946523201, 'si eu'),
(8, 946523201, 462079783, 'ma bucur'),
(9, 462079783, 946523201, ':)'),
(10, 946523201, 462079783, ':*'),
(11, 462079783, 946523201, 'paaa'),
(12, 946523201, 462079783, 'te pup'),
(13, 462079783, 946523201, 'nici eu :)'),
(14, 946523201, 314353830, 'hei'),
(15, 314353830, 946523201, 'hei'),
(16, 314353830, 946523201, 'ce faci?'),
(17, 946523201, 314353830, 'bine,tu?'),
(18, 314353830, 946523201, 'd'),
(19, 314353830, 946523201, 's');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `online`
--

CREATE TABLE `online` (
  `hash` varchar(32) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `online`
--

INSERT INTO `online` (`hash`, `ip`, `last_update`) VALUES
('3f41111c317785e5d82292dedaa45a56', '::1', '2021-05-23 18:12:24'),
('b676498a07bf3d4066bcc150fc211850', '::1', '2021-05-23 18:12:21');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`userid`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 946523201, 'Andrada', 'Cincu', 'andradacincu@ymail.com', '4bfa5eba82184ad23fa8c4ec4de8cb12', '1618768036we962gwu1nf11.jpg', 'Active now'),
(2, 1528467311, 'Ana', 'Lila', 'ana12@gmail.com', '4bfa5eba82184ad23fa8c4ec4de8cb12', '16187681138OVFIkl-fairy-tail-backgrounds.jpg', 'Offline now'),
(3, 402976788, 'anaa', 'mira', 'mira123@yahoo.com', '4f1d047c27dbb0db0c8e90d202cf9548', '1618828407we962gwu1nf11.jpg', 'Offline now'),
(4, 314353830, 'leana', 'bira', 'leana12@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '1619612180we962gwu1nf11.jpg', 'Active now'),
(5, 462079783, 'andrei', 'alin', 'alin@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '16196122058OVFIkl-fairy-tail-backgrounds.jpg', 'Offline now');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `messagess`
--
ALTER TABLE `messagess`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexuri pentru tabele `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`hash`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `messagess`
--
ALTER TABLE `messagess`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
