-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2017 at 03:43 PM
-- Server version: 10.1.9-MariaDB-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `discount` double DEFAULT NULL,
  `discounted_price` double NOT NULL,
  `new_arrival` varchar(100) NOT NULL,
  `hot_item` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `brand`, `price`, `description`, `discount`, `discounted_price`, `new_arrival`, `hot_item`, `picture`) VALUES
(1, 'Kate Metal Glamour Eyes', 'KATE', 55, '6 colours to choose', 6, 51.7, 'yes', 'yes', 'kate-metal-glamour-eyes.png'),
(2, 'Klairs Mochi BB Cushion', 'KLAIRS', 136.79, 'With a natural colour and glow to give your skin the lively finish it needs, meet the exclusive.', 26, 101.22, 'no', 'yes', 'klairs-mochi-bb-cushion.png'),
(3, 'The Face Shop Mattifying Powder', 'THE FACE SHOP', 44.9, 'SPF30 PA++ 10g', 28, 32.33, 'yes', 'yes', 'the-face-shop-oil-clear-sheer-pink-mattifying-powder.png'),
(4, 'NYX Soft Matte Lip Cream [23 Types To Choose]', 'NYX', 33, '\r\nTheir velvety smooth Soft Matte Lip Cream delivers a burst of creamy color and sets to a stunning matte finish.', 0, 0, 'no', 'yes', 'nyx-soft-matte-lip-cream.png'),
(5, 'Pure Vitamin C215 Advanced Serum', 'BY WISHTREND', 129, 'With an upgraded formula with more of the effects but less the ingredients.', 28, 92.88, 'no', 'yes', 'pure-vitamin-c215-advanced-serum.jpg'),
(6, 'The Face Shop Mask.Lab Face Mask', 'THE FACE SHOP', 14, '[2 Types to choose]', 28, 10.08, 'yes', 'yes', 'the-face-shop-masklab-face-mask-25g.png'),
(7, 'Natural vitamin 21.5 Enhancing Sheet Mask', 'BY WISHTREND', 12.9, '', 30, 9.03, 'no', 'yes', 'wishtrend-natural-vitamin-215-enhancing-sheet-mask.png'),
(8, 'By Wishtrend Vitamin 75 Maximizing Cream', 'BY WISHTREND', 131, 'The vitamin cream your skin will fall in love with', 15, 111.35, 'yes', 'yes', 'wishtrend-vitamin-75-maximizing-cream.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
