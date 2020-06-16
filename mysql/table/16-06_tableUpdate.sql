-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: shopee
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `idKhachHang` int(11) NOT NULL AUTO_INCREMENT,
  `tenTaiKhoan` varchar(45) NOT NULL,
  `hoVaTen` text,
  `sdt` int(10) DEFAULT NULL,
  `diaChi` text,
  `gioiTinh` varchar(45) DEFAULT NULL,
  `ngaySinh` date DEFAULT NULL,
  `anhDaiDien` text,
  `ghiChu` text,
  PRIMARY KEY (`idKhachHang`),
  KEY `FK_tenTaiKhoan_idx` (`tenTaiKhoan`),
  CONSTRAINT `FK_tenTaiKhoan` FOREIGN KEY (`tenTaiKhoan`) REFERENCES `taikhoan` (`tenTaiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisanpham` (
  `idLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `tenLoaiSanPham` text NOT NULL,
  `ghiChu` text,
  PRIMARY KEY (`idLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `idSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `tenSanPham` text NOT NULL,
  `giaTien` double NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `hinhAnh` text,
  `ngayDang` datetime DEFAULT NULL,
  `mauSac` varchar(45) DEFAULT NULL,
  `kichCo` varchar(45) DEFAULT NULL,
  `thuongHieu` varchar(45) DEFAULT NULL,
  `chatLieu` varchar(45) DEFAULT NULL,
  `motaSanPham` text,
  `idLoaiSanPham` int(11) NOT NULL,
  PRIMARY KEY (`idSanPham`),
  KEY `FK_SP_LSP_idx` (`idLoaiSanPham`),
  CONSTRAINT `FK_SP_LSP` FOREIGN KEY (`idLoaiSanPham`) REFERENCES `loaisanpham` (`idLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `tenTaiKhoan` varchar(45) NOT NULL,
  `matKhau` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `quyen` varchar(45) DEFAULT NULL,
  `ghiChu` text,
  PRIMARY KEY (`tenTaiKhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 17:29:52
