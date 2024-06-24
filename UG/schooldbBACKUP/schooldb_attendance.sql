-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_no` varchar(50) NOT NULL,
  `st_no` varchar(50) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`attendance_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('ATT001','st001','2024-05-01','출석'),('ATT002','st001','2024-05-02','지각'),('ATT003','st001','2024-05-03','결석'),('ATT004','st001','2024-05-04','조퇴'),('ATT005','st001','2024-05-05','출석'),('ATT006','st001','2024-05-06','지각'),('ATT007','st001','2024-05-07','결석'),('ATT008','st001','2024-05-08','조퇴'),('ATT009','st001','2024-05-09','출석'),('ATT010','st001','2024-05-10','지각'),('ATT011','st001','2024-05-11','결석'),('ATT012','st001','2024-05-12','조퇴'),('ATT013','st001','2024-05-13','출석'),('ATT014','st001','2024-05-14','지각'),('ATT015','st001','2024-05-15','결석'),('ATT016','st001','2024-05-16','조퇴'),('ATT017','st001','2024-05-17','출석'),('ATT018','st001','2024-05-18','지각'),('ATT019','st001','2024-05-19','결석'),('ATT020','st001','2024-05-20','조퇴'),('ATT021','st001','2024-05-21','출석'),('ATT022','st001','2024-05-22','지각'),('ATT023','st001','2024-05-23','결석'),('ATT024','st001','2024-05-24','조퇴'),('ATT025','st001','2024-05-25','출석'),('ATT026','st001','2024-05-26','지각'),('ATT027','st001','2024-05-27','결석'),('ATT028','st001','2024-05-28','조퇴'),('ATT029','st001','2024-05-29','출석'),('ATT030','st001','2024-05-30','지각'),('ATT031','st001','2024-05-31','결석'),('ATT032','st001','2024-06-01','조퇴'),('ATT033','st001','2024-06-02','출석'),('ATT034','st001','2024-06-03','지각'),('ATT035','st001','2024-06-04','결석'),('ATT036','st001','2024-06-05','조퇴'),('ATT037','st001','2024-06-06','출석'),('ATT038','st001','2024-06-07','지각'),('ATT039','st001','2024-06-08','결석'),('ATT040','st001','2024-06-09','조퇴'),('ATT041','st001','2024-06-10','출석'),('ATT042','st001','2024-06-11','지각'),('ATT043','st001','2024-06-12','결석'),('ATT044','st001','2024-06-13','조퇴'),('ATT045','st001','2024-06-14','출석'),('ATT046','st001','2024-06-15','지각'),('ATT047','st001','2024-06-16','결석'),('ATT048','st001','2024-06-17','조퇴'),('ATT049','st001','2024-06-18','출석'),('ATT050','st001','2024-06-19','지각'),('ATT051','st001','2024-06-20','결석'),('ATT052','st001','2024-06-21','조퇴'),('ATT053','st001','2024-06-22','출석'),('ATT054','st001','2024-06-23','지각'),('ATT055','st001','2024-06-24','결석'),('ATT056','st001','2024-06-25','조퇴'),('ATT057','st001','2024-06-26','출석'),('ATT058','st001','2024-06-27','지각'),('ATT059','st001','2024-06-28','결석'),('ATT060','st001','2024-06-29','조퇴'),('ATT061','st001','2024-06-30','출석');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 19:13:16
