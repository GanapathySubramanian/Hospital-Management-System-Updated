-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2021 at 08:05 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `sno` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `docid` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `consultancyfees` varchar(50) NOT NULL,
  `userstatus` varchar(255) NOT NULL,
  `doctorstatus` varchar(50) NOT NULL,
  `action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`sno`, `userid`, `docid`, `specialization`, `disease`, `appointmentdate`, `appointmenttime`, `consultancyfees`, `userstatus`, `doctorstatus`, `action`) VALUES
(1, 'ganapathyda', 'vengadesh', 'Dermatology', 'Acne(10days)', '2020-10-05', '16:00:00', 'Rs 1000/-', '1', '1', 1),
(2, 'sharmila', 'vengadesh', 'Dermatology', 'Hives(5days)', '2020-10-20', '10:00:00', 'Rs 1000/-', '0', '1', 0),
(3, 'rahul', 'vengadesh', 'Dermatology', 'Blister(4days)', '2020-10-04', '16:00:00', 'Rs 1000/-', '1', '0', 0),
(4, 'rahul', 'Dean Thomas', 'Cardiology', 'Stroke(8days)', '2020-10-05', '08:00:00', 'Rs 2000/-', '0', '1', 0),
(5, 'rahul', 'Dean Thomas', 'Cardiology', 'Stroke(2weeks)', '2020-10-20', '16:00:00', 'Rs 2000/-', '1', '1', 1),
(6, 'Ganapathyda', 'Lewis Parole', 'Orthopedic', 'Ligament Injuries to the Knee', '2021-03-25', '12:00:00', 'Rs 1200/-', '1', '1', 1),
(7, 'Kanaga Lakshmi', 'Tom Neville', 'Emergency', 'Breathing difficulty', '2021-03-24', '10:00:00', 'Rs 500/-', '0', '1', 0),
(8, 'Kanaga', 'selwin landis', 'Emergency', 'Breathing difficulty(1week)', '2021-03-26', '08:00:00', 'Rs 500/-', '1', '1', 1),
(9, 'Sharmila', 'Mary Edwards Walker', 'Physiotheraphy', 'Frozen shoulder', '2021-03-28', '10:00:00', 'Rs 2000/-', '1', '1', 1),
(10, 'Ganapathyda', 'Dean Thomas', 'Cardiology', 'Fever(15days)', '2021-03-31', '16:00:00', 'Rs 2000/-', '0', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` bigint(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`firstname`, `lastname`, `email`, `phoneno`, `message`) VALUES
('ganapathy', 'subramanian', '123@gmail.com', 6385470031, 'hi hello'),
('ganapathy', 'subramanian', 'ganapathy2000subramanian@gmail.com', 8098108869, 'Hi I have a doubt'),
('Ganapathisubramanian', 'Sankaranarayanan', 'ganapathy@gmail.com', 8098108869, 'hi hello'),
('vengadesh', 'K S', 'venky777@gmail.com', 6385470031, 'hi gana'),
('Ganapathisubramanian', 'Sankaranarayanan', 'w3@gmail.com', 12345678, 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `doctable`
--

CREATE TABLE `doctable` (
  `docid` varchar(50) NOT NULL,
  `docname` varchar(50) NOT NULL,
  `docnum` bigint(10) NOT NULL,
  `docgender` varchar(30) NOT NULL,
  `specilaization` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmpassword` varchar(50) NOT NULL,
  `consultancyfees` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctable`
--

INSERT INTO `doctable` (`docid`, `docname`, `docnum`, `docgender`, `specilaization`, `password`, `confirmpassword`, `consultancyfees`) VALUES
('Dean Thomas', 'Dr.Dean Thomas', 6548790123, 'Male', 'Cardiology', '123', '123', 'Rs 2000/-'),
('dharma', 'Dharma Devan', 6879054112, 'Male', 'Neurology', '123', '123', 'Rs 1500/-'),
('jagadesan', 'Jagadesan', 6791223290, 'Male', 'Neurology', '123', '123', 'Rs 1500/-'),
('Jerry McStanton', 'Dr.Jerry McStanton', 6357678378, 'Male', 'Emergency', '123', '123', 'Rs 500/-'),
('krishna', 'krishna', 8679097901, 'Male', 'Cardiology', '123', '123', 'Rs 2000/-'),
('Lewis Parole', 'Dr.Lewis Parole', 9875451218, 'Male', 'Orthopedic', '123', '123', 'Rs 1200/-'),
('Mary Edwards Walker', 'Dr.Mary Edwards Walker', 8967543290, 'Male', 'Physiotheraphy', '123', '123', 'Rs 2000/-'),
('Raji', 'Raji Lakshmi', 6798543290, 'Female', 'Emergency', '123', '123', 'Rs 500/-'),
('selwin landis', 'Selwin landis', 6754918712, 'Male', 'Emergency', '123', '123', 'Rs 500/-'),
('Tom Neville', 'Dr.Tom Neville', 6798549019, 'Male', 'Emergency', '123', '123', 'Rs 500/-'),
('vengadesh', 'vengadesh K S', 6798571726, 'Male', 'Dermatology', '123', '123', 'Rs 1000/-');

-- --------------------------------------------------------

--
-- Table structure for table `pattable`
--

CREATE TABLE `pattable` (
  `fullname` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pattable`
--

INSERT INTO `pattable` (`fullname`, `userid`, `email`, `phoneno`, `password`, `gender`) VALUES
('Sakshi', '1234', 'sakshishantilal@gmail.com', 8220597658, 'sak', 'Female'),
('Bagadeesh kumar', 'bagi', 'bagi@gmail.com', 8098107760, '123', 'Male'),
('Ganapathy Subramanian', 'ganapathyda', 'ganapathy5@gmail.com', 6385470031, '123', 'male'),
('Kamesh Babu', 'kamesh', 'kamesh212@gmail.com', 8097654320, '123', 'Male'),
('Kanaga Lakshmi ', 'Kanaga', 'kanaga@gmail.com', 6385470031, '123', 'Female'),
('Kanaga Lakshmi.R', 'Kanaga Lakshmi', 'rkl2000srtrk@gmail.com', 8695845296, '123456', 'Female'),
('Rahul', 'Rahul', 'Rahul@gmail.com', 8098108869, '123', 'Male'),
('Sharmila', 'sharmila', 'sharmaila@gmail.com', 123457890, '123', 'female'),
('vengadesh', 'venky', 'venky@gmail.com', 8098108869, '123', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `sno` int(11) NOT NULL,
  `docid` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mailid` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `adate` date NOT NULL,
  `atime` time NOT NULL,
  `gender` varchar(10) NOT NULL,
  `cfees` varchar(50) NOT NULL,
  `disease` varchar(50) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  `meet` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`sno`, `docid`, `userid`, `fullname`, `mailid`, `mobile`, `adate`, `atime`, `gender`, `cfees`, `disease`, `medicine`, `meet`, `message`, `status`) VALUES
(1, 'vengadesh', 'ganapathyda', 'Ganapathy Subramanian', 'ganapathy5@gmail.com', 6385470031, '2020-10-05', '16:00:00', 'male', 'Rs 1000/-', 'Acne(10days)', 'Acne Clarifying AHA BHA Gel ', 'Not need', 'Buy that gel in online use daily at mrg', 1),
(2, 'Dean Thomas', 'rahul', 'Rahul', 'Rahul@gmail.com', 8098108869, '2020-10-05', '16:00:00', 'Male', 'Rs 2000/-', 'Stroke(8days)', 'clopidogrel (Plavix)', 'not need', 'Eat Fruit and vegetables contain antioxidants', 0),
(3, 'Lewis parole', 'ganapathyda', 'Ganapathy Subramanian', 'ganapathy5@gmail.com', 6385470031, '2021-03-25', '12:00:00', 'male', 'Rs 1200/-', 'Ligament Injuries to the Knee', 'elastic bandage', 'Not need', 'Take rest Ice pack application ', 1),
(4, 'Dean thomas', 'rahul', 'Rahul', 'Rahul@gmail.com', 8098108869, '2020-10-20', '16:00:00', 'Male', 'Rs 2000/-', 'Stroke(2weeks)', 'clopidogrel (Plavix)', 'Yes', 'Eat Fruit and vegetables contain antioxidants', 1),
(5, 'Selwin landis', 'Kanaga', 'Kanaga Lakshmi ', 'kanaga@gmail.com', 6385470031, '2021-03-26', '08:00:00', 'Female', 'Rs 500/-', 'Breathing difficulty(1week)', 'Bronchodilators', 'Yes ', '\r\nSleeping in a relaxed position', 1),
(6, 'Mary Edwards Walker', 'Sharmila', 'Sharmila', 'sharmaila@gmail.com', 123457890, '2021-03-28', '10:00:00', 'female', 'Rs 2000/-', 'Frozen shoulder', 'aspirin', 'Not need', 'Pendulum stretch and finger walk', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `doctable`
--
ALTER TABLE `doctable`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `pattable`
--
ALTER TABLE `pattable`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
