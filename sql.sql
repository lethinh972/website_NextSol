-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: website_demo
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `image` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,'2020-09-28 14:00:56','<p>Đến nay, to&agrave;n bộ trải nghiệm của kh&aacute;ch h&agrave;ng với FWD đ&atilde; ho&agrave;n to&agrave;n được số h&oacute;a, từ kh&acirc;u ph&acirc;n t&iacute;ch nhu cầu, tư vấn, minh họa hợp đồng bảo hiểm, nộp hồ sơ bảo hiểm, theo d&otilde;i v&agrave; ph&aacute;t h&agrave;nh hợp đồng đến bồi thường bảo hiểm đều được thực hiện tr&ecirc;n nền tảng kỹ thuật số.</p>\r\n<p>Theo FWD, C&ocirc;ng ty cũng đ&atilde; loại bỏ hợp đồng bảo hiểm in giấy truyền thống v&agrave; ph&aacute;t h&agrave;nh hợp đồng bảo hiểm điện tử tới 100% kh&aacute;ch h&agrave;ng.</p>\r\n<p>Tại buổi lễ trao giải Asia Insurance Technology Awards lần thứ 9 tổ chức tại Th&aacute;i Lan v&agrave;o cuối th&aacute;ng 6-2019, FWD đ&atilde; vinh dự nhận giải thưởng \"C&ocirc;ng nghệ v&agrave; ứng dụng đa k&ecirc;nh\" - \"Digital &amp; Omnichannel Technology Award\" v&igrave; đ&atilde; c&oacute; những th&agrave;nh tựu đột ph&aacute; trong ứng dụng c&ocirc;ng nghệ v&agrave;o bảo hiểm tại khu vực Ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương.</p>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><a class=\"detail-img-lightbox\" title=\"&Ocirc;ng Huỳnh Hữu Khang &ndash; Tổng Gi&aacute;m đốc FWD Việt Nam nhận giải &quot;Doanh nghiệp chuyển đổi số xuất sắc&quot;\" href=\"https://cdn.tuoitre.vn/2019/9/11/photo-1-156816531644770002059.jpg\" target=\"_blank\" rel=\"noopener\" data-fancybox-group=\"img-lightbox\"><img id=\"img_9d932e80-d433-11e9-9f94-8350793f52d1\" class=\"lightbox-content\" title=\"FWD nhận giải thưởng Doanh nghiệp chuyển đổi số xuất sắc 2019 - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/586/2019/9/11/photo-1-156816531644770002059.jpg\" alt=\"FWD nhận giải thưởng Doanh nghiệp chuyển đổi số xuất sắc 2019 - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2019/9/11/photo-1-156816531644770002059.jpg\" /></a></div>\r\n<div class=\"PhotoCMS_Caption ck_legend caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">&Ocirc;ng Huỳnh Hữu Khang &ndash; Tổng Gi&aacute;m đốc FWD Việt Nam nhận giải \"Doanh nghiệp chuyển đổi số xuất sắc\"</p>\r\n</div>\r\n</div>\r\n<p>Trước đ&oacute;, FWD cũng được ghi nhận c&aacute;c dấu ấn c&ocirc;ng nghệ vượt trội với danh hiệu&nbsp;\"C&ocirc;ng ty bảo hiểm số h&oacute;a h&agrave;ng đầu Việt Nam\"&nbsp;-&nbsp;\"Leading Digitalized Insurance Company\".</p>\r\n<p>V&agrave; trong những ng&agrave;y đầu th&aacute;ng 9-2019, FWD nhận giải thưởng Chuyển đổi số Việt Nam 2019 (Vietnam Digital Awards 2019) hạng mục \"Doanh nghiệp chuyển đổi số xuất sắc\" do Hội Truyền th&ocirc;ng số Việt Nam trao tặng v&igrave; đ&atilde; c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong việc ph&aacute;t triển v&agrave; ứng dụng c&ocirc;ng nghệ số để n&acirc;ng cao trải nghiệm của kh&aacute;ch h&agrave;ng.</p>','http://localhost:8181/images/1601276456267_gt.jpg','giải thưởng công ty hoạt đông xuất sắc',NULL);
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modifiled_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiled_date` datetime DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_highlight` int NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'admin','2020-09-24 14:04:34','admin','2020-09-24 14:05:34','PHÁT TRIỂN GAME TRÊN MỌI NỀN TẢNG','http://localhost:8181/images/1600931074228_ban5.png',1,'A'),(2,'admin','2020-09-28 13:55:32','admin','2020-09-28 14:23:42','THẾ MẠNH LĨNH VỰC GAME VÀ APP MOBILE','http://localhost:8181/images/1601276132245_ban1.png',1,'B'),(3,'admin','2020-09-28 13:55:58','admin','2020-09-28 14:23:46','HÃY KẾT NỐI VỚI CHÚNG TÔI','http://localhost:8181/images/1601276157575_ban3.jpg',1,'C'),(4,'admin','2020-09-28 13:56:21','admin','2020-09-28 14:23:50','THỜI ĐẠI CÔNG NGHỆ 4.0','http://localhost:8181/images/1601276181081_ban4.png',1,'D');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_comment`
--

DROP TABLE IF EXISTS `customer_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8_bin,
  `company` text COLLATE utf8_bin,
  `created_at` datetime DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `updated_at` datetime DEFAULT NULL,
  `is_highlight` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_comment`
--

LOCK TABLES `customer_comment` WRITE;
/*!40000 ALTER TABLE `customer_comment` DISABLE KEYS */;
INSERT INTO `customer_comment` VALUES (1,'Chúng tôi rất vui khi được hợp tác và làm việc với công ty đối tác,chúc công ty ngày càng thành công trong tương lai','CÔNG TY NEXTSOL','2020-09-28 00:00:00','NGUYỄN VĂN PHƯƠNG','2020-09-29 16:55:56',1),(2,'chúng tôi đã sử dụng dịch vụ phái cử nhân lực.có thể nói đây là một dịch vụ rất tuyệt vời, chúc công ty ngày càng thành công hơn nữa','Công ty VNPT','2020-09-28 00:00:00','BÙI TIẾN DŨNG','2020-09-29 16:52:27',1),(3,'Chúng tôi đã sử dụng dịch vụ IP suppost, dịch vụ rất tuyệt vời. cám ơn công ty rất nhiều','Giải phát và sáng tạo HT','2020-09-28 00:00:00','LÊ VĂN THỊNH','2020-09-29 16:56:00',1),(10,'chúng tôi rất vui khi được hợp tác với công ty, rất mong trong thời gian tới công ty sẽ phát triển mạnh mẽ hơn','công ty THHH bo tran duc','2020-10-02 00:00:00','trần đức bo','2020-10-02 16:59:32',0);
/*!40000 ALTER TABLE `customer_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `full_description` text COLLATE utf8_bin,
  `is_highlight` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `short_description` text COLLATE utf8_bin,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hrpolicies`
--

DROP TABLE IF EXISTS `hrpolicies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hrpolicies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_bin,
  `created_at` datetime DEFAULT NULL,
  `image` text COLLATE utf8_bin,
  `is_highlight` int NOT NULL,
  `title` text COLLATE utf8_bin,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hrpolicies`
--

LOCK TABLES `hrpolicies` WRITE;
/*!40000 ALTER TABLE `hrpolicies` DISABLE KEYS */;
INSERT INTO `hrpolicies` VALUES (1,'<h2>Ch&iacute;nh s&aacute;ch nh&acirc;n sự l&agrave; g&igrave;?</h2>\r\n<p>&nbsp;</p>\r\n<p>Ch&iacute;nh s&aacute;ch nh&acirc;n sự l&agrave; những nguy&ecirc;n tắc chỉ đạo, quy tắc, phương ph&aacute;p, thủ tục được thiết lập gắn với hoạt động tuyển dụng, đ&agrave;o tạo, h&agrave;nh ch&iacute;nh v&agrave; sử dụng nh&acirc;n lực nhằm hỗ trợ v&agrave; th&uacute;c đẩy việc thực hiện c&aacute;c mục ti&ecirc;u đ&atilde; định trước của doanh nghiệp. Hệ thống ch&iacute;nh s&aacute;ch nh&acirc;n sự nhằm điều chỉnh&nbsp;một số h&agrave;nh vi của con người trong doanh nghiệp k&egrave;m theo những quy định kh&aacute;c về khen thưởng, đề bạt, ch&ecirc; tr&aacute;ch,&hellip; một c&aacute; nh&acirc;n hoặc&nbsp;tập thể.</p>\r\n<p>&nbsp;</p>\r\n<p>Ch&iacute;nh s&aacute;ch nh&acirc;n sự thường được kiểm so&aacute;t v&agrave; quyết định bởi người đứng đầu bộ phận nh&acirc;n sự.</p>\r\n<p>&nbsp;</p>\r\n<h2>Vai tr&ograve; của ch&iacute;nh s&aacute;ch nh&acirc;n sự trong doanh nghiệp</h2>\r\n<p>&nbsp;</p>\r\n<p>Ch&iacute;nh s&aacute;ch nh&acirc;n sự v&ocirc; c&ugrave;ng quan trọng. Đ&oacute; l&agrave; ch&iacute;nh s&aacute;ch t&aacute;c động tới từng c&aacute; thể trong doanh nghiệp, ảnh hưởng trực tiếp tới quyền lợi v&agrave; tr&aacute;ch nhiệm của mỗi người n&ecirc;n cần được xem x&eacute;t kỹ lưỡng trước khi đưa ra. Ch&iacute;nh s&aacute;ch nh&acirc;n sự cũng l&agrave; nh&acirc;n tố t&aacute;c động tới tuyển dụng v&agrave;&nbsp;<a href=\"https://resources.base.vn/hr/turnover-rate-la-gi-lam-the-nao-de-giam-ti-le-nghi-viec-cua-nhan-vien-271?utm_content=resources.base.vn/hr/mau-chinh-sach-nhan-su-chuan-moi-doanh-nghiep-deu-can-nam-ro-384\" target=\"_blank\" rel=\"noopener\">tỷ lệ nghỉ việc&nbsp;(turnover rate)</a>&nbsp;trong một&nbsp;doanh nghiệp. Một doanh nghiệp c&oacute; ch&iacute;nh s&aacute;ch tốt thường sẽ tuyển được nhiều người t&agrave;i v&agrave; giữ họ ở lại c&ocirc;ng ty d&agrave;i l&acirc;u.</p>','2020-09-28 13:59:17','http://localhost:8181/images/1601276356687_cs1.jpg',1,'CHÍNH SÁCH ĐỐI VỚI NHÂN VIÊN','2020-09-28 13:59:17');
/*!40000 ALTER TABLE `hrpolicies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cover_image` text COLLATE utf8_bin,
  `created_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `is_highlight` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` text COLLATE utf8_bin,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'http://localhost:8181/images/1601279438313_new11.jpeg','2020-09-28 14:05:10','<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:50:38'),(3,'http://localhost:8181/images/1601279290244_new1.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:48:10'),(4,'http://localhost:8181/images/1601279301865_new2.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:48:22'),(5,'http://localhost:8181/images/1601279312599_new3.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:48:33'),(6,'http://localhost:8181/images/1601279321097_new4.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:48:41'),(7,'http://localhost:8181/images/1601279332062_new7.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:48:52'),(8,'http://localhost:8181/images/1601279341729_new5.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:49:02'),(9,'http://localhost:8181/images/1601279356376_new6.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:49:16'),(10,'http://localhost:8181/images/1601279374644_new9.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:49:35'),(11,'http://localhost:8181/images/1601279386975_new10.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:49:47'),(12,'http://localhost:8181/images/1601279401399_new8.jpg',NULL,'<p>Lăng B&aacute;c là m&ocirc;̣t trong những địa đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t nh&acirc;́t mà du khách kh&ocirc;ng th&ecirc;̉ bỏ qua khi&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-ha-noi-10869\">du lịch Hà N&ocirc;̣i</a>. Lăng được ch&iacute;nh thức khởi c&ocirc;ng v&agrave;o ng&agrave;y 2/9/1973 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o ng&agrave;y 19/8/1975. Đ&acirc;y&nbsp;l&agrave; nơi lưu giữ thi h&agrave;i của chủ tịch Hồ Ch&iacute; Minh, vị l&atilde;nh tụ kiệt xuất của d&acirc;n tộc, danh nh&acirc;n văn h&oacute;a thế giới. Lăng B&aacute;c nằm trong quần thể lăng bao gồm cả quảng trường Ba Đ&igrave;nh, phủ Chủ tịch, nh&agrave; s&agrave;n b&aacute;c Hồ&hellip;</p>','1','tham quan lăng bác của nhân viên NEXTSOL','2020-09-28 14:50:01');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `classify` text COLLATE utf8_bin,
  `created_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `image` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `theme` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'0','2020-09-28 14:26:01','<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278344306_sp2.png','Game đố vui','tri_tue','2020-09-28 14:32:24'),(2,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278303569_sp8.jpg','Game nông trại','tri_tue','2020-09-28 14:31:44'),(3,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278314889_sp11.jpg','Game đua xe','tri_tue','2020-09-28 14:31:55'),(4,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278281905_sp6.jpg','Game bắn nhau','tri_tue','2020-09-28 14:31:22'),(5,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278293481_sp9.png','Game chiến thuật','tri_tue','2020-09-28 14:31:33'),(6,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278327698_sp7.jpg','Game đào vàng','tri_tue','2020-09-28 14:32:08'),(7,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278269118_sp13.jpg','Game abc','tri_tue','2020-09-28 14:31:09'),(8,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278160754_sp3.png','Game ','tri_tue','2020-09-28 14:29:21'),(9,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278169642_sp10.png','Game ','tri_tue','2020-09-28 14:29:30'),(10,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278177898_sp4.jpg','Game ','tri_tue','2020-09-28 14:29:38'),(11,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278187654_sp11.jpg','Game ','tri_tue','2020-09-28 14:29:48'),(12,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278195240_sp9.png','Game ','tri_tue','2020-09-28 14:29:55'),(13,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278202684_sp5.png','Game ','tri_tue','2020-09-28 14:30:03'),(14,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278213279_sp8.jpg','Game ','tri_tue','2020-09-28 14:30:13'),(15,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278221268_sp1.jpg','Game ','tri_tue','2020-09-28 14:30:21'),(16,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278233771_sp13.jpg','Game ','tri_tue','2020-09-28 14:30:34'),(17,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278246079_sp12.png','Game ','tri_tue','2020-09-28 14:30:46'),(18,'0',NULL,'<p>H&atilde;y c&ugrave;ng trải nghiệm game đố vui mới nhất</p>','http://localhost:8181/images/1601278258123_sp13.jpg','Game ','tri_tue','2020-09-28 14:30:58');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `reference` text COLLATE utf8_bin,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>\r\n<p>Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT, C&ocirc;ng Cổ phần Truyền số liệu Việt Nam (DCV) l&agrave; một c&ocirc;ng ty ti&ecirc;u biểu cung cấp nh&acirc;n lực CNTT.</p>\r\n<p><strong>NHỮNG LỢI THẾ CHỈ C&Oacute; RI&Ecirc;NG Ở DCV&nbsp;</strong></p>\r\n<div class=\"iframe-1\">&nbsp;</div>\r\n<p>Hiện nay, DCV đang ph&aacute;i cử nh&acirc;n lực C&ocirc;ng nghệ th&ocirc;ng tin tới l&agrave;m việc ngắn v&agrave; d&agrave;i hạn tại c&ocirc;ng ty của kh&aacute;ch h&agrave;ng để thực hiện c&aacute;c c&ocirc;ng việc sau:<br />1. Lập tr&igrave;nh vi&ecirc;n Java (Java core, Strust, Hibernate, Spring, &hellip; )<br />2. Lập tr&igrave;nh vi&ecirc;n PHP<br />3. Lập tr&igrave;nh vi&ecirc;n .Net (C#, VB.net)<br />4. Lập tr&igrave;nh vi&ecirc;n Android<br />5. Lập tr&igrave;nh vi&ecirc;n iOS<br />6. Kiểm thử phần mềm<br />7. Quản trị dự &aacute;n<br />8. Quản l&yacute; hệ thống mạng</p>\r\n<p><strong>NGUY&Ecirc;N TẮC CHUẨN TRONG PHỤC VỤ KH&Aacute;CH H&Agrave;NG</strong></p>\r\n<ul>\r\n<li>Sự chuy&ecirc;n s&acirc;u trong lĩnh vực CNTT gi&uacute;p cho DCV thấu hiểu v&agrave; đ&aacute;p ứng một c&aacute;ch chuy&ecirc;n nghiệp trước những y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</li>\r\n<li>Quy tr&igrave;nh tiếp nhận y&ecirc;u cầu ph&aacute;i cử nh&acirc;n lực từ kh&aacute;ch h&agrave;ng được diễn ra nhanh ch&oacute;ng, chuy&ecirc;n nghiệp</li>\r\n<li>N&acirc;ng cao năng lực đ&aacute;p ứng nguồn lực, đảm bảo cung cấp nguồn lực cho dự &aacute;n</li>\r\n<li>Ứng vi&ecirc;n gắn kết d&agrave;i l&acirc;u, biến động nh&acirc;n sự thấp</li>\r\n<li>Gi&aacute; cả dịch vụ cạnh tranh so với c&aacute;c c&ocirc;ng ty c&ugrave;ng ng&agrave;nh.</li>\r\n</ul>\r\n<p><strong>QUY TR&Igrave;NH PH&Aacute;I CỬ NGUỒN NH&Acirc;N LỰC&nbsp;</strong></p>\r\n<div class=\"iframe-2\">&nbsp;</div>\r\n<p><strong>ĐỘI NGŨ NH&Acirc;N SỰ CỦA DCV</strong></p>\r\n<ul>\r\n<li>Trẻ tuổi, tr&igrave;nh độ học vấn cao;</li>\r\n<li>Chịu được &aacute;p lực, kh&oacute; khăn trong c&ocirc;ng việc;</li>\r\n<li>T&iacute;ch cực học hỏi t&igrave;m tỏi kh&aacute;m ph&aacute; những c&ocirc;ng nghệ, ng&ocirc;n ngữ lập tr&igrave;nh mới;</li>\r\n<li>Th&agrave;nh thạo ngoại ngữ (tiếng Nhật, tiếng Anh&hellip;);</li>\r\n<li>&nbsp;C&oacute; tinh thần cầu tiến, sẵn s&aacute;ng đương đầu với thử th&aacute;ch để trưởng th&agrave;nh hơn;&hellip;</li>\r\n</ul>\r\n<p>Đến với dịch vụ của DCV, c&aacute;c doanh nghiệp c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m giao ph&oacute; to&agrave;n bộ c&ocirc;ng việc quản trị, vận h&agrave;nh hạ tầng phần cứng v&agrave; c&aacute;c ứng dụng phần mềm cho c&aacute;c đơn vị cung cấp dịch vụ thay v&igrave; phải tự thực hiện. Với t&iacute;nh ổn định cao về mặt bằng nh&acirc;n sự ph&aacute;i cử c&ugrave;ng m&ocirc;i trường an to&agrave;n v&agrave; được quản l&yacute; chặt chẽ, DCV cam kết bảo mật th&ocirc;ng tin một c&aacute;ch tuyệt đối cho c&aacute;c doanh nghiệp cũng như những b&iacute; mật c&aacute; nh&acirc;n.</p>','Phái cử 10 nhân lực java sang công ty VNPT','','2020-09-28 15:33:11'),(2,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 15 nhân lực java sang công ty PHUONG TIEN',NULL,NULL),(3,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 17 nhân lực java sang công ty HAI LAM',NULL,NULL),(4,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 5 nhân lực java sang công ty TNHH Thuong Lam',NULL,NULL),(5,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 25 nhân lực java sang công ty BINH LONG',NULL,NULL),(6,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 15  nhân lực java sang công ty TNHH Thuong Lam',NULL,NULL),(7,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 18 nhân lực java sang công ty TNHH Minh Long',NULL,NULL),(8,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 20 nhân lực java sang công ty  HUNG LONG',NULL,NULL),(9,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 30 nhân lực java sang công ty TNHH HAI LONG',NULL,NULL),(10,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>\r\n<p>Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT, C&ocirc;ng Cổ phần Truyền số liệu Việt Nam (DCV) l&agrave; một c&ocirc;ng ty ti&ecirc;u biểu cung cấp nh&acirc;n lực CNTT.</p>\r\n<p><strong>NHỮNG LỢI THẾ CHỈ C&Oacute; RI&Ecirc;NG Ở DCV&nbsp;</strong></p>\r\n<div class=\"iframe-1\">&nbsp;</div>\r\n<p>Hiện nay, DCV đang ph&aacute;i cử nh&acirc;n lực C&ocirc;ng nghệ th&ocirc;ng tin tới l&agrave;m việc ngắn v&agrave; d&agrave;i hạn tại c&ocirc;ng ty của kh&aacute;ch h&agrave;ng để thực hiện c&aacute;c c&ocirc;ng việc sau:<br />1. Lập tr&igrave;nh vi&ecirc;n Java (Java core, Strust, Hibernate, Spring, &hellip; )<br />2. Lập tr&igrave;nh vi&ecirc;n PHP<br />3. Lập tr&igrave;nh vi&ecirc;n .Net (C#, VB.net)<br />4. Lập tr&igrave;nh vi&ecirc;n Android<br />5. Lập tr&igrave;nh vi&ecirc;n iOS<br />6. Kiểm thử phần mềm<br />7. Quản trị dự &aacute;n<br />8. Quản l&yacute; hệ thống mạng</p>\r\n<p><strong>NGUY&Ecirc;N TẮC CHUẨN TRONG PHỤC VỤ KH&Aacute;CH H&Agrave;NG</strong></p>\r\n<ul>\r\n<li>Sự chuy&ecirc;n s&acirc;u trong lĩnh vực CNTT gi&uacute;p cho DCV thấu hiểu v&agrave; đ&aacute;p ứng một c&aacute;ch chuy&ecirc;n nghiệp trước những y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</li>\r\n<li>Quy tr&igrave;nh tiếp nhận y&ecirc;u cầu ph&aacute;i cử nh&acirc;n lực từ kh&aacute;ch h&agrave;ng được diễn ra nhanh ch&oacute;ng, chuy&ecirc;n nghiệp</li>\r\n<li>N&acirc;ng cao năng lực đ&aacute;p ứng nguồn lực, đảm bảo cung cấp nguồn lực cho dự &aacute;n</li>\r\n<li>Ứng vi&ecirc;n gắn kết d&agrave;i l&acirc;u, biến động nh&acirc;n sự thấp</li>\r\n<li>Gi&aacute; cả dịch vụ cạnh tranh so với c&aacute;c c&ocirc;ng ty c&ugrave;ng ng&agrave;nh.</li>\r\n</ul>\r\n<p><strong>QUY TR&Igrave;NH PH&Aacute;I CỬ NGUỒN NH&Acirc;N LỰC&nbsp;</strong></p>\r\n<div class=\"iframe-2\">&nbsp;</div>\r\n<p><strong>ĐỘI NGŨ NH&Acirc;N SỰ CỦA DCV</strong></p>\r\n<ul>\r\n<li>Trẻ tuổi, tr&igrave;nh độ học vấn cao;</li>\r\n<li>Chịu được &aacute;p lực, kh&oacute; khăn trong c&ocirc;ng việc;</li>\r\n<li>T&iacute;ch cực học hỏi t&igrave;m tỏi kh&aacute;m ph&aacute; những c&ocirc;ng nghệ, ng&ocirc;n ngữ lập tr&igrave;nh mới;</li>\r\n<li>Th&agrave;nh thạo ngoại ngữ (tiếng Nhật, tiếng Anh&hellip;);</li>\r\n<li>&nbsp;C&oacute; tinh thần cầu tiến, sẵn s&aacute;ng đương đầu với thử th&aacute;ch để trưởng th&agrave;nh hơn;&hellip;</li>\r\n</ul>\r\n<p>Đến với dịch vụ của DCV, c&aacute;c doanh nghiệp c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m giao ph&oacute; to&agrave;n bộ c&ocirc;ng việc quản trị, vận h&agrave;nh hạ tầng phần cứng v&agrave; c&aacute;c ứng dụng phần mềm cho c&aacute;c đơn vị cung cấp dịch vụ thay v&igrave; phải tự thực hiện. Với t&iacute;nh ổn định cao về mặt bằng nh&acirc;n sự ph&aacute;i cử c&ugrave;ng m&ocirc;i trường an to&agrave;n v&agrave; được quản l&yacute; chặt chẽ, DCV cam kết bảo mật th&ocirc;ng tin một c&aacute;ch tuyệt đối cho c&aacute;c doanh nghiệp cũng như những b&iacute; mật c&aacute; nh&acirc;n.</p>','Phái cử 10 nhân lực java sang công ty TNHH MINH BANG','','2020-09-28 15:30:59'),(11,NULL,'<p>Tăng năng lực cạnh tranh v&agrave; tối ưu h&oacute;a nguồn lực l&agrave; b&agrave;i to&aacute;n chung của rất nhiều doanh nghiệp. Trong khi đ&oacute;, việc duy tr&igrave; c&aacute;c hoạt động kh&ocirc;ng phải l&agrave; dịch vụ hay sản phẩm chủ chốt khiến doanh nghiệp phải tốn một khoản đầu tư kh&ocirc;ng hề nhỏ cả về nh&acirc;n lực v&agrave; vật lực. Trong bối cảnh đ&oacute;, việc thu&ecirc; ngo&agrave;i một đối t&aacute;c cung cấp c&aacute;c dịch vụ, đặc biệt l&agrave; c&aacute;c dịch vụ về c&ocirc;ng nghệ th&ocirc;ng tin (CNTT) được xem l&agrave; một giải ph&aacute;p hữu hiệu gi&uacute;p doanh nghiệp tập trung tốt hơn cho c&aacute;c lĩnh vực kinh doanh cốt l&otilde;i. Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; ra đời.</p>','Phái cử 18 nhân lực java sang công ty TNHH DCV',NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_bin,
  `created_at` datetime DEFAULT NULL,
  `email` text COLLATE utf8_bin,
  `name` text COLLATE utf8_bin,
  `sdt` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'a','2020-09-28 17:27:00','a@gmail','a','0'),(2,'tôi muốn tìm hiểu thêm về dịch vụ phái cử nhân lực.hãy liên hệ với tôi sớm nhất có thể','2020-10-02 16:58:16','tienphuong1324@gmail.com','nguyễn văn phương','0981120071');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruitment`
--

DROP TABLE IF EXISTS `recruitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruitment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `details` text COLLATE utf8_bin,
  `experience` text COLLATE utf8_bin,
  `expire_on` datetime DEFAULT NULL,
  `image_link` text COLLATE utf8_bin,
  `job_name` text COLLATE utf8_bin,
  `salary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruitment`
