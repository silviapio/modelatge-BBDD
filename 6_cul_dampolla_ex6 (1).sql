-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 12:20 PM
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
-- Database: `cul_dampolla_ex6`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands_vendors`
--

CREATE TABLE `brands_vendors` (
  `brand_id` int(11) NOT NULL,
  `brand_description` varchar(50) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands_vendors`
--

INSERT INTO `brands_vendors` (`brand_id`, `brand_description`, `vendor_id`) VALUES
(1, 'Givenchy', 73),
(2, 'Gloria Ortiz', 94),
(3, 'Goodbye, Rita', 62),
(4, 'Gucci', 54),
(5, 'Guess', 9),
(6, 'Hawkers', 76),
(7, 'Hugo', 68),
(8, 'Jimmy Choo', 41),
(9, 'Jo & Mr. Joe', 83),
(10, 'Kimoa', 5),
(11, 'Lacoste', 54),
(12, 'Lauren Ralph Lauren', 85),
(13, 'Liu Jo', 49),
(14, 'Longchamp', 80),
(15, 'Marc Jacobs', 48),
(16, 'Michael Kors', 6),
(17, 'Miu Miu', 70),
(18, 'Moschino', 89),
(19, 'Mr. Boho', 71),
(20, 'Mr.Wonderful', 25),
(21, 'Oakley', 11),
(22, 'Oliver Peoples', 20),
(23, 'Parafina', 15),
(24, 'Parfois', 54),
(25, 'Persol', 71),
(26, 'POLAR', 18),
(27, 'POLAROID', 19),
(28, 'Polo Ralph Lauren', 24),
(29, 'Prada', 85),
(30, 'Ralph Lauren', 93),
(31, 'Ray-Ban', 27),
(32, 'Roberto Cavalli', 58),
(33, 'Saint Laurent', 54),
(34, 'Starlite', 3),
(35, 'Swarovski', 69),
(36, 'The Indian Face', 37),
(37, 'Timberland', 81),
(38, 'Tom Ford', 48),
(39, 'Tommy Hilfiger', 96),
(40, 'Tommy Jeans', 60),
(41, 'Tous', 43),
(42, 'Valentino', 47),
(43, 'Versace', 6),
(44, 'Victoria\'s Secret', 64),
(45, 'Vogue', 34);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `postcode` int(6) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `referral` int(11) DEFAULT NULL,
  `countrycode` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `street`, `postcode`, `phone`, `email`, `registration_date`, `referral`, `countrycode`) VALUES
