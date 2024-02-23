-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2024 at 02:51 PM
-- Server version: 10.10.2-MariaDB-log
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mds-api-ex2`
--
CREATE DATABASE IF NOT EXISTS `mds-api-ex2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mds-api-ex2`;

-- --------------------------------------------------------

--
-- Table structure for table `carnet`
--

CREATE TABLE `carnet` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `titre` varchar(255) NOT NULL,
  `recit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carnet`
--

INSERT INTO `carnet` (`id`, `date`, `titre`, `recit`) VALUES
(1, '2024-02-23', 'L\'abordage du galion espagnol\'', 'Ce matin, aux premiÃ¨res lueurs de l\'aube, nous avons repÃ©rÃ© un galion espagnol chargÃ© d\'or en route vers l\'Espagne. Avec un vent favorable et notre Ã©quipage prÃªt Ã  l\'abordage, nous avons hissÃ© les voiles noires et lancÃ© l\'attaque. La bataille fut brÃ¨ve mais intense. GrÃ¢ce Ã  notre supÃ©rioritÃ© en manÅ“uvre et au courage de nos pirates, nous avons rÃ©ussi Ã  prendre le contrÃ´le du navire. Les richesses Ã  bord dÃ©passaient nos espÃ©rances les plus folles. AprÃ¨s avoir transfÃ©rÃ© le butin sur notre navire, nous avons pris la dÃ©cision de laisser le galion Ã  la dÃ©rive pour brouiller les pistes. Ce jour restera marquÃ© dans notre histoire comme l\'un des plus grands coups jamais rÃ©alisÃ©s par notre Ã©quipage.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carnet`
--
ALTER TABLE `carnet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carnet`
--
ALTER TABLE `carnet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
