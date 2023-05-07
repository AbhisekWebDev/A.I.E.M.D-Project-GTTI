-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 03:21 PM
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
-- Table structure for table `disease_type`
--

CREATE TABLE `disease_type` (
  `DISEASE_ID` int(11) NOT NULL,
  `DISEASE_TYPE_ID` varchar(100) NOT NULL,
  `DISEASE_TYPE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_type`
--

INSERT INTO `disease_type` (`DISEASE_ID`, `DISEASE_TYPE_ID`, `DISEASE_TYPE`) VALUES
(1, '1A', 'HEART ATTACK\r\n'),
(2, '1B', 'HEPATITIS A'),
(3, '1C', 'CHRONIC KIDNEY DISEASE'),
(4, '1D', 'ASTHAMA'),
(5, '1E', 'MANENGITIS'),
(6, '1F', 'IRRITABLE BOWEL SYNDROME (IBS)\r\n'),
(7, '1G', 'MYOPIA'),
(8, '1H', 'NERVOUS SYSTEM DISORDER'),
(9, '1I', 'DIABETES'),
(10, '1J', 'RASH'),
(11, '1K', 'CAVITY'),
(12, '1L', 'ARTHRITIS'),
(13, '1M', 'BONE CANCER'),
(14, '1N', 'THYROID'),
(15, '1O', 'OESTOPOROSIS'),
(1, '2A', 'VALVE DYSFUNCTION'),
(2, '2B', 'HEPATITIS B'),
(3, '2C', 'STONES'),
(4, '2D', 'CHRONIC OBSTRICTIVE PULMONARY DISEASE (COPD)\r\n'),
(5, '2E', 'ALZHEIMER\'S'),
(6, '2F', 'LACTOSE INTOLERANCE\r\n'),
(7, '2G', 'HYPERMETROPIA'),
(8, '2H', 'MOTOR NEURON DISEASE'),
(9, '2I', 'CANCER'),
(10, '2J', 'ACNE'),
(11, '2K', 'CANCER'),
(12, '2L', 'BOWEL DISEASE'),
(13, '2M', 'BLOOD CANCER'),
(14, '2N', 'CUSHING\'S DISEASE'),
(15, '2O', 'PAGET\'S DISEASE'),
(1, '3A', 'ARRIHTHYMIA'),
(2, '3B', 'HEPATITIS C'),
(3, '3C', 'URINARY TRACT INFECTION (UTI)'),
(4, '3D', 'PNEUMONIA\r\n'),
(5, '3E', 'CANCER'),
(6, '3F', 'ULCER'),
(7, '3G', 'BLURRED VISION'),
(8, '3H', 'SPINAL INJURY'),
(9, '3I', 'WHITE BLOOD CELLS DEFICIENCY'),
(10, '3J', 'DERMATITIS'),
(11, '3K', 'TONSILITIS'),
(12, '3L', 'ANEMIA'),
(13, '3M', 'SKIN CANCER'),
(14, '3N', 'GRAVE\'S DISEASE'),
(15, '3O', 'ARTHRITIS'),
(1, '4A', 'CORONARY ARTERY DISEASE (CAD)'),
(2, '4B', 'HEPATITIS D'),
(3, '4C', 'KIDNEY FAILURE'),
(4, '4D', 'CANCER'),
(5, '4E', 'EPILEPSY'),
(6, '4F', 'CONSTIPATION'),
(7, '4G', 'DOUBLE VISION'),
(8, '4H', 'TUMOR'),
(9, '4I', 'LYMPHOMA'),
(10, '4J', 'POX'),
(11, '4K', 'PIREA'),
(12, '4L', 'CROHN\'S DISEASE'),
(13, '4M', 'TUMOR'),
(15, '4O', 'SPONDYLITIS'),
(1, '5A', 'CANCER'),
(2, '5B', 'HEPATITIS E'),
(3, '5C', 'ULCER'),
(4, '5D', 'TUBERCULOSIS (TB)\r\n'),
(5, '5E', 'DIMENTIA'),
(6, '5F', 'DIAHERRIA'),
(7, '5G', 'VISION LOSS'),
(9, '5I', 'LEUKEMIA'),
(10, '5J', 'BOILS'),
(11, '5K', 'TARTAR/CALCULUS'),
(12, '5L', 'CELIAC DISEASE'),
(13, '5M', 'LYMPHOMA'),
(15, '5O', 'MARROW DISEASE'),
(2, '6B', 'NON ALCOHOLIC FATTY LIVER DISEASE (NAFLD)'),
(4, '6D', 'CANCER'),
(5, '6E', 'MENTAL DISORDER'),
(6, '6F', 'HERNIA'),
(7, '6G', 'RETINAL INFECTION'),
(9, '6I', 'HEMOPHILIA'),
(10, '6J', 'CANCER'),
(11, '6K', 'SENSETIVITY'),
(13, '6M', 'LUNG CANCER'),
(15, '6O', 'CANCER'),
(2, '7B', 'ULCER'),
(4, '7D', 'ULCER'),
(5, '7E', 'PARKINSON\'S'),
(6, '7F', 'GASTROINTESTINAL REFLUX DISEASE (GERD)'),
(7, '7G', 'COLOR BLINDNESS'),
(10, '7J', 'HIVES'),
(13, '7M', 'PROSTATE CANCER'),
(2, '8B', 'JAUNDICE'),
(5, '8E', 'PSYCHOPATHY'),
(6, '8F', 'ULCERATIVE COLITIS'),
(10, '8J', 'ECZEMA'),
(13, '8M', 'BREAST CANCER'),
(5, '9E', 'MIGRAINE'),
(13, '9M', 'BRAIN TUMOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease_type`
--
ALTER TABLE `disease_type`
  ADD PRIMARY KEY (`DISEASE_TYPE_ID`),
  ADD KEY `DISEASE_ID` (`DISEASE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease_type`
--
ALTER TABLE `disease_type`
  ADD CONSTRAINT `disease_type_ibfk_1` FOREIGN KEY (`DISEASE_ID`) REFERENCES `diseases` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
