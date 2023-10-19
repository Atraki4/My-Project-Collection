-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 12:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ce_volley_ball_competition`
--

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `Field_ID` varchar(20) NOT NULL,
  `Field_Name` varchar(30) DEFAULT NULL,
  `Field_Location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`Field_ID`, `Field_Name`, `Field_Location`) VALUES
('F001', 'Indoor Stadium', 'Hua mak Bangkok'),
('F002', 'Thai-Japan Dindeang Sport Stad', 'Dindeang, Bangkok'),
('F003', 'Eastern National Sports Traini', 'Pattaya, Chon Buri'),
('F004', 'Korat Chatchai Hall Stadium', 'Suranaree Nakhon Ratchasima'),
('F005', 'Saphan Hin Park Stadium', 'Wichit, Phuket'),
('F006', 'Bangkok Arena', 'Khok faed, Nong Chok, Bangkok');

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE `match` (
  `Match_ID` varchar(50) NOT NULL,
  `TeamA_ID` varchar(20) DEFAULT NULL,
  `TeamB_ID` varchar(20) DEFAULT NULL,
  `Match_Date` date DEFAULT NULL,
  `Field_ID` varchar(20) DEFAULT NULL,
  `TeamA_Score` int(1) DEFAULT NULL,
  `TeamB_Score` int(1) DEFAULT NULL,
  `Match_Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`Match_ID`, `TeamA_ID`, `TeamB_ID`, `Match_Date`, `Field_ID`, `TeamA_Score`, `TeamB_Score`, `Match_Time`) VALUES
('M01', 'THA001', 'MAL002', '2023-09-08', 'F001', 3, 0, '13:30:59'),
('M02', 'MYA003', 'VEI006', '2023-09-09', 'F002', 5, 4, '15:00:00'),
('M03', 'IND005', 'PHI004', '2023-09-10', 'F003', 1, 3, '17:45:00'),
('M04', 'MAL002', 'VEI006', '2023-09-12', 'F004', NULL, NULL, '16:55:00'),
('M05', 'THA001', 'PHI004', '2023-09-14', 'F005', NULL, NULL, '17:10:00'),
('M06', 'IND005', 'MYA003', '2023-09-30', 'F006', NULL, NULL, '19:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `match_staff`
--

CREATE TABLE `match_staff` (
  `MatchStaff_ID` varchar(50) NOT NULL,
  `MatchStaff_Fname` char(50) DEFAULT NULL,
  `MatchStaff_Lname` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `match_staff`
--

INSERT INTO `match_staff` (`MatchStaff_ID`, `MatchStaff_Fname`, `MatchStaff_Lname`) VALUES
('MS_Main001', 'Jiramet', 'Boonma'),
('MS_Main002', 'Tonkla', 'Praekaew'),
('MS_Main003', 'Kongsadakorn', 'Foitong'),
('MS_Main004', 'Parinthorn', 'Praisunthea'),
('MS_Main005', 'Nattapat', 'Thaweewattanasomboon'),
('MS_Main006', 'Atsawakorn', 'Kengkarnpanich'),
('MS_Sub001', 'Siwat', 'Chueaphlaiwet'),
('MS_Sub002', 'Kaiwich', 'Tawanwech'),
('MS_Sub003', 'Phatchara', 'Yangmeesook'),
('MS_Sub004', 'Noppasil', 'Hemhongsa'),
('MS_Sub005', 'Chawit', 'Prakoddee'),
('MS_Sub006', 'Treewit', 'Boonsilp');

-- --------------------------------------------------------

--
-- Table structure for table `match_staff_enroll`
--

CREATE TABLE `match_staff_enroll` (
  `MatchStaff_ID` varchar(20) NOT NULL,
  `Match_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `match_staff_enroll`
--

INSERT INTO `match_staff_enroll` (`MatchStaff_ID`, `Match_ID`) VALUES
('MS_Main001', 'M01'),
('MS_Main002', 'M02'),
('MS_Main003', 'M03'),
('MS_Main004', 'M04'),
('MS_Main005', 'M05'),
('MS_Main006', 'M06'),
('MS_Sub001', 'M01'),
('MS_Sub002', 'M02'),
('MS_Sub003', 'M03'),
('MS_Sub004', 'M04'),
('MS_Sub005', 'M05'),
('MS_Sub006', 'M06');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `Player_ID` varchar(10) NOT NULL,
  `Player_FName` varchar(50) DEFAULT NULL,
  `Player_LName` varchar(50) DEFAULT NULL,
  `Team_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`Player_ID`, `Player_FName`, `Player_LName`, `Team_ID`) VALUES
('IN001', 'Aan', 'Sari', 'IND005'),
('IN002', 'Billy', 'Hidayat', 'IND005'),
('IN003', 'Dandy', 'Lestari', 'IND005'),
('IN004', 'Edward', 'Wati', 'IND005'),
('IN005', 'Fabian', 'Dewi', 'IND005'),
('IN006', 'Gian', 'Putra', 'IND005'),
('MA001', 'Lee', 'Tan', 'MAL002'),
('MA002', 'Adam', 'Lim', 'MAL002'),
('MA003', 'Ahmad', 'Wong', 'MAL002'),
('MA004', 'Aidan', 'Rahman', 'MAL002'),
('MA005', 'Aaaqil', 'Yap', 'MAL002'),
('MA006', 'Bujang', 'Goh', 'MAL002'),
('MY001', 'A', 'sin', 'MYA003'),
('MY002', 'Bin', 'nya', 'MYA003'),
('MY003', 'Bog', 'yoke', 'MYA003'),
('MY004', 'Du', 'wa', 'MYA003'),
('MY005', 'Sao', 'pha', 'MYA003'),
('MY006', 'Saya', 'daw', 'MYA003'),
('PH001', 'Aaron', 'Dela cruz', 'PHI004'),
('PH002', 'Baron', 'Garcia', 'PHI004'),
('PH003', 'Carlo', 'Flores', 'PHI004'),
('PH004', 'Darwin', 'Mendoza', 'PHI004'),
('PH005', 'Edric', 'Reyes', 'PHI004'),
('PH006', 'Fermin', 'Ramos', 'PHI004'),
('TH001', 'Korn', 'Anusorn', 'THA001'),
('TH002', 'Paemika', 'Taotong', 'THA001'),
('TH003', 'Chanakarn', 'Moonsarn', 'THA001'),
('TH004', 'Kantaporn', 'Tongsorn', 'THA001'),
('TH005', 'Chutima', 'Sarntong', 'THA001'),
('TH006', 'Karnchana', 'Korntong', 'THA001'),
('VE001', 'Thaai', 'Vaan', 'VEID006'),
('VE002', 'Hong', 'Houng', 'VEID006'),
('VE003', 'Ziep', 'Mai', 'VEID006'),
('VE004', 'Lien', 'Lyy', 'VEID006'),
('VE005', 'Dung', 'Nguyen', 'VEID006'),
('VE006', 'Mi', 'Voo', 'VEID006');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Team_ID` varchar(10) NOT NULL,
  `Team_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Team_ID`, `Team_Name`) VALUES
