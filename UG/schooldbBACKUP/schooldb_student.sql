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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `st_no` varchar(50) NOT NULL,
  `st_name` varchar(50) DEFAULT NULL,
  `st_birth` varchar(50) DEFAULT NULL,
  `st_gender` varchar(10) DEFAULT NULL,
  `st_addr` varchar(50) DEFAULT NULL,
  `st_phone` varchar(50) DEFAULT NULL,
  `st_parent_phone` varchar(50) DEFAULT NULL,
  `st_grade` varchar(50) DEFAULT NULL,
  `tc_no` varchar(50) DEFAULT NULL,
  `st_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`st_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('S001','민수','2009-01-01','M','대전광역시 서구','010-0000-0001','010-1000-0001','1','T001','재학중'),('S002','지민','2009-02-02','F','대전광역시 동구','010-0000-0002','010-1000-0002','1','T002','재학중'),('S003','서준','2009-03-03','M','대전광역시 중구','010-0000-0003','010-1000-0003','1','T003','재학중'),('S004','유진','2009-04-04','F','대전광역시 유성구','010-0000-0004','010-1000-0004','1','T004','재학중'),('S005','도윤','2009-05-05','M','대전광역시 대덕구','010-0000-0005','010-1000-0005','1','T005','재학중'),('S006','수민','2009-06-06','F','대전광역시 서구','010-0000-0006','010-1000-0006','1','T006','재학중'),('S007','시우','2009-07-07','M','대전광역시 동구','010-0000-0007','010-1000-0007','1','T007','재학중'),('S008','서연','2009-08-08','F','대전광역시 중구','010-0000-0008','010-1000-0008','1','T008','재학중'),('S009','재윤','2009-09-09','M','대전광역시 유성구','010-0000-0009','010-1000-0009','1','T009','재학중'),('S010','다은','2009-10-10','F','대전광역시 대덕구','010-0000-0010','010-1000-0010','1','T010','재학중'),('S011','현우','2008-01-01','M','대전광역시 서구','010-0000-0011','010-1000-0011','2','T001','재학중'),('S012','지우','2008-02-02','F','대전광역시 동구','010-0000-0012','010-1000-0012','2','T002','재학중'),('S013','준서','2008-03-03','M','대전광역시 중구','010-0000-0013','010-1000-0013','2','T003','재학중'),('S014','예은','2008-04-04','F','대전광역시 유성구','010-0000-0014','010-1000-0014','2','T004','재학중'),('S015','하준','2008-05-05','M','대전광역시 대덕구','010-0000-0015','010-1000-0015','2','T005','재학중'),('S016','지안','2008-06-06','F','대전광역시 서구','010-0000-0016','010-1000-0016','2','T006','재학중'),('S017','민준','2008-07-07','M','대전광역시 동구','010-0000-0017','010-1000-0017','2','T007','재학중'),('S018','유진','2008-08-08','F','대전광역시 중구','010-0000-0018','010-1000-0018','2','T008','재학중'),('S019','윤호','2008-09-09','M','대전광역시 유성구','010-0000-0019','010-1000-0019','2','T009','재학중'),('S020','아린','2008-10-10','F','대전광역시 대덕구','010-0000-0020','010-1000-0020','2','T010','재학중'),('S021','서현','2007-01-01','M','대전광역시 서구','010-0000-0021','010-1000-0021','3','T001','재학중'),('S022','민지','2007-02-02','F','대전광역시 동구','010-0000-0022','010-1000-0022','3','T002','재학중'),('S023','도훈','2007-03-03','M','대전광역시 중구','010-0000-0023','010-1000-0023','3','T003','재학중'),('S024','수아','2007-04-04','F','대전광역시 유성구','010-0000-0024','010-1000-0024','3','T004','재학중'),('S025','지훈','2007-05-05','M','대전광역시 대덕구','010-0000-0025','010-1000-0025','3','T005','재학중'),('S026','서윤','2007-06-06','F','대전광역시 서구','010-0000-0026','010-1000-0026','3','T006','재학중'),('S027','도현','2007-07-07','M','대전광역시 동구','010-0000-0027','010-1000-0027','3','T007','재학중'),('S028','예진','2007-08-08','F','대전광역시 중구','010-0000-0028','010-1000-0028','3','T008','재학중'),('S029','태윤','2007-09-09','M','대전광역시 유성구','010-0000-0029','010-1000-0029','3','T009','재학중'),('S030','하은','2007-10-10','F','대전광역시 대덕구','010-0000-0030','010-1000-0030','3','T010','재학중');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
