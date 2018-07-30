-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for imanagem_asm
CREATE DATABASE IF NOT EXISTS `imanagem_asm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `imanagem_asm`;

-- Dumping structure for table imanagem_asm.dbmwebconfig
DROP TABLE IF EXISTS `dbmwebconfig`;
CREATE TABLE IF NOT EXISTS `dbmwebconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(100) DEFAULT NULL,
  `weburl` varchar(100) DEFAULT NULL,
  `webtitle` varchar(100) DEFAULT NULL,
  `webmetakey` varchar(250) DEFAULT NULL,
  `webmetadesc` varchar(250) DEFAULT NULL,
  `webfavicon` varchar(50) DEFAULT NULL,
  `weblogo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.dbmwebconfig: ~0 rows (approximately)
DELETE FROM `dbmwebconfig`;
/*!40000 ALTER TABLE `dbmwebconfig` DISABLE KEYS */;
INSERT INTO `dbmwebconfig` (`id`, `webname`, `weburl`, `webtitle`, `webmetakey`, `webmetadesc`, `webfavicon`, `weblogo`) VALUES
	(1, 'I-Management Assessment', 'http://192.168.1.10/imi', 'I-Management', '', '', 'img/favicon/favicon.ico', 'img/logo.png');
/*!40000 ALTER TABLE `dbmwebconfig` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_answ
DROP TABLE IF EXISTS `db_answ`;
CREATE TABLE IF NOT EXISTS `db_answ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answ_type` int(11) DEFAULT NULL,
  `answ` varchar(50) DEFAULT NULL,
  `answ_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_answ: ~7 rows (approximately)
DELETE FROM `db_answ`;
/*!40000 ALTER TABLE `db_answ` DISABLE KEYS */;
INSERT INTO `db_answ` (`id`, `answ_type`, `answ`, `answ_pos`) VALUES
	(1, 1, 'Selalu', 1),
	(2, 1, 'Kadang-Kadang', 2),
	(3, 1, 'Jarang', 3),
	(4, 2, 'Tidak Pernah', 1),
	(5, 2, 'Hampir Tidak Pernah', 2),
	(6, 2, 'Kadang Kadang', 3),
	(7, 2, 'Sering', 4),
	(8, 2, 'Sangat Sering', 5);
/*!40000 ALTER TABLE `db_answ` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_login
DROP TABLE IF EXISTS `db_login`;
CREATE TABLE IF NOT EXISTS `db_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season_name` text,
  `pwd_view` varchar(50) DEFAULT NULL,
  `pwd_key` varchar(50) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `timestart` datetime DEFAULT NULL,
  `timeend` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_login: ~0 rows (approximately)
DELETE FROM `db_login`;
/*!40000 ALTER TABLE `db_login` DISABLE KEYS */;
INSERT INTO `db_login` (`id`, `season_name`, `pwd_view`, `pwd_key`, `test_id`, `timestart`, `timeend`) VALUES
	(1, 'Mayapada LDP 2 Batch 12', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 5, NULL, NULL);
