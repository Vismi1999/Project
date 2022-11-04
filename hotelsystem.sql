-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 10:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_login`
--

CREATE TABLE `cust_login` (
  `log_id` int(11) NOT NULL,
  `cust_emailid` varchar(100) NOT NULL,
  `cust_pass` varchar(200) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_login`
--

INSERT INTO `cust_login` (`log_id`, `cust_emailid`, `cust_pass`, `role`) VALUES
(1, 'admin@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', 1),
(74, 'Devika2000@gmail.com', 'Devu@2000', 0),
(84, 'sanio@gmail.com', 'f8577bcc97d19f2a27a6b7c346d8fcf8', 0),
(92, 'sanioluke00@gmail.com', '9ad19232b29726a771a5a92ace45cce4', 0),
(97, 'vismayamohan1999@gmail.com', 'f25e3850b3b13f62c2f8bff445dd2f62', 0),
(98, '', 'd41d8cd98f00b204e9800998ecf8427e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `multipedata`
--

CREATE TABLE `multipedata` (
  `id` int(11) NOT NULL,
  `checkBoxData` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `multipedata`
--

INSERT INTO `multipedata` (`id`, `checkBoxData`) VALUES
(1, 'java,php,python'),
(2, 'java,php');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_id` int(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `addr` varchar(30) NOT NULL,
  `phonenumber` bigint(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `cstate` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `aadharnumber` int(30) NOT NULL,
  `log_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `firstname`, `lastname`, `addr`, `phonenumber`, `gender`, `cstate`, `city`, `aadharnumber`, `log_id`) VALUES
(66, 'Devika', 'Babu', 'Nandhanam H', 9887654321, 'female', 'Kerala', 'Pallakkad', 2147483647, 74),
(76, 'sanio', 'luke', 'hhjj', 9087654456, 'male', 'kerala', 'Alappuzha', 2345678, 84),
(84, 'Sanio', 'Luke', '123, abcd', 8692074192, 'male', 'Maharashtra', 'Mumbai', 2147483647, 92),
(89, 'Vismaya', 'Mohan', 'Kattuvettiyiljk', 8765456789, 'female', 'Kerala', 'Kottayam', 2147483647, 97),
(90, 'vismi', '', '', 0, '', '', '', 0, 98);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addrooms`
--

CREATE TABLE `tbl_addrooms` (
  `addroom_id` int(30) NOT NULL,
  `room_type` varchar(30) NOT NULL,
  `room_block` varchar(30) NOT NULL,
  `room_number` int(30) NOT NULL,
  `choose_room` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `multipleData` varchar(255) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_addrooms`
--

INSERT INTO `tbl_addrooms` (`addroom_id`, `room_type`, `room_block`, `room_number`, `choose_room`, `price`, `multipleData`, `status`) VALUES
(86, '', 'X1', 100, 'Single1.jpg', 1000, 'ac,nonac', 1),
(89, 'Single Room', 'X3', 101, 'Single Room.jpg', 1200, 'nonac', 1),
(90, 'Single Room', 'X4', 23, 'single3.jpg', 3456, 'ac', 1),
(91, 'Single Room', 'X2', 8, 'single3.jpg', 1467, 'ac', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roomtype`
--

CREATE TABLE `tbl_roomtype` (
  `roomtype_id` int(30) NOT NULL,
  `roomtype` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `status` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_roomtype`
--

INSERT INTO `tbl_roomtype` (`roomtype_id`, `roomtype`, `image`, `Description`, `status`) VALUES
(42, 'Single Room', 'Single Room.jpg', '', 0),
(45, 'Double Room', 'Double Room.jpg', '', 0),
(46, 'Suite Room', 'suite room.jpg', '', 0),
(47, 'Deluxe Room', 'deluxe1.jpg', '', 0),
(48, 'Deluxe Room', 'deluxe1.jpg', '', 0),
(49, 'Double Room', 'Double Room.jpg', '', 0),
(50, 'Double Room', 'Double Room.jpg', '', 0),
(51, 'efesfes', 'hero_4.jpg', '', 0),
(52, 'fdweadfwe', 'img_1.jpg', '', 0),
(53, 'rgergeth', 'hero_4.jpg', '', 0),
(54, 'ewerw', 'img_2.jpg', '', 0),
(55, 'efwsef', 'img_2.jpg', '', 0),
(56, 'efwsef', 'img_2.jpg', '', 0),
(57, 'rfwef', 'hero_4.jpg', '', 0),
(58, 'werwqd', 'img_1.jpg', '', 0),
(59, 'wqdqwd', 'img_1.jpg', '', 0),
(60, 'ergege', 'img_2.jpg', '', 0),
(61, 'drg', 'img_2.jpg', '', 0),
(62, 'drg', 'img_2.jpg', '', 0),
(63, 'efrewaef', 'Double Room.jpg', '', 0),
(64, 'edaw', 'img_1.jpg', '', 0),
(65, 'edaw', 'img_1.jpg', '', 0),
(66, 'sada', 'img_1.jpg', '', 0),
(67, 'sada', 'img_1.jpg', '', 0),
(68, 'sdvfs', 'image_6.jpg', '', 0),
(69, 'ghhgygy', 'deluxe1.jpg', '', 0),
(70, '', '', '', 0),
(71, 'deeeee', 'deluxe1.jpg', '', 0),
(72, 'Double Room', 'Double Room.jpg', '', 0),
(73, 'Single Room', 'Single Room.jpg', '', 0),
(74, 'Single room', 'hero_2.jpg', '', 0),
(75, 'Single Room', 'Single1.jpg', '', 1),
(76, 'Double Room', 'Double Room.jpg', '', 1),
(77, 'Suite Room', 'suite room.jpg', '', 0),
(78, 'Suite Room', 'suite room.jpg', '', 1),
(79, '', 'Hotel-System (2).zip', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_login`
--
ALTER TABLE `cust_login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `multipedata`
--
ALTER TABLE `multipedata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `registration_ibfk_1` (`log_id`);

--
-- Indexes for table `tbl_addrooms`
--
ALTER TABLE `tbl_addrooms`
  ADD PRIMARY KEY (`addroom_id`);

--
-- Indexes for table `tbl_roomtype`
--
ALTER TABLE `tbl_roomtype`
  ADD PRIMARY KEY (`roomtype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_login`
--
ALTER TABLE `cust_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `multipedata`
--
ALTER TABLE `multipedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `reg_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_addrooms`
--
ALTER TABLE `tbl_addrooms`
  MODIFY `addroom_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_roomtype`
--
ALTER TABLE `tbl_roomtype`
  MODIFY `roomtype_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `cust_login` (`log_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
