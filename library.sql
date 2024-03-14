-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2024 at 01:53 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `ISBN` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `BookName` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Author` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Publisher` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `BookName`, `Author`, `Publisher`) VALUES
('111', 'Book 1', 'A1', 'P1'),
('112', 'Book 2', 'A2', 'P2'),
('113', 'Book 3', 'A3', 'P3'),
('114', 'Book 4', 'A4', 'P4'),
('115', 'Book 5', 'A5', 'P5'),
('116', 'Book 6', 'A6', 'P6');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
CREATE TABLE IF NOT EXISTS `borrower` (
  `bID` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `DateOfBorrow` date NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
