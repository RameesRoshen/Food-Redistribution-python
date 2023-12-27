-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 09:55 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_redistribution`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `alert_id` int(10) NOT NULL,
  `alert` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`alert_id`, `alert`) VALUES
(1, 'fgf'),
(2, 'ras');

-- --------------------------------------------------------

--
-- Table structure for table `bin_reg`
--

CREATE TABLE `bin_reg` (
  `bin_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bin_reg`
--

INSERT INTO `bin_reg` (`bin_id`, `name`, `location`, `phone`) VALUES
(1, 'ras', 'kkl', 2147483647),
(2, 'ras', 'kmk', 454);

-- --------------------------------------------------------

--
-- Table structure for table `charity_org_reg`
--

CREATE TABLE `charity_org_reg` (
  `org_reg_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `Phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charity_org_reg`
--

INSERT INTO `charity_org_reg` (`org_reg_id`, `name`, `address`, `location`, `Phone`) VALUES
(1, 'ras', 'cmndm', 'kkl', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(10) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `complaint`, `user_id`, `reply`, `date`, `time`) VALUES
(1, 'fuyiuj v', 0, '', '0000-00-00', '00:00:00'),
(2, 'fuyiuj v', 0, '', '0000-00-00', '00:00:00'),
(3, 'fuyiuj v', 1, 'sdfggh', '2023-02-04', '00:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `container_id` int(11) NOT NULL,
  `container_name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container`
--

INSERT INTO `container` (`container_id`, `container_name`, `phone`, `location`) VALUES
(1, 'ras', '1234567890', 'kkl');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(10) NOT NULL,
  `item` varchar(30) NOT NULL,
  `org_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `item`, `org_name`, `quantity`, `location`, `phone`) VALUES
(1, 'ras', 'ghdfhfhf', 14, 'kkl', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `food_report`
--

CREATE TABLE `food_report` (
  `report_id` int(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `org_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_report`
--

INSERT INTO `food_report` (`report_id`, `item_name`, `quantity`, `org_name`) VALUES
(1, 'ras', 14, 'ras');

-- --------------------------------------------------------

--
-- Table structure for table `inmates`
--

CREATE TABLE `inmates` (
  `inmates_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inmates`
--

INSERT INTO `inmates` (`inmates_id`, `name`, `address`) VALUES
(1, 'ras', 'cmndm');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organization_reg`
--

CREATE TABLE `organization_reg` (
  `org_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_reg`
--

INSERT INTO `organization_reg` (`org_id`, `name`, `location`, `phone`) VALUES
(1, 'ras', 'kkl', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `user_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `Phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`user_id`, `name`, `address`, `gender`, `Phone`) VALUES
(1, 'ras', 'cmndm', 'male', 1234567890),
(2, 'ras', 'cmndm', 'female', 1234567890),
(3, 'hgh', 'hj', 'male', 2147483647),
(4, 'ras', 'cmndm', 'male', 1234567890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `bin_reg`
--
ALTER TABLE `bin_reg`
  ADD PRIMARY KEY (`bin_id`);

--
-- Indexes for table `charity_org_reg`
--
ALTER TABLE `charity_org_reg`
  ADD PRIMARY KEY (`org_reg_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`container_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `food_report`
--
ALTER TABLE `food_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `inmates`
--
ALTER TABLE `inmates`
  ADD PRIMARY KEY (`inmates_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `organization_reg`
--
ALTER TABLE `organization_reg`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `alert_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bin_reg`
--
ALTER TABLE `bin_reg`
  MODIFY `bin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charity_org_reg`
--
ALTER TABLE `charity_org_reg`
  MODIFY `org_reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `container_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_report`
--
ALTER TABLE `food_report`
  MODIFY `report_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inmates`
--
ALTER TABLE `inmates`
  MODIFY `inmates_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organization_reg`
--
ALTER TABLE `organization_reg`
  MODIFY `org_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