/*!40000 ALTER TABLE `db_login` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_point
DROP TABLE IF EXISTS `db_point`;
CREATE TABLE IF NOT EXISTS `db_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `qst_page` int(11) DEFAULT NULL,
  `answ_id` int(11) DEFAULT NULL,
  `ans_point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_point: ~204 rows (approximately)
DELETE FROM `db_point`;
/*!40000 ALTER TABLE `db_point` DISABLE KEYS */;
INSERT INTO `db_point` (`id`, `test_id`, `qst_page`, `answ_id`, `ans_point`) VALUES
	(1, 5, 1, 1, 1),
	(2, 5, 1, 2, 2),
	(3, 5, 1, 3, 3),
	(4, 5, 2, 1, 3),
	(5, 5, 2, 2, 2),
	(6, 5, 2, 3, 1),
	(7, 5, 3, 1, 1),
	(8, 5, 3, 2, 2),
	(9, 5, 3, 3, 3),
	(10, 5, 4, 1, 1),
	(11, 5, 4, 2, 2),
	(12, 5, 4, 3, 3),
	(13, 5, 5, 1, 1),
	(14, 5, 5, 2, 2),
	(15, 5, 5, 3, 3),
	(16, 5, 6, 1, 3),
	(17, 5, 6, 2, 2),
	(18, 5, 6, 3, 1),
	(19, 5, 7, 1, 3),
	(20, 5, 7, 2, 2),
	(21, 5, 7, 3, 1),
	(22, 5, 8, 1, 3),
	(23, 5, 8, 2, 2),
	(24, 5, 8, 3, 1),
	(25, 6, 1, 4, 1),
	(26, 6, 1, 5, 2),
	(27, 6, 1, 6, 3),
	(28, 6, 1, 7, 4),
	(29, 6, 1, 8, 5),
	(30, 6, 2, 4, 1),
	(31, 6, 2, 5, 2),
	(32, 6, 2, 6, 3),
	(33, 6, 2, 7, 4),
	(34, 6, 2, 8, 5),
	(35, 6, 3, 4, 5),
	(36, 6, 3, 5, 4),
	(37, 6, 3, 6, 3),
	(38, 6, 3, 7, 2),
	(39, 6, 3, 8, 1),
	(40, 6, 4, 4, 1),
	(41, 6, 4, 5, 2),
	(42, 6, 4, 6, 3),
	(43, 6, 4, 7, 4),
	(44, 6, 4, 8, 5),
	(45, 6, 5, 4, 1),
	(46, 6, 5, 5, 2),
	(47, 6, 5, 6, 3),
	(48, 6, 5, 7, 4),
	(49, 6, 5, 8, 5),
	(50, 6, 6, 4, 1),
	(51, 6, 6, 5, 2),
	(52, 6, 6, 6, 3),
	(53, 6, 6, 7, 4),
	(54, 6, 6, 8, 5),
	(55, 6, 7, 4, 1),
	(56, 6, 7, 5, 2),
	(57, 6, 7, 6, 3),
	(58, 6, 7, 7, 4),
	(59, 6, 7, 8, 5),
	(60, 6, 8, 4, 1),
	(61, 6, 8, 5, 2),
	(62, 6, 8, 6, 3),
	(63, 6, 8, 7, 4),
	(64, 6, 8, 8, 5),
	(65, 6, 9, 4, 5),
	(66, 6, 9, 5, 4),
	(67, 6, 9, 6, 3),
	(68, 6, 9, 7, 2),
	(69, 6, 9, 8, 1),
	(70, 6, 10, 4, 1),
	(71, 6, 10, 5, 2),
	(72, 6, 10, 6, 3),
	(73, 6, 10, 7, 4),
	(74, 6, 10, 8, 5),
	(75, 6, 11, 4, 1),
	(76, 6, 11, 5, 2),
	(77, 6, 11, 6, 3),
	(78, 6, 11, 7, 4),
	(79, 6, 11, 8, 5),
	(80, 6, 12, 4, 1),
	(81, 6, 12, 5, 2),
	(82, 6, 12, 6, 3),
	(83, 6, 12, 7, 4),
	(84, 6, 12, 8, 5),
	(85, 6, 13, 4, 1),
	(86, 6, 13, 5, 2),
	(87, 6, 13, 6, 3),
	(88, 6, 13, 7, 4),
	(89, 6, 13, 8, 5),
	(90, 6, 14, 4, 1),
	(91, 6, 14, 5, 2),
	(92, 6, 14, 6, 3),
	(93, 6, 14, 7, 4),
	(94, 6, 14, 8, 5),
	(95, 6, 15, 4, 1),
	(96, 6, 15, 5, 2),
	(97, 6, 15, 6, 3),
	(98, 6, 15, 7, 4),
	(99, 6, 15, 8, 5),
	(100, 6, 16, 4, 1),
	(101, 6, 16, 5, 2),
	(102, 6, 16, 6, 3),
	(103, 6, 16, 7, 4),
	(104, 6, 16, 8, 5),
	(105, 7, 1, 4, 1),
	(106, 7, 1, 5, 2),
	(107, 7, 1, 6, 3),
	(108, 7, 1, 7, 4),
	(109, 7, 1, 8, 5),
	(110, 7, 2, 4, 1),
	(111, 7, 2, 5, 2),
	(112, 7, 2, 6, 3),
	(113, 7, 2, 7, 4),
	(114, 7, 2, 8, 5),
	(115, 7, 3, 4, 1),
	(116, 7, 3, 5, 2),
	(117, 7, 3, 6, 3),
	(118, 7, 3, 7, 4),
	(119, 7, 3, 8, 5),
	(120, 7, 4, 4, 1),
	(121, 7, 4, 5, 2),
	(122, 7, 4, 6, 3),
	(123, 7, 4, 7, 4),
	(124, 7, 4, 8, 5),
	(125, 7, 5, 4, 1),
	(126, 7, 5, 5, 2),
	(127, 7, 5, 6, 3),
	(128, 7, 5, 7, 4),
	(129, 7, 5, 8, 5),
	(130, 7, 6, 4, 1),
	(131, 7, 6, 5, 2),
	(132, 7, 6, 6, 3),
	(133, 7, 6, 7, 4),
	(134, 7, 6, 8, 5),
	(135, 7, 7, 4, 1),
	(136, 7, 7, 5, 2),
	(137, 7, 7, 6, 3),
	(138, 7, 7, 7, 4),
	(139, 7, 7, 8, 5),
	(140, 7, 8, 4, 1),
	(141, 7, 8, 5, 2),
	(142, 7, 8, 6, 3),
	(143, 7, 8, 7, 4),
	(144, 7, 8, 8, 5),
	(145, 7, 9, 4, 1),
	(146, 7, 9, 5, 2),
	(147, 7, 9, 6, 3),
	(148, 7, 9, 7, 4),
	(149, 7, 9, 8, 5),
	(150, 7, 10, 4, 1),
	(151, 7, 10, 5, 2),
	(152, 7, 10, 6, 3),
	(153, 7, 10, 7, 4),
	(154, 7, 10, 8, 5),
	(155, 7, 11, 4, 1),
	(156, 7, 11, 5, 2),
	(157, 7, 11, 6, 3),
	(158, 7, 11, 7, 4),
	(159, 7, 11, 8, 5),
	(160, 7, 12, 4, 1),
	(161, 7, 12, 5, 2),
	(162, 7, 12, 6, 3),
	(163, 7, 12, 7, 4),
	(164, 7, 12, 8, 5),
	(165, 7, 13, 4, 1),
	(166, 7, 13, 5, 2),
	(167, 7, 13, 6, 3),
	(168, 7, 13, 7, 4),
	(169, 7, 13, 8, 5),
	(170, 7, 14, 4, 1),
	(171, 7, 14, 5, 2),
	(172, 7, 14, 6, 3),
	(173, 7, 14, 7, 4),
	(174, 7, 14, 8, 5),
	(175, 7, 15, 4, 1),
	(176, 7, 15, 5, 2),
	(177, 7, 15, 6, 3),
	(178, 7, 15, 7, 4),
	(179, 7, 15, 8, 5),
	(180, 7, 16, 4, 1),
	(181, 7, 16, 5, 2),
	(182, 7, 16, 6, 3),
	(183, 7, 16, 7, 4),
	(184, 7, 16, 8, 5),
	(185, 7, 17, 4, 1),
	(186, 7, 17, 5, 2),
	(187, 7, 17, 6, 3),
	(188, 7, 17, 7, 4),
	(189, 7, 17, 8, 5),
	(190, 7, 18, 4, 1),
	(191, 7, 18, 5, 2),
	(192, 7, 18, 6, 3),
	(193, 7, 18, 7, 4),
	(194, 7, 18, 8, 5),
	(195, 7, 19, 4, 1),
	(196, 7, 19, 5, 2),
	(197, 7, 19, 6, 3),
	(198, 7, 19, 7, 4),
	(199, 7, 19, 8, 5),
	(200, 7, 20, 4, 1),
	(201, 7, 20, 5, 2),
	(202, 7, 20, 6, 3),
	(203, 7, 20, 7, 4),
	(204, 7, 20, 8, 5);
