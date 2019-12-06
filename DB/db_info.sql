-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2019 at 04:21 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `ID` int(11) NOT NULL,
  `country` text NOT NULL,
  `rank` varchar(10) NOT NULL,
  `total` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`ID`, `country`, `rank`, `total`, `image`) VALUES
(1, 'Unite States', '1', '14 restaurants', 'america.svg'),
(2, 'Hongkong', '2', '7 restaurants', 'hongkong.svg'),
(3, 'Unite kingdom', '3', '5 restaurants', 'kingdom.svg'),
(4, 'Macau', '4', '3 restaurants', 'macau.svg'),
(5, 'Republic of Korea', '5', '2 restaurants', 'Korea.svg'),
(6, 'Taiwan', '6', '1 restaurant', 'taiwan.svg'),
(7, 'Denmark', '6', '1 restaurant', 'denmark.svg'),
(8, 'Norway', '6', '1 restaurant', 'Norway.svg'),
(9, 'Sweden', '6', '1 restaurant', 'sweden.svg'),
(10, 'Austria', '6', '1 restaurant', 'austria.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
