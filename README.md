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