(1, 'Keane Dyer', 'Ap #523-8109 Primis Street', 23021, 4444444, 'testemail@myemail.com', '2020-07-13', 4, 'ESP'),
(2, 'Gary William', 'P.O. Box 384, 1811 Tincidunt, Avenue', 23021, 5555555, 'testemail@myemail.com', '2020-07-12', 10, 'ESP'),
(3, 'Jaime Valentine', 'P.O. Box 337, 9064 Eu, Rd.', 23021, 6666666, 'testemail@myemail.com', '2020-07-12', 8, 'ESP'),
(4, 'Aline Roth', '5278 Fames Road', 23021, 7777777, 'testemail@myemail.com', '2020-07-12', 10, 'ESP'),
(5, 'Dora Bullock', '479-5966 Eu Ave', 23021, 8888888, 'testemail@myemail.com', '2020-07-12', 20, 'ESP'),
(6, 'Winifred Romero', '726-9331 Tempor Ave', 23021, 9999999, 'testemail@myemail.com', '2020-07-12', 8, 'ESP'),
(7, 'Cade Stein', '577-3117 Eu Rd.', 23021, 11111110, 'testemail@myemail.com', '2020-07-12', 3, 'ESP'),
(8, 'Clio Vance', '867-2840 In, Av.', 23021, 12222221, 'testemail@myemail.com', '2020-07-12', 13, 'ESP'),
(9, 'Emerson Thompson', 'Ap #796-5887 Tristique Ave', 23021, 13333332, 'testemail@myemail.com', '2020-07-12', 17, 'ESP'),
(10, 'George Higgins', 'Ap #193-1547 Nam Avenue', 23021, 14444443, 'testemail@myemail.com', '2020-07-12', 16, 'ESP'),
(11, 'Forrest Waller', '931-6013 Dignissim Av.', 23021, 15555554, 'testemail@myemail.com', '2020-07-12', 3, 'ESP'),
(12, 'Kamal Boyer', 'Ap #658-4412 Nibh Avenue', 23021, 16666665, 'testemail@myemail.com', '2020-07-12', 20, 'ESP'),
(13, 'Yen Stanton', '885-9060 Rhoncus. Av.', 23021, 17777776, 'testemail@myemail.com', '2020-07-12', 0, 'ESP'),
(14, 'Lillian Cherry', 'Ap #707-6606 Habitant St.', 23021, 18888887, 'testemail@myemail.com', '2020-07-12', 0, 'ESP'),
(15, 'Hanna Conway', 'P.O. Box 502, 7082 Tellus. St.', 23021, 19999998, 'testemail@myemail.com', '2020-07-12', 0, 'ESP'),
(16, 'Dolan Sutton', 'P.O. Box 588, 5685 Sed Av.', 23021, 21111109, 'testemail@myemail.com', '2020-07-12', 0, 'ESP'),
(17, 'Clementine Velazquez', '7537 Aliquam St.', 23021, 22222220, 'testemail@myemail.com', '2020-07-12', 0, 'ESP'),
(18, 'Nina Villarreal', 'Ap #561-9712 Eget Rd.', 31033, 23333331, 'testemail@myemail.com', '2020-07-12', 0, 'ITA'),
(19, 'Ralph Shaffer', '429-3799 Sit Ave', 31033, 24444442, 'testemail@myemail.com', '2020-07-12', 0, 'ITA'),
(20, 'Kyla Russell', '9171 Fringilla Ave', 31033, 25555553, 'testemail@myemail.com', '2020-07-12', 5, 'ITA'),
(21, 'Joy Kinney', 'P.O. Box 184, 9201 Pellentesque Rd.', 31033, 26666664, 'testemail2@myemail.com', '2020-07-11', 8, 'ITA'),
(22, 'John Cobb', 'Ap #777-9326 Nec St.', 31033, 27777775, 'testemail2@myemail.com', '2020-07-11', 12, 'ITA'),
(23, 'Pamela Spence', 'P.O. Box 960, 3987 Nec Rd.', 31033, 28888886, 'testemail2@myemail.com', '2020-07-11', 5, 'ITA'),
(24, 'Ivan Greer', '8643 Molestie Rd.', 31033, 29999997, 'testemail2@myemail.com', '2020-07-11', 14, 'ITA'),
(25, 'Russell Hill', '317-851 Dolor St.', 31033, 31111108, 'testemail2@myemail.com', '2020-07-11', 5, 'ITA'),
(26, 'Ina Raymond', '5954 Rutrum, Street', 31033, 32222219, 'testemail2@myemail.com', '2020-07-11', 5, 'ITA'),
(27, 'Azalia Simpson', 'Ap #183-9173 Ridiculus Avenue', 31033, 33333330, 'testemail2@myemail.com', '2020-07-11', 4, 'ITA'),
(28, 'Emily Medina', '996-9981 A, Rd.', 31033, 34444441, 'testemail2@myemail.com', '2020-07-11', 11, 'ITA'),
(29, 'Dai Mckenzie', 'Ap #731-3828 Phasellus Rd.', 31033, 35555552, 'testemail2@myemail.com', '2020-07-11', 18, 'ITA'),
(30, 'Preston Mcneil', 'Ap #736-8633 Facilisis, St.', 75008, 36666663, 'testemail2@myemail.com', '2020-07-11', 10, 'FRA'),
(31, 'Zahir Lawson', '160-5562 Ante Avenue', 75008, 37777774, 'testemail2@myemail.com', '2020-07-11', 15, 'FRA'),
(32, 'Kasimir Fry', '6104 Ac Avenue', 75008, 38888885, 'testemail2@myemail.com', '2020-07-11', 2, 'FRA'),
(33, 'Haviva Frank', '2678 Quam St.', 75008, 39999996, 'testemail2@myemail.com', '2020-07-11', 0, 'FRA'),
(34, 'Mara Mcclure', '2686 Aliquam Avenue', 75008, 41111107, 'testemail2@myemail.com', '2020-07-11', 0, 'FRA'),
(35, 'Nicole Blankenship', 'Ap #257-1883 Duis Rd.', 75008, 42222218, 'testemail2@myemail.com', '2020-07-11', 5, 'FRA'),
(36, 'Evangeline Underwood', 'P.O. Box 644, 1101 Luctus Av.', 75008, 43333329, 'testemail2@myemail.com', '2020-07-11', 15, 'FRA'),
(37, 'Holly Hinton', 'P.O. Box 231, 1204 Luctus Ave', 75008, 44444440, 'testemail2@myemail.com', '2020-07-11', 17, 'FRA'),
(38, 'Leo Buchanan', '556-4877 At, Road', 75008, 45555551, 'testemail2@myemail.com', '2020-07-11', 7, 'FRA'),
(39, 'Jorden Sims', 'P.O. Box 940, 5480 Habitant Rd.', 75008, 46666662, 'testemail2@myemail.com', '2020-07-11', 11, 'FRA'),
(40, 'Casey Houston', '669-6822 Orci Av.', 75008, 47777773, 'testemail2@myemail.com', '2020-07-11', 14, 'FRA');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `colour_id` int(3) NOT NULL,
  `colour_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`colour_id`, `colour_description`) VALUES
(1, 'Amaranth'),
(2, 'Amber'),
(3, 'Amethyst'),
(4, 'Apricot'),
(5, 'Aquamarine'),
(6, 'Azure'),
(7, 'Baby blue'),
(8, 'Beige'),
(9, 'Black'),
(10, 'Blue'),
(11, 'Blue-green'),
(12, 'Blue-violet'),
(13, 'Blush'),
(14, 'Bronze'),
(15, 'Brown'),
(16, 'Burgundy'),
(17, 'Byzantium'),
(18, 'Carmine'),
(19, 'Cerise'),
(20, 'Cerulean'),
(21, 'Champagne'),
(22, 'Chartreuse green'),
(23, 'Chocolate'),
(24, 'Cobalt blue'),
(25, 'Coffee'),
(26, 'Copper'),
(27, 'Coral'),
(28, 'Crimson'),
(29, 'Cyan'),
(30, 'Desert sand'),
(31, 'Electric blue'),
(32, 'Emerald');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(3) NOT NULL,
  `employee_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`) VALUES
(1, 'Marc'),
(2, 'Edith'),
(3, 'Montserrat'),
(4, 'Alessandro'),
(5, 'Alessandra'),
(6, 'Alessandro F.');

-- --------------------------------------------------------

--
-- Table structure for table `frames`
--

CREATE TABLE `frames` (
  `frame_id` int(1) NOT NULL,
  `frame_description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frames`
--

INSERT INTO `frames` (`frame_id`, `frame_description`) VALUES
(1, 'flotant'),
(2, 'pasta'),
(3, 'metalica');

-- --------------------------------------------------------

--
-- Table structure for table `glasses`
--

CREATE TABLE `glasses` (
  `glass_id` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `grade` float DEFAULT NULL,
  `frame` int(1) DEFAULT NULL,
  `frame_colour` int(3) DEFAULT NULL,
  `glass_shade` int(3) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glasses`
