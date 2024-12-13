-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 05:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cat_adoption`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopter`
--

CREATE TABLE `adopter` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adopter`
--

INSERT INTO `adopter` (`id`, `username`, `catname`) VALUES
(3, 'ilabusuk', 'Nutrisari'),
(5, 'aliyamiosarah', 'Rin'),
(6, 'ranibhbgvf', 'rtghncvbnfghj'),
(9, 'temuuiti', 'mute'),
(10, 'rtg', 'rtyui'),
(12, 'thj', 'nmxwsj');

-- --------------------------------------------------------

--
-- Table structure for table `adoptions`
--

CREATE TABLE `adoptions` (
  `Id` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoptions`
--

INSERT INTO `adoptions` (`Id`, `CatId`, `UserId`, `CreatedAt`) VALUES
(28, 2, 2, '2024-12-08 20:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Breed` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `ImageUrl` varchar(255) DEFAULT NULL,
  `AvailableForAdoption` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`Id`, `Name`, `Breed`, `Age`, `Description`, `ImageUrl`, `AvailableForAdoption`) VALUES
(1, 'Bruno Meowz', 'Chartreux', 1, 'A playful and curious dust with a love for adventure.', 'https://i.pinimg.com/736x/6a/62/86/6a62860618c1fe51c8f221eccf99a794.jpg', 1),
(2, 'Nutrisari', 'ginger', 1, 'A fluffy ginger cat who loves basking in the sunlight.', 'https://i.pinimg.com/736x/39/e4/88/39e488ee15bbffeeb6a368a7498f324c.jpg', 1),
(5, 'William Shakes Pear', 'Cow Cat', 44, 'Responds to commands with a look of utter disdain.', 'https://i.pinimg.com/736x/04/83/25/048325b629e867a6961a6b7079e416b5.jpg', 1),
(32, 'Josh Whistledown', 'calico', 2, 'Drama queen with the voice of an opera singer. ', 'https://i.pinimg.com/736x/02/7e/cb/027ecb8a6038cdfeadd6d496c0fcc4de.jpg', 1),
(33, 'bazinga', 'no brain', 3, ' Always camera-ready and will steal your phone for selfies. Honestly, they’re better at angles than you are.', 'https://i.pinimg.com/736x/34/56/60/34566001c09446aba7a078b87a5b52be.jpg', 1),
(34, 'Rin', 'oyen', 2, '“No paws, no gains.”', 'https://i.pinimg.com/736x/25/26/6f/25266fe5322f0074e7c3ac4c82b60ffd.jpg', 1),
(35, 'ijui', 'calico', 2, 'The only thing that could distract it from the PS5? A slice of cheese... and maybe a nap on the controller.', 'https://i.pinimg.com/736x/06/47/d1/0647d133a6c72b1af65c78a2cd5355b0.jpg', 1),
(36, 'Venom Santioso', 'no brain', 3, 'Rocking this epic bowl cut.', 'https://i.pinimg.com/736x/3d/b2/ed/3db2ed3b904ce994b3cc48f96006b51a.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `Role`, `Email`, `CreatedAt`) VALUES
(2, 'test', '1234567890', 'customer', 'qwert5@gmail.com', '2024-12-05 17:05:34'),
(6, 'test5', '123456789', 'Customer', 'ainulaaqela@gmail.com', '2024-12-06 01:05:40'),
(7, 'Admin', 'admin123', 'Admin', 'admin@gmail.com', '2024-12-06 01:23:38'),
(8, 'dsds', '12345', 'Customer', 'ainulaelah145@gmail.com', '2024-12-06 07:46:54'),
(9, 'testo', '123', 'Customer', 'ainulaaqelah145@gmail.co', '2024-12-06 07:48:34'),
(10, 'test9', '1234567890', 'Customer', 'ainulaaqelah145@gmail.com', '2024-12-06 07:52:13'),
(11, 'test488', '1234567890', 'Customer', 'ainulaaqelah145us@gmail.com', '2024-12-06 12:05:49'),
(12, 'dsds99', '12345678', 'Customer', 'ainulaaqee3elah145@gmail.com', '2024-12-07 14:14:40'),
(34, 'fa', '12345', 'Customer', 'sdfg@hn', '2024-12-13 01:05:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopter`
--
ALTER TABLE `adopter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CatId` (`CatId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopter`
--
ALTER TABLE `adopter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_ibfk_1` FOREIGN KEY (`CatId`) REFERENCES `cats` (`Id`),
  ADD CONSTRAINT `adoptions_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
