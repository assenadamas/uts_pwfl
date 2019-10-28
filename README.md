# Hasil UTS Pemrograman Web Framework Lanjut

<img src="_db/assenadamas.png">

# ===> Pembuatan Database :
CREATE DATABASE IF NOT EXISTS `pwfl_uts`;

# ===> Pembuatan Tabel :
USE `pwfl_uts`;<br><br>

CREATE TABLE `data_mahasiswa` (<br>
  `id` int(11) NOT NULL,<br>
  `nim` varchar(50) NOT NULL,<br>
  `nama` varchar(100) NOT NULL,<br>
  `jenis_kelamin` varchar(10) NOT NULL,<br>
  `alamat` text NOT NULL,<br>
  `hp` varchar(25) NOT NULL,<br>
  PRIMARY KEY (`id`)<br>
) ENGINE=InnoDB DEFAULT CHARSET=utf8;<br><br>

CREATE TABLE `log` (<br>
  `ket` text NOT NULL,<br>
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,<br>
  `user` varchar(50) NOT NULL DEFAULT '',<br>
  `old_nim` varchar(25) NOT NULL DEFAULT '',<br>
  `old_nama` varchar(25) NOT NULL DEFAULT '',<br>
  `old_jenis_kelamin` varchar(25) NOT NULL DEFAULT '',<br>
  `old_alamat` varchar(25) NOT NULL DEFAULT '',<br>
  `old_hp` varchar(25) NOT NULL DEFAULT '',<br>
  `new_nim` varchar(25) NOT NULL DEFAULT '',<br>
  `new_nama` varchar(25) NOT NULL DEFAULT '',<br>
  `new_jenis_kelamin` varchar(25) NOT NULL DEFAULT '',<br>
  `new_alamat` varchar(25) NOT NULL DEFAULT '',<br>
  `new_hp` varchar(25) NOT NULL DEFAULT ''<br>
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

# ===> Penambahan data :
INSERT INTO `data_mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `hp`) VALUES<br>
(1, '161240000500', 'Damas Fahmi Assena', 'Laki-laki', 'Pengkol-Jepara', '08988418922'),<br>
(2, '161240000501', 'Rahma Nur Fadlila', 'Perempuan', 'Mantingan-Jepara', '089888999222'),<br>
(3, '161240000498', 'Durrotul Awaliyah', 'Perempuan', 'Kaliyamat - Jepara', '081225666777'),<br>
(4, '161240000512', 'Widi Asstuti', 'Perempuan', 'Bangsri - Jepara', '087888111333'),<br>
(5, '161240000548', 'Ibnu Cholid Erfani', 'Laki-laki', 'Welahan - Jepara', '085666777222');

# ===> View database :
SELECT * FROM data_mahasiswa;<br>
SELECT nim, nama, alamat FROM data_mahasiswa;

# ===> Trigger database :
DELIMITER $$<br>
CREATE TRIGGER `after_insert` AFTER INSERT ON `data_mahasiswa` FOR EACH ROW BEGIN<br>
  INSERT INTO LOG (ket, user, new_nim, new_nama, new_jenis_kelamin, new_alamat, new_hp)<br>
  VALUES (CONCAT('Insert data ke tabel contoh, id = ', NEW.id), USER(), NEW.nim, NEW.nama, NEW.jenis_kelamin, NEW.alamat, NEW.hp);<br>
END<br>
$$<br>
DELIMITER ;<br>
DELIMITER $$<br>
CREATE TRIGGER `after_update` AFTER UPDATE ON `data_mahasiswa` FOR EACH ROW BEGIN<br>
  INSERT INTO LOG (ket, USER, new_nim, new_nama, new_jenis_kelamin, new_alamat, new_hp, old_nim, old_nama, old_jenis_kelamin, old_alamat, old_hp)<br>
  VALUES (CONCAT('Update data ke tabel contoh, id = ', NEW.id), USER(), NEW.nim, NEW.nama, NEW.jenis_kelamin, NEW.alamat, NEW.hp, old.nim, old.nama, old.jenis_kelamin, old.alamat, old.hp);<br>
END<br>
$$<br>
DELIMITER ;<br>
DELIMITER $$<br>
CREATE TRIGGER `before_delete` BEFORE DELETE ON `data_mahasiswa` FOR EACH ROW BEGIN<br>
  INSERT INTO LOG (ket, USER, old_nim, old_nama, old_jenis_kelamin, old_alamat, old_hp)<br>
  VALUES (CONCAT('Delete data ke tabel contoh, id = ', OLD.id), USER(), old_nim, old_nama, old_jenis_kelamin, old_alamat, old_hp);<br>
END<br>
$$<br>
DELIMITER ;