--

INSERT INTO `glasses` (`glass_id`, `brand`, `grade`, `frame`, `frame_colour`, `glass_shade`, `price`) VALUES
(1, 32, 0, 1, 27, 28, 27),
(2, 7, 0, 2, 22, 17, 28),
(3, 9, 0, 3, 4, 22, 29),
(4, 6, 1, 1, 19, 26, 30),
(5, 35, 1, 2, 8, 20, 31),
(6, 3, 1, 3, 19, 30, 32),
(7, 1, 1, 1, 1, 27, 33),
(8, 32, 2, 2, 3, 32, 34),
(9, 19, 2, 3, 4, 28, 35),
(10, 23, 2, 1, 11, 19, 36),
(11, 3, 2, 2, 30, 27, 37),
(12, 21, 3, 3, 14, 17, 38),
(13, 11, 3, 1, 25, 22, 39),
(14, 26, 3, 2, 28, 23, 40),
(15, 30, 3, 3, 6, 29, 41),
(16, 22, 4, 1, 26, 14, 42),
(17, 33, 4, 2, 26, 21, 43),
(18, 36, 4, 3, 8, 27, 44),
(19, 33, 4, 1, 2, 20, 45),
(20, 17, 5, 2, 28, 1, 46),
(21, 2, 5, 3, 31, 29, 47),
(22, 20, 5, 1, 14, 2, 48),
(23, 12, 5, 2, 30, 22, 49),
(24, 44, 6, 3, 28, 17, 50),
(25, 5, 6, 1, 15, 3, 51),
(26, 45, 6, 2, 12, 4, 52),
(27, 8, 6, 3, 19, 19, 53),
(28, 38, 7, 1, 26, 15, 54),
(29, 23, 7, 2, 5, 25, 55),
(30, 42, 7, 3, 17, 23, 56),
(31, 17, 7, 1, 27, 2, 57),
(32, 34, 8, 2, 2, 29, 58),
(33, 22, 0, 3, 20, 20, 59),
(34, 15, 0, 1, 24, 13, 60),
(35, 7, 0, 2, 8, 2, 61),
(36, 12, 1, 3, 23, 22, 62),
(37, 38, 1, 1, 30, 11, 63),
(38, 36, 1, 2, 8, 1, 64),
(39, 17, 1, 3, 27, 1, 65),
(40, 38, 2, 1, 6, 28, 66),
(41, 31, 2, 2, 12, 23, 67),
(42, 5, 2, 3, 3, 8, 68),
(43, 15, 2, 1, 29, 30, 69),
(44, 5, 3, 2, 7, 25, 70),
(45, 25, 3, 3, 6, 32, 71),
(46, 3, 3, 1, 2, 27, 72),
(47, 18, 3, 2, 3, 16, 73),
(48, 30, 4, 3, 8, 7, 74),
(49, 39, 4, 1, 6, 1, 75),
(50, 13, 4, 2, 26, 6, 76),
(51, 13, 4, 3, 21, 5, 77),
(52, 10, 5, 1, 30, 5, 78),
(53, 27, 5, 2, 10, 19, 79),
(54, 41, 5, 3, 1, 17, 80),
(55, 13, 5, 1, 4, 5, 81),
(56, 5, 6, 2, 3, 6, 82),
(57, 7, 6, 3, 27, 17, 83),
(58, 16, 6, 1, 7, 14, 84),
(59, 26, 6, 2, 31, 13, 85),
(60, 25, 7, 3, 7, 24, 86),
(61, 28, 7, 1, 24, 17, 87),
(62, 22, 7, 2, 4, 13, 88),
(63, 40, 7, 3, 7, 18, 89),
(64, 43, 8, 1, 28, 26, 90),
(65, 44, 0, 2, 4, 14, 91),
(66, 27, 0, 3, 18, 10, 92),
(67, 8, 0, 1, 15, 32, 93),
(68, 26, 1, 2, 17, 21, 94),
(69, 3, 1, 3, 17, 9, 95),
(70, 42, 1, 1, 28, 32, 96),
(71, 15, 1, 2, 21, 28, 97),
(72, 34, 2, 3, 8, 2, 98),
(73, 41, 2, 1, 2, 11, 99),
(74, 23, 2, 2, 16, 12, 100),
(75, 28, 2, 3, 15, 4, 101),
(76, 33, 3, 1, 31, 27, 102),
(77, 31, 3, 2, 6, 28, 103),
(78, 25, 3, 3, 32, 30, 104),
(79, 43, 3, 1, 17, 26, 105),
(80, 40, 4, 2, 14, 15, 106),
(81, 27, 4, 3, 30, 8, 107),
(82, 27, 4, 1, 23, 11, 108),
(83, 33, 4, 2, 11, 17, 109),
(84, 42, 5, 3, 2, 16, 110),
(85, 27, 5, 1, 1, 32, 111),
(86, 40, 5, 2, 2, 1, 112),
(87, 11, 5, 3, 9, 15, 113),
(88, 12, 6, 1, 30, 11, 114),
(89, 37, 6, 2, 14, 5, 115),
(90, 2, 6, 3, 13, 4, 116),
(91, 30, 6, 1, 26, 9, 117),
(92, 20, 7, 2, 22, 11, 118),
(93, 36, 7, 3, 21, 16, 119),
(94, 26, 7, 1, 17, 30, 120),
(95, 30, 7, 2, 32, 9, 121),
(96, 10, 8, 3, 20, 16, 122),
(97, 10, 0, 1, 5, 27, 123),
(98, 31, 0, 2, 27, 30, 124),
(99, 21, 0, 3, 19, 13, 125);

