-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 03:47 PM
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
-- Database: `patientreg`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `PATIENT_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `GENDER` varchar(50) NOT NULL,
  `EMAIL` varchar(800) NOT NULL,
  `ADDRESS` varchar(800) NOT NULL,
  `PHONE` int(15) NOT NULL,
  `MEDICAL_CONDITIONS` varchar(800) NOT NULL,
  `MEDICATION_DETAILS` varchar(800) NOT NULL,
  `SURGERY_HISTORY` varchar(50) NOT NULL,
  `BLOOD_PRESSURE` int(50) NOT NULL,
  `HEIGHT` int(50) NOT NULL,
  `WEIGHT` int(255) NOT NULL,
  `SYMPTOMS` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`PATIENT_ID`, `NAME`, `DATE_OF_BIRTH`, `GENDER`, `EMAIL`, `ADDRESS`, `PHONE`, `MEDICAL_CONDITIONS`, `MEDICATION_DETAILS`, `SURGERY_HISTORY`, `BLOOD_PRESSURE`, `HEIGHT`, `WEIGHT`, `SYMPTOMS`) VALUES
(1, '', '0000-00-00', '', '', '', 0, '', '', '', 0, 0, 0, ''),
(2, 'Abhisek Kumar', '2023-03-01', 'male', 'khf', 'sdfg4523', 45453, 'none', 'none', '', 120, 176, 95, 'on'),
(3, 'dyu', '2023-03-08', 'male', 'khf', 'sfdgh4523', 45453, 'none', 'none', 'no', 120, 176, 95, 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`PATIENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