/*!40000 ALTER TABLE `db_point` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_qst
DROP TABLE IF EXISTS `db_qst`;
CREATE TABLE IF NOT EXISTS `db_qst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL DEFAULT '0',
  `qst` text,
  `ans_type` int(11) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_qst: ~44 rows (approximately)
DELETE FROM `db_qst`;
/*!40000 ALTER TABLE `db_qst` DISABLE KEYS */;
INSERT INTO `db_qst` (`id`, `test_id`, `qst`, `ans_type`, `page`, `created_by`, `created_date`) VALUES
	(1, 5, 'Saya menjelaskan cara pelaksanaan tugas yang persis sama dengan cara yang saya gunakan', 1, 1, 1, '2018-07-25 17:02:38'),
	(2, 5, 'Saya menetapkan hasil akhir yang saya harapkan', 1, 2, 1, '2018-07-25 20:36:20'),
	(3, 5, 'Saya merasa kehilangan kontrol', 1, 3, 1, '2018-07-25 21:22:18'),
	(4, 5, 'Saya memperkirakan bahwa saya sendiri akan mengurangi pekerjaan tersebut', 1, 4, 1, '2018-07-25 21:22:29'),
	(5, 5, 'Saya hanya mendelegasikan tugas rutin atau tugas sederhana', 1, 5, 1, '2018-07-25 21:23:02'),
	(6, 5, 'Saya menjelaskan kepada anggota tentang batas wewenang mereka', 1, 6, 1, '2018-07-25 21:23:36'),
	(7, 5, 'Saya menentukan batas waktu pembuatan laporan perkembangan bersama anggota', 1, 7, 1, '2018-07-25 21:23:52'),
	(8, 5, 'Saya memberitahukan kepada orang orang yang terlibat dan terpengaruh dalam pendelegasian tugas tersebut', 1, 8, 1, '2018-07-25 21:24:50'),
	(9, 6, 'Saya yakin bila saya menunjukkan standard perilaku tertentu dan berharap tim juga melakukannya pada saya', 2, 1, 1, '2018-07-30 01:22:07'),
	(10, 6, 'Ketika memberikan feedback, saya menunggu sampai mendapatkan cukup bukti dari berbagai kejadian perilaku terlebih dahulu untuk memberikan masukan yang tepat', 2, 2, 1, '2018-07-30 01:26:59'),
	(11, 6, 'Saya paling suka hanya memaksakan ide saya sendiri tapi lebih suka ikut memasukkan ide saya berbaur dengan ide orang lain ', 2, 3, 1, '2018-07-30 01:26:59'),
	(12, 6, 'Saya mengucapkan terima kasih kepada orang ditempat dimana saya bekerja', 2, 4, 1, '2018-07-30 01:26:59'),
	(13, 6, 'Selama masa konflik saya berfikir bagaimana caranya tetap menjaga hubungan namun kebutuhan saya tetap dapat diterima', 2, 5, 1, '2018-07-30 01:26:59'),
	(14, 6, 'Ketika tengah berbicara dengan seseorang, saya jarang memotong pembicaraan dengan mengungkapkan rangkumannya sebelum mereka selesai berbicara', 2, 6, 1, '2018-07-30 01:26:59'),
	(15, 6, 'Saya menemukan diri saya ditempat kerja dan melakukan apa yang perlu dilakukan agar saya maju', 2, 7, 1, '2018-07-30 01:26:59'),
	(16, 6, 'Saya memikirkan bagaimana orang lain terhindar dari mendapatkan persoalan atau isue', 2, 8, 1, '2018-07-30 01:26:59'),
	(17, 6, 'Saya cepat berbicara, tidak sabar bahkan jarang berpikir dahulu, karena tahu kesimpulannya.', 2, 9, 1, '2018-07-30 01:27:00'),
	(18, 6, 'Saya bekerja sama dengan orang lain untuk menyelesaikan persoalan dengan menggunakan teknik2 penyelesaian masalah yang ada', 2, 10, 1, '2018-07-30 01:27:00'),
	(19, 6, 'Saya menyebabkan banyak hal baik ketika berupaya memecahkan masalah', 2, 11, 1, '2018-07-30 01:27:00'),
	(20, 6, 'Ketika seseorang memberikan feedback, saya selalu meminta contohnya agar saya lebih mengerti duduk persoalannya', 2, 12, 1, '2018-07-30 01:27:00'),
	(21, 6, 'Saya memperhatikan bahasa tubuh orang lain', 2, 13, 1, '2018-07-30 01:27:00'),
	(22, 6, 'Ketika perjanjian tim menjadi penting, saya memberikan ide jalan keluar dan berupaya meyakinkan yang lain bahwa ide tersebut baik adanya', 2, 14, 1, '2018-07-30 01:27:00'),
	(23, 6, 'Saya mempelajari kebutuhan tamu-tamu saya, memutuskan apa yang akan saya katakan dan bagaimana cara mengatakannya ', 2, 15, 1, '2018-07-30 01:27:00'),
	(24, 6, 'Saya meyakinkan orang lain perihal kontribusi saya membawa dampak positif', 2, 16, 1, '2018-07-30 01:27:00'),
	(25, 7, 'Ketika saya mempunyai masalah, saya akan mencoba menyelesaikannya sendiri sebelum saya bertanya kepada atasan saya langkah yang harus dilakukan', 2, 1, 1, '2018-07-30 08:43:17'),
	(26, 7, 'Ketika saya mendelegasikan pekerjaan saya, saya akan mendelegasikannya kepada orang yang berkompeten bukan kepada orang yang punya banyak waktunya dalam tim', 2, 2, 1, '2018-07-30 08:43:17'),
	(27, 7, 'Ketika ada perilaku negatif dalam layanan, saya memilih untuk langsung membicarakannya dengan individu bersangkutan. ', 2, 3, 1, '2018-07-30 08:43:17'),
	(28, 7, 'Saya lebih senang mengambil keputusan berdasarkan analisa yang berhati hati daripada dengan mengandalkan naluri keberanian semata', 2, 4, 1, '2018-07-30 08:43:17'),
	(29, 7, 'Saya mempercayakan kelompok saya menemukan hal hal terbaik dalam bekerja bersama sama', 2, 5, 1, '2018-07-30 08:43:17'),
	(30, 7, 'Saya langsung mengambil tindakan mendisiplinkan anggota kelompok atas perilaku mereka yang negatif, dan memberikan mereka kesempatan untuk merubah diri', 2, 6, 1, '2018-07-30 08:43:17'),
	(31, 7, 'Keahlian antar personal adalah keahlian yang saya butuhkan untuk menjadi manager yang baik melebihi keahlian teknis', 2, 7, 1, '2018-07-30 08:43:17'),
	(32, 7, 'Saya meluangkan waktu untuk berbicara kepada kelompok saya akan hal hal yang baik dan hal hal yang perlu ditingkatkan', 2, 8, 1, '2018-07-30 08:43:17'),
	(33, 7, 'Dalam rapat saya mengambil peran sebagai moderator atau fasilitator bila diperlukan, dan membantu kelompok saya untuk mendapatkan pengertian dari suatu topik permasalahan agar mendapatkan kesepakatan yang baik', 2, 9, 1, '2018-07-30 08:43:17'),
	(34, 7, 'Saya sangat mengerti jalannya proses bisnis didalam department saya, dan saya selalu berupaya mencari solusi terhadap semua permasalahan yang ada', 2, 10, 1, '2018-07-30 08:43:17'),
	(35, 7, 'Ketika membentuk suatu tim, saya mempertimbangkan keahlian keahlian yang saya butuhkan dan lalu saya akan mencari orang orang yang sesuai kriteria yang saya perlukan', 2, 11, 1, '2018-07-30 08:43:17'),
	(36, 7, 'Saya akan berusaha menghindari konflik didalam tim saya', 2, 12, 1, '2018-07-30 08:43:17'),
	(37, 7, 'Saya mencoba memotivasi anggota kelompok saya dengan beragam pendekatan sesuai kebutuhan, tipe kepribadian dan karakter mereka', 2, 13, 1, '2018-07-30 08:43:17'),
	(38, 7, 'Ketika tim saya membuat suatu kesalahan besar, saya tidak akan memberitahu atasan apa yang terjadi dan mengambil hal itu sebagai suatu pelajaran yang berharga', 2, 14, 1, '2018-07-30 08:43:17'),
	(39, 7, 'Ketika konflik terjadi dalam tim yang baru, saya menerima hal tersebut sebagai proses pengembangan sebuah tim', 2, 15, 1, '2018-07-30 08:43:18'),
	(40, 7, 'Saya membicarakan kepada anggota kelompok setiap goal pribadi mereka dan mengkaitkannya dengan goal bisnis/pekerjaan', 2, 16, 1, '2018-07-30 08:43:18'),
	(41, 7, 'Jika membentuk suatu kelompok bersama, saya tidak hanya memilih orang2 dengan kepribadian, umur yang sama, lama bekerja di perusahaan dan beberapa karakteristik yang lain', 2, 17, 1, '2018-07-30 08:43:18'),
	(42, 7, 'Saya pikir pernyataan "Jika anda mau sebuah pekerjaan berhasil anda harus mendahulukan kelompok" adalah hal yang benar', 2, 18, 1, '2018-07-30 08:43:18'),
	(43, 7, 'Saya membicara kepada kelompok sebagai pribadi untuk memastikan mereka senang dan produktif', 2, 19, 1, '2018-07-30 08:43:18'),
	(44, 7, 'Saya selalu menginformasikan kpd kelompok spy mereka mengetahui hal hal yang terjadi dalam suatu organisasi', 2, 20, 1, '2018-07-30 08:43:18');