('IND005', 'Indonesia'),
('MAL002', 'Malaysia'),
('MYA003', 'Myanmar'),
('PHI004', 'Philippines'),
('THA001', 'Thailand'),
('VEI006', 'Veitnam');

-- --------------------------------------------------------

--
-- Table structure for table `team_staff`
--

CREATE TABLE `team_staff` (
  `TeamStaff_ID` varchar(20) NOT NULL,
  `TeamStaff_Fname` varchar(50) DEFAULT NULL,
  `TeamStaff_Lname` varchar(50) DEFAULT NULL,
  `Team_ID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_staff`
--

INSERT INTO `team_staff` (`TeamStaff_ID`, `TeamStaff_Fname`, `TeamStaff_Lname`, `Team_ID`) VALUES
('AC_IN002', 'Dinly', 'Hidal', 'IND005'),
('AC_MA002', 'Aaadil', 'Rohman', 'MAL002'),
('AC_MY002', 'Nyan', 'Binn', 'MYA003'),
('AC_PH002', 'Garon', 'Lacruz', 'PHI004'),
('AC_TH002', 'Jakkorn', 'Tangtong', 'THA001'),
('AC_VE002', 'Hiep', 'Hguyen', 'VEID006'),
('C_IN001', 'Haan', 'Yasi', 'IND005'),
('C_MA001', 'Wong', 'Tanlee', 'MAL002'),
('C_MY001', 'Du', 'Waki', 'MYA003'),
('C_PH001', 'Rayos', 'Mosrah', 'PHI004'),
('C_TH001', 'Anukorn', 'Sornkorn', 'THA001'),
('C_VE001', 'Hien', 'Nyugen', 'VEID006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`Match_ID`),
  ADD KEY `TeamA_ID` (`TeamA_ID`),
  ADD KEY `TeamB_ID` (`TeamB_ID`),
  ADD KEY `Field_ID` (`Field_ID`);

--
-- Indexes for table `match_staff`
--
ALTER TABLE `match_staff`
  ADD PRIMARY KEY (`MatchStaff_ID`);

--
-- Indexes for table `match_staff_enroll`
--
ALTER TABLE `match_staff_enroll`
  ADD PRIMARY KEY (`MatchStaff_ID`,`Match_ID`),
  ADD KEY `MatchStaff` (`MatchStaff_ID`),
  ADD KEY `Match_ID` (`Match_ID`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Player_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`Team_ID`);

--
-- Indexes for table `team_staff`
--
ALTER TABLE `team_staff`
  ADD PRIMARY KEY (`TeamStaff_ID`),
  ADD KEY `Team_ID` (`Team_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
