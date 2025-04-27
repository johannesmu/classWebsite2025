-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 27, 2025 at 12:05 PM
-- Server version: 10.4.34-MariaDB-1:10.4.34+maria~ubu2004
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ProGearHub`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Product Inquiry', 'Do you have mountain bikes available?', '2025-04-23 07:48:05'),
(2, 'Jane Smith', 'jane@example.com', 'Order Issue', 'I need to change my shipping address.', '2025-04-23 07:48:05'),
(3, 'assiria', '15838@ait.nsw.edu.au', 'oi', 'oi', '2025-04-23 07:50:59'),
(4, 'Assiria ', '15838@ait.edu.nsw.au', 'hi', 'Hey, i have a question', '2025-04-27 10:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` > 0),
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) GENERATED ALWAYS AS (`quantity` * `price`) STORED,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `email`, `product_name`, `quantity`, `price`, `order_date`) VALUES
(1, 'Alice Brown', 'alice@example.com', 'Running Shoes', 2, 59.99, '2025-04-23 07:48:05'),
(2, 'Bob White', 'bob@example.com', 'Tennis Racket', 1, 89.99, '2025-04-23 07:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `iD` int(11) NOT NULL,
  `Name` varchar(14) DEFAULT NULL,
  `Category` varchar(6) DEFAULT NULL,
  `Price` int(3) DEFAULT NULL,
  `Description` varchar(172) DEFAULT NULL,
  `Image` varchar(109) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`iD`, `Name`, `Category`, `Price`, `Description`, `Image`) VALUES
(0, 'Tank top', 'tops', 70, 'A lightweight, sleeveless tank top designed for comfort and breathability, perfect for warm weather or layering. Made from soft, stretchable fabric for a relaxed, easy fit.', 'https://symmetrical-guide-r4pr7r7q7pp63w7gp-80.app.github.dev/images/branislav-belko-lJ7iAZxplpc-unsplash.jpg'),
(0, 'Sneaker', 'Shoes', 120, 'A stylish and comfortable sneaker crafted for everyday wear, featuring a cushioned sole, breathable materials, and a sleek, versatile design.', 'https://symmetrical-guide-r4pr7r7q7pp63w7gp-80.app.github.dev/images/ruslan-ruslan-AhAMJgq5QPM-unsplash.jpg'),
(0, 'Shorts dri fit', 'Shorts', 79, 'Lightweight and breathable gym shorts designed for maximum mobility and comfort, with an elastic waistband and moisture-wicking fabric to keep you cool during workouts.\"', 'https://symmetrical-guide-r4pr7r7q7pp63w7gp-80.app.github.dev/images/hoi-pham-eLZwsPO8cCQ-unsplash.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