/*!40000 ALTER TABLE `db_qst` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_result
DROP TABLE IF EXISTS `db_result`;
CREATE TABLE IF NOT EXISTS `db_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `qst_id` int(11) DEFAULT NULL,
  `ans_id` int(11) DEFAULT NULL,
  `ans_point` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_result: ~44 rows (approximately)
DELETE FROM `db_result`;
/*!40000 ALTER TABLE `db_result` DISABLE KEYS */;
INSERT INTO `db_result` (`id`, `name`, `test_id`, `qst_id`, `ans_id`, `ans_point`, `created_date`) VALUES
	(1, 3, 5, 1, 1, 1, '2018-07-30 09:18:21'),
	(2, 3, 5, 2, 2, 2, '2018-07-30 09:18:21'),
	(3, 3, 5, 3, 3, 3, '2018-07-30 09:18:21'),
	(4, 3, 5, 4, 1, 1, '2018-07-30 09:18:21'),
	(5, 3, 5, 5, 2, 2, '2018-07-30 09:18:21'),
	(6, 3, 5, 6, 2, 2, '2018-07-30 09:18:21'),
	(7, 3, 5, 7, 3, 1, '2018-07-30 09:18:21'),
	(8, 3, 5, 8, 1, 3, '2018-07-30 09:18:21'),
	(9, 3, 6, 1, 4, 1, '2018-07-30 09:18:48'),
	(10, 3, 6, 2, 6, 3, '2018-07-30 09:18:48'),
	(11, 3, 6, 3, 7, 2, '2018-07-30 09:18:49'),
	(12, 3, 6, 4, 5, 2, '2018-07-30 09:18:49'),
	(13, 3, 6, 5, 6, 3, '2018-07-30 09:18:49'),
	(14, 3, 6, 6, 6, 3, '2018-07-30 09:18:49'),
	(15, 3, 6, 7, 6, 3, '2018-07-30 09:18:49'),
	(16, 3, 6, 8, 8, 5, '2018-07-30 09:18:49'),
	(17, 3, 6, 9, 7, 2, '2018-07-30 09:18:49'),
	(18, 3, 6, 10, 6, 3, '2018-07-30 09:18:49'),
	(19, 3, 6, 11, 6, 3, '2018-07-30 09:18:49'),
	(20, 3, 6, 12, 6, 3, '2018-07-30 09:18:49'),
	(21, 3, 6, 13, 6, 3, '2018-07-30 09:18:49'),
	(22, 3, 6, 14, 6, 3, '2018-07-30 09:18:49'),
	(23, 3, 6, 15, 7, 4, '2018-07-30 09:18:49'),
	(24, 3, 6, 16, 6, 3, '2018-07-30 09:18:49'),
	(25, 3, 7, 1, 7, 4, '2018-07-30 09:19:22'),
	(26, 3, 7, 2, 6, 3, '2018-07-30 09:19:23'),
	(27, 3, 7, 3, 6, 3, '2018-07-30 09:19:23'),
	(28, 3, 7, 4, 5, 2, '2018-07-30 09:19:23'),
	(29, 3, 7, 5, 5, 2, '2018-07-30 09:19:23'),
	(30, 3, 7, 6, 6, 3, '2018-07-30 09:19:23'),
	(31, 3, 7, 7, 8, 5, '2018-07-30 09:19:23'),
	(32, 3, 7, 8, 8, 5, '2018-07-30 09:19:23'),
	(33, 3, 7, 9, 8, 5, '2018-07-30 09:19:23'),
	(34, 3, 7, 10, 8, 5, '2018-07-30 09:19:23'),
	(35, 3, 7, 11, 8, 5, '2018-07-30 09:19:23'),
	(36, 3, 7, 12, 8, 5, '2018-07-30 09:19:23'),
	(37, 3, 7, 13, 8, 5, '2018-07-30 09:19:23'),
	(38, 3, 7, 14, 8, 5, '2018-07-30 09:19:23'),
	(39, 3, 7, 15, 8, 5, '2018-07-30 09:19:23'),
	(40, 3, 7, 16, 8, 5, '2018-07-30 09:19:23'),
	(41, 3, 7, 17, 8, 5, '2018-07-30 09:19:23'),
	(42, 3, 7, 18, 8, 5, '2018-07-30 09:19:23'),
	(43, 3, 7, 19, 8, 5, '2018-07-30 09:19:23'),
	(44, 3, 7, 20, 8, 5, '2018-07-30 09:19:23');
