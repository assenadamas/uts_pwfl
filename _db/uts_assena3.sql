-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 10:36 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_assena`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `hp`) VALUES
(0, '16124', 'gh', 'gh', 'ghf', 'fgh'),
(1, '161240000500', 'Damas Fahmi Assena', 'Laki-laki', 'Pengkol-Jepara', '08988418922'),
(2, '161240000501', 'Rahma Nur Fadlila', 'Perempuan', 'Mantingan-Jepara', '089888999222'),
(3, '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat', '088666111666'),
(5, '161240000548', 'Ibnu Cholid Erfani', 'Laki-laki', 'Welahan - Jepara', '085666777222'),
(10, '161245', '90', 'p', 'ppi', 'ipo');

--
-- Triggers `data_mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `after_insert` AFTER INSERT ON `data_mahasiswa` FOR EACH ROW BEGIN
  INSERT INTO LOG (ket, uts_assena, new_nim, new_nama, new_jenis_kelamin, new_alamat, new_hp)
  VALUES (CONCAT('Insert data ke tabel, id = ', NEW.id), uts_assena(), NEW.nim, NEW.nama, NEW.jenis_kelamin, NEW.alamat, NEW.hp);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update` AFTER UPDATE ON `data_mahasiswa` FOR EACH ROW BEGIN
  INSERT INTO LOG (ket, USER, new_nim, new_nama, new_jenis_kelamin, new_alamat, new_hp, old_nim, old_nama, old_jenis_kelamin, old_alamat, old_hp)
  VALUES (CONCAT('Update data ke tabel, id = ', NEW.id), USER(), NEW.nim, NEW.nama, NEW.jenis_kelamin, NEW.alamat, NEW.hp, old.nim, old.nama, old.jenis_kelamin, old.alamat, old.hp);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_delete` BEFORE DELETE ON `data_mahasiswa` FOR EACH ROW BEGIN
  INSERT INTO LOG (ket, USER, old_nim, old_nama, old_jenis_kelamin, old_alamat, old_hp)
  VALUES (CONCAT('Delete data ke tabel, id = ', OLD.id), USER(), old_nim, old_nama, old_jenis_kelamin, old_alamat, old_hp);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Meja'),
(2, 'kursi');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `ket` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(50) NOT NULL DEFAULT '',
  `old_nim` varchar(25) NOT NULL DEFAULT '',
  `old_nama` varchar(25) NOT NULL DEFAULT '',
  `old_jenis_kelamin` varchar(25) NOT NULL DEFAULT '',
  `old_alamat` varchar(25) NOT NULL DEFAULT '',
  `old_hp` varchar(25) NOT NULL DEFAULT '',
  `new_nim` varchar(25) NOT NULL DEFAULT '',
  `new_nama` varchar(25) NOT NULL DEFAULT '',
  `new_jenis_kelamin` varchar(25) NOT NULL DEFAULT '',
  `new_alamat` varchar(25) NOT NULL DEFAULT '',
  `new_hp` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`ket`, `datetime`, `user`, `old_nim`, `old_nama`, `old_jenis_kelamin`, `old_alamat`, `old_hp`, `new_nim`, `new_nama`, `new_jenis_kelamin`, `new_alamat`, `new_hp`) VALUES
('Insert data ke tabel, id = 1', '2019-10-28 07:14:34', 'root@localhost', '', '', '', '', '', '161240000500', 'Damas Fahmi Assena', 'Laki-laki', 'Pengkol-Jepara', '08988418922'),
('Insert data ke tabel, id = 2', '2019-10-28 07:14:34', 'root@localhost', '', '', '', '', '', '161240000501', 'Rahma Nur Fadlila', 'Perempuan', 'Mantingan-Jepara', '089888999222'),
('Insert data ke tabel, id = 3', '2019-10-28 07:14:34', 'root@localhost', '', '', '', '', '', '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat - Jepara', '081225666777'),
('Insert data ke tabel, id = 4', '2019-10-28 07:14:34', 'root@localhost', '', '', '', '', '', '161240000512', 'Widi Asstuti', 'Perempuan', 'Bangsri - Jepara', '087888111333'),
('Insert data ke tabel, id = 5', '2019-10-28 07:14:34', 'root@localhost', '', '', '', '', '', '161240000548', 'Ibnu Cholid Erfani', 'Laki-laki', 'Welahan - Jepara', '085666777222'),
('Insert data ke tabel, id = 0', '2019-10-28 07:44:28', 'root@localhost', '', '', '', '', '', '161240000499', 'Samsul Maarif', 'Laki-laki', 'Kudus', '088 555 666 222'),
('Delete data ke tabel, id = 4', '2019-10-28 07:50:08', 'root@localhost', '', '', '', '', '', '', '', '', '', ''),
('Delete data ke tabel, id = 0', '2019-10-28 07:52:23', 'root@localhost', '', '', '', '', '', '', '', '', '', ''),
('Update data ke tabel, id = 3', '2019-10-28 08:08:44', 'root@localhost', '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat - Jepara', '081225666777', '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat - Jepara', '089 888 777 666'),
('Update data ke tabel, id = 3', '2019-10-28 08:22:28', 'root@localhost', '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat - Jepara', '089 888 777 666', '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat', '088666111666'),
('Insert data ke tabel, id = 0', '2019-11-06 10:25:29', 'root@localhost', '', '', '', '', '', '16124', 'gh', 'gh', 'ghf', 'fgh'),
('Insert data ke tabel, id = 10', '2019-11-06 10:26:22', 'root@localhost', '', '', '', '', '', '161245', '90', 'p', 'ppi', 'ipo');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `tanggal_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `harga`, `deskripsi_produk`, `tanggal_post`) VALUES
(1, 'Meja AsPEN', 1, 1500000, 'Terbuat kayu jati A', '2019-12-09'),
(2, 'Dining Chair', 2, 90000, 'Kursi Minimalis', '2019-12-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
