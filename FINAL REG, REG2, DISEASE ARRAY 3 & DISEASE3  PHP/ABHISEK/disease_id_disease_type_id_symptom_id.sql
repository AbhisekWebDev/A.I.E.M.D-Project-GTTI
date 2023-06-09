-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 04:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disease`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease_id_disease_type_id_symptom_id`
--

CREATE TABLE `disease_id_disease_type_id_symptom_id` (
  `DISEASE_ID` int(11) NOT NULL,
  `DISEASE_TYPE_ID` varchar(100) NOT NULL,
  `SYMPTOM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_id_disease_type_id_symptom_id`
--

INSERT INTO `disease_id_disease_type_id_symptom_id` (`DISEASE_ID`, `DISEASE_TYPE_ID`, `SYMPTOM_ID`) VALUES
(1, '1A', 1),
(1, '1A', 2),
(1, '1A', 3),
(1, '1A', 4),
(1, '1A', 5),
(1, '1A', 6),
(1, '1A', 7),
(1, '1A', 8),
(1, '1A', 9),
(1, '1A', 10),
(1, '1A', 11),
(1, '1A', 12),
(1, '1A', 13),
(1, '2A', 1),
(1, '2A', 2),
(1, '2A', 3),
(1, '2A', 4),
(1, '2A', 5),
(1, '2A', 6),
(1, '2A', 7),
(1, '2A', 8),
(1, '2A', 9),
(1, '2A', 10),
(1, '2A', 11),
(1, '2A', 12),
(1, '2A', 13),
(1, '3A', 1),
(1, '3A', 2),
(1, '3A', 3),
(1, '3A', 4),
(1, '3A', 5),
(1, '3A', 6),
(1, '3A', 7),
(1, '3A', 8),
(1, '3A', 9),
(1, '3A', 10),
(1, '3A', 11),
(1, '3A', 12),
(1, '3A', 13),
(1, '4A', 1),
(1, '4A', 2),
(1, '4A', 3),
(1, '4A', 4),
(1, '4A', 5),
(1, '4A', 6),
(1, '4A', 7),
(1, '4A', 8),
(1, '4A', 9),
(1, '4A', 10),
(1, '4A', 11),
(1, '4A', 12),
(1, '4A', 13),
(1, '5A', 1),
(1, '5A', 2),
(1, '5A', 3),
(1, '5A', 4),
(1, '5A', 5),
(1, '5A', 6),
(1, '5A', 7),
(1, '5A', 8),
(1, '5A', 9),
(1, '5A', 10),
(1, '5A', 11),
(1, '5A', 12),
(1, '5A', 13),
(2, '1B', 32),
(2, '1B', 33),
(2, '1B', 14),
(2, '1B', 9),
(2, '1B', 15),
(2, '1B', 16),
(2, '1B', 17),
(2, '1B', 18),
(2, '1B', 19),
(2, '1B', 20),
(2, '1B', 21),
(2, '1B', 22),
(2, '2B', 32),
(2, '2B', 33),
(2, '2B', 9),
(2, '2B', 14),
(2, '2B', 15),
(2, '2B', 16),
(2, '2B', 17),
(2, '2B', 18),
(2, '2B', 19),
(2, '2B', 20),
(2, '2B', 21),
(2, '2B', 22),
(2, '3B', 32),
(2, '3B', 33),
(2, '3B', 9),
(2, '3B', 14),
(2, '3B', 15),
(2, '3B', 16),
(2, '3B', 17),
(2, '3B', 18),
(2, '3B', 19),
(2, '3B', 20),
(2, '3B', 21),
(2, '3B', 22),
(2, '4B', 32),
(2, '4B', 33),
(2, '4B', 9),
(2, '4B', 14),
(2, '4B', 15),
(2, '4B', 16),
(2, '4B', 17),
(2, '4B', 18),
(2, '4B', 19),
(2, '4B', 20),
(2, '4B', 21),
(2, '4B', 22),
(2, '5B', 32),
(2, '5B', 33),
(2, '5B', 9),
(2, '5B', 14),
(2, '5B', 15),
(2, '5B', 16),
(2, '5B', 17),
(2, '5B', 18),
(2, '5B', 19),
(2, '5B', 20),
(2, '5B', 21),
(2, '5B', 22),
(2, '7B', 32),
(2, '7B', 33),
(2, '7B', 9),
(2, '8B', 32),
(2, '8B', 33),
(2, '6B', 32),
(2, '6B', 33),
(2, '6B', 9),
(2, '6B', 14),
(2, '6B', 15),
(2, '6B', 16),
(2, '6B', 17),
(2, '6B', 18),
(2, '6B', 19),
(2, '6B', 20),
(2, '6B', 21),
(2, '6B', 22),
(2, '7B', 9),
(2, '7B', 14),
(2, '7B', 15),
(2, '7B', 16),
(2, '7B', 17),
(2, '7B', 18),
(2, '7B', 19),
(2, '7B', 20),
(2, '7B', 21),
(2, '7B', 22),
(2, '8B', 9),
(2, '8B', 14),
(2, '8B', 15),
(2, '8B', 16),
(2, '8B', 17),
(2, '8B', 18),
(2, '8B', 19),
(2, '8B', 20),
(2, '8B', 21),
(2, '8B', 22),
(2, '8B', 9),
(2, '8B', 14),
(2, '8B', 15),
(2, '8B', 16),
(2, '8B', 17),
(2, '8B', 18),
(2, '8B', 19),
(2, '8B', 20),
(2, '8B', 21),
(2, '8B', 22),
(3, '1C', 34),
(3, '1C', 35),
(3, '1C', 36),
(3, '1C', 14),
(3, '1C', 15),
(3, '1C', 16),
(3, '1C', 17),
(3, '1C', 18),
(3, '1C', 19),
(3, '1C', 20),
(3, '1C', 21),
(3, '2C', 34),
(3, '2C', 35),
(3, '2C', 36),
(3, '2C', 14),
(3, '2C', 15),
(3, '2C', 16),
(3, '2C', 17),
(3, '2C', 18),
(3, '2C', 19),
(3, '3C', 20),
(3, '3C', 21),
(3, '3C', 34),
(3, '3C', 35),
(3, '3C', 36),
(3, '3C', 14),
(3, '3C', 15),
(3, '3C', 16),
(3, '3C', 17),
(3, '3C', 18),
(3, '3C', 19),
(3, '3C', 20),
(3, '3C', 21),
(3, '4C', 34),
(3, '4C', 35),
(3, '4C', 36),
(3, '4C', 14),
(3, '4C', 15),
(3, '4C', 16),
(3, '4C', 17),
(3, '4C', 18),
(3, '4C', 19),
(3, '4C', 20),
(3, '4C', 21),
(3, '5C', 34),
(3, '5C', 35),
(3, '5C', 36),
(3, '5C', 14),
(3, '5C', 15),
(3, '5C', 16),
(3, '5C', 17),
(3, '5C', 18),
(3, '5C', 19),
(3, '5C', 20),
(3, '5C', 21),
(4, '1D', 37),
(4, '1D', 38),
(4, '1D', 39),
(4, '1D', 40),
(4, '1D', 23),
(4, '1D', 11),
(4, '1D', 12),
(4, '1D', 1),
(4, '1D', 2),
(4, '1D', 3),
(4, '1D', 4),
(4, '1D', 5),
(4, '1D', 6),
(4, '1D', 7),
(4, '2D', 37),
(4, '2D', 38),
(4, '2D', 39),
(4, '2D', 40),
(4, '2D', 23),
(4, '2D', 11),
(4, '2D', 12),
(4, '2D', 1),
(4, '2D', 2),
(4, '2D', 3),
(4, '2D', 4),
(4, '2D', 5),
(4, '2D', 6),
(4, '2D', 7),
(4, '3D', 37),
(4, '3D', 38),
(4, '3D', 39),
(4, '3D', 40),
(4, '3D', 23),
(4, '3D', 11),
(4, '3D', 12),
(4, '3D', 1),
(4, '3D', 2),
(4, '3D', 3),
(4, '3D', 4),
(4, '3D', 5),
(4, '3D', 6),
(4, '3D', 7),
(4, '4D', 37),
(4, '4D', 38),
(4, '4D', 39),
(4, '4D', 40),
(4, '4D', 23),
(4, '4D', 11),
(4, '4D', 12),
(4, '4D', 1),
(4, '4D', 2),
(4, '4D', 3),
(4, '4D', 4),
(4, '4D', 5),
(4, '4D', 6),
(4, '4D', 7),
(4, '5D', 37),
(4, '5D', 38),
(4, '5D', 39),
(4, '5D', 40),
(4, '5D', 23),
(4, '5D', 11),
(4, '5D', 12),
(4, '5D', 1),
(4, '5D', 2),
(4, '5D', 3),
(4, '5D', 4),
(4, '5D', 5),
(4, '5D', 6),
(4, '5D', 7),
(4, '6D', 37),
(4, '6D', 38),
(4, '6D', 39),
(4, '6D', 40),
(4, '6D', 23),
(4, '6D', 11),
(4, '6D', 12),
(4, '6D', 1),
(4, '6D', 2),
(4, '6D', 3),
(4, '6D', 4),
(4, '6D', 5),
(4, '6D', 6),
(4, '6D', 7),
(4, '7D', 37),
(4, '7D', 38),
(4, '7D', 39),
(4, '7D', 40),
(4, '7D', 23),
(4, '7D', 11),
(4, '7D', 12),
(4, '7D', 1),
(4, '7D', 2),
(4, '7D', 3),
(4, '7D', 4),
(4, '7D', 5),
(4, '7D', 6),
(4, '7D', 7),
(5, '1E', 9),
(5, '1E', 41),
(5, '1E', 6),
(5, '1E', 4),
(5, '1E', 11),
(5, '1E', 24),
(5, '1E', 43),
(5, '1E', 44),
(5, '1E', 13),
(5, '1E', 25),
(5, '2E', 9),
(5, '2E', 41),
(5, '2E', 6),
(5, '2E', 4),
(5, '2E', 11),
(5, '2E', 24),
(5, '2E', 43),
(5, '2E', 44),
(5, '2E', 13),
(5, '2E', 25),
(5, '3E', 9),
(5, '3E', 41),
(5, '3E', 6),
(5, '3E', 4),
(5, '3E', 11),
(5, '3E', 24),
(5, '3E', 43),
(5, '3E', 44),
(5, '3E', 13),
(5, '3E', 25),
(5, '4E', 9),
(5, '4E', 41),
(5, '4E', 6),
(5, '4E', 4),
(5, '4E', 11),
(5, '4E', 24),
(5, '4E', 43),
(5, '4E', 44),
(5, '4E', 13),
(5, '4E', 25),
(5, '5E', 9),
(5, '5E', 41),
(5, '5E', 6),
(5, '5E', 4),
(5, '5E', 11),
(5, '5E', 24),
(5, '5E', 43),
(5, '5E', 44),
(5, '5E', 13),
(5, '5E', 25),
(5, '6E', 9),
(5, '6E', 41),
(5, '6E', 6),
(5, '6E', 4),
(5, '6E', 11),
(5, '6E', 24),
(5, '6E', 43),
(5, '6E', 44),
(5, '6E', 13),
(5, '6E', 25),
(5, '7E', 9),
(5, '7E', 41),
(5, '7E', 6),
(5, '7E', 4),
(5, '7E', 11),
(5, '7E', 24),
(5, '7E', 43),
(5, '7E', 44),
(5, '7E', 13),
(5, '7E', 25),
(5, '8E', 9),
(5, '8E', 41),
(5, '8E', 6),
(5, '8E', 4),
(5, '8E', 11),
(5, '8E', 24),
(5, '8E', 43),
(5, '8E', 44),
(5, '8E', 13),
(5, '8E', 25),
(5, '9E', 9),
(5, '9E', 41),
(5, '9E', 6),
(5, '9E', 4),
(5, '9E', 11),
(5, '9E', 24),
(5, '9E', 43),
(5, '9E', 44),
(5, '9E', 13),
(5, '9E', 25),
(6, '1F', 45),
(6, '1F', 46),
(6, '1F', 47),
(6, '1F', 48),
(6, '1F', 49),
(6, '1F', 20),
(6, '1F', 9),
(6, '1F', 12),
(6, '1F', 13),
(6, '1F', 22),
(6, '2F', 45),
(6, '2F', 46),
(6, '2F', 47),
(6, '2F', 48),
(6, '2F', 49),
(6, '2F', 20),
(6, '2F', 9),
(6, '2F', 12),
(6, '2F', 13),
(6, '2F', 22),
(6, '3F', 45),
(6, '3F', 46),
(6, '3F', 47),
(6, '3F', 48),
(6, '3F', 49),
(6, '3F', 20),
(6, '3F', 9),
(6, '3F', 12),
(6, '3F', 13),
(6, '3F', 22),
(6, '4F', 45),
(6, '4F', 46),
(6, '4F', 47),
(6, '4F', 48),
(6, '4F', 49),
(6, '4F', 20),
(6, '4F', 9),
(6, '4F', 12),
(6, '4F', 13),
(6, '4F', 22),
(6, '5F', 45),
(6, '5F', 46),
(6, '5F', 47),
(6, '5F', 48),
(6, '5F', 49),
(6, '5F', 20),
(6, '5F', 9),
(6, '5F', 12),
(6, '5F', 13),
(6, '5F', 22),
(6, '6F', 45),
(6, '6F', 46),
(6, '6F', 47),
(6, '6F', 48),
(6, '6F', 49),
(6, '6F', 20),
(6, '6F', 9),
(6, '6F', 12),
(6, '6F', 13),
(6, '6F', 22),
(6, '7F', 45),
(6, '7F', 46),
(6, '7F', 47),
(6, '7F', 48),
(6, '7F', 49),
(6, '7F', 20),
(6, '7F', 9),
(6, '7F', 12),
(6, '7F', 13),
(6, '7F', 22),
(6, '8F', 45),
(6, '8F', 46),
(6, '8F', 47),
(6, '8F', 48),
(6, '8F', 49),
(6, '8F', 20),
(6, '8F', 9),
(6, '8F', 12),
(6, '8F', 13),
(6, '8F', 22),
(7, '1G', 26),
(7, '1G', 50),
(7, '1G', 15),
(7, '1G', 27),
(7, '1G', 51),
(7, '1G', 24),
(7, '1G', 52),
(7, '1G', 11),
(7, '2G', 26),
(7, '2G', 50),
(7, '2G', 15),
(7, '2G', 27),
(7, '2G', 51),
(7, '2G', 24),
(7, '2G', 52),
(7, '2G', 11),
(7, '3G', 26),
(7, '3G', 50),
(7, '3G', 15),
(7, '3G', 27),
(7, '3G', 51),
(7, '3G', 24),
(7, '3G', 52),
(7, '3G', 11),
(7, '4G', 26),
(7, '4G', 50),
(7, '4G', 15),
(7, '4G', 27),
(7, '4G', 51),
(7, '4G', 24),
(7, '4G', 52),
(7, '4G', 11),
(7, '5G', 26),
(7, '5G', 50),
(7, '5G', 15),
(7, '5G', 27),
(7, '5G', 51),
(7, '5G', 24),
(7, '5G', 52),
(7, '5G', 11),
(7, '6G', 26),
(7, '6G', 50),
(7, '6G', 15),
(7, '6G', 27),
(7, '6G', 51),
(7, '6G', 24),
(7, '6G', 52),
(7, '6G', 11),
(7, '7G', 26),
(7, '7G', 50),
(7, '7G', 15),
(7, '7G', 27),
(7, '7G', 51),
(7, '7G', 24),
(7, '7G', 52),
(7, '7G', 11),
(8, '1H', 53),
(8, '1H', 54),
(8, '1H', 55),
(8, '1H', 56),
(8, '1H', 57),
(8, '1H', 15),
(8, '1H', 4),
(8, '1H', 44),
(8, '1H', 17),
(8, '1H', 13),
(8, '2H', 53),
(8, '2H', 54),
(8, '2H', 55),
(8, '2H', 56),
(8, '2H', 57),
(8, '2H', 15),
(8, '2H', 4),
(8, '2H', 44),
(8, '2H', 17),
(8, '2H', 13),
(8, '3H', 53),
(8, '3H', 54),
(8, '3H', 55),
(8, '3H', 56),
(8, '3H', 57),
(8, '3H', 15),
(8, '3H', 4),
(8, '3H', 44),
(8, '3H', 17),
(8, '3H', 13),
(8, '4H', 53),
(8, '4H', 54),
(8, '4H', 55),
(8, '4H', 56),
(8, '4H', 57),
(8, '4H', 15),
(8, '4H', 4),
(8, '4H', 44),
(8, '4H', 17),
(8, '4H', 13),
(9, '1I', 13),
(9, '1I', 14),
(9, '1I', 15),
(9, '1I', 16),
(9, '1I', 8),
(9, '1I', 10),
(9, '1I', 4),
(9, '1I', 58),
(9, '1I', 29),
(9, '2I', 13),
(9, '2I', 14),
(9, '2I', 15),
(9, '2I', 16),
(9, '2I', 8),
(9, '2I', 10),
(9, '2I', 4),
(9, '2I', 58),
(9, '2I', 29),
(9, '3I', 13),
(9, '3I', 14),
(9, '3I', 15),
(9, '3I', 16),
(9, '3I', 8),
(9, '3I', 10),
(9, '3I', 4),
(9, '3I', 58),
(9, '3I', 29),
(9, '4I', 13),
(9, '4I', 14),
(9, '4I', 15),
(9, '4I', 16),
(9, '4I', 8),
(9, '4I', 10),
(9, '4I', 4),
(9, '4I', 58),
(9, '4I', 29),
(9, '5I', 13),
(9, '5I', 14),
(9, '5I', 15),
(9, '5I', 16),
(9, '5I', 8),
(9, '5I', 10),
(9, '5I', 4),
(9, '5I', 58),
(9, '5I', 29),
(9, '6I', 13),
(9, '6I', 14),
(9, '6I', 15),
(9, '6I', 16),
(9, '6I', 8),
(9, '6I', 10),
(9, '6I', 4),
(9, '6I', 58),
(9, '6I', 29),
(10, '1J', 24),
(10, '1J', 26),
(10, '1J', 27),
(10, '1J', 28),
(10, '1J', 29),
(10, '1J', 60),
(10, '1J', 62),
(10, '1J', 63),
(10, '1J', 64),
(10, '1J', 13),
(10, '1J', 15),
(10, '2J', 24),
(10, '2J', 26),
(10, '2J', 27),
(10, '2J', 28),
(10, '2J', 29),
(10, '2J', 60),
(10, '2J', 62),
(10, '2J', 63),
(10, '2J', 64),
(10, '2J', 13),
(10, '2J', 15),
(10, '3J', 24),
(10, '3J', 26),
(10, '3J', 27),
(10, '3J', 28),
(10, '3J', 29),
(10, '3J', 60),
(10, '3J', 62),
(10, '3J', 63),
(10, '3J', 64),
(10, '3J', 13),
(10, '3J', 15),
(10, '4J', 24),
(10, '4J', 26),
(10, '4J', 27),
(10, '4J', 28),
(10, '4J', 29),
(10, '4J', 60),
(10, '4J', 62),
(10, '4J', 63),
(10, '4J', 64),
(10, '4J', 13),
(10, '4J', 15),
(10, '5J', 24),
(10, '5J', 26),
(10, '5J', 27),
(10, '5J', 28),
(10, '5J', 29),
(10, '5J', 60),
(10, '5J', 62),
(10, '5J', 63),
(10, '5J', 64),
(10, '5J', 13),
(10, '5J', 15),
(10, '6J', 24),
(10, '6J', 26),
(10, '6J', 27),
(10, '6J', 28),
(10, '6J', 29),
(10, '6J', 60),
(10, '6J', 62),
(10, '6J', 63),
(10, '6J', 64),
(10, '6J', 13),
(10, '6J', 15),
(10, '7J', 24),
(10, '7J', 26),
(10, '7J', 27),
(10, '7J', 28),
(10, '7J', 29),
(10, '7J', 60),
(10, '7J', 62),
(10, '7J', 63),
(10, '7J', 64),
(10, '7J', 13),
(10, '7J', 15),
(10, '8J', 24),
(10, '8J', 26),
(10, '8J', 27),
(10, '8J', 28),
(10, '8J', 29),
(10, '8J', 60),
(10, '8J', 62),
(10, '8J', 63),
(10, '8J', 64),
(10, '8J', 13),
(10, '8J', 15),
(10, '9J', 24),
(10, '9J', 26),
(10, '9J', 27),
(10, '9J', 28),
(10, '9J', 29),
(10, '9J', 60),
(10, '9J', 62),
(10, '9J', 63),
(10, '9J', 64),
(10, '9J', 13),
(10, '9J', 15),
(11, '1K', 11),
(11, '1K', 13),
(11, '1K', 15),
(11, '1K', 23),
(11, '1K', 29),
(11, '1K', 65),
(11, '1K', 66),
(11, '1K', 67),
(11, '2K', 11),
(11, '2K', 13),
(11, '2K', 15),
(11, '2K', 23),
(11, '2K', 29),
(11, '2K', 65),
(11, '2K', 66),
(11, '2K', 67),
(11, '3K', 11),
(11, '3K', 13),
(11, '3K', 15),
(11, '3K', 23),
(11, '3K', 29),
(11, '3K', 65),
(11, '3K', 66),
(11, '3K', 67),
(11, '4K', 11),
(11, '4K', 13),
(11, '4K', 15),
(11, '4K', 23),
(11, '4K', 29),
(11, '4K', 65),
(11, '4K', 66),
(11, '4K', 67),
(11, '5K', 11),
(11, '5K', 13),
(11, '5K', 15),
(11, '5K', 23),
(11, '5K', 29),
(11, '5K', 65),
(11, '5K', 66),
(11, '5K', 67),
(11, '6K', 11),
(11, '6K', 13),
(11, '6K', 15),
(11, '6K', 23),
(11, '6K', 29),
(11, '6K', 65),
(11, '6K', 66),
(11, '6K', 67),
(11, '7K', 11),
(11, '7K', 13),
(11, '7K', 15),
(11, '7K', 23),
(11, '7K', 29),
(11, '7K', 65),
(11, '7K', 66),
(11, '7K', 67),
(12, '1L', 16),
(12, '1L', 30),
(12, '1L', 14),
(12, '1L', 22),
(12, '1L', 5),
(12, '1L', 28),
(12, '1L', 68),
(12, '1L', 11),
(12, '2L', 16),
(12, '2L', 30),
(12, '2L', 14),
(12, '2L', 22),
(12, '2L', 5),
(12, '2L', 28),
(12, '2L', 68),
(12, '2L', 11),
(12, '3L', 16),
(12, '3L', 30),
(12, '3L', 14),
(12, '3L', 22),
(12, '3L', 5),
(12, '3L', 28),
(12, '3L', 68),
(12, '3L', 11),
(12, '4L', 16),
(12, '4L', 30),
(12, '4L', 14),
(12, '4L', 22),
(12, '4L', 5),
(12, '4L', 28),
(12, '4L', 68),
(12, '4L', 11),
(12, '5L', 16),
(12, '5L', 30),
(12, '5L', 14),
(12, '5L', 22),
(12, '5L', 5),
(12, '5L', 28),
(12, '5L', 68),
(12, '5L', 11),
(12, '6L', 16),
(12, '6L', 30),
(12, '6L', 14),
(12, '6L', 22),
(12, '6L', 5),
(12, '6L', 28),
(12, '6L', 68),
(12, '6L', 11),
(13, '1M', 15),
(13, '1M', 9),
(13, '1M', 18),
(13, '1M', 5),
(13, '1M', 16),
(13, '1M', 13),
(13, '1M', 22),
(13, '1M', 8),
(13, '1M', 10),
(13, '1M', 4),
(13, '1M', 11),
(13, '1M', 31),
(13, '1M', 70),
(13, '2M', 15),
(13, '2M', 9),
(13, '2M', 18),
(13, '2M', 5),
(13, '2M', 26),
(13, '2M', 13),
(13, '2M', 22),
(13, '2M', 8),
(13, '2M', 10),
(13, '2M', 4),
(13, '2M', 11),
(13, '2M', 31),
(13, '2M', 70),
(13, '3M', 15),
(13, '3M', 9),
(13, '3M', 18),
(13, '3M', 5),
(13, '3M', 16),
(13, '3M', 13),
(13, '3M', 22),
(13, '3M', 8),
(13, '3M', 10),
(13, '3M', 4),
(13, '3M', 11),
(13, '3M', 31),
(13, '3M', 70),
(13, '4M', 15),
(13, '4M', 9),
(13, '4M', 18),
(13, '4M', 5),
(13, '4M', 16),
(13, '4M', 13),
(13, '4M', 22),
(13, '4M', 8),
(13, '4M', 10),
(13, '4M', 4),
(13, '4M', 11),
(13, '4M', 31),
(13, '4M', 70),
(13, '5M', 15),
(13, '5M', 9),
(13, '5M', 18),
(13, '5M', 5),
(13, '5M', 16),
(13, '5M', 13),
(13, '5M', 22),
(13, '5M', 8),
(13, '5M', 10),
(13, '5M', 4),
(13, '5M', 11),
(13, '5M', 31),
(13, '5M', 70),
(13, '6M', 15),
(13, '6M', 9),
(13, '6M', 18),
(13, '6M', 5),
(13, '6M', 16),
(13, '6M', 13),
(13, '6M', 22),
(13, '6M', 8),
(13, '6M', 10),
(13, '6M', 4),
(13, '6M', 11),
(13, '6M', 31),
(13, '6M', 70),
(13, '7M', 15),
(13, '7M', 9),
(13, '7M', 18),
(13, '7M', 5),
(13, '7M', 16),
(13, '7M', 13),
(13, '7M', 22),
(13, '7M', 8),
(13, '7M', 10),
(13, '7M', 4),
(13, '7M', 11),
(13, '7M', 31),
(13, '7M', 70),
(13, '8M', 15),
(13, '8M', 9),
(13, '8M', 18),
(13, '8M', 5),
(13, '8M', 16),
(13, '8M', 13),
(13, '8M', 22),
(13, '8M', 8),
(13, '8M', 10),
(13, '8M', 4),
(13, '8M', 11),
(13, '8M', 31),
(13, '8M', 70),
(13, '9M', 15),
(13, '9M', 9),
(13, '9M', 18),
(13, '9M', 5),
(13, '9M', 16),
(13, '9M', 13),
(13, '9M', 22),
(13, '9M', 8),
(13, '9M', 10),
(13, '9M', 4),
(13, '9M', 11),
(13, '9M', 31),
(13, '9M', 70),
(13, '10M', 15),
(13, '10M', 9),
(13, '10M', 18),
(13, '10M', 5),
(13, '10M', 16),
(13, '10M', 13),
(13, '10M', 22),
(13, '10M', 8),
(13, '10M', 10),
(13, '10M', 4),
(13, '10M', 11),
(13, '10M', 31),
(13, '10M', 70),
(13, '11M', 15),
(13, '11M', 9),
(13, '11M', 18),
(13, '11M', 5),
(13, '11M', 16),
(13, '11M', 13),
(13, '11M', 22),
(13, '11M', 8),
(13, '11M', 10),
(13, '11M', 4),
(13, '11M', 11),
(13, '11M', 31),
(13, '11M', 70),
(14, '1N', 16),
(14, '1N', 4),
(14, '1N', 71),
(14, '1N', 25),
(14, '1N', 15),
(14, '2N', 16),
(14, '2N', 4),
(14, '2N', 71),
(14, '2N', 25),
(14, '2N', 15),
(14, '3N', 16),
(14, '3N', 4),
(14, '3N', 71),
(14, '3N', 25),
(14, '3N', 15),
(14, '4N', 16),
(14, '4N', 4),
(14, '4N', 71),
(14, '4N', 25),
(14, '4N', 15),
(15, '1O', 4),
(15, '1O', 15),
(15, '1O', 30),
(15, '1O', 72),
(15, '1O', 73),
(15, '1O', 74),
(15, '1O', 75),
(15, '1O', 76),
(15, '1O', 77),
(15, '1O', 78),
(15, '2O', 4),
(15, '2O', 15),
(15, '2O', 30),
(15, '2O', 72),
(15, '2O', 73),
(15, '2O', 74),
(15, '2O', 75),
(15, '2O', 76),
(15, '2O', 77),
(15, '2O', 78),
(15, '3O', 4),
(15, '3O', 15),
(15, '3O', 30),
(15, '3O', 72),
(15, '3O', 73),
(15, '3O', 74),
(15, '3O', 75),
(15, '3O', 76),
(15, '3O', 77),
(15, '3O', 78),
(15, '4O', 4),
(15, '4O', 15),
(15, '4O', 30),
(15, '4O', 72),
(15, '4O', 73),
(15, '4O', 74),
(15, '4O', 75),
(15, '4O', 76),
(15, '4O', 77),
(15, '4O', 78),
(15, '5O', 4),
(15, '5O', 15),
(15, '5O', 30),
(15, '5O', 72),
(15, '5O', 73),
(15, '5O', 74),
(15, '5O', 75),
(15, '5O', 76),
(15, '5O', 77),
(15, '5O', 78),
(15, '6O', 4),
(15, '6O', 15),
(15, '6O', 30),
(15, '6O', 72),
(15, '6O', 73),
(15, '6O', 74),
(15, '6O', 75),
(15, '6O', 76),
(15, '6O', 77),
(15, '6O', 78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease_id_disease_type_id_symptom_id`
--
ALTER TABLE `disease_id_disease_type_id_symptom_id`
  ADD KEY `DISEASE_ID` (`DISEASE_ID`),
  ADD KEY `SYMPTOM_ID` (`SYMPTOM_ID`),
  ADD KEY `DISEASE_TYPE_ID` (`DISEASE_TYPE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease_id_disease_type_id_symptom_id`
--
ALTER TABLE `disease_id_disease_type_id_symptom_id`
  ADD CONSTRAINT `disease_id_disease_type_id_symptom_id_ibfk_1` FOREIGN KEY (`DISEASE_ID`) REFERENCES `diseases` (`id`),
  ADD CONSTRAINT `disease_id_disease_type_id_symptom_id_ibfk_2` FOREIGN KEY (`SYMPTOM_ID`) REFERENCES `symptoms` (`id`),
  ADD CONSTRAINT `disease_id_disease_type_id_symptom_id_ibfk_3` FOREIGN KEY (`DISEASE_TYPE_ID`) REFERENCES `disease_type` (`DISEASE_TYPE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