/*!40000 ALTER TABLE `db_result` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_resultinfo
DROP TABLE IF EXISTS `db_resultinfo`;
CREATE TABLE IF NOT EXISTS `db_resultinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `point_start` int(11) DEFAULT NULL,
  `point_end` int(11) DEFAULT NULL,
  `result_info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_resultinfo: ~8 rows (approximately)
DELETE FROM `db_resultinfo`;
/*!40000 ALTER TABLE `db_resultinfo` DISABLE KEYS */;
INSERT INTO `db_resultinfo` (`id`, `test_id`, `point_start`, `point_end`, `result_info`) VALUES
	(1, 5, 20, 25, 'Ketrampilan yang sangat tinggi'),
	(2, 5, 15, 19, 'Masih ada kesempatan untuk perbaikan'),
	(3, 5, 0, 15, 'Membutuhkan banyak perbaikan'),
	(4, 6, 16, 36, 'People Skill anda belum dilakukan dengan baik. Hal'),
	(5, 6, 37, 60, 'Anda dikenal telah bekerja dengan cukup baik. Masi'),
	(6, 6, 61, 80, 'People Skill anda sudah baik, terus tingkatkan ski'),
	(7, 7, 20, 50, 'Tingkatkan skill ini jika ingin menjadi pemimpin y'),
	(8, 7, 51, 80, 'Anda dalam proses menjadi manajer yang baik, karen'),
	(9, 7, 81, 100, 'Anda sudah baik me-manage tim anda, konsentrasi la');
