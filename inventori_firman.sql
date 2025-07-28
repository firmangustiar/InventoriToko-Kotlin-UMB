-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jul 2025 pada 17.19
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori_firman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`, `image_url`) VALUES
(40, 'Miniatur Candi', 50, 35000, 'https://media.karousell.com/media/photos/products/2024/3/12/gantungan_kunci_fiber_miniatur_1710218353_5c088ce4_progressive'),
(41, 'Magnet Kulkas Bali', 200, 10000, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-40027717/oem_magnet_tempelan_kulkas_indonesia_bali_full01_rf93l5a6.jpg'),
(42, 'Gantungan Kunci Wayang', 150, 12000, 'https://id-test-11.slatic.net/p/6fe1d5c9e080045ea736e37f8c74fbfc.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$CzZdBxuJDYWk6Mzn4HoNi.ZDt4nx49a8HY9fb2.avNDgrUsdHBhSG'),
(2, 'mirna', 'mirna@gmail.com', '$2y$10$QEJwxfqqT.obOcFNgGcc8uFyF9Ej5X6Xzo0OyhTWEJkdAfDf9j.P6'),
(3, '', '', '$2y$10$W1KPP2hBnX8NjzYgEPG8weVIixR8tkWcdFqdnXQ.G/9plH4gNxGe.'),
(232, 'hasrun', 'admin2@gmail.com', '$2y$10$5oQWbV45KOR3HLSozkxEs.yo.mguR/K8oCuZM7QdFtI7G6qnY3kkq'),
(233, 'laode', 'admin3@gmail.com', '$2y$10$zHsliR0/GxBfIs4iaEzBwe38AtpfhWAsia.eYcdLJNbAvNIMXtji.'),
(234, 'firman', 'admin7@gmail.com', '$2y$10$kYpRCH0Zmpyob//5bsbtEeh/DC0.m81T5oNhkzXQdwt7iw15Z4hJ6');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
