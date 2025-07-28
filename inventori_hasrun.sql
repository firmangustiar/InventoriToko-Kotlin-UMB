-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2025 at 08:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori_hasrun`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`, `image_url`) VALUES
(32, 'Sepatu Lari Nike Air Zoom', 50, 1200000, 'https://tse3.mm.bing.net/th/id/OIP.Fowr16vMt18m1uEqcShl-gHaHa?pid=Api&P=0&h=180'),
(33, 'Bola Basket Molten', 30, 350000, 'https://contents.mediadecathlon.com/p170476/k$f82a5e9cb3648f191493375a84b50cfd/sq/Bal+n+de+baloncesto+GG7X+talla+7+MOLTEN.jpg'),
(34, 'Raket Badminton Yonex', 40, 650000, 'https://cdn.sweatband.com/yonex_nanoray_50fx_badminton_racket_yonex_nanoray_50fx_badminton_racket_-_main_2000x2000.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$CzZdBxuJDYWk6Mzn4HoNi.ZDt4nx49a8HY9fb2.avNDgrUsdHBhSG'),
(2, 'mirna', 'mirna@gmail.com', '$2y$10$QEJwxfqqT.obOcFNgGcc8uFyF9Ej5X6Xzo0OyhTWEJkdAfDf9j.P6'),
(3, '', '', '$2y$10$W1KPP2hBnX8NjzYgEPG8weVIixR8tkWcdFqdnXQ.G/9plH4gNxGe.'),
(232, 'hasrun', 'admin2@gmail.com', '$2y$10$5oQWbV45KOR3HLSozkxEs.yo.mguR/K8oCuZM7QdFtI7G6qnY3kkq'),
(233, 'laode', 'admin3@gmail.com', '$2y$10$zHsliR0/GxBfIs4iaEzBwe38AtpfhWAsia.eYcdLJNbAvNIMXtji.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
