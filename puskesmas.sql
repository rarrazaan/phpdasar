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
-- Database: `puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `gender_dokter` varchar(10) NOT NULL,
  `alamat_dokter` varchar(100) NOT NULL,
  `spesialis` varchar(100) NOT NULL,
  `kontak_dokter` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `gender_dokter`, `alamat_dokter`, `spesialis`, `kontak_dokter`) VALUES
(1, 'Pinda de Govinda', 'Perempuan', 'Semarang au Nirvana', 'Hati', '08956234578'),
(3, 'Pinda au Revoir', 'Laki-Laki', 'Deket A Yani', 'Kaeya', 'Pinochio'),
(5, 'AVC', 'Laki-Laki', 'ASD', 'Jantung', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id_emp` int(11) NOT NULL,
  `nama_emp` varchar(100) NOT NULL,
  `password` varchar(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id_emp`, `nama_emp`, `password`) VALUES
(1, 'An', 'An123'),
(2, 'Ae', 'Ae123');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `masa_berlaku` varchar(20) NOT NULL,
  `jumlah_obat` int(11) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  `tanggal_produksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jenis_obat`, `masa_berlaku`, `jumlah_obat`, `harga_obat`, `tanggal_produksi`) VALUES
(1, 'AA', 'ASD', 'QWE', 12, 13, '2022-01-01'),
(2, 'AS', 'AAA', 'QW', 13, 14000, '2022-01-01'),
(3, 'SD', 'ASD', 'QWE', 12, 150000, '2022-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `gender_pasien` varchar(100) NOT NULL,
  `alamat_pasien` varchar(100) NOT NULL,
  `umur_pasien` int(11) NOT NULL,
  `kontak_pasien` varchar(12) NOT NULL,
  `jenis_pasien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `gender_pasien`, `alamat_pasien`, `umur_pasien`, `kontak_pasien`, `jenis_pasien`) VALUES
(1, 'Kaya', 'Perempuan', 'Osaka', 30, '086548798654', 'Normal'),
(9, 'Ai', 'Perempuan', 'Tokyo', 36, '082222365123', 'Darurat'),
(10, 'qwdqwd', 'Laki-Laki', 'qwdqwd', 12, 'qwdqwd', 'Darurat'),
(11, 'Koko', 'Perempuan', 'Busan', 92, '087023654789', 'Darurat');

-- --------------------------------------------------------

--
-- Table structure for table `pasiendarurat`
--

CREATE TABLE `pasiendarurat` (
  `id_pasien` int(11) NOT NULL,
  `ruangan_IGD` varchar(50) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasiendarurat`
--

INSERT INTO `pasiendarurat` (`id_pasien`, `ruangan_IGD`, `level`) VALUES
(10, 'ASD1', 2),
(11, 'ASD16', 2),
(9, 'IGD-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasiennormal`
--

CREATE TABLE `pasiennormal` (
  `id_pasien` int(11) NOT NULL,
  `ruang_rawat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasiennormal`
--

INSERT INTO `pasiennormal` (`id_pasien`, `ruang_rawat`) VALUES
(1, 'RuangRawat1');

-- --------------------------------------------------------

--
-- Table structure for table `rekammedis`
--

CREATE TABLE `rekammedis` (
  `id_pasien` int(11) NOT NULL,
  `keluhan` text NOT NULL,
  `pemeriksaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekammedis`
--

INSERT INTO `rekammedis` (`id_pasien`, `keluhan`, `pemeriksaan`) VALUES
(9, 'ASDDFASDWQE', 'ASDFWERASFDD'),
(1, 'Tidak ada', 'Tidak ada Keluhan'),
(11, 'ACX', 'ASDC');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id_terapi` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id_terapi`, `total_biaya`) VALUES
(3, 13150000);

-- --------------------------------------------------------

--
-- Table structure for table `terapi`
--

CREATE TABLE `terapi` (
  `id_terapi` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `durasi_terapi` varchar(20) NOT NULL,
  `biaya_terapi` int(11) NOT NULL,
  `tanggal_terapi` date NOT NULL,
  `nama_terapi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terapi`
--

INSERT INTO `terapi` (`id_terapi`, `id_pasien`, `id_dokter`, `id_obat`, `durasi_terapi`, `biaya_terapi`, `tanggal_terapi`, `nama_terapi`) VALUES
(3, 1, 3, 2, '3 Hari', 13000000, '1970-01-01', 'Kaeyafication'),
(4, 11, 3, 3, '4 Tahun', 130000000, '1999-01-01', 'KOL'),
(5, 10, 3, 2, 'QWER', 12345678, '1970-01-01', 'AA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id_emp`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pasiendarurat`
--
ALTER TABLE `pasiendarurat`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `pasiennormal`
--
ALTER TABLE `pasiennormal`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD KEY `id_terapi` (`id_terapi`);

--
-- Indexes for table `terapi`
--
ALTER TABLE `terapi`
  ADD PRIMARY KEY (`id_terapi`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_obat` (`id_obat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id_emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `terapi`
--
ALTER TABLE `terapi`
  MODIFY `id_terapi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pasiendarurat`
--
ALTER TABLE `pasiendarurat`
  ADD CONSTRAINT `id_pasien_darurat` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasiennormal`
--
ALTER TABLE `pasiennormal`
  ADD CONSTRAINT `id_pasien_normal` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rekammedis`
--
ALTER TABLE `rekammedis`
  ADD CONSTRAINT `id_pasien_RM` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `id_terapi_Ta` FOREIGN KEY (`id_terapi`) REFERENCES `terapi` (`id_terapi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `terapi`
--
ALTER TABLE `terapi`
  ADD CONSTRAINT `id_dokter_T` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_obat_T` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_pasien_T` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
