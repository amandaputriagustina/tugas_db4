-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 08:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_ambil_mk`
--

CREATE TABLE `tb_ambil_mk` (
  `nip` int(10) NOT NULL,
  `kode_matkul` varchar(20) NOT NULL,
  `ruangan` varchar(20) NOT NULL,
  `jml_mhs` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ambil_mk`
--

INSERT INTO `tb_ambil_mk` (`nip`, `kode_matkul`, `ruangan`, `jml_mhs`) VALUES
(3, 'PTI101', 'H5211', 40),
(2, 'PTI102', 'H5212', 45),
(2, 'PTI103', 'H5206', 40),
(1, 'IS101', 'I7312', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tb_instruktur`
--

CREATE TABLE `tb_instruktur` (
  `nip` int(10) NOT NULL,
  `nama_ins` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `asal_kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_instruktur`
--

INSERT INTO `tb_instruktur` (`nip`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
(1, 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
(2, 'Saichul Fitrian A.', 'Ilmu Komputer', 'Malang'),
(3, 'Amafia Oktafian', 'Ilmu Komputer', 'Klaten'),
(4, 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `kode_matkul` varchar(10) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`kode_matkul`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia', 3),
('PTI101', 'Algoritma dan Pemrograman', 3),
('PTI102', 'Basis Data', 3),
('PTI103', 'Visual Basic', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_instruktur`
--
ALTER TABLE `tb_instruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_instruktur`
--
ALTER TABLE `tb_instruktur`
  MODIFY `nip` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