--

LOCK TABLES `recruitment` WRITE;
/*!40000 ALTER TABLE `recruitment` DISABLE KEYS */;
INSERT INTO `recruitment` VALUES (1,'2020-09-28 13:54:54','<p><strong>M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n<p>- Tham gia thiết kế, ph&aacute;t triển v&agrave; tư vấn giải ph&aacute;p cho c&aacute;c dự &aacute;n trong v&agrave; ngo&agrave;i nước v&agrave; c&aacute;c sản phẩm của c&ocirc;ng ty</p>\r\n<ul>\r\n<li>Nghi&ecirc;n cứu c&aacute;c c&ocirc;ng nghệ mới để &aacute;p dụng v&agrave;o c&aacute;c dự &aacute;n của c&ocirc;ng ty</li>\r\n<li>https://lh3.googleusercontent.com/proxy/DvjL3Vk4BOIFb3ddKbfUwafSDNsmYU4skbhrAcWkVFaJaDGrUmG736JlxlYTuyV1wuJH2ztV6ShervLSOGbPqtwKepCxEfhRJCq-HgvMA7tnmSpTtrN0DYr9lvmlHnjlhg</li>\r\n</ul>\r\n<p><strong>Y&ecirc;u cầu</strong></p>\r\n<p>- Tốt nghiệp hoặc sắp tốt nghiệp khoa CNTT, ATTT</p>\r\n<p>- C&oacute; kiến thức về một trong c&aacute;c framework: Spring hoặc ASP .NET (Viết API CRUD cơ bản)</p>\r\n<p>- C&oacute; kiến thức về: HTML, CSS, JS định hướng sử dụng c&aacute;c Framework mới như Angular, React, View</p>\r\n<p>- Biết thiết kế CSDL, nắm được c&aacute;c c&aacute;c quan hệ dữ liệu phổ biến: 1:n, n:n</p>\r\n<p>- Sử dụng được một trong c&aacute;ch hệ CSDL phổ biến như: MySQL, SQL Server, Oracle, MongoDB,...</p>\r\n<p>- Ham học hỏi, đam m&ecirc; c&ocirc;ng việc v&agrave; c&oacute; tinh thần tr&aacute;ch nhiệm cao</p>\r\n<p>Ưu ti&ecirc;n:</p>\r\n<p>- Nhanh nhẹn, tư duy tốt, c&oacute; định hướng l&agrave;m&nbsp;<a href=\"https://vn.joboko.com/t%C3%ACm-vi%E1%BB%87c-l%C3%A0m-fullstack+web+developer\">Fullstack web developer</a></p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601280060166_recruitment1.jpg','LẬP TRÌNH VIÊN PHP','15-20 triệu','full time','2020-09-28 15:04:02'),(2,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279763234_recruitment2.jpg','LẬP TRÌNH VIÊN JAVA','15-20 triệu','full time','2020-09-28 15:04:10'),(3,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279775062_recruitment3.jpg','THIẾT KẾ ĐỒ HỌA','15-20 triệu','full time','2020-09-28 15:04:19'),(4,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279911084_sql.png','PHÂN TÍCH THIẾT KẾ HỆ THỐNG','15-20 triệu','full time','2020-09-28 15:04:29'),(5,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279921885_tảixuống.jpg','LẬP TRÌNH VIÊN PYTHON','15-20 triệu','full time','2020-09-28 15:04:43'),(6,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279935594_ps.jpg','PHOTOSHOP','15-20 triệu','full time','2020-09-28 15:04:52'),(7,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=1 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279958762_recruitment3.jpg','THIẾT KẾ ĐỒ HỌA','5-10 triệu','part ti','2020-09-28 15:05:22'),(8,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601279994197_ban2.jpg','LẬP TRÌNH GAME MOBILE','15-20 triệu','full time','2020-09-28 15:05:38'),(9,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601280014470_blogpost_joker_images_1200x800-01.png','PHÁT TRIỂN PHẦN MỀM C#','15-20 triệu','full time','2020-09-28 15:05:56'),(10,'2020-09-28 13:54:54','<h2><strong>Thiết kế đồ họa thi khối n&agrave;o? V&igrave; sao nhiều người lựa chọn</strong></h2>\r\n<p>Thiết kế đồ họa c&ugrave;ng với c&ocirc;ng nghệ th&ocirc;ng tin l&agrave; những ng&agrave;nh ph&aacute;t triển &ldquo;b&ugrave;ng nổ&rdquo; hiện nay thu h&uacute;t nhiều người theo học. Với đặc điểm ng&agrave;nh l&agrave; mức lương khủng, l&agrave;m việc kh&ocirc;ng g&ograve; b&oacute; thời gian. Đơn giản l&agrave; sử dụng chất x&aacute;m, &oacute;c s&aacute;ng tạo v&agrave; b&agrave;n tay tạo n&ecirc;n những thiết kế đồ họa ấn tượng. Thiết kế đồ họa l&agrave; ng&agrave;nh li&ecirc;n quan đến nghệ thuật kỹ thuật số, vậy thi khối n&agrave;o nếu muốn theo học?</p>\r\n<p>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/thiet-ke-do-hoa-la-gi-n1051.html\"><strong>Thiết kế đồ họa l&agrave; g&igrave;</strong></a>?</p>\r\n<p><img src=\"https://greenwich.edu.vn/upload_images/images/thiet-ke-do-hoa-thi-khoi-gi.JPG\" alt=\"Thiết kế đồ họa thi khối n&agrave;o\" /></p>\r\n<h3><strong>Thiết kế đồ họa thi khối g&igrave;? Thiết kế đồ họa thi khối A1</strong></h3>\r\n<p>Nếu bạn l&agrave; người c&oacute; ước mơ trong tương lai trở th&agrave;nh những designer nhưng lại theo học khối A1 th&igrave; cũng đừng vội lo lắng. Hiện nay thiết kế đồ họa c&oacute; thi ở khối A1 ở rất nhiều trường đại học tr&ecirc;n cả nước. Khối A1( To&aacute;n - L&yacute; - Anh) thi ng&agrave;nh thiết kế đồ họa nghe c&oacute; vẻ hơi &ldquo;tr&aacute;i ngang&rdquo; tuy nhi&ecirc;n sự thật lại kh&ocirc;ng phải như vậy.&nbsp;</p>\r\n<p>Đa số nhiều người nghĩ rằng thi thiết kế đồ họa cần phải thi c&aacute;c m&ocirc;n năng khiếu như vẽ. Thế nhưng, tuyển chọn sinh vi&ecirc;n thiết kế đồ họa từ khối A1 l&agrave; ho&agrave;n to&agrave;n c&oacute; cơ sở. Thiết kế đồ họa l&agrave; sử dụng kỹ thuật vẽ s&aacute;ng tạo tr&ecirc;n c&aacute;c c&ocirc;ng cụ phần mềm. B&ecirc;n cạnh đ&oacute; những t&agrave;i liệu, gi&aacute;o tr&igrave;nh để theo học thiết kế đồ họa từ cơ bản đến n&acirc;ng cao cũng như c&aacute;c phần mềm đa số cần c&aacute;c bạn c&oacute; khả năng ngoại ngữ. B&ecirc;n cạnh khối A1, th&igrave; nhiều trường c&ograve;n c&oacute; x&eacute;t tuyển với khối thi A00( To&aacute;n - L&yacute; - H&oacute;a).&nbsp;</p>\r\n<p>C&oacute; thể bạn quan t&acirc;m:&nbsp;<a href=\"https://greenwich.edu.vn/hoc-thiet-ke-do-hoa-ra-lam-gi-n591.html\"><strong>Thiết kế đồ họa l&agrave;m nghề g&igrave;</strong></a>?</p>\r\n<h3><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o ngo&agrave;i m&ocirc;n năng khiếu? khối D1</strong></h3>\r\n<p><strong>Ng&agrave;nh thiết kế đồ họa thi khối n&agrave;o</strong>&nbsp;ngo&agrave;i m&ocirc;n năng khiếu? B&ecirc;n cạnh khối A, A1 th&igrave; khối D1 (To&aacute;n - Văn - Anh) cũng l&agrave; một trong những khối c&oacute; tuyển sinh ng&agrave;nh thiết kế đồ họa. Nếu bạn l&agrave; học sinh theo học tổ hợp 3 m&ocirc;n n&agrave;y th&igrave; cũng đừng ngại ngần để thi thiết kế đồ họa nh&eacute;. Đ&acirc;y l&agrave; 3 m&ocirc;n học cần thiết về sự tư duy - s&aacute;ng tạo - tr&igrave;nh độ ngoại ngữ. Đều rất quan trọng với một người thiết kế đồ họa trong tương lai. B&ecirc;n cạnh khối D01 th&igrave; ng&agrave;nh thiết kế đồ họa c&ograve;n c&oacute; thi tuyển với 3 khối l&agrave;:</p>','>=2 năm','2020-01-26 00:01:00','http://localhost:8181/images/1601280025420_1_anhchinh.jpg','LẬP TRÌNH C++,C#','15-20 triệu','full time','2020-09-28 15:06:29');
/*!40000 ALTER TABLE `recruitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'USER'),(2,'EDITOR'),(3,'ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alt_name` text COLLATE utf8_bin,
  `created_at` datetime DEFAULT NULL,
  `full_description` text COLLATE utf8_bin,
  `image_link` text COLLATE utf8_bin,
  `is_highlight` int NOT NULL,
  `logo` text COLLATE utf8_bin,
  `service_name` text COLLATE utf8_bin,
  `short_description` text COLLATE utf8_bin,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'phai_cu_nhan_luc','2020-09-26 14:19:06','<p style=\"text-align: left;\"><strong>Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; được ra đời. Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT</strong></p>','http://localhost:8181/images/1601104746318_quytrinhBPO-01-1-720x478.png',1,'http://localhost:8181/images/1601104746316_bpo-icon.png','PHÁI CỬ NHÂN LỰC CNTT','<p style=\"text-align: left;\"><strong>Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; được ra đời. Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT</strong></p>','2020-09-26 14:24:28'),(2,'it_suport','2020-09-26 14:20:11','<p style=\"text-align: left;\"><strong>Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; được ra đời. Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT</strong></p>','http://localhost:8181/images/1601104985212_maintenance-la-gi-15780563443592100903979.jpg',1,'http://localhost:8181/images/1601104957888_banh-ranglogo1-3607.jpg','DỊCH VỤ IT SUPPORT','<p style=\"text-align: left;\"><strong>Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; được ra đời. Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT</strong></p>','2020-09-28 15:10:15'),(3,'gia_cong_pm','2020-09-26 14:21:30','<p style=\"text-align: left;\"><strong>Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; được ra đời. Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT</strong></p>','http://localhost:8181/images/1601104890462_HR-Outsourcing-2-720x478.jpg',1,'http://localhost:8181/images/1601104890461_giacong.png','GIA CÔNG PHẦN MỀM','<p style=\"text-align: left;\"><strong>Để đ&aacute;p ứng nhu cầu về nh&acirc;n sự CNTT, Dịch vụ ph&aacute;i cử nguồn nh&acirc;n lực CNTT đ&atilde; được ra đời. Hiện nay, trong thị trường ph&aacute;i cử nguồn nh&acirc;n lực CNTT</strong></p>','2020-09-26 14:26:26');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modifiled_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiled_date` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,'admin','2020-09-28 11:06:40','tienphuong1324@gmail.com','nguyễn văn phương','$2a$10$iC1fzH6e2FrAOSFnCFAm6e1zEAnTVioGMpT4G.Zfrer2EBTB4RUe2','admin',1),(2,'admin','2020-09-24 15:51:16','admin','2020-09-24 16:09:32','tphuong@gmail.com','nguyễn văn phương','$2a$10$I26imec8GCVB5yLfsNUNFelCto0N5l34vIfPue00gurMt9sGB7Bj.','nguyễn văn phương',1),(3,'admin','2020-09-28 15:07:37','admin','2020-09-28 15:46:45','thanhbui@gmail.com','BÙI VĂN THÀNH','$2a$10$E6HVOhigdb/06bU6tOdzGONUDV4ZRvgS6PC5RuFbunWwDS/lMHAqO','thanhbui',1),(4,'admin','2020-09-28 15:07:59','admin','2020-09-28 15:07:59','longtran@gmail.com','TRẦN MINH LONG','$2a$10$z3H7oxp/eeIDDc9vI0NkfOZ.yyO1Wsl0uwcFreMFxAl26hljwkw.i','longtran',1),(5,'admin','2020-09-28 15:08:23','admin','2020-09-28 16:05:59','khaihoang@gmail.com','Nguyễn Khải Hoàng','$2a$10$LG3Lw3AA6xq46E2qnYoCxeQE8iJmG38B70aUGuePqsYIr/zDvzGji','khaihoang',1),(6,'admin','2020-09-28 15:08:44','admin','2020-09-28 15:08:44','tiennam@gmai.com','Bùi Tiến Nam','$2a$10$7IihX15ChtPG8LA8UV2sLeW0ql/VUmirPnbUCeIb.WAYrvx5euYUy','namtien',1),(7,'admin','2020-10-02 16:55:51','admin','2020-10-02 16:56:07','editor@gmail.com','editor','$2a$10$di0Awyb.G8wZuq/wSbKTI.2UNCqn9kI/a371WLvJgTtaVRurrKP1m','editor',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(7,2),(1,3);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'website_demo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 17:01:29
