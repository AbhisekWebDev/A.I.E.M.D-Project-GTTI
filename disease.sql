-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 03:54 PM
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
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `cause` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`, `type`, `cause`) VALUES
(1, 'HEART', 'HEART ATTACK,\r\nVALVE DYSFUNCTION,\r\nARRHYTHMIA,\r\nCORONARY ATRERY DISEASE (CAD),\r\nCANCER\r\n\r\n', 'HIGH BLOOD PRESSURE\r\nCHOLESTROL,\r\nDIABETES,\r\nSMOKING,\r\nOBESITY,\r\nUNHEALTHY DIET,\r\nGENETICS\r\n'),
(2, 'LIVER', 'HEPATITIS A, \r\nHEPATITIS B, \r\nHEPATITIS C,\r\nNON ALCOHOLIC FATTY LIVER DISEASE (NAFLD), \r\nULCER, \r\nJAUNDICE\r\n', 'ALCOHOL ABUSE, \r\nOBESITY, \r\nDIABETES, \r\nUNHEALTHY DIET, \r\nLOSS OF VITAMINE AND MINRALS\r\n'),
(3, 'KIDNEY', 'CHRONIC KIDNEY DISEASE,\r\nSTONES,\r\nURINARY TRACT IFECTION (UTI),\r\nKIDNEY FAILURE,\r\nULCER\r\n', 'DIABETES,\r\nHIGH BLOOD PRESSURE,\r\nCARDIOVASCULAR DISEASE,\r\nSMOKING,\r\nOBESITY,\r\nGENETICS\r\n'),
(4, 'RESPIRATORY', 'ASTHAMA.\r\nCHRONIC OBSTRICTIVE PULMONARY DISEASE (COPD),\r\nPNEUMONIA,\r\nCANCER,\r\nTUBERCULOSIS (TB),\r\nCANCER,\r\nULCER\r\n', 'INFECTION\r\nSMOKING,\r\nPOLLUTION,\r\nVIRUS,\r\nINFECTION,\r\nGENETICS,\r\nALLERGY\r\n'),
(5, 'BRAIN', 'MANENGITIS,\r\nALZHEIMER\'S,\r\nCANCER,\r\nEPILEPSY,\r\nDIMENTIA,\r\nDISORDER,\r\nPARKINSON\'S,\r\nPSYCHOPATHY,\r\nMIGRAINE\r\n', 'RADIATION,\r\nINFECTION,\r\nVIRUS,\r\nBACTERIA,\r\nPOLLUTION,\r\nGENETICS,\r\nTRAUMA,\r\nINJURY\r\n'),
(6, 'DIGESTIVE', 'IRRITABLE BOWEL SYNDROME (IBS),\r\nLACTOSE INTOLERANCE,\r\nULCER,\r\nCONSTIPATION/DIAHERREA,\r\nHERNIA,\r\nGASTTROINTESTINAL REFLUX DISEASE (GERD),\r\nACID REFLUX,\r\nULCERATIVE COLITIS\r\n', 'LOW FIBER INTAKE,\r\nOBESITY,\r\nUNHYGENIC WATER,\r\nUNHEALTHY DIET,\r\nLOW IMMUNE, \r\nLOSS VITAMIN AND MINERALS,\r\nALCOHOL ABUSE,\r\nSMOKING\r\n'),
(7, 'EYE', 'MYOPIA,\r\nHYPERMETROPEA,\r\nBLURRED VISION,\r\nDOUBLE VISION,\r\nVISION LOSS,\r\nRETINAL INFECTION,\r\nCOLOR BLINDNESS\r\n', 'INFECTION,\r\nALLERGY,\r\nLOSS OF VITAMIN AND MINERALS,\r\nSMOKING,\r\nGENETICS,\r\nDAIBETES,\r\nPOLLUTION\r\n'),
(8, 'NERVE', 'NERVOUS SYSTEM DISORDER,\r\nMOTOR NEURONE DISEASE (MND),\r\nACUTE SPINAL INJURY,\r\nTUMOR\r\n', 'INJURY,\r\nTRAUMA,\r\nPOLLUTION,\r\nINFECTION,\r\nDIABETES,\r\nVIRUS,\r\nSMOKING,\r\nALCOHOL ABUSE\r\n'),
(9, 'BLOOD', 'DAIBETES,\r\nCANCER,\r\nWHITE BLOOD CELLS DEFICIENCY,\r\nLEUKEMIA,\r\nHEMOPHILIA\r\n', 'UNHEALTHY DIET,\r\nALCOHOL ABUSE,\r\nSMOKING,\r\nINFECTION,\r\nVIRUS,\r\nLOSS OF VITAMIN AND MINERALS,\r\nPOLLUTION\r\n'),
(10, 'SKIN', 'RASH,\r\nACNE,\r\nDERMATITIS,\r\nPOX,\r\nBOILS,\r\nCANCER,\r\nHARPIC,\r\nHIVES,\r\nECZEMA\r\n', 'UNHEALTHY DIET,\r\nALCOHOL ABUSE,\r\nSMOKING,\r\nINFECTION,\r\nVIRUS,\r\nLOSS OF VITAMIN AND MINERALS,\r\nPOLLUTION,\r\nALLERGY,\r\nLOW IMMUNE,\r\nGENETICS\r\n'),
(11, 'ORAL', 'CAVITY\r\nCANCER,\r\nTONSILITIS,\r\nSTONS,\r\nPIREA,\r\nTARTAR/CALCULUS,\r\nTEETH SENSETIVITY\r\n', 'SMOKING,\r\nALCOHOL ABUSE,\r\nTOBACCOO,\r\nEXCESS SUGAR CONSUMPTION,\r\nINFECTION,\r\nVIRUS,\r\nGENETICS\r\n'),
(12, 'AUTOIMMUNE', 'ARTHRITIS,\r\nBOWEL DISEASE,\r\nANEMIA,\r\nCROHN\'S DISEASE,\r\nULCERATIVE COLITIS,\r\nCELIAC DISEASE\r\n', 'GENETICS,\r\nSMOKING,\r\nPOLLUTION,\r\nINFECTION,\r\nALLERGY,\r\nVIRUS\r\n\r\n'),
(13, 'CANCER', 'BONE CANCER,\r\nBLOOD CANCER,\r\nSKIN CANCER,\r\nTUMOR,\r\nLYMPHOMA,\r\nLUNG CANCER,\r\nPROSTATE CANCER,\r\nKIDNEY CANCER,\r\nBREAST CANCER,\r\nBRAIN CANCER,\r\nBALDDER CANCER\r\n', 'SMOKING,\r\nALCOHOL ABUSE,\r\nINFECTION,\r\nPOLLUTION,\r\nRADIATION,\r\nGENETICS,\r\nHORMONES,\r\nDUST EXPOSURE\r\n'),
(14, 'ENDOCRINE', 'THYROID,\r\nCUSHING\'S DISEASE,\r\nDIABETES,\r\nGRAVE\'S DISEASE\r\n', 'DIABETES,\r\nGENETICS,\r\nINFECTION,\r\nPOLLUTION,\r\nHORMONES,\r\nLOW IMMUNE,\r\nUNHEALTHY DIET\r\n'),
(15, 'BONE', 'OESTOPOROSIS,\r\nPAGET\'S DISEASE,\r\nARTHRITIS,\r\nSPONDYLITIS,\r\nCANCER,\r\nAUTOIMMUNE\r\n', 'LACK OF VITAMIN AND MINERALS,\r\nLOSS OF CALCIUN,\r\nUNHEALTHY DIET,\r\nOBESITY,\r\nLOW IMMUNE,\r\nGENETICS,\r\nAGE,\r\nHORMONES,\r\nDIABETES\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptom`
--

