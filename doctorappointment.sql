-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 04:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` varchar(11) NOT NULL,
  `adminpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `adminpassword`) VALUES
('1', 'admin'),
('admin@gmail', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `doctorname` varchar(20) NOT NULL,
  `doctorid` varchar(20) NOT NULL,
  `patientid` varchar(20) NOT NULL,
  `patientname` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `fee` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `doctorname`, `doctorid`, `patientid`, `patientname`, `date`, `time`, `status`, `action`, `fee`, `comment`) VALUES
(1, 'arun', '12', '123', 'jake zyrus', '2023-03-29', '16:05:00', 'completed', '', 800, 'good'),
(2, 'arun', '12', '125', 'arjun', '2023-03-28', '16:13:00', 'completed', '', 0, ''),
(3, 'sreelakshmi', '1', '125', 'arjun', '2023-03-29', '04:21:00', 'completed', '', 0, ''),
(5, 'zeena', '16', '123', 'jake zyrus', '2023-03-09', '11:20:00', 'completed', '', 5000, 'gooood'),
(6, 'abhijith', '13', '123', '', '2023-03-07', '03:21:00', '', '', 0, ''),
(7, 'arun', '12', '123', 'jake zyrus', '2023-03-09', '16:04:00', 'confirmed', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bookapp`
--

CREATE TABLE `bookapp` (
  `AppoID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `patientID` int(11) NOT NULL,
  `docID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookapp`
--

INSERT INTO `bookapp` (`AppoID`, `Date`, `Time`, `patientID`, `docID`) VALUES
(0, '2020-10-08', '00:43:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(11) NOT NULL,
  `Doctorname` varchar(255) NOT NULL,
  `spec` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ContactNumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `categorey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `Doctorname`, `spec`, `email`, `ContactNumber`, `password`, `categorey`) VALUES
(1, 'sreelakshmi', 'Cardiologists', 'sree@gmail.com', '8089299784', 'arjun', ''),
(12, 'arun', 'General Physician', 'arun@gmail.com', '1234567890', '12345', 'General Physician'),
(13, 'abhijith', 'Gynaecologists', 'abhi@gmail.com', '1234567891', '123456', ''),
(14, 'harvy', 'Pediatrics', 'harvy@gmail.com', '1234679873', '123456', ''),
(15, 'evelin', 'Psychiatry', 'evelin@123', '5673481239', '123456', ''),
(16, 'zeena', 'Dermatologists', 'zeena@123', '2657843569', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `role` varchar(30) NOT NULL,
  `pID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`role`, `pID`, `name`, `subject`, `message`) VALUES
('patient', 100, '', 'rvev', 'vfvrvrvr'),
('patient', 100, '', 'doc', 'doc is good'),
('patient', 123, 'jake zyrus', 'jn', 'nj');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ContactNumber` varchar(40) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`UserID`, `Name`, `gender`, `ContactNumber`, `Email`, `Password`) VALUES
(123, 'jake zyrus', 'Male', '0926378322', 'jake@g.com', '12345'),
(124, 'abc', 'Male', 'abc@gmail', '1234567890', '12345'),
(125, 'arjun', 'Male', '9207779085', 'aj@gmail', '54321'),
(126, 'akhil', 'Male', '1235467887', 'akhil@123', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `AdminID` (`AdminID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `bookapp`
--
ALTER TABLE `bookapp`
  ADD PRIMARY KEY (`AppoID`),
  ADD UNIQUE KEY `Time` (`Time`),
  ADD KEY `patientoapp` (`patientID`),
  ADD KEY `doctopatient` (`docID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
