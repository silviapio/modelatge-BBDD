-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 11:30 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: paintings_shop_ex2
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  author_id int(11) NOT NULL,
  name varchar(50) DEFAULT NULL,
  surname varchar(50) DEFAULT NULL,
  nationality varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table buyers
--

CREATE TABLE buyers (
  buyer_id int(11) NOT NULL,
  dni varchar(10) DEFAULT NULL,
  name varchar(50) DEFAULT NULL,
  surname varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table paintings
--

CREATE TABLE paintings (
  painting_id int(11) NOT NULL,
  price float DEFAULT NULL,
  author int(11) NOT NULL,
  buyer int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (author_id);

--
-- Indexes for table buyers
--
ALTER TABLE buyers
  ADD PRIMARY KEY (buyer_id);

--
-- Indexes for table paintings
--
ALTER TABLE paintings
  ADD PRIMARY KEY (painting_id),
  ADD KEY fk_paintings_buyer (buyer),
  ADD KEY author (author);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY author_id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table buyers
--
ALTER TABLE buyers
  MODIFY buyer_id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table paintings
--
ALTER TABLE paintings
  MODIFY painting_id int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table paintings
--
ALTER TABLE paintings
  ADD CONSTRAINT fk_paintings_buyer FOREIGN KEY (buyer) REFERENCES buyers (buyer_id),
  ADD CONSTRAINT paintings_ibfk_1 FOREIGN KEY (author) REFERENCES authors (author_id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
