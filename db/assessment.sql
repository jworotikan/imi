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

-- Dumping data for table imanagem_asm.db_answ: ~8 rows (approximately)
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
	(1, 'Batch 1', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 5, NULL, NULL);
/*!40000 ALTER TABLE `db_login` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_point
DROP TABLE IF EXISTS `db_point`;
CREATE TABLE IF NOT EXISTS `db_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `qst_id` int(11) DEFAULT NULL,
  `answ_id` int(11) DEFAULT NULL,
  `ans_point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_point: ~104 rows (approximately)
DELETE FROM `db_point`;
/*!40000 ALTER TABLE `db_point` DISABLE KEYS */;
INSERT INTO `db_point` (`id`, `test_id`, `qst_id`, `answ_id`, `ans_point`) VALUES
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
	(25, 6, 9, 4, 1),
	(26, 6, 9, 5, 2),
	(27, 6, 9, 6, 3),
	(28, 6, 9, 7, 4),
	(29, 6, 9, 8, 5),
	(30, 6, 10, 4, 1),
	(31, 6, 10, 5, 2),
	(32, 6, 10, 6, 3),
	(33, 6, 10, 7, 4),
	(34, 6, 10, 8, 5),
	(35, 6, 11, 4, 5),
	(36, 6, 11, 5, 4),
	(37, 6, 11, 6, 3),
	(38, 6, 11, 7, 2),
	(39, 6, 11, 8, 1),
	(40, 6, 12, 4, 1),
	(41, 6, 12, 5, 2),
	(42, 6, 12, 6, 3),
	(43, 6, 12, 7, 4),
	(44, 6, 12, 8, 5),
	(45, 6, 13, 4, 1),
	(46, 6, 13, 5, 2),
	(47, 6, 13, 6, 3),
	(48, 6, 13, 7, 4),
	(49, 6, 13, 8, 5),
	(50, 6, 14, 4, 1),
	(51, 6, 14, 5, 2),
	(52, 6, 14, 6, 3),
	(53, 6, 14, 7, 4),
	(54, 6, 14, 8, 5),
	(55, 6, 15, 4, 1),
	(56, 6, 15, 5, 2),
	(57, 6, 15, 6, 3),
	(58, 6, 15, 7, 4),
	(59, 6, 15, 8, 5),
	(60, 6, 16, 4, 1),
	(61, 6, 16, 5, 2),
	(62, 6, 16, 6, 3),
	(63, 6, 16, 7, 4),
	(64, 6, 16, 8, 5),
	(65, 6, 17, 4, 5),
	(66, 6, 17, 5, 4),
	(67, 6, 17, 6, 3),
	(68, 6, 17, 7, 2),
	(69, 6, 17, 8, 1),
	(70, 6, 18, 4, 1),
	(71, 6, 18, 5, 2),
	(72, 6, 18, 6, 3),
	(73, 6, 18, 7, 4),
	(74, 6, 18, 8, 5),
	(75, 6, 19, 4, 1),
	(76, 6, 19, 5, 2),
	(77, 6, 19, 6, 3),
	(78, 6, 19, 7, 4),
	(79, 6, 19, 8, 5),
	(80, 6, 20, 4, 1),
	(81, 6, 20, 5, 2),
	(82, 6, 20, 6, 3),
	(83, 6, 20, 7, 4),
	(84, 6, 20, 8, 5),
	(85, 6, 21, 4, 1),
	(86, 6, 21, 5, 2),
	(87, 6, 21, 6, 3),
	(88, 6, 21, 7, 4),
	(89, 6, 21, 8, 5),
	(90, 6, 22, 4, 1),
	(91, 6, 22, 5, 2),
	(92, 6, 22, 6, 3),
	(93, 6, 22, 7, 4),
	(94, 6, 22, 8, 5),
	(95, 6, 23, 4, 1),
	(96, 6, 23, 5, 2),
	(97, 6, 23, 6, 3),
	(98, 6, 23, 7, 4),
	(99, 6, 23, 8, 5),
	(100, 6, 24, 4, 1),
	(101, 6, 24, 5, 2),
	(102, 6, 24, 6, 3),
	(103, 6, 24, 7, 4),
	(104, 6, 24, 8, 5);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_qst: ~24 rows (approximately)
