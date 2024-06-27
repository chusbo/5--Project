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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_no` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `article` varchar(4000) DEFAULT NULL,
  `cre_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (2,'2024학년도 2학기 자유학기제 디자인 강사 모집 공고','1. 채용인원 : 디자인프로그램 (어도비 인디자인1명, Zeplin 1명)\r\n\r\n2. 운영일시 및 시간 : 화요일 2,3교시(09:55~11:35), 4,5교시(12:45~14:25)\r\n\r\n3. 공고기간 : 2024. 7.1.(월) ~ 2024. 7.5.(금)\r\n\r\n4. 서류접수 : 2024. 7.13.(토) ~ 2024. 7.19.(금) 16:00까지\r\n\r\n5. 서류심사 : 2024. 7.20.(목) 개별 통지\r\n\r\n6. 접수장소 : 본부교무실(앞동 1층)\r\n\r\n7. 제출서류 : 첨부파일 확인해주세요.\r\n\r\n \r\n\r\n많은 지원 부탁드립니다.','2024-06-27 11:40:56'),(3,'2024년 출결관련 양식','24년도 결석계\r\n\r\n-24년도 교외체험학습신청서 및 보고서\r\n\r\n-24년도 교외체험학습위임신청서 양식입니다.\r\n\r\n\r\n\r\n24년도에 가정학습이 폐지되었습니다. \r\n\r\n24. 5. 1.부터 적용되는 코로나 관련 가이드라인 폐지에 따라서 양식이 변경되었습니다. ','2024-06-27 11:41:26'),(4,'2024년 7월 안전점검의 날 홍보자료','2024년 4월 안전점검의 날 홍보자료 교육\r\n\r\n\r\n\r\n1. 일시: 2024.7.8.(월) 조·종례 시간\r\n\r\n2. 내용: 교육시설물 화재예방 점검','2024-06-27 11:42:00'),(5,'2024학년도 학생봉사활동 운영 계획','2024학년도 학생봉사활동 운영 계획 안내입니다.\r\n\r\n자세한 사항은 첨부파일을 확인해주세요.\r\n\r\n\r\n\r\n1. 2024학년도 학생봉사활동 운영계획\r\n\r\n2. 학생 개인 봉사활동 계획서 및 확인서','2024-06-27 11:42:25'),(6,'2024학년도 하반기 학교교육과정설명회 안내','학부모님께 24학년도 하반기 교육과정설명회를 안내합니다.\r\n\r\n 1. 일시: 2024.07.26.(금) 18:00\r\n\r\n 2. 장소: 웅비관 및 각 반 교실\r\n\r\n 3. 연수자료: e 알리미 발송 예정, 첨부파일 참조\r\n\r\n 4. 기타: 주변 진입로 및 정문 왼편 수영장 공사로 차량 진출입이 매우 혼잡합니다.\r\n\r\n대중교통이나 도보로 방문해주시길 부탁드립니다. ','2024-06-27 11:47:14'),(7,'2024학년도 여름철 안전점검 결과표','	\r\n1. 점검기간: 2024.6.1.~2024.6.9.\r\n\r\n2. 점검내용: 그린중학교 6개동 안전점검','2024-06-27 11:48:07');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 21:31:22
