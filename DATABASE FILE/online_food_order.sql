-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 01:32 PM
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
-- Database: `online_food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `username` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `review` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`username`, `email`, `phone`, `review`) VALUES
('anjali', 'ap@gmail.com', '6789876542', 'nice video'),
('', '', '', ''),
('', '', '', ''),
('anjali', 'ap@gmail.com', '620898909', 'nice collection'),
('anjali', 'sndj@gmail.com', '6767878899', 'shjshjs'),
('anjali', 'sg@gmail.com', '8976543778', 'hi '),
('anj', 'priya@gmail.com', '8976543778', 'jhdjdh'),
('anjali', 'sndj@gmail.com', '6767878899', 'sddhj'),
('anjali', 'ap@gmail.com', '6789876542', 'xxc'),
('bhj', 'priya@gmail.com', '8976543778', 'ss'),
('anjali', 'sg@gmail.com', '8976543778', 'nice collection'),
('bhj', 'sndj@gmail.com', '6767878899', 'hi '),
('bhj', 'ap@gmail.com', '6789876542', 'nice video'),
('anjali', 'priya@gmail.com', '8976543778', 'hi '),
('anjali', 'sg@gmail.com', '8976543778', 'nnjhjjk'),
('bhj', 'sndj@gmail.com', '6767878899', 'nice collection'),
('anjali', 'priya@gmail.com', '8976543778', 'nice video'),
('anjali', 'priya@gmail.com', '8976543778', 'hi '),
('anjali', 'sg@gmail.com', '8976543778', 'nnjhjjk'),
('anjali', 'sg@gmail.com', '8976543778', 'nice video'),
('anjali', 'ap@gmail.com', '6789876542', 'nice collection'),
('anjali', 'ap@gmail.com', '6789876542', 'hi '),
('anjali', 'sndj@gmail.com', '6767878899', 'nice collection'),
('anjali', 'priya@gmail.com', '8976543778', 'nice video'),
('', '', '', ''),
('anjali', 'sg@gmail.com', '8976543778', 'nice collection'),
('bhj', 'priya@gmail.com', '8976543778', 'hi '),
('anjali', 'priya@gmail.com', '8976543778', 'nice video'),
('bhj', 'ap@gmail.com', '6789876542', 'nice collection');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Steeve Moore', 'steeve', 'E10ADC3949BA59ABBE56E057F20F883E'),
(9, 'Liam Johnson', 'liam', 'E10ADC3949BA59ABBE56E057F20F883E'),
(10, 'Ramsey', 'ramsey', 'E10ADC3949BA59ABBE56E057F20F883E'),
(12, 'Administrator', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Photography', 'Food_Category_437.png', 'Yes', 'Yes'),
(5, 'Wedding', 'Food_Category_543.png', 'Yes', 'Yes'),
(9, 'Videography', 'Food_Category_945.png', 'Yes', 'Yes'),
(12, 'Dance Coreography', 'Food_Category_961.png', 'Yes', 'Yes'),
(13, 'Album Music Video', 'Food_Category_780.png', 'Yes', 'Yes'),
(14, 'Cinematography Video', 'Food_Category_146.png', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(12, 'Wedding photography and Videography', 'Cinematic video shooting with Gimbal and photography. Extra cost for drone video shooting with editing.', '350000.00', 'vicky3863.jpg', 14, 'Yes', 'Yes'),
(13, 'Album', 'Create Your pre-wedding or album music.', '100000.00', 'vicky4168.jpg', 13, 'Yes', 'Yes'),
(14, 'Coreography', 'Make Your dance video with best choreography with gimbal and camera.', '6000.00', 'vicky7092.jpg', 12, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(12, 'Album', '100000.00', 1, '100000.00', '2022-04-30 08:58:36', 'On Delivery', 'Anjali', '764674647', 'priya@gmail.com', 'Sitamarhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
