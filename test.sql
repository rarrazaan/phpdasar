-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 04:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `posisi` varchar(10) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `posisi`, `tgl_lahir`) VALUES
(1, 'Minase Inoriiiin', 'Staf', '1995-12-01'),
(3, 'Kayano Ai', 'Manajer', '1987-09-13'),
(4, 'Matsuoka Yoshitsugu', 'Manajer', '1990-01-01'),
(5, 'Taketatsu Ayana', 'Staf', '1990-01-01'),
(6, 'Kaji Yuki', 'Manajer', '1990-01-01'),
(10, 'Imam Rafiif Arrazaan', 'Manager', '2001-01-06'),
(11, 'sdgsdvsdv', 'Staf', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `jurusan` varchar(64) NOT NULL,
  `gambar` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`id`, `nim`, `nama`, `email`, `jurusan`, `gambar`) VALUES
(1, '1234567890', 'Ai', 'Ai@gmail.com', 'Data Science', 'Ai.jpg'),
(2, '1324567890', 'Tsugu', 'Tsugu@gmail.com', 'Engineer', 'Tsugu.jpg'),
(3, '1456789231', 'Inorin', 'Inorin@gmail.com', 'Music', '620b477c857fa.png'),
(4, '178946523', 'Ayana', 'Ayana@gmail.com', 'Act', 'Ayana.jpg'),
(5, '1365897452', 'Kaji', 'Kaji@gmail.com', 'Finance', 'Kaji.jpg'),
(6, '1234567899', 'Maaya', 'Maaya@gmail.com', 'Computer Science', 'Maaya.jpg'),
(7, '1254876540', 'Ayane', 'Ayane@gmail.com', 'Computer Science', 'Ayane.jpg'),
(8, '1254876547', 'Miku', 'Miku@gmail.com', 'Music', 'Miku.jpg'),
(9, '1254876584', 'Koko', 'Koko@gmail.com', 'Art', 'Koko.jpg'),
(13, '1254876555', 'Saori', 'Saori@gmail.com', 'Music', '754871.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
