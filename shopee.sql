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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` VALUES (1,'Áo thun',NULL),(2,'Áo sơ mi',NULL),(3,'Áo khoác',NULL),(4,'Áo nỉ/ Áo len',NULL),(5,'Quần',NULL),(6,'Balo/ Túi/ Vi',NULL),(7,'Mắt kính',NULL),(8,'Phụ kiện nam',NULL),(9,'Phụ kiện nữ',NULL),(10,'Trang sức',NULL),(11,'Đồ lót',NULL);
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`idSanPham`,`idLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Áo Thun MYSTAR Unisex A022',69000,10,NULL,'2020-01-01 00:00:00','Đen','M','No Brand','Cotton','Áo thun tay lỡ form rộng UNISEX dành cho cả nam và nữ',1),(2,'Áo chống nắng thời trang cao cấp Adidas [ hot trend ]',446000,100,NULL,'2020-01-01 00:00:00','Xám','M','Adidas','Cashmere','ÁO CHỐNG NẮNG THỜI TRANG CAO CẤP ADIDAS ',1),(3,'Áo polo siêu cấp Dolce Gabbana [ hot trend ]',543000,50,NULL,'2020-01-01 00:00:00','Đen','M','DOLCE&GABBANA','Thun','ÁO POLO SIÊU CẤP DOLCE GABBANA',1),(4,'Áo Thể Thao Nam Ngắn Tay Cổ Tròn Thun Lạnh ATTA01 Áo Tập Gym Nam',99000,50,NULL,'2020-01-01 00:00:00','Trắng','M','No Brand','Thun','Thông tin sản phẩm áo thể thao nam',1),(6,'Áo body tập gym nam Mẩu HNT01 5 màu (Thun lạnh) form chuẩn size M-2XL (Freeship)',69000,50,NULL,'2020-01-01 00:00:00','Đỏ','M','No Brand','Thun','++++Áo như hình+++',1),(7,'Áo Thun Lạnh Co Giãn 4 Chiều.',49000,50,NULL,'2020-01-01 00:00:00','Đen','M','No Brand','Chất liệu khác','Áo thun lạnh nam co dãn 4 chiều ATT',1);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13  7:27:29
