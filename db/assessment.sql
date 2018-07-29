-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for imanagem_asm
DROP DATABASE IF EXISTS `imanagem_asm`;
CREATE DATABASE IF NOT EXISTS `imanagem_asm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `imanagem_asm`;

-- Dumping structure for table imanagem_asm.db_answ
DROP TABLE IF EXISTS `db_answ`;
CREATE TABLE IF NOT EXISTS `db_answ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answ_type` int(11) DEFAULT NULL,
  `answ` varchar(50) DEFAULT NULL,
  `answ_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_answ: ~3 rows (approximately)
DELETE FROM `db_answ`;
/*!40000 ALTER TABLE `db_answ` DISABLE KEYS */;
INSERT INTO `db_answ` (`id`, `answ_type`, `answ`, `answ_pos`) VALUES
	(1, 1, 'Selalu', 1),
	(2, 1, 'Kadang-Kadang', 2),
	(3, 1, 'Jarang', 3);
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

-- Dumping data for table imanagem_asm.db_login: ~1 rows (approximately)
DELETE FROM `db_login`;
/*!40000 ALTER TABLE `db_login` DISABLE KEYS */;
INSERT INTO `db_login` (`id`, `season_name`, `pwd_view`, `pwd_key`, `test_id`, `timestart`, `timeend`) VALUES
	(1, 'Batch 1', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 1, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_point: ~24 rows (approximately)
DELETE FROM `db_point`;
/*!40000 ALTER TABLE `db_point` DISABLE KEYS */;
INSERT INTO `db_point` (`id`, `test_id`, `qst_id`, `answ_id`, `ans_point`) VALUES
	(1, 1, 1, 1, 1),
	(2, 1, 1, 2, 2),
	(3, 1, 1, 3, 3),
	(4, 1, 2, 1, 3),
	(5, 1, 2, 2, 2),
	(6, 1, 2, 3, 1),
	(7, 1, 3, 1, 1),
	(8, 1, 3, 2, 2),
	(9, 1, 3, 3, 3),
	(10, 1, 4, 1, 1),
	(11, 1, 4, 2, 2),
	(12, 1, 4, 3, 3),
	(13, 1, 5, 1, 1),
	(14, 1, 5, 2, 2),
	(15, 1, 5, 3, 3),
	(16, 1, 6, 1, 3),
	(17, 1, 6, 2, 2),
	(18, 1, 6, 3, 1),
	(19, 1, 7, 1, 3),
	(20, 1, 7, 2, 2),
	(21, 1, 7, 3, 1),
	(22, 1, 8, 1, 3),
	(23, 1, 8, 2, 2),
	(24, 1, 8, 3, 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_qst: ~8 rows (approximately)
DELETE FROM `db_qst`;
/*!40000 ALTER TABLE `db_qst` DISABLE KEYS */;
INSERT INTO `db_qst` (`id`, `test_id`, `qst`, `ans_type`, `page`, `created_by`, `created_date`) VALUES
	(1, 1, 'Saya menjelaskan cara pelaksanaan tugas yang persis sama dengan cara yang saya gunakan', 1, 1, NULL, '2018-07-25 17:02:38'),
	(2, 1, 'Saya menetapkan hasil akhir yang saya harapkan', 1, 2, NULL, '2018-07-25 20:36:20'),
	(3, 1, 'Saya merasa kehilangan kontrol', 1, 3, NULL, '2018-07-25 21:22:18'),
	(4, 1, 'Saya memperkirakan bahwa saya sendiri akan mengurangi pekerjaan tersebut', 1, 4, NULL, '2018-07-25 21:22:29'),
	(5, 1, 'Saya hanya mendelegasikan tugas rutin atau tugas sederhana', 1, 5, NULL, '2018-07-25 21:23:02'),
	(6, 1, 'Saya menjelaskan kepada anggota tentang batas wewenang mereka', 1, 6, NULL, '2018-07-25 21:23:36'),
	(7, 1, 'Saya menentukan batas waktu pembuatan laporan perkembangan bersama anggota', 1, 7, NULL, '2018-07-25 21:23:52'),
	(8, 1, 'Saya memberitahukan kepada orang orang yang terlibat dan terpengaruh dalam pendelegasian tugas tersebut', 1, 8, NULL, '2018-07-25 21:24:50');
/*!40000 ALTER TABLE `db_qst` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_qstlist
DROP TABLE IF EXISTS `db_qstlist`;
CREATE TABLE IF NOT EXISTS `db_qstlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pwd_id` int(11) DEFAULT NULL,
  `qst_id` int(11) DEFAULT NULL,
  `qst_pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_qstlist: ~1 rows (approximately)
DELETE FROM `db_qstlist`;
/*!40000 ALTER TABLE `db_qstlist` DISABLE KEYS */;
INSERT INTO `db_qstlist` (`id`, `pwd_id`, `qst_id`, `qst_pos`) VALUES
	(1, 1, 1, 1);
/*!40000 ALTER TABLE `db_qstlist` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_result: ~8 rows (approximately)
DELETE FROM `db_result`;
/*!40000 ALTER TABLE `db_result` DISABLE KEYS */;
INSERT INTO `db_result` (`id`, `name`, `test_id`, `qst_id`, `ans_id`, `ans_point`, `created_date`) VALUES
	(1, 'Jonathan', '1', 1, 1, 1, '2018-07-26 22:19:35'),
	(2, 'Jonathan', '1', 2, 3, 1, '2018-07-26 22:19:35'),
	(3, 'Jonathan', '1', 3, 3, 3, '2018-07-26 22:19:35'),
	(4, 'Jonathan', '1', 4, 3, 3, '2018-07-26 22:19:35'),
	(5, 'Jonathan', '1', 5, 3, 3, '2018-07-26 22:19:35'),
	(6, 'Jonathan', '1', 6, 1, 3, '2018-07-26 22:19:35'),
	(7, 'Jonathan', '1', 7, 2, 2, '2018-07-26 22:19:35'),
	(8, 'Jonathan', '1', 8, 3, 1, '2018-07-26 22:19:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_resultinfo: ~1 rows (approximately)
DELETE FROM `db_resultinfo`;
/*!40000 ALTER TABLE `db_resultinfo` DISABLE KEYS */;
INSERT INTO `db_resultinfo` (`id`, `test_id`, `point_start`, `point_end`, `result_info`) VALUES
	(1, 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `db_resultinfo` ENABLE KEYS */;

-- Dumping structure for table imanagem_asm.db_testname
DROP TABLE IF EXISTS `db_testname`;
CREATE TABLE IF NOT EXISTS `db_testname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table imanagem_asm.db_testname: ~1 rows (approximately)
DELETE FROM `db_testname`;
/*!40000 ALTER TABLE `db_testname` DISABLE KEYS */;
INSERT INTO `db_testname` (`id`, `name`, `created_by`, `created_date`) VALUES
	(1, 'TEST PENDELEGASIAN', 1, '2018-07-25 13:06:00');
/*!40000 ALTER TABLE `db_testname` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