-- --------------------------------------------------------

--
-- Table structure for table `postcodes`
--

CREATE TABLE `postcodes` (
  `city` varchar(100) DEFAULT NULL,
  `countrycode` char(3) NOT NULL,
  `country_description` varchar(100) DEFAULT NULL,
  `postcode_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postcodes`
--

INSERT INTO `postcodes` (`city`, `countrycode`, `country_description`, `postcode_id`) VALUES
('El Retorno', 'ESP', 'Spain', 23021),
('Wetteren', 'ESP', 'Spain', 23033),
('Tambov', 'ESP', 'Spain', 23034),
('Torrevecchia Teatina', 'ITA', 'Italy', 31033),
('Maracana?', 'ITA', 'Italy', 31034),
('Asti', 'ITA', 'Italy', 31035),
('Bargagli', 'ITA', 'Italy', 31036),
('Beigem', 'FRA', 'France', 75008),
('Connah\'s Quay', 'FRA', 'France', 75009),
('Kansas City', 'FRA', 'France', 75010),
('Onze-Lieve-Vrouw-Lombeek', 'FRA', 'France', 75011),
('Roccamena', 'FRA', 'France', 75012),
('Hafizabad', 'FRA', 'France', 75013);

-- --------------------------------------------------------

--
-- Table structure for table `sales_records`
--

CREATE TABLE `sales_records` (
  `record_id` int(11) NOT NULL,
  `glass_id` int(11) DEFAULT NULL,
  `sold_by` int(3) DEFAULT NULL,
  `sold_to` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_records`
--

INSERT INTO `sales_records` (`record_id`, `glass_id`, `sold_by`, `sold_to`, `transaction_date`) VALUES
(1, 1, 2, 40, '2020-07-07'),
(2, 2, 2, 40, '2020-07-06'),
(3, 3, 6, 35, '2020-07-07'),
(4, 2, 5, 30, '2020-07-05'),
(5, 2, 5, 30, '2020-07-04'),
(6, 25, 2, 20, '2020-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `countrycode` char(3) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `fax` int(15) DEFAULT NULL,
  `VAT` varchar(10) DEFAULT NULL,
  `postcode` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `name`, `street`, `countrycode`, `phone`, `fax`, `VAT`, `postcode`) VALUES
(1, 'Pharetra PC', '134-947 Tincidunt, Road', 'ESP', 5, 5, '8021079-5', 23021),
(2, 'Dolor Fusce Feugiat Company', '1072 Sed Avenue', 'ESP', 8, 7, '11021177-5', 23021),
(3, 'Nullam Consulting', '831-1916 Nec, St.', 'ESP', 7, 6, '26932167-9', 23021),
(4, 'A Industries', 'Ap #125-2722 Nam Street', 'ESP', 9, 7, '21361293-K', 23021),
(5, 'Pede Suspendisse Dui LLP', '239-8299 Mi St.', 'ESP', 6, 5, '44922957-6', 23021),
(6, 'Mauris Vel LLC', 'P.O. Box 871, 4942 Porttitor Road', 'ESP', 9, 6, '38171501-9', 23021),
(7, 'Justo Ltd', '1860 Consectetuer Street', 'ESP', 7, 4, '37747664-6', 23021),
(8, 'Sagittis Placerat Cras Company', 'Ap #210-7503 Cursus St.', 'ESP', 6, 9, '39538646-8', 23021),
(9, 'Integer Vitae Nibh LLC', '9143 Ipsum. Avenue', 'ESP', 5, 6, '24635783-8', 23021),
(10, 'Nec Diam Duis LLP', '7809 Mi Street', 'ESP', 6, 2, '31639462-0', 23021),
(11, 'Sed Eu Nibh Corporation', 'Ap #169-8798 In Street', 'ESP', 9, 2, '8111150-2', 23021),
(12, 'Fringilla Purus PC', 'Ap #641-901 Non, Av.', 'ESP', 7, 4, '5685027-9', 23021),
(13, 'Erat Vitae Risus Limited', '7939 Ultrices. Ave', 'ESP', 2, 7, '31808088-7', 23033),
(14, 'Felis Adipiscing Fringilla LLP', 'P.O. Box 237, 1186 Nec St.', 'ESP', 1, 1, '49562466-8', 23034),
(15, 'Tempor Bibendum Corporation', '308-7229 Fusce St.', 'ESP', 6, 3, '9819637-4', 23034),
(16, 'Nunc Lectus Pede PC', '704-9010 Et St.', 'ESP', 9, 9, '30300232-4', 23034),
(17, 'Mi Lacinia Incorporated', 'P.O. Box 111, 8842 Adipiscing Av.', 'ESP', 8, 3, '49911872-4', 23034),
(18, 'Nulla Tempor Augue Ltd', 'Ap #282-9462 Blandit Ave', 'ESP', 1, 3, '32913900-K', 23034),
(19, 'Eu Erat Semper Foundation', 'P.O. Box 592, 4310 Convallis St.', 'ESP', 2, 5, '27605350-7', 23034),
(20, 'Consequat Purus PC', '190-3007 Neque Rd.', 'ESP', 6, 2, '21534949-7', 23034),
(21, 'Id Ante Nunc Associates', '971-4203 Nec Rd.', 'ESP', 9, 3, '12335151-7', 23034),
(22, 'Fusce PC', '9263 Pede. Av.', 'ITA', 3, 1, '43328615-4', 31033),
(23, 'Ipsum Donec Ltd', '416-5292 Malesuada Road', 'ITA', 9, 9, '47150331-2', 31034),
(24, 'Nec Cursus Company', 'P.O. Box 803, 271 Mauris St.', 'ITA', 9, 5, '32087328-2', 31035),
(25, 'Suspendisse LLP', '6476 Eu St.', 'ITA', 9, 9, '28646140-9', 31036),
(26, 'Non Dui Nec LLP', 'P.O. Box 124, 6649 Aliquet St.', 'ITA', 7, 6, '29075117-9', 31033),
(27, 'A LLP', 'Ap #532-4579 Sodales Avenue', 'ITA', 3, 5, '36463084-0', 31033),
(28, 'Gravida Molestie LLP', 'Ap #623-7024 Id, Av.', 'ITA', 1, 6, '46072485-6', 31033),
(29, 'Duis Foundation', 'P.O. Box 207, 8574 Cras St.', 'ITA', 6, 7, '50673621-8', 31033),
(30, 'Ullamcorper Nisl Limited', 'Ap #780-7525 Urna. Rd.', 'ITA', 3, 4, '48232151-8', 31034),
(31, 'Cursus LLC', 'Ap #627-256 Sed, Avenue', 'ITA', 2, 5, '31475101-9', 31034),
(32, 'Aliquam Nisl Industries', 'P.O. Box 268, 4511 Lobortis Ave', 'ITA', 1, 2, '38935455-4', 31034),
(33, 'Ad Litora Torquent Incorporated', '1030 Cum Street', 'ITA', 8, 1, '33176518-K', 31034),
(34, 'Lacinia Sed Company', '272-777 Tempus St.', 'ITA', 9, 3, '24668377-8', 31035),
(35, 'Integer Urna Vivamus Institute', '7516 Praesent St.', 'ITA', 6, 6, '11723161-5', 31035),
(36, 'Amet PC', 'Ap #887-2287 Blandit Av.', 'ITA', 9, 1, '26952669-6', 31035),
(37, 'Arcu Vestibulum Ante Limited', 'Ap #238-2617 Ipsum Ave', 'ITA', 5, 6, '14671857-4', 31035),
(38, 'Lectus Justo Eu Inc.', 'Ap #599-7428 Et Ave', 'ITA', 2, 9, '30902721-3', 31036),
(39, 'Sapien Molestie Orci LLP', 'Ap #907-6474 Augue. Road', 'ITA', 2, 2, '48139854-1', 31036),
(40, 'Eu Ltd', '6105 Ullamcorper. Avenue', 'ITA', 4, 9, '17684702-6', 31036),
(41, 'Id Corp.', '496-1140 Et St.', 'ITA', 6, 2, '27977003-K', 31036),
(42, 'Et Euismod LLP', 'Ap #841-7172 Et Rd.', 'ITA', 6, 7, '20742124-3', 31035),
(43, 'Morbi Sit Amet Associates', '1346 Egestas, Rd.', 'ITA', 3, 3, '5260655-1', 31035),
(44, 'Orci PC', 'Ap #321-550 Donec Road', 'ITA', 8, 5, '49273112-9', 31035),
(45, 'Orci Ltd', '3583 Mi, Avenue', 'ITA', 4, 3, '21790420-K', 31035),
(46, 'Nisi Company', '367-9600 Scelerisque Ave', 'ITA', 7, 8, '16137711-2', 31036),
(47, 'Nec Cursus Foundation', '162-3596 Sed St.', 'ITA', 9, 4, '44813284-6', 31036),
(48, 'Nunc Corporation', '9257 Curabitur St.', 'ITA', 5, 7, '6854307-K', 31036),
(49, 'Posuere Cubilia Corp.', '1696 Urna, Rd.', 'ITA', 9, 4, '38105648-1', 31036),
(50, 'Turpis Incorporated', '380-3962 Mauris, Road', 'FRA', 3, 2, '48866817-K', 75008),
(51, 'Nunc Institute', '905-1727 Egestas. Rd.', 'FRA', 5, 4, '23240828-6', 75009),
(52, 'Nulla Donec Non Incorporated', 'Ap #772-665 In St.', 'FRA', 1, 6, '5696256-5', 75010),
(53, 'Vel Lectus Cum Corporation', '526-4327 Mollis Av.', 'FRA', 2, 7, '9619513-3', 75011),
(54, 'Libero Company', '339-6538 Quisque Av.', 'FRA', 1, 1, '7614470-2', 75012),
(55, 'Eget Venenatis A Ltd', '851-8975 Vestibulum Av.', 'FRA', 9, 3, '15747024-8', 75013),
(56, 'Nullam Limited', 'Ap #239-268 Ultricies St.', 'FRA', 2, 3, '16414516-6', 75008),
(57, 'Tincidunt Limited', 'P.O. Box 331, 7337 Ut Street', 'FRA', 9, 2, '27864655-6', 75009),
(58, 'Ipsum Cursus Consulting', 'P.O. Box 206, 5924 Metus Rd.', 'FRA', 1, 7, '6375541-9', 75010),
(59, 'Erat Vivamus Nisi LLC', '7038 Pede, Rd.', 'FRA', 3, 8, '20880288-7', 75011),
(60, 'Praesent Limited', 'Ap #722-7067 Justo Street', 'FRA', 4, 9, '19046984-0', 75012),
(61, 'Phasellus Vitae Company', 'P.O. Box 530, 582 Justo. Av.', 'FRA', 1, 2, '7290329-3', 75013),
(62, 'Cursus Et Consulting', 'P.O. Box 272, 4582 At Rd.', 'FRA', 1, 5, '50898315-8', 75008),
(63, 'Praesent Eu Nulla Inc.', 'P.O. Box 185, 7914 Nunc St.', 'FRA', 4, 3, '12688458-3', 75009),
(64, 'Sit Amet Ultricies Company', '8950 Mus. Av.', 'FRA', 4, 8, '49189400-8', 75010),
(65, 'Diam Incorporated', '535-1555 Enim Avenue', 'FRA', 1, 1, '36014856-4', 75011),
(66, 'Dui In Inc.', 'Ap #664-1890 Adipiscing Avenue', 'FRA', 6, 4, '46154642-0', 75012),
(67, 'Iaculis Odio Nam Associates', 'P.O. Box 819, 8379 Mi Av.', 'FRA', 5, 7, '50702779-2', 75013),
(68, 'Iaculis Quis Associates', '283-261 Nisi. Ave', 'FRA', 1, 8, '44901846-K', 75008),
(69, 'Erat Vivamus Nisi LLP', '1500 Eget Avenue', 'FRA', 3, 4, '19436232-3', 75009),
(70, 'Purus Associates', 'P.O. Box 543, 3493 Risus. Av.', 'FRA', 1, 2, '26100487-9', 75010),
(71, 'Metus In Nec Company', 'P.O. Box 829, 3770 Tellus St.', 'FRA', 9, 9, '9723605-4', 75011),
(72, 'Netus Et Malesuada Corporation', '380-673 Adipiscing Road', 'FRA', 5, 2, '21061624-1', 75012),
(73, 'Suscipit Industries', 'P.O. Box 208, 7335 Venenatis Street', 'FRA', 6, 7, '30231734-8', 75013),
(74, 'Adipiscing Lobortis Risus Institute', 'Ap #959-4408 Tincidunt, Road', 'FRA', 6, 8, '30532221-0', 75008),
(75, 'Malesuada Augue Limited', '2055 Tempor Ave', 'FRA', 6, 6, '47356312-6', 75009),
(76, 'Scelerisque Lorem Ipsum Inc.', '990-6747 Metus Rd.', 'FRA', 5, 5, '26580282-6', 75010),
(77, 'A Purus Duis Foundation', 'Ap #473-2413 Libero. Rd.', 'FRA', 9, 3, '26775622-8', 75011),
(78, 'Eu Limited', 'P.O. Box 324, 9685 Mi Ave', 'FRA', 8, 7, '28060777-0', 75012),
(79, 'Malesuada Ut Foundation', 'Ap #898-3637 Auctor. St.', 'FRA', 3, 4, '13715548-6', 75013),
(80, 'Enim Condimentum Eget Consulting', '7568 Id Ave', 'FRA', 6, 4, '46478299-0', 75008),
(81, 'Aliquet Foundation', 'P.O. Box 418, 2342 Sapien St.', 'FRA', 7, 4, '37975254-3', 75009),
(82, 'Adipiscing Lobortis Consulting', '568-1697 Ac, Rd.', 'FRA', 7, 1, '27346079-9', 75010),
(83, 'Mattis LLP', 'Ap #419-8316 Nunc Street', 'FRA', 7, 6, '38514892-5', 75011),
(84, 'Semper Consulting', '951-2695 Tristique Rd.', 'FRA', 6, 2, '45828657-4', 75012),
(85, 'Orci Consulting', 'P.O. Box 201, 2227 Natoque Street', 'FRA', 2, 2, '35529731-4', 75013),
(86, 'Magna Duis Foundation', 'P.O. Box 784, 4526 Aliquam Rd.', 'FRA', 4, 6, '22217898-3', 75008),
(87, 'Egestas Corp.', '6973 A St.', 'FRA', 4, 6, '10911742-0', 75009),
(88, 'Egestas Ligula Inc.', 'Ap #645-538 Ridiculus St.', 'FRA', 2, 7, '50244690-8', 75010),
(89, 'Non Enim Corp.', '7288 Fames Ave', 'FRA', 5, 7, '26977877-6', 75011),
(90, 'Dictum Proin Eget Corporation', '605 Cursus Avenue', 'FRA', 8, 5, '9305762-7', 75012),
(91, 'Pede Sagittis Augue Inc.', 'Ap #470-9317 Duis Avenue', 'FRA', 2, 7, '31386215-1', 75013),
(92, 'Sapien Consulting', 'Ap #114-9114 Scelerisque, Road', 'FRA', 3, 5, '35392668-3', 75008),
(93, 'Aliquam Auctor Velit Inc.', 'Ap #665-8165 Vel, Av.', 'FRA', 4, 5, '21097410-5', 75009),
(94, 'Vitae Velit Foundation', 'P.O. Box 982, 7913 Pellentesque St.', 'FRA', 1, 1, '42887146-4', 75010),
(95, 'Accumsan Convallis PC', '876-2166 Phasellus Avenue', 'FRA', 4, 7, '24517124-2', 75011),
(96, 'Rhoncus Institute', '3288 Urna Ave', 'FRA', 6, 4, '25905967-4', 75012),
(97, 'Volutpat Nunc Sit LLP', 'Ap #756-1842 Et Rd.', 'FRA', 4, 2, '16458689-8', 75013),
(98, 'Risus Ltd', '4623 Massa. Rd.', 'FRA', 1, 8, '14194860-1', 75008),
(99, 'Urna Ut Tincidunt Incorporated', 'P.O. Box 334, 5024 In Road', 'FRA', 7, 1, '38726914-2', 75009),
(100, 'Dapibus Ligula Aliquam Ltd', '160-412 Purus, St.', 'FRA', 9, 1, '8419159-0', 75010),
(103, 'name', 'street', 'cou', 0, 0, 'VAT', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands_vendors`
--
ALTER TABLE `brands_vendors`
  ADD PRIMARY KEY (`brand_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `referral` (`referral`),
  ADD KEY `postcode` (`postcode`),
  ADD KEY `countrycode` (`countrycode`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`colour_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `frames`
--
ALTER TABLE `frames`
  ADD PRIMARY KEY (`frame_id`);

--
-- Indexes for table `glasses`
--
ALTER TABLE `glasses`
  ADD PRIMARY KEY (`glass_id`),
  ADD KEY `brand` (`brand`),
  ADD KEY `frame` (`frame`),
  ADD KEY `frame_colour` (`frame_colour`),
  ADD KEY `glass_shade` (`glass_shade`);

--
-- Indexes for table `postcodes`
--
ALTER TABLE `postcodes`
  ADD KEY `idx_countrycode` (`countrycode`),
  ADD KEY `idx_postcode` (`postcode_id`);

--
-- Indexes for table `sales_records`
--
ALTER TABLE `sales_records`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `glass_id` (`glass_id`),
  ADD KEY `sold_by` (`sold_by`),
  ADD KEY `sold_to` (`sold_to`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `countrycode` (`countrycode`),
  ADD KEY `postcode` (`postcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands_vendors`
--
ALTER TABLE `brands_vendors`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `glasses`
--
ALTER TABLE `glasses`
  MODIFY `glass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `sales_records`
--
ALTER TABLE `sales_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands_vendors`
--
ALTER TABLE `brands_vendors`
  ADD CONSTRAINT `brands_vendors_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`vendor_id`);

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`referral`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`postcode`) REFERENCES `postcodes` (`postcode_id`),
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`countrycode`) REFERENCES `postcodes` (`countrycode`);

--
-- Constraints for table `glasses`
--
ALTER TABLE `glasses`
  ADD CONSTRAINT `glasses_ibfk_1` FOREIGN KEY (`brand`) REFERENCES `brands_vendors` (`brand_id`),
  ADD CONSTRAINT `glasses_ibfk_2` FOREIGN KEY (`frame`) REFERENCES `frames` (`frame_id`),
  ADD CONSTRAINT `glasses_ibfk_3` FOREIGN KEY (`frame_colour`) REFERENCES `colours` (`colour_id`),
  ADD CONSTRAINT `glasses_ibfk_4` FOREIGN KEY (`glass_shade`) REFERENCES `colours` (`colour_id`);

--
-- Constraints for table `sales_records`
--
ALTER TABLE `sales_records`
  ADD CONSTRAINT `sales_records_ibfk_1` FOREIGN KEY (`glass_id`) REFERENCES `glasses` (`glass_id`),
  ADD CONSTRAINT `sales_records_ibfk_2` FOREIGN KEY (`sold_by`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `sales_records_ibfk_3` FOREIGN KEY (`sold_to`) REFERENCES `clients` (`client_id`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`countrycode`) REFERENCES `postcodes` (`countrycode`),
  ADD CONSTRAINT `vendors_ibfk_2` FOREIGN KEY (`postcode`) REFERENCES `postcodes` (`postcode_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
