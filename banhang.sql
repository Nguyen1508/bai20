-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.1.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for banhang
CREATE DATABASE IF NOT EXISTS `banhang` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banhang`;

-- Dumping structure for table banhang.chitietdonhang
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `idDonhang` int DEFAULT NULL,
  `idSanpham` int DEFAULT NULL,
  `soLuong` int DEFAULT NULL,
  KEY `FK_chitietdonhang_donhang` (`idDonhang`),
  KEY `FK_chitietdonhang_sanpham` (`idSanpham`),
  CONSTRAINT `FK_chitietdonhang_donhang` FOREIGN KEY (`idDonhang`) REFERENCES `donhang` (`idDonhang`),
  CONSTRAINT `FK_chitietdonhang_sanpham` FOREIGN KEY (`idSanpham`) REFERENCES `sanpham` (`idSanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table banhang.donhang
CREATE TABLE IF NOT EXISTS `donhang` (
  `idDonhang` int NOT NULL,
  `ngayDat` datetime NOT NULL,
  `idKhachhang` int NOT NULL DEFAULT (0),
  PRIMARY KEY (`idDonhang`),
  KEY `FK_donhang_khachhang` (`idKhachhang`),
  CONSTRAINT `FK_donhang_khachhang` FOREIGN KEY (`idKhachhang`) REFERENCES `khachhang` (`idKhachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table banhang.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `idKhachhang` int NOT NULL,
  `tenKhachhang` varchar(255) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  PRIMARY KEY (`idKhachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table banhang.sanpham
CREATE TABLE IF NOT EXISTS `sanpham` (
  `idSanpham` int NOT NULL,
  `tenSanpham` varchar(255) NOT NULL,
  `gia` float NOT NULL,
  PRIMARY KEY (`idSanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