CREATE TABLE `disease_symptom` (
  `DISEASE_ID` int(20) NOT NULL,
  `SYMPTOM_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_symptom`
--

INSERT INTO `disease_symptom` (`DISEASE_ID`, `SYMPTOM_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 32),
(2, 33),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 9),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(3, 15),
(3, 16),
(3, 17),
(3, 9),
(3, 18),
(3, 19),
(3, 20),
(3, 34),
(3, 35),
(3, 21),
(3, 2),
(3, 36),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 37),
(4, 9),
(4, 38),
(4, 39),
(4, 40),
(4, 11),
(4, 12),
(4, 23),
(5, 9),
(5, 41),
(5, 6),
(5, 4),
(5, 11),
(5, 4),
(5, 24),
(5, 43),
(5, 44),
(5, 24),
(5, 43),
(5, 25),
(6, 45),
(6, 46),
(6, 47),
(6, 48),
(6, 49),
(6, 20),
(6, 9),
(6, 12),
(6, 13),
(6, 46),
(6, 22),
(7, 26),
(7, 50),
(7, 15),
(7, 27),
(7, 51),
(7, 52),
(7, 50),
(7, 24),
(7, 11),
(8, 53),
(8, 15),
(8, 54),
(8, 55),
(8, 4),
(8, 56),
(8, 44),
(8, 57),
(9, 16),
(9, 8),
(9, 10),
(9, 15),
(9, 4),
(9, 58),
(9, 29),
(9, 59),
(10, 26),
(10, 15),
(10, 28),
(10, 27),
(10, 60),
(10, 24),
(10, 31),
(10, 62),
(10, 63),
(10, 64),
(10, 13),
(10, 29),
(11, 13),
(11, 15),
(11, 29),
(11, 65),
(11, 66),
(11, 66),
(11, 23),
(11, 11),
(11, 10),
(12, 16),
(12, 30),
(12, 14),
(12, 22),
(12, 5),
(12, 28),
(12, 78),
(12, 11),
(12, 68),
(13, 15),
(13, 9),
(13, 18),
(13, 5),
(13, 6),
(13, 16),
(13, 13),
(13, 22),
(13, 8),
(13, 10),
(13, 42),
(13, 4),
(13, 11),
(13, 31),
(13, 70),
(14, 16),
(14, 4),
(14, 71),
(14, 5),
(14, 25),
(15, 4),
(15, 30),
(15, 72),
(15, 73),
(15, 74),
(15, 75),
(15, 76),
(15, 77),
(15, 5),
(15, 78);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `name`) VALUES
(1, 'CHEST PAIN'),
(2, 'SHORTNESS OF BREATH'),
(3, 'PAIN IN NECK'),
(4, 'WEAKNESS'),
(5, 'FEVER'),
(6, 'FAINTING'),
(7, 'IRREGULAR HEART BEAT'),
(8, 'COUGHING BLOOD'),
(9, 'NAUSIA'),
(10, 'VOMITTING BLOOD'),
(11, 'HEADACHE'),
(12, 'HEARTBURN'),
(13, 'BLEEDING'),
(14, 'SWELLING'),
(15, 'PAIN'),
(16, 'FATIGUE'),
(17, 'SPASM'),
(18, 'VOMITTING'),
(19, 'BLOODY STOOL'),
(20, 'ABDOMINAL PAIN'),
(21, 'LOSS OF APPATITE'),
(22, 'DIGESTIVE DISORDER'),
(23, 'THROAT PAIN'),
(24, 'SENSITIVITY TO LIGHT'),
(25, 'MOOD DISORDERS'),
(26, 'ITCHING'),
(27, 'REDNESS'),
(28, 'RASH'),
(29, 'PUS'),
(30, 'JOINT PAIN'),
(31, 'PIGMENTATION'),
(32, 'YELLOW EYES AND YELLOW SKIN'),
(33, 'YELLOWISH URINE'),
(34, 'FREQUENT TO NO URINE'),
(35, 'FOAMY URINE'),
(36, 'SLEEP DISORDER'),
(37, 'COUGHING'),
(38, 'EXCESS MUCUS'),
(39, 'ALLERGIC REACTION'),
(40, 'HAY FEVER'),
(41, 'VERTIGO'),
(42, 'FAINTING'),
(43, 'TREMORS'),
(44, 'INVOLUNTEER MUSCLE TWITCHING'),
(45, 'CONSTIPATION'),
(46, 'BLOATING'),
(47, 'INDIGESTION'),
(48, 'DIAHERRIA'),
(49, 'DEHYDRATION'),
(50, 'TEARY EYES'),
(51, 'NIGHT BLINDNESS'),
(52, 'DRY EYES'),
(53, 'NUMBNESS'),
(54, 'TINGLING'),
(55, 'BURNING'),
(56, 'PARALYSIS'),
(57, 'WEAK GRIPPING'),
(58, 'THICK/THIN BLEEDING'),
(59, 'NO CLOTTING OF BLOOD'),
(60, 'DRY SKIN'),
(61, 'SENSITIVITY TO LIGHT'),
(62, 'SKIN PEELING'),
(63, 'DISCOLORATION'),
(64, 'SPOTS'),
(65, 'SENSITIVITY'),
(66, 'TROUBLE CHEWING'),
(67, 'WEAK GUMS'),
(68, 'SWOLLEN GLANDS'),
(69, 'SWELLING'),
(70, 'BLOOD IN URINE'),
(71, 'WEIGHT FLUCTUATIONS'),
(72, 'TROUBLE MOVING'),
(73, 'FRACTURES'),
(74, 'SPRAINS'),
(75, 'BACK PAIN'),
(76, 'NECK PAIN'),
(77, 'INFECTION'),
(78, 'CRAMPS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_symptom`
--
ALTER TABLE `disease_symptom`
  ADD KEY `DISEASE_ID` (`DISEASE_ID`),
  ADD KEY `SYMPTOM_ID` (`SYMPTOM_ID`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease_symptom`
--
ALTER TABLE `disease_symptom`
  ADD CONSTRAINT `disease_symptom_ibfk_1` FOREIGN KEY (`DISEASE_ID`) REFERENCES `diseases` (`id`),
  ADD CONSTRAINT `disease_symptom_ibfk_2` FOREIGN KEY (`SYMPTOM_ID`) REFERENCES `symptoms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
