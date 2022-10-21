-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 08:31 AM
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
-- Database: `customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_addres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`customer_id`, `customer_name`, `customer_addres`) VALUES
('CS001', 'Aan', 'Pasuruan'),
('CS002', 'Hanif', 'Banyuwangi'),
('CS003', 'Mirza', 'Malang'),
('CS004', 'Tanti', 'Tegal'),
('CS005', 'Budie', 'Kediri');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` varchar(10) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `amont` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `order_date`, `customer_id`, `qty`, `amont`) VALUES
('CS001', '2016-12-10', 'CS001', 1, '40000'),
('CS002', '2017-01-11', 'CS002', 2, '50000'),
('CS003', '2017-01-12', 'CS005', 3, '35000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
