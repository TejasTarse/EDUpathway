-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2025 at 05:53 PM
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
-- Database: `onssdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `ID` int(5) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Subject` varchar(250) DEFAULT NULL,
  `NotesTitle` varchar(250) DEFAULT NULL,
  `NotesDecription` longtext DEFAULT NULL,
  `File1` varchar(250) DEFAULT NULL,
  `File2` varchar(250) DEFAULT NULL,
  `File3` varchar(255) DEFAULT NULL,
  `File4` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`ID`, `UserID`, `Subject`, `NotesTitle`, `NotesDecription`, `File1`, `File2`, `File3`, `File4`, `CreationDate`, `UpdationDate`, `Category`) VALUES
(10, 5, 'PHYSICS', 'Refraction', 'discuss about theory of refraction', 'd41d8cd98f00b204e9800998ecf8427e1749141758.pdf', 'd41d8cd98f00b204e9800998ecf8427e1749141758.pdf', 'd41d8cd98f00b204e9800998ecf8427e1749141758.pdf', 'd41d8cd98f00b204e9800998ecf8427e1749141758.pdf', '2025-06-05 16:42:38', '2025-06-05 17:55:50', 'M.tech'),
(13, 5, 'Fundamental of AI', 'AI', 'Basic or advance knowledge of AI', 'd41d8cd98f00b204e9800998ecf8427e1749148118.pdf', '', '', '', '2025-06-05 18:28:38', '2025-06-05 18:31:28', 'M.tech'),
(14, 5, 'Web Development', 'Web Dev', 'some knowledge of Web Development', 'd41d8cd98f00b204e9800998ecf8427e1749148476.pdf', '', '', '', '2025-06-05 18:34:36', NULL, 'M.tech'),
(15, 5, 'core of BA', 'Business Analysis', 'learn about business', 'd41d8cd98f00b204e9800998ecf8427e1749148603.pdf', '', '', '', '2025-06-05 18:36:43', NULL, 'MBA'),
(16, 5, 'organic chemistry', 'organic chemistry', 'core knowledge of organic chemistry', 'd41d8cd98f00b204e9800998ecf8427e1749240188.pdf', '', '', '', '2025-06-06 20:03:08', NULL, 'Msc');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Abir Singh', 9798789789, 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-06-06 13:36:36'),
(2, 'Anuj Kumar', 1425362514, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-06-11 11:48:57'),
(3, 'Raghav', 7897979878, 'rahgav@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-12-14 05:26:12'),
(4, 'John Doe', 1122112211, 'john12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-12-15 17:46:20'),
(5, 'Tejas', 8468861517, 'virupanti5@gmail.com', '15e8e7c72ea16ca290930fd7c4db760b', '2025-06-05 13:28:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
