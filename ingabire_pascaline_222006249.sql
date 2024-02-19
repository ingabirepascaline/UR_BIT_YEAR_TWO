-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 08:57 AM
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
-- Database: `ingabire_pascaline 222006249`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(12) NOT NULL,
  `username` varchar(13) NOT NULL,
  `password` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(12) NOT NULL,
  `make` varchar(13) NOT NULL,
  `model` varchar(21) NOT NULL,
  `year` int(22) NOT NULL,
  `licence_plate_number` varchar(12) NOT NULL,
  `current location` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `make`, `model`, `year`, `licence_plate_number`, `current location`) VALUES
(1, 'jhyuu', 'hhjkw', 2023, '12AED', 'drtuu'),
(1, 'toyota', 'losangels', 2023, '12FR', 'paris'),
(2, 'toyota', 'coralla', 2023, 'ABC12', 'losanglels');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(10) NOT NULL,
  `name` varchar(34) NOT NULL,
  `address` varchar(14) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `email` varchar(13) NOT NULL,
  `driver_licence_number` int(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `phone_number`, `email`, `driver_licence_number`) VALUES
('1', 'ggh', 'nmm', '788', 'jkj', 999),
('5', 'ertty', 'kuha', '0893', 'ing@1', 234),
('3', 'pacc', 'nyabihu', '0788977666', 'pacc@12', 1234),
('4', 'cynt', 'kgl', '0788267786', 'pacc@12', 5643);

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int(12) NOT NULL,
  `type` varchar(13) NOT NULL,
  `coverage_limit` int(14) NOT NULL,
  `price` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `type`, `coverage_limit`, `price`) VALUES
(1, 'drerrr', 2344, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(12) NOT NULL,
  `password` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(12) NOT NULL,
  `date` varchar(12) NOT NULL,
  `amount` int(14) NOT NULL,
  `payment_method` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `date`, `amount`, `payment_method`) VALUES
(1, '2028/01/02', 500, 'chegr'),
(3, '2024/09/01', 2000, 'cash'),
(13, '2024/09/01', 2000, 'mobile money');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` int(12) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `tatal_price` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `start_date`, `end_date`, `tatal_price`) VALUES
(1, '2024-08-01', '2024-06-02', 5400),
(1, '2023-01-02', '2023-03-01', 3000),
(2, '2024-01-02', '2025-03-01', 900),
(3, '2023-07-01', '2023-05-01', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(23) NOT NULL,
  `date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `date`) VALUES
(1, '2024/03/07'),
(1, '2023/01/03'),
(2, '2022/01/02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `firstname` varchar(13) NOT NULL,
  `lastname` varchar(14) NOT NULL,
  `username` varchar(13) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
