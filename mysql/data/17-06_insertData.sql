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
-- Dumping data for table `anh`
--

LOCK TABLES `anh` WRITE;
/*!40000 ALTER TABLE `anh` DISABLE KEYS */;
INSERT INTO `anh` VALUES (1,1,'MYSTAR_Unisex_A022.jpg',NULL,NULL,NULL,NULL),(2,2,'Ao_Polo_ho.jpg',NULL,NULL,NULL,NULL),(3,3,'3_mau_cheo.jpg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `anh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'admin2','Trần Quang Tèo',123456789,'108 Trần Hưng Đạo, Hà Nội.','Nam','2000-01-01',NULL,NULL),(2,'admin3','Bùi Xuân Huấn',123456788,'Việt Nam','Nam','1990-01-01',NULL,NULL),(3,'admin4','Ngô Bá Khá',123456777,'Việt Nam','Nam','1995-01-01',NULL,NULL);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `kichco`
--

LOCK TABLES `kichco` WRITE;
/*!40000 ALTER TABLE `kichco` DISABLE KEYS */;
INSERT INTO `kichco` VALUES (1,1,'M','L','XL',NULL,NULL),(2,2,'S','M','L','XL','XXL'),(3,3,'S','M','L','XL',NULL);
/*!40000 ALTER TABLE `kichco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` VALUES (1,'Áo thun','Thời Trang Nam'),(2,'Áo sơ mi','Thời Trang Nam'),(3,'Áo khoác & áo vest','Thời Trang Nam'),(12,'Áo','Thời Trang Nữ'),(13,'Đầm','Thời Trang Nữ'),(14,'Chân váy','Thời Trang Nữ');
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mausac`
--

LOCK TABLES `mausac` WRITE;
/*!40000 ALTER TABLE `mausac` DISABLE KEYS */;
INSERT INTO `mausac` VALUES (1,1,'Đen','Trắng','Xám',NULL,NULL),(2,2,'Xám','Trắng','Xanh','Xanh đen',NULL),(3,3,'Đen','Trắng','Xám',NULL,NULL);
/*!40000 ALTER TABLE `mausac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Áo Thun MYSTAR Unisex A022',69000,10,'MYSTAR_Unisex_A022.jpg','2020-01-01 00:00:00','Đen','M','No Brand','Cotton','Áo thun tay lỡ form rộng UNISEX dành cho cả nam và nữ',1),(2,'Áo Polo Hổ Mới Cực Chất Giá Rẻ',227000,100,'Ao_Polo_ho.jpg','2020-01-01 00:00:00','Xám','M','Adidas','Cashmere','ÁO CHỐNG NẮNG THỜI TRANG CAO CẤP ADIDAS ',1),(3,'Áo Thun Nam Tay Ngắn Cổ Tim 3 Màu Xéo Cotton Cao Cấp MS09',543000,50,'3_mau_cheo.jpg','2020-01-01 00:00:00','Đen','M','DOLCE&GABBANA','Thun','ÁO POLO SIÊU CẤP DOLCE GABBANA',1),(4,'Áo sơ mi caro nhỏ dài tay M2',99000,50,'AoSoMi_M2.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Thun','Thông tin sản phẩm áo thể thao nam',2),(6,'Áo sơ mi nam K768',69000,50,'AoSoMi_K768.jpg','2020-01-01 00:00:00','Đỏ','M','No Brand','Thun','++++Áo như hình+++',2),(7,'Áo Sơ Mi Caro Flannel Vàng',49000,50,'AoSoMi_Caro_Flannel.jpg','2020-01-01 00:00:00','Vàng','M','No Brand','Chất liệu khác','Áo thun lạnh nam co dãn 4 chiều ATT',2),(8,'Áo Quây Cực Nữ Tính Giá Siêu Mềm',165000,20,'AoQuay.jpg','2020-01-01 00:00:00','Đỏ','M','No Brand','Lụa','Áo voan quây chất voan siêu đẹp.',12),(9,'Áo Thun PIKACHU Unisex A015',69000,20,'AoThunPIKACHU_Unisex_A015.jpg',NULL,NULL,NULL,NULL,NULL,'Form unisex cho cả nam nữ',12),(10,'ÁO KHOÁC KAKI NAM 2 LỚP CAO CẤP',165000,20,'AoKhoac_kaki_caocap.jpg',NULL,'Đen','M','No Brand','cashmere','ÁO KHOÁC KAKI NAM 2 LỚP PHONG CÁCH HÀN QUỐC',3),(11,'ÁO KHOÁC KAKI NAM NỮ TÚI HỘP 03 MÀU FORM RỘNG ĐỘC ĐÁO ',136000,20,'AoKhoac_kaki_caocap_den.jpg',NULL,'Đen','M','No Brand','Kaki','Áo Khoác Kaki  với Chất liệu Kaki Hàn 2 lớp cực mát (lớp trong lót Dù thấm hút mồ hôi cực tốt); mang phong cách thời trang thời thượng các bạn trẻ; không những giúp bạn giữ ấm trong mùa lạnh mà còn có thể chống nắng, chống gió, chống bụi, chống rét, chống tia UV cực tốt, rất tiện lợi nhé!!! (Được sử dụng nhiều trong dịp Lễ hội, Đi chơi, Da ngoại, Dạo phố, Du lịch...)',3),(12,'Áo khoác kaki hộp có mũ unisex',220000,20,'AoKhoac_kaki_den.jpg',NULL,'Đen','M','No Brand','Kaki','Áo khoác kaki có mũ streetwear nam tính, năng động, phù hợp với mọi sự kiện',3),(13,'áo khoác kaki nam fom rông thêu chữ nhật siêu chất',139000,20,'AoKhoac_kaki_rong.jpg',NULL,'Đen','M','No Brand','Kaki','THÔNG TIN:áo khoác kaki nam fom rông thêu chữ nhật siêu chất',3),(14,'Áo khoác kaki jean unisex form rộng',119000,20,'AoKhoac_kaki_unisex.jpg',NULL,'Đen','M','No Brand','Kaki','Hàng cao cấp bao đẹp',3),(15,'Áo khoác nam nữ Dù 2 Lớp Có Nón Phối Khóa Sau Logo In hình shin Mẫu Bán Chạy Nhất',79000,20,'AoKhoac_nam.jpg',NULL,'Đen','M','No Brand','Cashmere','[free ship] Áo khoác nam nữ Dù 2 Lớp Có Nón Phối Khóa Sau Logo In hình shin Mẫu Bán Chạy Nhất - AK046',3),(16,'Freeship áo khoác Ulzzang Nam nữ Có bigsize 95kg',159000,20,'AoKhoac_Uizzang.jpg',NULL,'Xám','M','No Brand','Thun','Có size M L XL XXL',3),(17,'Áo Hoodie Nỉ Ngoại Ulzzang Có Mũ , Có 4 màu , Nam & Nữ',128000,20,'AoKhoac_Uizzang_den.jpg',NULL,'Đen','M','No Brand','Cashmere','Chất liệu nỉ Ngoại  cực đẹp',3),(18,'ÁO KHOÁC NAM ULZZANG HÀN QUỐC FORM RỘNG CÓ NÓN MÀU XANH NAVY',317000,20,'AoKhoac_Uizzang_xanh.jpg',NULL,'Xanh','M','No Brand','Cashmere','HÀNG ORDER - ( TỪ 10-15 NGÀY CÓ HÀNG)  CHẤT VẢI DÀY DẶN, CHẤT LƯỢNG, ĐƯỜNG CHỈ SẮC XẢO, MÀU SẮC ĐÚNG NHƯ HÌNH.',3),(19,'Áo khoác dù nam Modelfashion 2 lớp 2 mặt chống nước cao cấp',399000,20,'AoKhoac_vaidu.jpg',NULL,'Đen','M','GABO FASHION','Polyester','SANG TRỌNG  MẠNH MẼ  ĐẲNG CẤP',3),(20,'Áo Khoác Dù Nam Chống Nắng Mưa Vải Caro Cao Cấp Mẫu Mới 2020',150000,20,'AoKhoac_vaidu_2lop.jpg',NULL,'Xanh','M','No Brand','Cashmere','Vì Shop giao dịch bán hàng qua hình thức online với khách nêntiêu chí Shop luôn đặt lên hàng đầu :',3),(21,'o khoát vải dù cho nam sọc tay hàng đẹp cực chuẩn hàng đẹp-A042-Áo khoác nam Áo khoát nam gió dù 2 lớp chống nắng',105000,20,'AoKhoac_vaidu_trang.jpg',NULL,'Trắng','M','No Brand','Polyester','Sản phẩm được bao đổi trả hoặc hoàn tiền nếu bị lỗi!!!',3),(173,'Áo sơ mi nam MAGNOR trơn, dài tay, gấp cổ',138000,12,'AoSoMi_congso.jpg','2020-01-01 00:00:00','Trắng','M','HTSM','Vật liệu khác','Là sản phẩm được shop tự thiết kế, đặt may, chúng tôi mong muốn người dùng có được những chiếc áo vừa vặn nhất cho mình, do vậy MAGNOR được làm với 6 size áo từ S đến 3XL với mức chênh kích thước giữa các size khá nhỏ, khác với các loại áo được sản xuất “công nghiệp” với chỉ 3 hoặc 4 size. Nhiều nhà sản xuất không muốn làm nhiều size áo vì làm tăng lượng hàng tồn kho, tăng sự phức tạp trong sản xuất và chuyển phát hàng. Nhưng kết quả là áo làm ra với khoảng chênh lệch size rất lớn, người mua sẽ phải mặc những chiếc áo quá rộng hoặc quá chật, rất khó để có thể kiếm được một chiếc áo “vừa in” như đi cắt may. ',2),(188,'Áo sơ mi nam dài tay Hàn Quốc áo sơ mi đen vải lụa thái chống nhăn cao cấp',85000,12,'AoSoMi_congso_den.jpg','2020-01-01 00:00:00','Đen','M','No Brand','Cotton','Áo sơ mi nam dài tay, vải đẹp cao cấp loại 1 trên thị trường',2),(189,'Áo sơ mi nam dài tay áo sơ mi xanh vải lụa nến không nhăn thời trang cao cấp',85000,12,'AoSoMi_daitay.jpg','2020-01-01 00:00:00','Xanh','M','No Brand','Cotton','ÁO sơ mi nam (sơ mi nam) được thiết kế với form dáng trẻ trung với form áo ôm, rất chuẩn như hình.',2),(190,'Áo sơ mi nam dài tay hàn qốc, FRESHIP, Chất vải LỤA COTTON',85000,12,'AoSoMi_daitay_den.jpg','2020-01-01 00:00:00','Đen','M','No Brand','Cotton','Áo sơ mi nam dài tay hàn quốc, FRESHIP, Chất vải LỤA COTTON, (6 màu), sơ mi nam ôm dáng phối siêu đẹp, hàng VNXK',2),(191,'Áo sơ mi - Áo sơ mi đũi cao cấp - Chất liệu đũi dày dặn, mịn, mát. Dáng slimfit ôm body trẻ trung, siêu đẹp',125000,22,'AoSoMi_duicao.jpg','2020-01-01 00:00:00','Xanh','M','No Brand','Vật liệu khác','huỗi cửa hàng thời trang nam Nulshop lớn nhất miền Bắc.',2),(193,' Áo Sơ Mi Nam Ngắn Tay Kẻ Sọc BATINO Trẻ Trung Thanh Lịch',50000,12,'AoSoMi_ke.jpg','2020-01-01 00:00:00','Trắng','M','Batino','Cotton','Là khách hàng của BATINO, bạn sẽ được:',2),(194,'Áo Sơ Mi Kẻ Sọc Thời Trang 2019 Cho Nam',50000,12,'AoSoMi_ke_cam.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Cotton','Welcome, we have lots of styles, it \'s fast, quality assurance, over-preferential price, 2007-12-22 ',2),(195,'Áo Sơ Mi Nam Kẻ Sọc Đen, Trắng Chống Nhăn, Vải Mềm Mịn ',120000,12,'AoSoMi_ke_den.jpg','2020-01-01 00:00:00','Đen','M','No Brand','Cotton','Áo may liền, Không rách viền dưới nha các b',2),(196,'Áo Sơ Mi Nam Kẻ Sọc đỏ, Trắng Chống Nhăn, Vải Mềm Mịn ',118000,12,'AoSoMi_ke_do.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Cotton','Áo sơ mi nam form rộng kẻ caro, chất thô mềm mát, thích hợp mùa hè, hàng nhập Quảng Châu luôn là sự lựa chọn hàng đầu của giới công sở hiện nay, với kiểu dáng lịch thiệp, đường may đẹp và chất lượng vải cao cấp.',2),(197,'Áo Trắng Nam Cao Cấp Chất Siêu Đẹp Bán Hàng Có Tâm',85000,12,'AoSoMi_ke_trang.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Vật liệu khác','Phương châm bán hàn: chỉ bán hàng chất lượng',2),(198,'Áo sơ mi nam chất đẹp, chống nhăn, chống sù, chống bay màu - CAM KẾT NHƯ HÌNH',85000,12,'AoSoMi_KeSoc.jpg','2020-01-01 00:00:00','Xanh','M','No Brand','Vật liệu khác','NẾU BẠN LỰA CHỌN 1 NƠI \"cung cấp áo sơ mi nam với giá bán lẻ và sản phẩm chất lượng tốt nhất trên thị trường thì đây là nơi dành cho bạn\".',2),(199,'Áo Sơ Mi Nam Họa Tiết Y Hình Cao Cấp',156000,12,'AoSoMi_lua_daitay.jpg','2020-01-01 00:00:00','Đen','M','No Brand','Vật liệu khác','Phương châm bán hàn: chỉ bán hàng chất lượng',2),(200,'Áo Sơ Mi Trắng Nam Chữ Ký Dài Tay Vải Lụa Không Nhăn Không Sù Không Bay Màu',144000,12,'AoSoMi_luatrang_daitay.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Lụa','Phương châm bán hàn: chỉ bán hàng chất lượng',2),(201,'Áo Sơ Mi Nam Họa Tiết Y Hình Cao Cấp',156000,12,'AoSoMi_M2.jpg','2020-01-01 00:00:00','Xanh','M','No Brand','Lụa','Khách hàng cũng như bản thân mình khi đi mua hàng - Chỉ mong mua được hàng tốt, giá cả phải chăng, chủ Shop bán hàng có tâm, áo đẹp như hình nên Shop phục vụ khách hàng cũng như phục vụ cho chính mình vậy.',2),(202,'Áo Sơ Mi Nam Họa Tiết Đẹp',144000,12,'AoSoMi_mixkhoa.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Lụa','THÔNG TIN SẢN PHẨM ÁO SƠ MI NAM HỌA TIẾT',2),(203,'áo sơ mi nam sang trọng',400000,12,'AoSoMi_nam.jpg','2020-01-01 00:00:00','Xám','M','No Brand','Lụa','Chất liệu da mềm sang trọng, tạo sự nổi bật, quyến rũ cho người mặc áo sơ mi nam',2),(204,'Áo Sơ Mi - Áo Sơ Mi Nam Cao Cấp - Kiểu dáng Hàn Quốc trẻ trung, lịch lãm, sang trọng',135000,12,'AoSoMi_quangchau.jpg','2020-01-01 00:00:00','Xanh','M','No Brand','Vật liệu khác','Chuỗi cửa hàng thời trang nam Nulshop lớn nhất miền Bắc.',2),(205,'Áo sơ mi - Áo sơ mi trắng - Chất liệu lụa thô cao cấp, mềm mịn, dày dặn, thấm hút mồ hôi tốt',135000,12,'AoSoMi_tron.jpg','2020-01-01 00:00:00','Xanh','M','No Brand','Vật liệu khác','Uy tín đã được đảm bảo với hàng vạn đơn hàng trên khắp cả nước.',2),(206,'Áo sơ mi nam dài tay Hàn Quốc vải lụa thái chống nhăn cao cấp.',75000,12,'AoSoMi_tronden.jpg','2020-01-01 00:00:00','Đen','M','No Brand','Cotton','Áo sơ mi nam dài tay, vải đẹp cao cấp loại 1 trên thị trường',2),(207,'Áo sơ mi nam trơn đỏ đô tay dài Hàn Quốc đẹp (Đỏ đô) - NAMDAI ',75000,12,'AoSoMi_trondo.jpg','2020-01-01 00:00:00','Đỏ','M','No Brand','Vật liệu khác','URANO Clothing hân hạnh được phục vụ quý khách. Những sản phẩm mới nhất vẫn liên tục được cập nhật mỗi ngày phù hợp với nhiều lứa tuổi.',2),(208,'Áo sơ mi nam MĐ A115 (Xanh đen)',15000,12,'AoSoMi_tronxanh.jpg','2020-01-01 00:00:00','Xanh','M','MĐ','Cotton','Sản phẩm được may bằng vải cotton co giãn ôm body, rất thích hợp cho những bạn có vóc dáng thanh.',2),(209,'Áo sơ mi lụa phối kẻ cho nam',35000,12,'AoSoMi_vailua.jpg','2020-01-01 00:00:00','Đỏ','M','No Brand','Lụa','Sản phẩm không ra màu không nhăn không xù lông',2),(210,'ÁoSơ Mi Nam Đen - Trắng',119000,12,'AoSoMi_vailua_trang.jpg','2020-01-01 00:00:00','Trắng','M','No Brand','Lụa','Áo sơ mi nam chất lụa cotton khong xù không mhăn chất vải thoáng mát hút mồ hôi tốt',2);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('admin','admin','truong@gmail.com','admin',NULL),('admin2','admin','truong2@gmail.com','No',NULL),('admin3','admin','truong3@gmail.com','No',NULL),('admin4','admin','truong4@gmail.com','No',NULL),('admin5','admin','truong5@gmail.com','No',NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-17 13:16:50
