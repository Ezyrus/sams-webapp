-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 10:24 AM
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
-- Database: `samsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'cyrusAdmin', 'p@ssword12345'),
(3, 'paoloAdmin', 'p@ssword12345'),
(4, 'virayAdmin', 'p@ssword12345'),
(12, 'araAdmin', 'p@ssword12345'),
(13, 'monicaAdmin', 'p@ssword12345');

-- --------------------------------------------------------

--
-- Table structure for table `october2022`
--

CREATE TABLE `october2022` (
  `month_id` int(20) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `1` varchar(20) NOT NULL,
  `2` varchar(20) NOT NULL,
  `3` varchar(20) NOT NULL,
  `4` varchar(20) NOT NULL,
  `5` varchar(20) NOT NULL,
  `6` varchar(20) NOT NULL,
  `7` varchar(20) NOT NULL,
  `8` varchar(20) NOT NULL,
  `9` varchar(20) NOT NULL,
  `10` varchar(20) NOT NULL,
  `11` varchar(20) NOT NULL,
  `12` varchar(20) NOT NULL,
  `13` varchar(20) NOT NULL,
  `14` varchar(20) NOT NULL,
  `15` varchar(20) NOT NULL,
  `16` varchar(20) NOT NULL,
  `17` varchar(20) NOT NULL,
  `18` varchar(20) NOT NULL,
  `19` varchar(20) NOT NULL,
  `20` varchar(20) NOT NULL,
  `21` varchar(20) NOT NULL,
  `22` varchar(20) NOT NULL,
  `23` varchar(20) NOT NULL,
  `24` varchar(20) NOT NULL,
  `25` varchar(20) NOT NULL,
  `26` varchar(20) NOT NULL,
  `27` varchar(10) NOT NULL,
  `28` varchar(10) NOT NULL,
  `29` varchar(10) NOT NULL,
  `30` varchar(10) NOT NULL,
  `31` varchar(10) NOT NULL,
  `school_days` int(10) NOT NULL,
  `present_total` int(10) NOT NULL,
  `absent_total` int(10) NOT NULL,
  `attendance_rate` float NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `october2022`
--

INSERT INTO `october2022` (`month_id`, `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`, `attendance_rate`, `created`) VALUES
(16, '136606090102', 'Monica E. Paredes', 'ICT 11 - 1', 'present', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'absent', 'absent', 'present', 31, 14, 17, 45.1613, '2022-11-05 08:47:10'),
(17, '136612070392', 'John Edrich Viray', 'STEM 11 - 1', 'present', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'absent', 'present', 'absent', 'absent', 'absent', 31, 20, 11, 64.5161, '2022-11-05 08:48:40'),
(18, '136618070392', 'Paolo Rafael S. Tampico', 'ICT 11 - 1', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'absent', 'present', 'present', 31, 2, 29, 6.45161, '2022-11-05 08:48:42'),
(19, '20200231-M', 'Cyrus C. Cantero', 'STEM 12 - 1', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 31, 29, 2, 93.5484, '2022-11-05 08:54:29'),
(20, '223505070048', 'Arabella Belardo', 'ICT 11 - 1', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'absent', 31, 29, 2, 93.5484, '2022-11-05 08:54:31'),
(57, '20200226-M', 'Marc Isaac Ablay', 'STEM 11-A', 'absent', 'present', '', 'absent', '', '', 'present', 'present', '', '', 'present', '', 'present', '', 'present', '', 'absent', '', 'present', 'present', '', 'present', 'absent', 'present', 'absent', 'present', 'present', 'absent', 'absent', 'present', 'absent', 21, 13, 8, 61.9048, '2022-11-07 01:03:00'),
(58, '20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', '', '', 'present', '', '', '', 'absent', '', '', 'present', '', '', '', '', '', '', 'present', 'present', '', '', '', 'present', '', 'present', '', '', 'present', 'absent', 'present', 'present', 'present', 12, 10, 2, 83.3333, '2022-11-07 02:11:47'),
(59, '20200232-M', 'Rowee Capinpin', 'ICT 11-A', '', 'present', '', 'present', '', '', '', 'present', '', 'present', '', '', 'present', '', '', 'present', '', 'present', '', 'present', '', 'present', '', 'present', 'present', '', 'present', 'absent', '', '', '', 13, 12, 1, 92.3077, '2022-11-07 02:11:50'),
(61, '2020029-M', 'Arman Cabral', 'HUMMS 11-A', '', '', '', '', '', '', 'present', '', '', '', 'present', '', 'present', '', 'present', '', 'absent', 'absent', '', 'absent', 'absent', '', 'absent', 'absent', 'present', '', 'present', 'absent', 'present', 'absent', 'absent', 16, 7, 9, 43.75, '2022-11-07 02:11:51'),
(63, '239828988', 'Judell Julia', 'ICT 11-A ', '', '', '', 'present', '', '', '', '', 'present', 'present', 'absent', '', 'absent', 'present', '', 'present', '', 'present', 'present', 'present', 'absent', '', '', 'present', 'present', 'present', 'present', 'absent', 'absent', 'present', 'present', 19, 14, 5, 73.6842, '2022-11-07 02:27:07'),
(64, '21938912399', 'Harley Dave Llenes', 'STEM 11-1', 'present', 'present', 'present', '', 'present', '', 'present', 'present', '', '', '', '', '', '', '', 'absent', '', 'present', '', 'present', '', 'present', 'present', 'absent', '', 'absent', 'present', 'present', '', 'present', 'present', 17, 14, 3, 82.3529, '2022-11-07 02:27:17'),
(65, '20200233-M', 'Darren Carbungco', 'HUMMS 11-A', 'absent', '', 'present', '', 'present', '', '', 'absent', 'absent', '', 'absent', '', 'present', 'absent', 'present', 'absent', 'present', 'present', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 25, 16, 9, 64, '2022-11-07 02:27:20'),
(66, '23823882732', 'Rarugal Hermogino', 'ABM 11-1', 'absent', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'present', 'noclass', 'present', 'present', 'present', 'present', 'absent', 'present', 'absent', 'present', 'present', 'noclass', 'present', 'present', 'present', 'present', 'present', 'noclass', 'present', 'present', 'absent', 'present', 'present', 28, 24, 4, 85.7143, '2022-11-07 02:48:02'),
(69, '129380757819', 'John Loyd Conag', 'ICT 11-A', 'present', 'present', '', 'absent', 'absent', '', 'present', '', '', '', '', 'present', '', '', 'present', 'present', '', '', '', 'present', '', 'present', '', '', 'present', '', '', 'present', '', 'present', 'present', 14, 12, 2, 85.7143, '2022-11-08 05:15:44'),
(70, '12381905489', 'Kevin Clark Gonzalo', 'ABM 11-1', 'present', 'present', '', 'present', '', 'present', 'absent', 'present', 'present', 'present', 'present', '', '', '', '', 'present', '', '', '', '', '', '', 'present', '', 'present', '', '', '', 'present', '', 'present', 14, 13, 1, 92.8571, '2022-11-08 05:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `lrn` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `age` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`, `timestamp`) VALUES
('12381905489', 'Kevin Clark Gonzalo', 'ABM 11-1', 22, 'Caloocan City', 'clarkair@gmail.com', '0921736718', '2022-11-07 02:21:12'),
('129380757819', 'John Loyd Conag', 'ICT 11-A', 21, 'Caloocan City', 'conag@gmail.com', '092178367', '2022-11-07 02:15:29'),
('136606090102', 'Monica E. Paredes', 'ICT 11-A', 20, '103 Francisco St. Brgy. 71 Caloocan City', 'nicaembateparedes@gmail.com', '09451323281', '2022-10-25 11:06:58'),
('136612070392', 'John Edrich Viray', 'STEM 11-A', 20, '#75 Dau St., 6th Ave., Caloocan City', 'Virayjohnedrich@gmail.com', '09760500860', '2022-10-25 11:06:58'),
('136618070392', 'Paolo Rafael S. Tampico', 'ICT 11-A', 20, '791B P. Galauran St. 8th Ave. Caloocan City', 'paolorafaeltampico@gmail.com', '09219098950', '2022-10-25 11:06:58'),
('20200126-M', 'Arnel Jay Bajalan', 'HUMMS 11-A', 20, 'Caloocan City', 'arnel@yahoo.com', '091111111234', '2022-11-05 08:57:22'),
('20200226-M', 'Marc Isaac Ablay', 'STEM 11-A', 21, 'Caloocan City', 'marcisaacablay@gmail.com', '091231333333', '2022-11-05 08:53:18'),
('20200231-M', 'Cyrus C. Cantero', 'STEM 11-A', 20, '888 Libis Baesa Caloocan City', 'slimshady.ca26@gmail.com', '09517563059', '2022-11-05 07:55:09'),
('20200232-M', 'Rowee Capinpin', 'ICT 11-A', 20, 'Caloocan City\r\n', 'rowee@gmail.com', '0912345', '2022-11-05 08:59:47'),
('20200233-M', 'Darren Carbungco', 'HUMMS 11-A', 20, 'caloocan city', 'darren@gmail.com\r\n', '092131231513', '2022-11-05 09:00:22'),
('2020029-M', 'Arman Cabral', 'HUMMS 11-A', 20, 'Caloocan City', 'armalcabral@gmail.com', '09123456789', '2022-11-05 08:58:08'),
('21938912399', 'Harley Dave Llenes', 'STEM 11-1', 20, 'Caloocan City', 'harley@gmail.com', '09321673811', '2022-11-07 02:25:19'),
('223505070048', 'Arabella Belardo', 'ICT 11-A', 19, 'Blk15 lot11 North Triangle Caloocan City', 'belardoarabella05@gmail.com', '09219098950', '2022-10-25 11:06:58'),
('23823882732', 'Rarugal Hermogino', 'ABM 11-1', 40, 'Valenzuela City', 'nar@yahoo.com', '092133092', '2022-11-07 02:22:27'),
('239828988', 'Judell Julia', 'ICT 11-A ', 21, 'Caloocan City', 'judell@yahoo.com', '093273822', '2022-11-07 02:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `october2022`
--
ALTER TABLE `october2022`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`lrn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `october2022`
--
ALTER TABLE `october2022`
  MODIFY `month_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
