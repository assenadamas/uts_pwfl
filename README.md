# uts_pwfl
Jawaban UTS - Pemrograman Web Framework Lanjut

===> Pembuatan Database :
CREATE DATABASE IF NOT EXISTS `pwfl_uts`;

===> Pembuatan Tabel :
USE `pwfl_uts`;

CREATE TABLE `data_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

===> Penambahan data  :
INSERT INTO `data_mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `hp`) VALUES
(1, '161240000500', 'Damas Fahmi Assena', 'Laki-laki', 'Pengkol-Jepara', '08988418922'),
(2, '161240000501', 'Rahma Nur Fadlila', 'Perempuan', 'Mantingan-Jepara', '089888999222'),
(3, '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat - Jepara', '081225666777'),
(4, '161240000512', 'Widi Asstuti', 'Perempuan', 'Bangsri - Jepara', '087888111333'),
(5, '161240000548', 'Ibnu Cholid Erfani', 'Laki-laki', 'Welahan - Jepara', '085666777222');