/*!40000 ALTER TABLE `db_resultinfo` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_testlist
DROP TABLE IF EXISTS `db_testlist`;
CREATE TABLE IF NOT EXISTS `db_testlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwd_id` int(11) DEFAULT NULL,
  `qst_id` int(11) DEFAULT NULL,
  `qst_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_testlist: ~2 rows (approximately)
DELETE FROM `db_testlist`;
/*!40000 ALTER TABLE `db_testlist` DISABLE KEYS */;
INSERT INTO `db_testlist` (`id`, `pwd_id`, `qst_id`, `qst_pos`) VALUES
	(1, 1, 5, 1),
	(2, 1, 6, 2),
	(3, 1, 7, 3);
/*!40000 ALTER TABLE `db_testlist` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_testname
DROP TABLE IF EXISTS `db_testname`;
CREATE TABLE IF NOT EXISTS `db_testname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testname` varchar(150) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_testname: ~6 rows (approximately)
DELETE FROM `db_testname`;
/*!40000 ALTER TABLE `db_testname` DISABLE KEYS */;
INSERT INTO `db_testname` (`id`, `testname`, `created_by`, `created_date`) VALUES
	(1, 'Stress Level', NULL, '2018-07-30 01:17:17'),
	(2, 'Tingkat Kepercayaan Diri Dalam TEAMWORK', NULL, '2018-07-30 01:17:29'),
	(3, '??', NULL, '2018-07-30 01:17:35'),
	(4, '??', NULL, '2018-07-30 01:17:39'),
	(5, 'Kemampuan Pendelegasian', NULL, '2018-07-30 01:17:57'),
	(6, ' Keahlian People Skill', NULL, '2018-07-30 01:18:08'),
	(7, 'Keahlian Management Anda (Leadership)', NULL, '2018-07-30 01:18:16');
/*!40000 ALTER TABLE `db_testname` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_usertest
DROP TABLE IF EXISTS `db_usertest`;
CREATE TABLE IF NOT EXISTS `db_usertest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(250) NOT NULL DEFAULT '0',
  `uemail` varchar(250) NOT NULL DEFAULT '0',
  `logsession` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_usertest: ~3 rows (approximately)
DELETE FROM `db_usertest`;
/*!40000 ALTER TABLE `db_usertest` DISABLE KEYS */;
INSERT INTO `db_usertest` (`id`, `uname`, `uemail`, `logsession`, `created_date`) VALUES
	(1, '0', '0', 1, '2018-07-30 08:33:06'),
	(2, 'jonathan', '0', 1, '2018-07-30 08:34:02'),
	(3, 'jonathan', '0', 1, '2018-07-30 09:18:07');
/*!40000 ALTER TABLE `db_usertest` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
