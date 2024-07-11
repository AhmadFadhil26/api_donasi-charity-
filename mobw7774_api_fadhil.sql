-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2024 at 04:57 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobw7774_api_fadhil`
--

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` text NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `pickup_address` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `user_id`, `type`, `description`, `quantity`, `pickup_address`, `amount`, `payment_method`, `created_at`) VALUES
(1, 1, 'Pakaian', 'Pakaian Tidur', 10, 'Jalan Miana', NULL, NULL, '2024-07-11 18:22:31'),
(2, 1, 'Makanan', 'Masakan Padang', 100, 'Jalan Bambu Asri', NULL, NULL, '2024-07-11 18:36:26'),
(3, 1, 'Uang', NULL, NULL, NULL, 2000000.00, 'Bank', '2024-07-11 18:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `donation_results`
--

CREATE TABLE `donation_results` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donation_results`
--

INSERT INTO `donation_results` (`id`, `title`, `image_url`, `description`) VALUES
(1, 'Gunung Meletus', 'https://cdns.klimg.com/merdeka.com/i/w/news/2022/01/12/1396816/540x270/qnet-salurkan-bantuan-makanan-untuk-korban-erupsi-gunung-semeru-lumajang.jpeg', 'Indonesia kembali berduka karena bencana alam. Di awal Desember 2021, terjadi letusan gunung Semeru yang terletak di Kabupaten Lumajang Jawa Timur.'),
(2, 'Banjir', 'https://unair.ac.id/wp-content/uploads/2021/02/PUSPAS-DONASI-1024x766.jpg', 'Koordinasinya dengan LPPM, sedangkan kami (PUSPAS, Red) yang melakukan crowdfunding. Sehingga bantuan yang disalurkan bisa tersampaikan kepada para korban bencana dengan efektif,” jelasnya dalam wawancara Jumat (12/02/2021).'),
(3, 'Gempa Bumi', 'https://news.uad.ac.id/wp-content/uploads/IMM-FAST-Universitas-Ahmad-Dahlan-UAD-gelar-aksi-kemanusiaan-untuk-korban-bencana-alam-Foto-Istimewa-1030x623.jpg', 'Gempa bumi bermagnitudo 6.1 di Kabupaten Pasaman Barat, Sumatera Barat, dan banjir yang melanda Kota Serang, Banten, membuat Ikatan Mahasiswa Muhammadiyah (IMM) Fakultas Sains dan Teknologi Terapan (FAST) Universitas Ahmad Dahlan (UAD).');

-- --------------------------------------------------------

--
-- Table structure for table `donation_types`
--

CREATE TABLE `donation_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donation_types`
--

INSERT INTO `donation_types` (`id`, `type_name`) VALUES
(1, 'Pakaian'),
(2, 'Makanan'),
(3, 'Uang');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image_url`, `description`) VALUES
(1, 'Bencana Gunung Meletus', 'https://pict.sindonews.net/webp/732/pena/news/2024/07/07/174/1410703/gunung-lewotobi-lakilaki-kembali-erupsi-lontarkan-abu-setinggi-1000-meter-blz.webp', 'Gunung Lewotobi Laki-Laki kembali menunjukkan aktivitas vulkaniknya dengan erupsi yang terjadi pada hari ini, Minggu (7/7/2024). Kolom abu teramati mencapai ketinggian sekitar 1.000 meter di atas puncak atau sekitar 2.584 meter di atas permukaan laut (Mdpl).'),
(2, 'Bencana Banjir', 'https://pict.sindonews.net/webp/732/pena/news/2024/07/11/174/1413651/banjir-melanda-seram-bagian-barat-1938-jiwa-terdampak-svg.webp', 'Banjir merendam 5 kecamatan di Kabupaten Seram Bagian Barat, Provinsi Maluku, setelah diguyur hujan deras selama beberapa hari dengan intensitas ringan hingga tinggi sejak Rabu (10/7/2024) pukul 07.00 WIT.'),
(3, 'Bencana Gempa Bumi', 'https://pict.sindonews.net/webp/732/pena/news/2024/07/08/707/1411319/dampak-gempa-bumi-m44-di-kabupaten-batang-49-rumah-rusak-dan12-warga-lukaluka-nao.webp', 'Badan Nasional Penanggulangan Bencana (BNPB) melalui tim kaji cepat di lapangan terus memutakhirkan data dampak kerusakan gempa bumi berkekuatan magnitudo (M)4,4 di wilayah Kabupaten Batang dan sekitarnya, Minggu (7/7/2024).');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'eca@gmail.com', '$2y$10$aj8/7kRqSIPhin9IOtOaIObJmrvz2MdcUUV.ulCew3PPdlXO51Fc.'),
(2, 'fadhil@gmail.com', '$2y$10$CsgFwfotf2DooOQdT3micOZeo3Gd1.Acrlvy34hTXDTSanNVpV7sW'),
(3, 'maul@gmail.com', '$2y$10$o3RySnIYZjsd41.AXs9cjO/ePkLMGxMFTEez2GAQNvR5ZI.s/v9J6'),
(4, 'dhio@gmail.com', '$2y$10$ll2Zc9Xrh8BPkTfWqRLLQe.EnzbJmp6Qcvasp.YvAdyC7Btaz12F6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `donation_results`
--
ALTER TABLE `donation_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_types`
--
ALTER TABLE `donation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donation_results`
--
ALTER TABLE `donation_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donation_types`
--
ALTER TABLE `donation_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
