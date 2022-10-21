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
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ambil_mk`
--

CREATE TABLE `tbl_ambil_mk` (
  `nim` int(10) NOT NULL,
  `kode_mk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ambil_mk`
--

INSERT INTO `tbl_ambil_mk` (`nim`, `kode_mk`) VALUES
(101, 'PTI447'),
(103, 'TIK333'),
(104, 'PTI333'),
(104, 'PTI777'),
(111, 'PTI123'),
(123, 'PTI999');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `Nim` int(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`Nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'Jl.Kenangan'),
(102, 'Budi', 'L', 'Jl.Jombang'),
(103, 'Wati', 'P', 'Jl. Surabaya'),
(104, 'Ika', 'P', 'Jl. Jombang'),
(105, 'Tono', 'L', 'Jl.Jakarta'),
(106, 'Iwan', 'L', 'Jl.Bandung'),
(107, 'Sari', 'P', 'Jl. Malang');

-- --------------------------------------------------------

--
-- Table structure for table `tnl_matakuliah`
--

CREATE TABLE `tnl_matakuliah` (
  `kode_mk` varchar(30) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(10) NOT NULL,
  `semester` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tnl_matakuliah`
--

INSERT INTO `tnl_matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI123', 'Grafika Multimedia', 3, 5),
('PTI333', 'Basis Data Terdisribusi', 3, 5),
('PTI447', 'Praktikum Basis Data', 1, 3),
('PTI777', 'Sistem Informasi', 2, 3),
('TIK123', 'Jaringan Komputer', 2, 5),
('TIK333', 'Sistem Operasi', 3, 5),
('TIK342', 'Praktium Basis Data', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`Nim`);

--
-- Indexes for table `tnl_matakuliah`
--
ALTER TABLE `tnl_matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `Nim` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
