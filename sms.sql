-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 07:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `s_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`s_no`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_no` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `remark` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_no`, `roll_no`, `name`, `father_name`, `class`, `mobile`, `email`, `password`, `remark`) VALUES
(5, 1002, 'Pramod Sharma', 'Sohan Sharma', 10, '659874512', 'pramod@gmail.com', 'pramod@123', 'He is an intelligent guy.'),
(7, 1001, 'Vinod Meena', 'XYZ', 12, '1234567789', 'vinod@gmail.com', 'vinod@123', 'very Fine!!!!'),
(11, 1004, 'Mohan', 'Sohan', 12, '254587458', 'mohan@gmail.com', 'mohan@123', 'Great boy'),
(123, 1005, 'dharmi', 'smitbhai', 1, '123457891', 'd@gmail.com', 'dharmi@123', 'very good girl..'),
(125, 1003, 'dhruv', 'smitbhai', 2, '5678910111', 'ds@yahoo.com', 'dhruv@123', 'good thinker!!!'),
(126, 1006, 'shreya', 'bhaveshbhai', 3, '45678910111', 'sbc@chavda.com', 'shreya@123', 'simply good !'),
(127, 1007, 'jay', 'bhaveshbhai', 4, '8488954417', 'j@yahhoo.com', 'jay@123', 'great solver!!'),
(128, 1008, 'meetraj', 'bhaveshkumar', 3, '9835448516', 'm@parmar.com', 'meetraj@123', 'problem solver !!'),
(129, 1009, 'dixita', 'sanjaybhai', 3, '123456777', 'd@gmail.com', 'dixita@123', 'good !'),
(130, 1010, 'aditi', 'tejendrabhai', 2, '45678910110', 'a@gmail.com', 'aditi@123', 'fine!');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `s_no` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `courses` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`s_no`, `t_id`, `name`, `mobile`, `courses`) VALUES
(1, 101, 'Shivam Yadav', '5484654878', 'Physics, Maths'),
(2, 102, 'Gopal Sharma', '9878452484', 'English, Reasoning, History'),
(103, 103, 'Hariom sain', '7887451254', 'Politics, History, Biology ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
