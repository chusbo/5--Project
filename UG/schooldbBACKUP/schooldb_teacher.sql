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
INSERT INTO `teacher` VALUES ('T001','김철수','1975-01-01','M','서울시 강남구','010-1111-2222','2000-03-01','kor','tea_001','재직중'),('T002','정영미','1995-12-16','F','대전광역시 서구','010-1231-3401','2015-02-01','eng','tea_002','재직중'),('T003','박민수','1990-05-20','M','서울시 송파구','010-3333-4444','2010-09-01','mat','tea_003','재직중'),('T004','심다혜','1991-06-11','F','서울시 마포구','010-4444-5555','2008-07-01','sci','tea_004','재직중'),('T005','홍길동','1980-08-15','M','서울시 종로구','010-5555-6666','2005-04-01','phy','tea_005','재직중'),('T006','장수형','2001-08-05','F','서울시 강동구','010-6666-7777','2012-11-01','mus','tea_006','재직중'),('T007','김영수','1987-03-10','M','서울시 은평구','010-7777-8888','2013-06-01','art','tea_007','재직중'),('T008','장미경','1984-02-28','F','서울시 동작구','010-8888-9999','2011-01-01','soc','tea_008','재직중'),('T009','고영민','1970-09-23','M','서울시 노원구','010-9999-0000','2003-05-01','his','tea_009','재직중'),('T010','이수진','1981-06-22','F','서울시 성동구','010-0000-1111','2009-08-01','inf','tea_010','재직중'),('T011','박정호','1985-11-09','M','서울시 중랑구','010-1111-2222','2014-02-01','tec','tea_011','재직중'),('T012','김민정','1977-09-29','F','서울시 광진구','010-2222-3333','2016-01-01','eth','tea_012','휴직중');
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

-- Dump completed on 2024-06-24 19:13:16
