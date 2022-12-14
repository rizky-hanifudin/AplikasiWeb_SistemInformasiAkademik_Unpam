-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 02:32 PM
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
-- Database: `dbaplikasi_sia_unpam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbbiayakuliah`
--

CREATE TABLE `tbbiayakuliah` (
  `prodi` varchar(100) NOT NULL,
  `biaya_semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbbiayakuliah`
--

INSERT INTO `tbbiayakuliah` (`prodi`, `biaya_semester`) VALUES
('Teknik Industri', 1500000),
('Teknik Informatika', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbmahasiswa`
--

CREATE TABLE `tbmahasiswa` (
  `nim` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbmahasiswa`
--

INSERT INTO `tbmahasiswa` (`nim`, `nama`, `kelas`, `password`, `semester`) VALUES
('201011400105', 'Rizky Hanifudin', '05TPLE005', '827ccb0eea8a706c4c34a16891f84e7b', 5),
('201011400106', 'Rizky Debian', 'R', '827ccb0eea8a706c4c34a16891f84e7b', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbmatakuliah`
--

CREATE TABLE `tbmatakuliah` (
  `kode` varchar(50) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `sks` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmatakuliah`
--

INSERT INTO `tbmatakuliah` (`kode`, `nama`, `sks`) VALUES
('P2', 'Pemrograman 2', 3),
('PW2', 'Pemrograman Web 2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbnilai`
--

CREATE TABLE `tbnilai` (
  `nim` varchar(50) NOT NULL DEFAULT '0',
  `kodematakuliah` varchar(50) NOT NULL DEFAULT '0',
  `tugas` int(11) NOT NULL DEFAULT 0,
  `uts` int(11) DEFAULT NULL,
  `uas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnilai`
--

INSERT INTO `tbnilai` (`nim`, `kodematakuliah`, `tugas`, `uts`, `uas`) VALUES
('201011400105', 'P2', 95, 95, 95),
('201011401468', 'MTK', 90, 90, 90);

-- --------------------------------------------------------

--
-- Table structure for table `tbpembayarankuliah`
--

CREATE TABLE `tbpembayarankuliah` (
  `no_tagihan` varchar(14) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tanggal_bayar` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbpembayarankuliah`
--

INSERT INTO `tbpembayarankuliah` (`no_tagihan`, `nim`, `prodi`, `pembayaran`, `jumlah_bayar`, `status`, `tanggal_bayar`) VALUES
('201011400105', '201011400105', 'Teknik Informatika', 3000000, 3000000, 'LUNAS', '2022-12-02 21:22:51'),
('2010114001055', '201011400105', 'Teknik Informatika', 3000000, 3000000, 'LUNAS', '2022-12-08 22:14:23'),
('2010114001065', '201011400106', 'Teknik Informatika', 2000000, 2000000, 'LUNAS', '2022-12-14 19:55:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbiayakuliah`
--
ALTER TABLE `tbbiayakuliah`
  ADD PRIMARY KEY (`prodi`);

--
-- Indexes for table `tbmatakuliah`
--
ALTER TABLE `tbmatakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbnilai`
--
ALTER TABLE `tbnilai`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbpembayarankuliah`
--
ALTER TABLE `tbpembayarankuliah`
  ADD PRIMARY KEY (`no_tagihan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
