-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2023 at 06:47 AM
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
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `PATIENT_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `GENDER` varchar(50) NOT NULL,
  `EMAIL` varchar(800) NOT NULL,
  `ADDRESS` varchar(800) NOT NULL,
  `PHONE` bigint(20) NOT NULL,
  `MEDICAL_CONDITIONS` varchar(800) NOT NULL,
  `MEDICATION_DETAILS` varchar(800) NOT NULL,
  `SURGERY_HISTORY` varchar(50) NOT NULL,
  `BLOOD_PRESSURE` int(50) NOT NULL,
  `HEIGHT` int(50) NOT NULL,
  `WEIGHT` int(255) NOT NULL,
  `SYMPTOMS` varchar(850) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`PATIENT_ID`, `NAME`, `DATE_OF_BIRTH`, `GENDER`, `EMAIL`, `ADDRESS`, `PHONE`, `MEDICAL_CONDITIONS`, `MEDICATION_DETAILS`, `SURGERY_HISTORY`, `BLOOD_PRESSURE`, `HEIGHT`, `WEIGHT`, `SYMPTOMS`) VALUES
(19, 'Abhisek Kumar', '2023-03-17', 'male', 'abhisekshopping101@gmail.com', 'a-4, bc-18, matri bhawan, samarpllay, keshtopur', 9038166403, 'none', 'none', 'no', 120, 176, 95, 'sensetivity, weak gums, blood in urine, infection, toothache'),
(20, 'Abhisek Kumar', '2023-03-16', 'male', 'abhisekshopping101@gmail.com', 'a-4, bc-18, matri bhawan, samarpllay, keshtopur', 9123686320, 'none', '', 'yes', 120, 176, 95, 'yellow eyes, sleep disorder/insomnia, allergic reaction, sore thorat, vertigo, bloating, teary eyes');

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
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
