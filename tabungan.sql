-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 12:01 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tabungan`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`id_siswa` int(50) NOT NULL,
  `nama` text COLLATE latin1_general_ci NOT NULL,
  `kelas` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` text COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `tempat` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `kelas`, `jenis_kelamin`, `alamat`, `tempat`, `tanggal`) VALUES
(3, 'Aqilah Shafa Algavit', 'A', '', 'Jln. Karya Perbatasan No. 15', 'Medan, 14 Maret 2014 ', '0000-00-00'),
(4, 'Muhammad Rafid Ginting', 'A', '', 'Jl. Antariksa No. 8', 'Medan, 19 Juni 2014', '0000-00-00'),
(5, 'Nia Matahari ', 'A', '', 'Jln. Sejati Baru No. 4', 'Bekasi, 18 November 2013 ', '0000-00-00'),
(6, ' Afnia Yazrila', 'A', '', 'Wing 3 Paskhas Eks Bandara Polonia', 'Banda Aceh,  08 Juni 2014', '0000-00-00'),
(7, 'Alfarisy Qutbhi Zaidan', 'A', '', 'Jl. Cinta Karya gg. Keluarga Sejahtera Medan Polonia', 'Medan, 10 September 2013', '0000-00-00'),
(8, 'Jihan Thalita Zahra', 'A', '', 'Komp. TNI AU Karang Sari I no. 35', 'Medan, 22 April 2014', '0000-00-00'),
(9, 'Naila Adinda Fatiha', 'A', '', 'Jl. Antariksa Gg. Perjuangan III', 'Medan, 04 April 2014', '0000-00-00'),
(10, 'Putri Balqis Anaqah', 'A', '', 'JL. Antariksa Gg. Nazir no. 30A Karang Sari', 'Delitua, 06 September 2013', '0000-00-00'),
(11, 'Sahbrina Arianti', 'A', '', 'Jl. Mawar No. 12 K. Sari, Sari Rejo', 'Medan, 31 Januari 2013', '0000-00-00'),
(12, 'Hayatul Husna', 'A', '', 'Jl. Teratai Gg. Saudara', 'Medan, 31 Agustus 2013', '0000-00-00'),
(13, 'Neysa Callysta Mahdi', 'A', '', 'Ksatria Paskhas F. Sihombing, Medan', 'Medan, 09 November 2012', '0000-00-00'),
(14, 'Alya Casandra Putri', 'A', '', '', 'Medan', '0000-00-00'),
(15, 'Fadilla Ramadhani Putri Antika', 'A', '', 'Wing 3 Paskhas Eks Bandara Polonia', 'Aceh Besar, 30 Juli 2013', '0000-00-00'),
(16, 'Abi Ibrahim Pratama', 'A', '', 'Jl. Antariksa Pipa 5 No. 8', 'Medan, 05 Oktober 2012', '0000-00-00'),
(17, 'Fabian Chicco Wedhatama', 'A', '', 'Ksatria Paskhas F. Sihombing, No. 92 Medan', 'Medan, 05 September 2012', '0000-00-00'),
(18, 'Dafa Adzkiasyah', 'A', '', 'Jl. Mawar Gg. Benteng No. 9', 'Medan, 10 Juli 2012', '0000-00-00'),
(19, 'Alif Reifansyah Hussein', 'A', '', 'Jl. Cepaka Gg. Sahabat No. 1A Kel. Sari Rejo', 'Medan, 21 November 2012', '0000-00-00'),
(20, 'Nabil Rafhid Baihaqi', 'A', '', 'Jl. Pipa 3 Sari Rejo Polonia', 'Medan, 05 Agustus 2013', '0000-00-00'),
(21, 'Al Fairuz Tabina', 'A', '', 'Jl. Cinta Karya Gg. Sadar', 'Aek Luba, 13 Januari 2013', '0000-00-00'),
(22, 'Danish Al Fattah Purba', 'A', '', 'Jl. Antariksa Gg. Pinang', 'Medan, 25 Maret 2013', '0000-00-00'),
(23, 'Dewi Tussifa Ahmadi Nasution ', 'A', '', 'Ksatria Paskhas F. Sihombing, Medan', 'Medan, 27 Desember 2012', '0000-00-00'),
(24, 'Salma Azalia Santoso', 'A', '', 'Ksatria Paskhas F. Sihombing, Medan', 'Madiun, 04 Desember 2012', '0000-00-00'),
(25, 'Alvin Ramadhon', 'A', '', 'Jl. Mawar Gg. Benteng', 'Medan, 10 Juli 2013', '0000-00-00'),
(26, 'Azzam Faiz Pasha Saragih', 'A', '', 'Jl. Karya Perbatasan Lk. XII No.57', 'Medan, 08 Desember 2012', '0000-00-00'),
(27, 'Hadya Aura Ningsih', 'A', '', 'Jl. Rahmadsyah Gg. Langgar No. 156', 'Medan, 05 Agustus 2013', '0000-00-00'),
(28, 'Rizqi Zaqi Doli Siregar', 'A', '', 'Jl. Pipa 2 No. 20', 'Medan, 23 November 2012', '0000-00-00'),
(29, 'Abie Rio Dermawan', 'A', '', 'Jl. Sejati Baru No. 3A Kel. Sari Rejo Medan', 'Medan, 27 Agustus 2013', '0000-00-00'),
(30, 'Raisa Ramadhina', 'A', '', 'Jl. Saman Hudi No. 27', 'Medan, 15 Juli 2013', '0000-00-00'),
(31, 'Alya Talita Zahra ', 'A', '', 'Jl. Cinta Karya Gg. Muhajirin No. 6', 'Medan, 20 Agustus 2013', '0000-00-00'),
(32, 'Kenzy Maulana Nawiska', 'A', '', 'Komp. TNI AU Karang Sari I no. 12 Kel. Sari Rejo Kec. Medan Polonia Sumut', 'Medan, 28 Februari 2013', '0000-00-00'),
(33, 'Aldyhansyah Ibrahim', 'A', '', 'Jl. B. Katamso Gg. Lampu I No. 71', 'Medan', '0000-00-00'),
(34, 'Khanza Shaki Nabila', 'A', '', 'Jl. Cempaka Gg. Cempaka 1 No. 2', 'Medan, 12 Januari 2013', '0000-00-00'),
(35, 'Muhammad Nizam Athari', 'A', '', 'Jl. Purna Bhakti Ujung Sari Rejo Medan', 'Medan, 23 September 2013', '0000-00-00'),
(36, 'Luthfi Brian Baihaqy', 'A', '', 'Komplek TNI AU Kr. Sari 1 No. 38', 'Medan, 12 September 2013', '0000-00-00'),
(37, 'Wildan Al Ikram Hasibuan', 'A', '', 'Jl. P. Utama No. 72 Kr. Sari', 'Padang Sidempuan, 25 Januari 2013', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tabungan`
--

CREATE TABLE IF NOT EXISTS `tabungan` (
`id_tabungan` int(50) NOT NULL,
  `id_siswa` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `setoran` text COLLATE latin1_general_ci NOT NULL,
  `penarikan` text COLLATE latin1_general_ci NOT NULL,
  `saldo` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=100071 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tabungan`
--

INSERT INTO `tabungan` (`id_tabungan`, `id_siswa`, `tanggal`, `setoran`, `penarikan`, `saldo`) VALUES
(100067, '12', '2019-06-18', '1569000', '', '1569000'),
(100066, '2', '2019-06-18', '350000', '', '3050000'),
(100065, '2', '2019-06-18', '', '300000', '2700000'),
(100064, '11', '2019-06-18', '500000', '', '500000'),
(100063, '2', '2019-06-18', '3000000', '', '3000000'),
(100068, '2', '2019-06-18', '345678', '', '3395678'),
(100069, '29', '2019-08-11', '23000', '', '23000'),
(100070, '3', '2019-08-11', '5000', '', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tabungan`
--
ALTER TABLE `tabungan`
 ADD PRIMARY KEY (`id_tabungan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `id_siswa` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tabungan`
--
ALTER TABLE `tabungan`
MODIFY `id_tabungan` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100071;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
