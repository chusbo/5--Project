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
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `tc_no` varchar(50) NOT NULL,
  `tc_name` varchar(50) DEFAULT NULL,
  `tc_birth` varchar(50) DEFAULT NULL,
  `tc_gender` varchar(10) DEFAULT NULL,
  `tc_addr` varchar(50) DEFAULT NULL,
  `tc_phone` varchar(50) DEFAULT NULL,
  `tc_hired` date DEFAULT NULL,
  `sub_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `tc_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('tc001','김국어','1974-09-16','남자','대전광역시 서구 둔산동 761','010-5265-3483','2003-12-23','kor','user001','재직'),('tc002','이영어','1985-05-05','남자','대전광역시 서구 둔산동 439','010-1517-4409','2018-05-11','eng','user002','재직'),('tc003','박수학','1978-07-08','여자','대전광역시 서구 둔산동 121','010-9665-4694','2010-12-17','mat','user003','재직'),('tc004','최사회','1986-08-06','여자','대전광역시 서구 둔산동 540','010-2847-8021','2003-10-31','soc','user004','재직'),('tc005','곽과학','1977-07-08','남자','대전광역시 서구 둔산동 921','010-3781-1260','2012-02-21','sci','user005','재직'),('tc006','오역사','1972-01-08','남자','대전광역시 서구 둔산동 782','010-8604-9554','2004-10-19','his','user006','재직'),('tc007','장도덕','1972-04-12','여자','대전광역시 서구 둔산동 564','010-8803-7073','2021-12-06','eth','user007','재직'),('tc008','채체육','1977-02-14','남자','대전광역시 서구 둔산동 399','010-7177-3896','2019-06-20','phy','user008','재직'),('tc009','이미술','1986-02-15','여자','대전광역시 서구 둔산동 810','010-1135-1374','2008-06-25','art','user009','재직'),('tc010','강기가','1976-05-26','여자','대전광역시 서구 둔산동 842','010-5290-1191','2000-03-16','tec','user010','재직'),('tc011','정휴직','1983-09-12','남자','대전광역시 서구 둔산동 939','010-4993-6793','2022-01-01','inf','user011','휴직'),('tc012','관리자','1979-02-07','여자','대전광역시 서구 둔산동 533','010-9275-0378','2009-12-14','mus','admin','재직');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 17:04:20