DELETE FROM `db_qst`;
/*!40000 ALTER TABLE `db_qst` DISABLE KEYS */;
INSERT INTO `db_qst` (`id`, `test_id`, `qst`, `ans_type`, `page`, `created_by`, `created_date`) VALUES
	(1, 5, 'Saya menjelaskan cara pelaksanaan tugas yang persis sama dengan cara yang saya gunakan', 1, 1, NULL, '2018-07-25 17:02:38'),
	(2, 5, 'Saya menetapkan hasil akhir yang saya harapkan', 1, 2, NULL, '2018-07-25 20:36:20'),
	(3, 5, 'Saya merasa kehilangan kontrol', 1, 3, NULL, '2018-07-25 21:22:18'),
	(4, 5, 'Saya memperkirakan bahwa saya sendiri akan mengurangi pekerjaan tersebut', 1, 4, NULL, '2018-07-25 21:22:29'),
	(5, 5, 'Saya hanya mendelegasikan tugas rutin atau tugas sederhana', 1, 5, NULL, '2018-07-25 21:23:02'),
	(6, 5, 'Saya menjelaskan kepada anggota tentang batas wewenang mereka', 1, 6, NULL, '2018-07-25 21:23:36'),
	(7, 5, 'Saya menentukan batas waktu pembuatan laporan perkembangan bersama anggota', 1, 7, NULL, '2018-07-25 21:23:52'),
	(8, 5, 'Saya memberitahukan kepada orang orang yang terlibat dan terpengaruh dalam pendelegasian tugas tersebut', 1, 8, NULL, '2018-07-25 21:24:50'),
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
	(24, 6, 'Saya meyakinkan orang lain perihal kontribusi saya membawa dampak positif', 2, 16, 1, '2018-07-30 01:27:00');
/*!40000 ALTER TABLE `db_qst` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_result
DROP TABLE IF EXISTS `db_result`;
CREATE TABLE IF NOT EXISTS `db_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `test_id` varchar(250) DEFAULT NULL,
  `qst_id` int(11) DEFAULT NULL,
  `ans_id` int(11) DEFAULT NULL,
  `ans_point` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_result: ~24 rows (approximately)
DELETE FROM `db_result`;
/*!40000 ALTER TABLE `db_result` DISABLE KEYS */;
INSERT INTO `db_result` (`id`, `name`, `test_id`, `qst_id`, `ans_id`, `ans_point`, `created_date`) VALUES
	(1, 'Jonathan', '5', 1, 3, 3, '2018-07-30 02:57:28'),
	(2, 'Jonathan', '5', 2, 2, 2, '2018-07-30 02:57:28'),
	(3, 'Jonathan', '5', 3, 1, 1, '2018-07-30 02:57:28'),
	(4, 'Jonathan', '5', 4, 3, 3, '2018-07-30 02:57:28'),
	(5, 'Jonathan', '5', 5, 1, 1, '2018-07-30 02:57:28'),
	(6, 'Jonathan', '5', 6, 2, 2, '2018-07-30 02:57:28'),
	(7, 'Jonathan', '5', 7, 2, 2, '2018-07-30 02:57:28'),
	(8, 'Jonathan', '5', 8, 2, 2, '2018-07-30 02:57:28'),
	(9, 'Jonathan', '6', 1, 1, 4, '2018-07-30 02:57:59'),
	(10, 'Jonathan', '6', 2, 3, 6, '2018-07-30 02:57:59'),
	(11, 'Jonathan', '6', 3, 1, 8, '2018-07-30 02:57:59'),
	(12, 'Jonathan', '6', 4, 5, 8, '2018-07-30 02:57:59'),
	(13, 'Jonathan', '6', 5, 5, 8, '2018-07-30 02:57:59'),
	(14, 'Jonathan', '6', 6, 5, 8, '2018-07-30 02:57:59'),
	(15, 'Jonathan', '6', 7, 5, 8, '2018-07-30 02:57:59'),
	(16, 'Jonathan', '6', 8, 5, 8, '2018-07-30 02:57:59'),
	(17, 'Jonathan', '6', 9, 1, 8, '2018-07-30 02:57:59'),
	(18, 'Jonathan', '6', 10, 5, 8, '2018-07-30 02:57:59'),
	(19, 'Jonathan', '6', 11, 5, 8, '2018-07-30 02:57:59'),
	(20, 'Jonathan', '6', 12, 5, 8, '2018-07-30 02:58:00'),
	(21, 'Jonathan', '6', 13, 5, 8, '2018-07-30 02:58:00'),
	(22, 'Jonathan', '6', 14, 5, 8, '2018-07-30 02:58:00'),
	(23, 'Jonathan', '6', 15, 5, 8, '2018-07-30 02:58:00'),
	(24, 'Jonathan', '6', 16, 5, 8, '2018-07-30 02:58:00');
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

-- Dumping data for table imanagem_asm.db_resultinfo: ~9 rows (approximately)
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

-- Dumping data for table imanagem_asm.db_testlist: ~3 rows (approximately)
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

-- Dumping data for table imanagem_asm.db_testname: ~7 rows (approximately)
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
  `uname` int(11) NOT NULL DEFAULT '0',
  `uemail` int(11) NOT NULL DEFAULT '0',
  `logsession` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_usertest: ~0 rows (approximately)
DELETE FROM `db_usertest`;
/*!40000 ALTER TABLE `db_usertest` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_usertest` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
