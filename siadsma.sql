-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 09:40 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siadsma`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_akses` int(11) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`user_id`, `username`, `user_email`, `password`, `user_akses`, `user_status`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'b759497cf50772b2452434b3983eebcc1772f1e03bbd76dc2a139da7', 1, 1),
(2, 'Jihan Meyta Sari', 'guru@gmail.com', '35b53f45215dad012a7414762ab5441906496bf95bc49e98a8524aa6', 2, 1),
(3, 'Sari', 'siswa@gmail.com', '9b262c8e3931ab11dfd0d75650d55ba32c16680bfad1fdeb8cf65d3f', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bukti`
--

CREATE TABLE `tb_bukti` (
  `id` int(11) NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_bukti`
--

INSERT INTO `tb_bukti` (`id`, `bukti`) VALUES
(29, '16829544501401.jpg'),
(30, '16829544501402.jpg'),
(31, '16829544501403.jpg'),
(32, '16829544501404.jpg'),
(33, '16829544501405.jpg'),
(34, '16829544501406.jpg'),
(35, '16829544501407.jpg'),
(36, '16829544501408.jpg'),
(37, '16829544501409.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftartagihan`
--

CREATE TABLE `tb_daftartagihan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_daftartagihan`
--

INSERT INTO `tb_daftartagihan` (`id`, `jenis`, `keterangan`, `jumlah`, `status`) VALUES
(25, 'Ujian', 'Pembayaran Ujian', '100000', ''),
(26, 'Seragam', 'Batik', '50000', ''),
(27, 'Buku', 'Buku LKS', '50000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `kode_kelas` varchar(100) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kode_kelas`, `nama_kelas`, `jumlah`) VALUES
(6, 'K001', 'KELAS 11', '25'),
(7, 'K002', 'KELAS 10', '25'),
(9, 'K003', 'Kelas 12', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_laporan`
--

CREATE TABLE `tb_laporan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `bukti_id` int(11) DEFAULT NULL,
  `nisn` varchar(100) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `setoran` varchar(100) NOT NULL,
  `biaya` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id`, `siswa_id`, `bukti_id`, `nisn`, `nama`, `kelas`, `tanggal`, `setoran`, `biaya`, `status`) VALUES
(12, 1, NULL, '12002022', 'Jihan Meyta Sari', 'KELAS 11', '2023-06-18', '0', '200000', 1),
(13, 2, NULL, '12002023', 'Dika Al', 'KELAS 11', '2023-06-18', '0', '200000', 1),
(14, 1, 35, '12002022', 'Jihan Meyta Sari', 'KELAS 11', '2023-06-18', '75000', '125000', 1),
(15, 2, 36, '12002023', 'Dika Al', 'KELAS 11', '2023-06-18', '25000', '175000', 1),
(16, 3, NULL, '12002025', 'Diska Esfandiary', 'Kelas 12', '2023-06-18', '0', '200000', 1),
(17, 3, 37, '12002025', 'Diska Esfandiary', 'Kelas 12', '2023-06-18', '100000', '100000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_periode`
--

CREATE TABLE `tb_periode` (
  `id` int(11) NOT NULL,
  `tahun_ajaran` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_periode`
--

INSERT INTO `tb_periode` (`id`, `tahun_ajaran`, `status`) VALUES
(3, '2022/2023', ''),
(4, '2021/2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nama_orangtua` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `tahun_ajaran` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nisn`, `password`, `nama`, `nama_kelas`, `tanggal_lahir`, `nama_orangtua`, `alamat`, `no_hp`, `tahun_ajaran`, `status`) VALUES
(1, '12002022', 'siswa', 'Jihan Meyta Sari', 'KELAS 11', '2001-11-22', 'Diska', 'Blok Selasa', '08122229292', '2022/2023', 'Aktif'),
(2, '12002023', 'dika', 'Dika Al', 'KELAS 11', '2016-09-29', 'Diska', 'Blok Selasa', '03832848242', '2022/2023', 'Aktif'),
(3, '12002025', 'diska', 'Diska Esfandiary', 'Kelas 12', '2023-06-18', 'Jihan', 'Blok Selasa', '03832848242', '2022/2023', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(11) NOT NULL,
  `akses` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `akses`) VALUES
(2, 'admin', 'admin123', '1'),
(5, 'bendahara', 'bendahara', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_daftartagihan`
--
ALTER TABLE `tb_daftartagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_laporan`
--
ALTER TABLE `tb_laporan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tb_pembayaran_siswa_id` (`siswa_id`) USING BTREE;

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tb_periode`
--
ALTER TABLE `tb_periode`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `tahun_ajaran` (`tahun_ajaran`) USING BTREE;

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `nisn` (`nisn`) USING BTREE;

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_daftartagihan`
--
ALTER TABLE `tb_daftartagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_laporan`
--
ALTER TABLE `tb_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_periode`
--
ALTER TABLE `tb_periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `tb_pembayaran_siswa_id` FOREIGN KEY (`siswa_id`) REFERENCES `tb_siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
