-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 04:05 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tredz`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `id_alamat` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`id_alamat`, `alamat`, `email`) VALUES
(1, 'Perumahan Griyataman Karinda Blok-D4 Desa Wirokerten Banguntapan Bantul', 'sitizulaihaabdullah02@gmail.com'),
(3, 'sleman', 'sitizulaihamamanda@gmail.com'),
(4, 'pota', 'febrianiriwissari@gmail.com'),
(5, 'sleman', 'sitizulaihamamanda@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `seo_brand` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `brand`, `seo_brand`, `logo`, `tgl`) VALUES
(7, 'GIANT', 'giant', 'giant.svg', '2019-10-11 04:14:53'),
(8, 'CUBE', 'cube', 'cube.svg', '2019-10-11 04:15:14'),
(9, 'cannondale', 'cannondale', 'cano.svg', '2019-10-14 03:17:33'),
(10, 'MAVIC', 'mavic', 'mavic.svg', '2019-10-11 04:16:12'),
(11, 'castelli', 'castelli', 'cas.svg', '2019-10-14 03:16:55'),
(12, 'ENDURA', 'endura', 'endura.svg', '2019-10-11 04:17:10'),
(13, 'ALTURA', 'altura', 'altura.svg', '2019-10-14 03:45:07'),
(15, 'SPECIALIZED', 'specialized', 'specialized.svg', '2019-10-14 03:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `gambar_seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_product`, `gambar`, `gambar_seo`) VALUES
(27, 0, 'Bmx-Bikes.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kategori_seo` varchar(50) NOT NULL,
  `tgl_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `gambar`, `kategori_seo`, `tgl_add`) VALUES
(39, 'Accessories', 'accessories.jpg', 'accessories', '2019-10-14 02:30:08'),
(40, 'Bikes', 'bikes.jpg', 'bikes', '2019-10-14 02:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `tgl_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `judul_seo` varchar(100) NOT NULL,
  `id_brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `harga`, `deskripsi`, `stok`, `gambar`, `tgl_buat`, `judul_seo`, `id_brand`) VALUES
(11, 'sepeda', 230000000, 'Cycling bags literally come in all shapes and sizes, with small saddle bags fitting nicely under your seat that store your essentials for everyday rides, and much larger Bike bags fitting your entire bike for easy and convenient travelling on alternative transport.\r\n\r\nMountain bikers and many commuters like to have what they need on them at all times and prefer riding with bike backpacks. And for shorts MTB rides, a hydration bag balances size and function. For bad long distance travellers and commuters, pannier bags provide the best solution, allowing you to keep your things nicely balanced on your bike, giving you the freedom to ride without a backpack, and often with waterproof peace of mind.', 2, 'sepeda.jpg', '2019-10-14 03:44:21', 'sepeda', 7);

-- --------------------------------------------------------

--
-- Table structure for table `reting`
--

CREATE TABLE `reting` (
  `id_reting` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `nama_reting` varchar(100) NOT NULL,
  `kualiti` double NOT NULL,
  `performa` double NOT NULL,
  `formany` double NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reting_seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reting`
--

INSERT INTO `reting` (`id_reting`, `id_product`, `nama_reting`, `kualiti`, `performa`, `formany`, `judul`, `isi`, `oleh`, `tgl_input`, `reting_seo`) VALUES
(1, 11, 'reting', 0, 0, 0, 'rer', 'rer', 'rerer', '2019-10-14 04:34:16', 'reting');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `jdl_slider` varchar(100) NOT NULL,
  `gbr_slider` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `jdl_slider`, `gbr_slider`, `aktif`) VALUES
(1, 'sara', '', 'Y'),
(2, 'siti', 'siti.png', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `id_sub` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `sub_seo` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id_sub`, `id_kategori`, `nama_sub`, `gambar`, `sub_seo`, `keterangan`) VALUES
(15, 39, 'Bike Accessories', 'bike-accessories.jpg', 'bike-accessories', 'Bike accessories are vital to make cycling comfortable, practical, safe and more fun. We have a massive range of bike accessories and finishing touches from the biggest brands, for men, women and kids. Choose bike lights, bells and high vis to keep you safe, or bike locks, and mudguards to protect your bike. Our range of cycle accessories includes pumps, sports nutrition, repair kits and tools to keep you riding. We\'ve also got racks, bike stands and bags to transport everything you need.\r\n\r\nTech like turbo trainers, bike computers and action cameras are a great way to enhance your riding and improve your fitness levels. Phone accessories make use of your phone\'s GPS to navigate around town without laying out on a Garmin. Accessorize in style, whether you\'re on your road bike, MTB or urban bike.'),
(16, 39, 'Bike Lights', 'bike-lights.jpg', 'bike-lights', 'Tech like turbo trainers, bike computers and action cameras are a great way to enhance your riding and improve your fitness levels. Phone accessories make use of your phone\'s GPS to navigate around town without laying out on a Garmin. Accessorize in style, whether you\'re on your road bike, MTB or urban bike.'),
(17, 39, 'Bike Accessories', 'bike-accessories.jpg', 'bike-accessories', 'share'),
(20, 39, 'GGDFG', 'ggdfg.jpg', 'ggdfg', '$foto[\'file_name\']');

-- --------------------------------------------------------

--
-- Table structure for table `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `ukuran_seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `id_product`, `ukuran`, `ukuran_seo`) VALUES
(2, 7, '36 cm', '36-cm'),
(3, 7, '23 cm', '23-cm'),
(4, 10, '23 cm', '23-cm'),
(5, 11, '23', '23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `id_session` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`) VALUES
('Zulaiha02', '1804bb361e446f85509c76e9cd1c32ba', 'Administrator', 'admin@gmail.com', '082236447387', 'admin', 'Y', 'aa5979f473eaa50eec7837d1dbe66ca4');

-- --------------------------------------------------------

--
-- Table structure for table `warna`
--

CREATE TABLE `warna` (
  `id_warna` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `warna_seo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warna`
--

INSERT INTO `warna` (`id_warna`, `id_product`, `warna`, `warna_seo`) VALUES
(7, 11, 'Merah Muda', 'merah-muda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `reting`
--
ALTER TABLE `reting`
  ADD PRIMARY KEY (`id_reting`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `warna`
--
ALTER TABLE `warna`
  ADD PRIMARY KEY (`id_warna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reting`
--
ALTER TABLE `reting`
  MODIFY `id_reting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warna`
--
ALTER TABLE `warna`
  MODIFY `id_warna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
