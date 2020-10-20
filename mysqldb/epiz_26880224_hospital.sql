-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.epizy.com
-- Generation Time: Oct 20, 2020 at 01:59 PM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26880224_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `id` int(10) NOT NULL,
  `name` char(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `day` date NOT NULL,
  `department` varchar(20) NOT NULL,
  `doctor_name` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`id`, `name`, `email`, `day`, `department`, `doctor_name`, `message`) VALUES
(8, 'Akhil M Anil', 'akhilmanil123@gmail.com', '2020-10-04', 'Cardiology', 'Mr.Rejin Joseph - Ca', 'Need an urgent appointment'),
(11, 'akhil', 'akhilmanil0@gmail.com', '2020-10-20', 'Cardiology', 'Mr.Rejin Joseph - Ca', 'need an appoinment'),
(12, 'Arjun Raj', 'arjunraj.pala@gmail.com ', '2020-10-14', 'Dental', 'Mr. Ashik John - Den', 'Severe pain'),
(14, 'Arjun Raj', 'arjunraj.pala@gmail.com', '2020-10-07', 'Pulmonary', 'Mr. Kevin K - Pulmon', 'Breathing issues .');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`) VALUES
(1000, 'rejinlifeline'),
(2000, 'arathylifeline'),
(3000, 'akashalifeline'),
(1500, 'akshathalifeline'),
(2500, 'ashalifeline'),
(3500, 'kevinlifeline'),
(4000, 'ajailifeline'),
(4500, 'miyalifeline');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
