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
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `grade_no` int NOT NULL AUTO_INCREMENT,
  `st_no` varchar(50) DEFAULT NULL,
  `sub_no` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`grade_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1442 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,'st001','kor','3학년1학기',5),(2,'st001','kor','3학년2학기',46),(3,'st001','eng','3학년1학기',14),(4,'st001','eng','3학년2학기',31),(5,'st001','mat','3학년1학기',14),(6,'st001','mat','3학년2학기',76),(7,'st001','soc','3학년1학기',39),(8,'st001','soc','3학년2학기',67),(9,'st001','sci','3학년1학기',17),(10,'st001','sci','3학년2학기',86),(11,'st001','his','3학년1학기',75),(12,'st001','his','3학년2학기',17),(13,'st001','eth','3학년1학기',64),(14,'st001','eth','3학년2학기',66),(15,'st001','phy','3학년1학기',39),(16,'st001','phy','3학년2학기',98),(17,'st001','art','3학년1학기',69),(18,'st001','art','3학년2학기',53),(19,'st001','tec','3학년1학기',59),(20,'st001','tec','3학년2학기',34),(21,'st001','inf','3학년1학기',95),(22,'st001','inf','3학년2학기',70),(23,'st001','mus','3학년1학기',67),(24,'st001','mus','3학년2학기',25),(25,'st002','kor','3학년1학기',25),(26,'st002','kor','3학년2학기',50),(27,'st002','eng','3학년1학기',74),(28,'st002','eng','3학년2학기',21),(29,'st002','mat','3학년1학기',83),(30,'st002','mat','3학년2학기',49),(31,'st002','soc','3학년1학기',100),(32,'st002','soc','3학년2학기',50),(33,'st002','sci','3학년1학기',52),(34,'st002','sci','3학년2학기',10),(35,'st002','his','3학년1학기',96),(36,'st002','his','3학년2학기',48),(37,'st002','eth','3학년1학기',52),(38,'st002','eth','3학년2학기',17),(39,'st002','phy','3학년1학기',31),(40,'st002','phy','3학년2학기',2),(41,'st002','art','3학년1학기',21),(42,'st002','art','3학년2학기',97),(43,'st002','tec','3학년1학기',17),(44,'st002','tec','3학년2학기',0),(45,'st002','inf','3학년1학기',50),(46,'st002','inf','3학년2학기',46),(47,'st002','mus','3학년1학기',81),(48,'st002','mus','3학년2학기',65),(49,'st003','kor','3학년1학기',84),(50,'st003','kor','3학년2학기',21),(51,'st003','eng','3학년1학기',57),(52,'st003','eng','3학년2학기',19),(53,'st003','mat','3학년1학기',26),(54,'st003','mat','3학년2학기',75),(55,'st003','soc','3학년1학기',95),(56,'st003','soc','3학년2학기',49),(57,'st003','sci','3학년1학기',59),(58,'st003','sci','3학년2학기',50),(59,'st003','his','3학년1학기',73),(60,'st003','his','3학년2학기',15),(61,'st003','eth','3학년1학기',56),(62,'st003','eth','3학년2학기',36),(63,'st003','phy','3학년1학기',12),(64,'st003','phy','3학년2학기',52),(65,'st003','art','3학년1학기',22),(66,'st003','art','3학년2학기',55),(67,'st003','tec','3학년1학기',9),(68,'st003','tec','3학년2학기',80),(69,'st003','inf','3학년1학기',74),(70,'st003','inf','3학년2학기',26),(71,'st003','mus','3학년1학기',11),(72,'st003','mus','3학년2학기',78),(73,'st004','kor','3학년1학기',57),(74,'st004','kor','3학년2학기',48),(75,'st004','eng','3학년1학기',72),(76,'st004','eng','3학년2학기',15),(77,'st004','mat','3학년1학기',61),(78,'st004','mat','3학년2학기',59),(79,'st004','soc','3학년1학기',10),(80,'st004','soc','3학년2학기',78),(81,'st004','sci','3학년1학기',56),(82,'st004','sci','3학년2학기',47),(83,'st004','his','3학년1학기',67),(84,'st004','his','3학년2학기',93),(85,'st004','eth','3학년1학기',61),(86,'st004','eth','3학년2학기',28),(87,'st004','phy','3학년1학기',57),(88,'st004','phy','3학년2학기',100),(89,'st004','art','3학년1학기',27),(90,'st004','art','3학년2학기',39),(91,'st004','tec','3학년1학기',13),(92,'st004','tec','3학년2학기',48),(93,'st004','inf','3학년1학기',1),(94,'st004','inf','3학년2학기',63),(95,'st004','mus','3학년1학기',9),(96,'st004','mus','3학년2학기',60),(97,'st005','kor','3학년1학기',71),(98,'st005','kor','3학년2학기',74),(99,'st005','eng','3학년1학기',57),(100,'st005','eng','3학년2학기',64),(101,'st005','mat','3학년1학기',47),(102,'st005','mat','3학년2학기',43),(103,'st005','soc','3학년1학기',77),(104,'st005','soc','3학년2학기',53),(105,'st005','sci','3학년1학기',35),(106,'st005','sci','3학년2학기',15),(107,'st005','his','3학년1학기',74),(108,'st005','his','3학년2학기',23),(109,'st005','eth','3학년1학기',94),(110,'st005','eth','3학년2학기',97),(111,'st005','phy','3학년1학기',4),(112,'st005','phy','3학년2학기',33),(113,'st005','art','3학년1학기',50),(114,'st005','art','3학년2학기',52),(115,'st005','tec','3학년1학기',11),(116,'st005','tec','3학년2학기',100),(117,'st005','inf','3학년1학기',64),(118,'st005','inf','3학년2학기',20),(119,'st005','mus','3학년1학기',9),(120,'st005','mus','3학년2학기',89),(121,'st006','kor','3학년1학기',13),(122,'st006','kor','3학년2학기',1),(123,'st006','eng','3학년1학기',68),(124,'st006','eng','3학년2학기',32),(125,'st006','mat','3학년1학기',61),(126,'st006','mat','3학년2학기',5),(127,'st006','soc','3학년1학기',43),(128,'st006','soc','3학년2학기',0),(129,'st006','sci','3학년1학기',75),(130,'st006','sci','3학년2학기',70),(131,'st006','his','3학년1학기',27),(132,'st006','his','3학년2학기',25),(133,'st006','eth','3학년1학기',43),(134,'st006','eth','3학년2학기',40),(135,'st006','phy','3학년1학기',72),(136,'st006','phy','3학년2학기',40),(137,'st006','art','3학년1학기',84),(138,'st006','art','3학년2학기',97),(139,'st006','tec','3학년1학기',35),(140,'st006','tec','3학년2학기',84),(141,'st006','inf','3학년1학기',12),(142,'st006','inf','3학년2학기',13),(143,'st006','mus','3학년1학기',30),(144,'st006','mus','3학년2학기',9),(145,'st007','kor','3학년1학기',57),(146,'st007','kor','3학년2학기',55),(147,'st007','eng','3학년1학기',7),(148,'st007','eng','3학년2학기',69),(149,'st007','mat','3학년1학기',21),(150,'st007','mat','3학년2학기',2),(151,'st007','soc','3학년1학기',49),(152,'st007','soc','3학년2학기',37),(153,'st007','sci','3학년1학기',38),(154,'st007','sci','3학년2학기',79),(155,'st007','his','3학년1학기',81),(156,'st007','his','3학년2학기',65),(157,'st007','eth','3학년1학기',83),(158,'st007','eth','3학년2학기',19),(159,'st007','phy','3학년1학기',49),(160,'st007','phy','3학년2학기',88),(161,'st007','art','3학년1학기',90),(162,'st007','art','3학년2학기',87),(163,'st007','tec','3학년1학기',65),(164,'st007','tec','3학년2학기',63),(165,'st007','inf','3학년1학기',18),(166,'st007','inf','3학년2학기',4),(167,'st007','mus','3학년1학기',66),(168,'st007','mus','3학년2학기',17),(169,'st008','kor','3학년1학기',88),(170,'st008','kor','3학년2학기',88),(171,'st008','eng','3학년1학기',74),(172,'st008','eng','3학년2학기',6),(173,'st008','mat','3학년1학기',9),(174,'st008','mat','3학년2학기',28),(175,'st008','soc','3학년1학기',14),(176,'st008','soc','3학년2학기',86),(177,'st008','sci','3학년1학기',85),(178,'st008','sci','3학년2학기',67),(179,'st008','his','3학년1학기',79),(180,'st008','his','3학년2학기',93),(181,'st008','eth','3학년1학기',27),(182,'st008','eth','3학년2학기',60),(183,'st008','phy','3학년1학기',18),(184,'st008','phy','3학년2학기',11),(185,'st008','art','3학년1학기',2),(186,'st008','art','3학년2학기',79),(187,'st008','tec','3학년1학기',86),(188,'st008','tec','3학년2학기',92),(189,'st008','inf','3학년1학기',2),(190,'st008','inf','3학년2학기',37),(191,'st008','mus','3학년1학기',79),(192,'st008','mus','3학년2학기',81),(193,'st009','kor','3학년1학기',68),(194,'st009','kor','3학년2학기',100),(195,'st009','eng','3학년1학기',91),(196,'st009','eng','3학년2학기',58),(197,'st009','mat','3학년1학기',15),(198,'st009','mat','3학년2학기',3),(199,'st009','soc','3학년1학기',71),(200,'st009','soc','3학년2학기',42),(201,'st009','sci','3학년1학기',0),(202,'st009','sci','3학년2학기',77),(203,'st009','his','3학년1학기',82),(204,'st009','his','3학년2학기',78),(205,'st009','eth','3학년1학기',43),(206,'st009','eth','3학년2학기',83),(207,'st009','phy','3학년1학기',86),(208,'st009','phy','3학년2학기',81),(209,'st009','art','3학년1학기',44),(210,'st009','art','3학년2학기',79),(211,'st009','tec','3학년1학기',60),(212,'st009','tec','3학년2학기',64),(213,'st009','inf','3학년1학기',39),(214,'st009','inf','3학년2학기',2),(215,'st009','mus','3학년1학기',98),(216,'st009','mus','3학년2학기',79),(217,'st010','kor','3학년1학기',1),(218,'st010','kor','3학년2학기',73),(219,'st010','eng','3학년1학기',60),(220,'st010','eng','3학년2학기',80),(221,'st010','mat','3학년1학기',17),(222,'st010','mat','3학년2학기',48),(223,'st010','soc','3학년1학기',91),(224,'st010','soc','3학년2학기',7),(225,'st010','sci','3학년1학기',64),(226,'st010','sci','3학년2학기',99),(227,'st010','his','3학년1학기',100),(228,'st010','his','3학년2학기',2),(229,'st010','eth','3학년1학기',13),(230,'st010','eth','3학년2학기',61),(231,'st010','phy','3학년1학기',63),(232,'st010','phy','3학년2학기',30),(233,'st010','art','3학년1학기',65),(234,'st010','art','3학년2학기',35),(235,'st010','tec','3학년1학기',79),(236,'st010','tec','3학년2학기',90),(237,'st010','inf','3학년1학기',13),(238,'st010','inf','3학년2학기',97),(239,'st010','mus','3학년1학기',42),(240,'st010','mus','3학년2학기',22),(241,'st011','kor','2학년1학기',86),(242,'st011','kor','2학년2학기',60),(243,'st011','eng','2학년1학기',42),(244,'st011','eng','2학년2학기',30),(245,'st011','mat','2학년1학기',27),(246,'st011','mat','2학년2학기',43),(247,'st011','soc','2학년1학기',36),(248,'st011','soc','2학년2학기',49),(249,'st011','sci','2학년1학기',38),(250,'st011','sci','2학년2학기',41),(251,'st011','his','2학년1학기',94),(252,'st011','his','2학년2학기',44),(253,'st011','eth','2학년1학기',41),(254,'st011','eth','2학년2학기',72),(255,'st011','phy','2학년1학기',35),(256,'st011','phy','2학년2학기',62),(257,'st011','art','2학년1학기',2),(258,'st011','art','2학년2학기',29),(259,'st011','tec','2학년1학기',38),(260,'st011','tec','2학년2학기',1),(261,'st011','inf','2학년1학기',95),(262,'st011','inf','2학년2학기',69),(263,'st011','mus','2학년1학기',60),(264,'st011','mus','2학년2학기',94),(265,'st012','kor','2학년1학기',88),(266,'st012','kor','2학년2학기',57),(267,'st012','eng','2학년1학기',20),(268,'st012','eng','2학년2학기',33),(269,'st012','mat','2학년1학기',3),(270,'st012','mat','2학년2학기',16),(271,'st012','soc','2학년1학기',75),(272,'st012','soc','2학년2학기',22),(273,'st012','sci','2학년1학기',89),(274,'st012','sci','2학년2학기',75),(275,'st012','his','2학년1학기',10),(276,'st012','his','2학년2학기',27),(277,'st012','eth','2학년1학기',3),(278,'st012','eth','2학년2학기',36),(279,'st012','phy','2학년1학기',73),(280,'st012','phy','2학년2학기',52),(281,'st012','art','2학년1학기',45),(282,'st012','art','2학년2학기',66),(283,'st012','tec','2학년1학기',96),(284,'st012','tec','2학년2학기',80),(285,'st012','inf','2학년1학기',13),(286,'st012','inf','2학년2학기',26),(287,'st012','mus','2학년1학기',93),(288,'st012','mus','2학년2학기',82),(289,'st013','kor','2학년1학기',33),(290,'st013','kor','2학년2학기',20),(291,'st013','eng','2학년1학기',0),(292,'st013','eng','2학년2학기',43),(293,'st013','mat','2학년1학기',15),(294,'st013','mat','2학년2학기',44),(295,'st013','soc','2학년1학기',77),(296,'st013','soc','2학년2학기',50),(297,'st013','sci','2학년1학기',21),(298,'st013','sci','2학년2학기',55),(299,'st013','his','2학년1학기',12),(300,'st013','his','2학년2학기',95),(301,'st013','eth','2학년1학기',36),(302,'st013','eth','2학년2학기',97),(303,'st013','phy','2학년1학기',76),(304,'st013','phy','2학년2학기',91),(305,'st013','art','2학년1학기',24),(306,'st013','art','2학년2학기',50),(307,'st013','tec','2학년1학기',76),(308,'st013','tec','2학년2학기',29),(309,'st013','inf','2학년1학기',17),(310,'st013','inf','2학년2학기',100),(311,'st013','mus','2학년1학기',46),(312,'st013','mus','2학년2학기',30),(313,'st014','kor','2학년1학기',13),(314,'st014','kor','2학년2학기',75),(315,'st014','eng','2학년1학기',34),(316,'st014','eng','2학년2학기',47),(317,'st014','mat','2학년1학기',33),(318,'st014','mat','2학년2학기',24),(319,'st014','soc','2학년1학기',23),(320,'st014','soc','2학년2학기',44),(321,'st014','sci','2학년1학기',49),(322,'st014','sci','2학년2학기',14),(323,'st014','his','2학년1학기',23),(324,'st014','his','2학년2학기',73),(325,'st014','eth','2학년1학기',96),(326,'st014','eth','2학년2학기',58),(327,'st014','phy','2학년1학기',4),(328,'st014','phy','2학년2학기',47),(329,'st014','art','2학년1학기',21),(330,'st014','art','2학년2학기',67),(331,'st014','tec','2학년1학기',68),(332,'st014','tec','2학년2학기',41),(333,'st014','inf','2학년1학기',1),(334,'st014','inf','2학년2학기',83),(335,'st014','mus','2학년1학기',11),(336,'st014','mus','2학년2학기',9),(337,'st015','kor','2학년1학기',12),(338,'st015','kor','2학년2학기',32),(339,'st015','eng','2학년1학기',26),(340,'st015','eng','2학년2학기',32),(341,'st015','mat','2학년1학기',84),(342,'st015','mat','2학년2학기',20),(343,'st015','soc','2학년1학기',52),(344,'st015','soc','2학년2학기',99),(345,'st015','sci','2학년1학기',38),(346,'st015','sci','2학년2학기',95),(347,'st015','his','2학년1학기',59),(348,'st015','his','2학년2학기',11),(349,'st015','eth','2학년1학기',80),(350,'st015','eth','2학년2학기',63),(351,'st015','phy','2학년1학기',78),(352,'st015','phy','2학년2학기',0),(353,'st015','art','2학년1학기',68),(354,'st015','art','2학년2학기',39),(355,'st015','tec','2학년1학기',91),(356,'st015','tec','2학년2학기',35),(357,'st015','inf','2학년1학기',6),(358,'st015','inf','2학년2학기',25),(359,'st015','mus','2학년1학기',7),(360,'st015','mus','2학년2학기',63),(361,'st016','kor','2학년1학기',90),(362,'st016','kor','2학년2학기',59),(363,'st016','eng','2학년1학기',26),(364,'st016','eng','2학년2학기',55),(365,'st016','mat','2학년1학기',94),(366,'st016','mat','2학년2학기',6),(367,'st016','soc','2학년1학기',50),(368,'st016','soc','2학년2학기',29),(369,'st016','sci','2학년1학기',100),(370,'st016','sci','2학년2학기',6),(371,'st016','his','2학년1학기',34),(372,'st016','his','2학년2학기',54),(373,'st016','eth','2학년1학기',67),(374,'st016','eth','2학년2학기',72),(375,'st016','phy','2학년1학기',58),(376,'st016','phy','2학년2학기',75),(377,'st016','art','2학년1학기',1),(378,'st016','art','2학년2학기',80),(379,'st016','tec','2학년1학기',97),(380,'st016','tec','2학년2학기',44),(381,'st016','inf','2학년1학기',29),(382,'st016','inf','2학년2학기',14),(383,'st016','mus','2학년1학기',83),(384,'st016','mus','2학년2학기',73),(385,'st017','kor','2학년1학기',12),(386,'st017','kor','2학년2학기',47),(387,'st017','eng','2학년1학기',99),(388,'st017','eng','2학년2학기',50),(389,'st017','mat','2학년1학기',54),(390,'st017','mat','2학년2학기',18),(391,'st017','soc','2학년1학기',33),(392,'st017','soc','2학년2학기',7),(393,'st017','sci','2학년1학기',40),(394,'st017','sci','2학년2학기',78),(395,'st017','his','2학년1학기',70),(396,'st017','his','2학년2학기',15),(397,'st017','eth','2학년1학기',65),(398,'st017','eth','2학년2학기',80),(399,'st017','phy','2학년1학기',3),(400,'st017','phy','2학년2학기',80),(401,'st017','art','2학년1학기',88),(402,'st017','art','2학년2학기',99),(403,'st017','tec','2학년1학기',30),(404,'st017','tec','2학년2학기',56),(405,'st017','inf','2학년1학기',89),(406,'st017','inf','2학년2학기',75),(407,'st017','mus','2학년1학기',8),(408,'st017','mus','2학년2학기',16),(409,'st018','kor','2학년1학기',58),(410,'st018','kor','2학년2학기',42),(411,'st018','eng','2학년1학기',36),(412,'st018','eng','2학년2학기',54),(413,'st018','mat','2학년1학기',63),(414,'st018','mat','2학년2학기',51),(415,'st018','soc','2학년1학기',66),(416,'st018','soc','2학년2학기',78),(417,'st018','sci','2학년1학기',90),(418,'st018','sci','2학년2학기',13),(419,'st018','his','2학년1학기',0),(420,'st018','his','2학년2학기',62),(421,'st018','eth','2학년1학기',9),(422,'st018','eth','2학년2학기',62),(423,'st018','phy','2학년1학기',82),(424,'st018','phy','2학년2학기',21),(425,'st018','art','2학년1학기',61),(426,'st018','art','2학년2학기',43),(427,'st018','tec','2학년1학기',31),(428,'st018','tec','2학년2학기',27),(429,'st018','inf','2학년1학기',43),(430,'st018','inf','2학년2학기',34),(431,'st018','mus','2학년1학기',39),(432,'st018','mus','2학년2학기',95),(433,'st019','kor','2학년1학기',55),(434,'st019','kor','2학년2학기',94),(435,'st019','eng','2학년1학기',100),(436,'st019','eng','2학년2학기',17),(437,'st019','mat','2학년1학기',90),(438,'st019','mat','2학년2학기',96),(439,'st019','soc','2학년1학기',8),(440,'st019','soc','2학년2학기',57),(441,'st019','sci','2학년1학기',57),(442,'st019','sci','2학년2학기',16),(443,'st019','his','2학년1학기',10),(444,'st019','his','2학년2학기',3),(445,'st019','eth','2학년1학기',88),(446,'st019','eth','2학년2학기',26),(447,'st019','phy','2학년1학기',69),(448,'st019','phy','2학년2학기',66),(449,'st019','art','2학년1학기',23),(450,'st019','art','2학년2학기',20),(451,'st019','tec','2학년1학기',29),(452,'st019','tec','2학년2학기',85),(453,'st019','inf','2학년1학기',34),(454,'st019','inf','2학년2학기',20),(455,'st019','mus','2학년1학기',99),(456,'st019','mus','2학년2학기',29),(457,'st020','kor','2학년1학기',53),(458,'st020','kor','2학년2학기',78),(459,'st020','eng','2학년1학기',30),(460,'st020','eng','2학년2학기',15),(461,'st020','mat','2학년1학기',88),(462,'st020','mat','2학년2학기',91),(463,'st020','soc','2학년1학기',92),(464,'st020','soc','2학년2학기',85),(465,'st020','sci','2학년1학기',50),(466,'st020','sci','2학년2학기',96),(467,'st020','his','2학년1학기',25),(468,'st020','his','2학년2학기',43),(469,'st020','eth','2학년1학기',38),(470,'st020','eth','2학년2학기',60),(471,'st020','phy','2학년1학기',87),(472,'st020','phy','2학년2학기',54),(473,'st020','art','2학년1학기',9),(474,'st020','art','2학년2학기',84),(475,'st020','tec','2학년1학기',93),(476,'st020','tec','2학년2학기',9),(477,'st020','inf','2학년1학기',69),(478,'st020','inf','2학년2학기',16),(479,'st020','mus','2학년1학기',74),(480,'st020','mus','2학년2학기',22),(481,'st021','kor','1학년1학기',91),(482,'st021','kor','1학년2학기',87),(483,'st021','eng','1학년1학기',59),(484,'st021','eng','1학년2학기',34),(485,'st021','mat','1학년1학기',94),(486,'st021','mat','1학년2학기',65),(487,'st021','soc','1학년1학기',43),(488,'st021','soc','1학년2학기',24),(489,'st021','sci','1학년1학기',89),(490,'st021','sci','1학년2학기',72),(491,'st021','his','1학년1학기',92),(492,'st021','his','1학년2학기',45),(493,'st021','eth','1학년1학기',50),(494,'st021','eth','1학년2학기',15),(495,'st021','phy','1학년1학기',25),(496,'st021','phy','1학년2학기',82),(497,'st021','art','1학년1학기',31),(498,'st021','art','1학년2학기',11),(499,'st021','tec','1학년1학기',62),(500,'st021','tec','1학년2학기',78),(501,'st021','inf','1학년1학기',3),(502,'st021','inf','1학년2학기',82),(503,'st021','mus','1학년1학기',97),(504,'st021','mus','1학년2학기',41),(505,'st022','kor','1학년1학기',16),(506,'st022','kor','1학년2학기',56),(507,'st022','eng','1학년1학기',31),(508,'st022','eng','1학년2학기',89),(509,'st022','mat','1학년1학기',50),(510,'st022','mat','1학년2학기',85),(511,'st022','soc','1학년1학기',74),(512,'st022','soc','1학년2학기',15),(513,'st022','sci','1학년1학기',54),(514,'st022','sci','1학년2학기',25),(515,'st022','his','1학년1학기',62),(516,'st022','his','1학년2학기',36),(517,'st022','eth','1학년1학기',97),(518,'st022','eth','1학년2학기',71),(519,'st022','phy','1학년1학기',65),(520,'st022','phy','1학년2학기',14),(521,'st022','art','1학년1학기',75),(522,'st022','art','1학년2학기',31),(523,'st022','tec','1학년1학기',31),(524,'st022','tec','1학년2학기',62),(525,'st022','inf','1학년1학기',15),(526,'st022','inf','1학년2학기',94),(527,'st022','mus','1학년1학기',18),(528,'st022','mus','1학년2학기',14),(529,'st023','kor','1학년1학기',16),(530,'st023','kor','1학년2학기',37),(531,'st023','eng','1학년1학기',38),(532,'st023','eng','1학년2학기',79),(533,'st023','mat','1학년1학기',79),(534,'st023','mat','1학년2학기',59),(535,'st023','soc','1학년1학기',57),(536,'st023','soc','1학년2학기',9),(537,'st023','sci','1학년1학기',77),(538,'st023','sci','1학년2학기',56),(539,'st023','his','1학년1학기',47),(540,'st023','his','1학년2학기',70),(541,'st023','eth','1학년1학기',7),(542,'st023','eth','1학년2학기',27),(543,'st023','phy','1학년1학기',13),(544,'st023','phy','1학년2학기',87),(545,'st023','art','1학년1학기',95),(546,'st023','art','1학년2학기',10),(547,'st023','tec','1학년1학기',70),(548,'st023','tec','1학년2학기',17),(549,'st023','inf','1학년1학기',77),(550,'st023','inf','1학년2학기',32),(551,'st023','mus','1학년1학기',31),(552,'st023','mus','1학년2학기',57),(553,'st024','kor','1학년1학기',95),(554,'st024','kor','1학년2학기',0),(555,'st024','eng','1학년1학기',20),(556,'st024','eng','1학년2학기',100),(557,'st024','mat','1학년1학기',35),(558,'st024','mat','1학년2학기',76),(559,'st024','soc','1학년1학기',77),(560,'st024','soc','1학년2학기',56),(561,'st024','sci','1학년1학기',50),(562,'st024','sci','1학년2학기',81),(563,'st024','his','1학년1학기',53),(564,'st024','his','1학년2학기',23),(565,'st024','eth','1학년1학기',57),(566,'st024','eth','1학년2학기',14),(567,'st024','phy','1학년1학기',100),(568,'st024','phy','1학년2학기',57),(569,'st024','art','1학년1학기',84),(570,'st024','art','1학년2학기',49),(571,'st024','tec','1학년1학기',94),(572,'st024','tec','1학년2학기',21),(573,'st024','inf','1학년1학기',26),(574,'st024','inf','1학년2학기',69),(575,'st024','mus','1학년1학기',62),(576,'st024','mus','1학년2학기',6),(577,'st025','kor','1학년1학기',45),(578,'st025','kor','1학년2학기',4),(579,'st025','eng','1학년1학기',89),(580,'st025','eng','1학년2학기',29),(581,'st025','mat','1학년1학기',83),(582,'st025','mat','1학년2학기',23),(583,'st025','soc','1학년1학기',67),(584,'st025','soc','1학년2학기',67),(585,'st025','sci','1학년1학기',31),(586,'st025','sci','1학년2학기',56),(587,'st025','his','1학년1학기',85),(588,'st025','his','1학년2학기',57),(589,'st025','eth','1학년1학기',31),(590,'st025','eth','1학년2학기',84),(591,'st025','phy','1학년1학기',27),(592,'st025','phy','1학년2학기',84),(593,'st025','art','1학년1학기',39),(594,'st025','art','1학년2학기',42),(595,'st025','tec','1학년1학기',95),(596,'st025','tec','1학년2학기',46),(597,'st025','inf','1학년1학기',47),(598,'st025','inf','1학년2학기',96),(599,'st025','mus','1학년1학기',39),(600,'st025','mus','1학년2학기',5),(601,'st026','kor','1학년1학기',12),(602,'st026','kor','1학년2학기',45),(603,'st026','eng','1학년1학기',87),(604,'st026','eng','1학년2학기',100),(605,'st026','mat','1학년1학기',38),(606,'st026','mat','1학년2학기',93),(607,'st026','soc','1학년1학기',47),(608,'st026','soc','1학년2학기',58),(609,'st026','sci','1학년1학기',48),(610,'st026','sci','1학년2학기',68),(611,'st026','his','1학년1학기',96),(612,'st026','his','1학년2학기',72),(613,'st026','eth','1학년1학기',72),(614,'st026','eth','1학년2학기',44),(615,'st026','phy','1학년1학기',6),(616,'st026','phy','1학년2학기',0),(617,'st026','art','1학년1학기',84),(618,'st026','art','1학년2학기',15),(619,'st026','tec','1학년1학기',24),(620,'st026','tec','1학년2학기',77),(621,'st026','inf','1학년1학기',10),(622,'st026','inf','1학년2학기',23),(623,'st026','mus','1학년1학기',83),(624,'st026','mus','1학년2학기',47),(625,'st027','kor','1학년1학기',85),(626,'st027','kor','1학년2학기',82),(627,'st027','eng','1학년1학기',54),(628,'st027','eng','1학년2학기',24),(629,'st027','mat','1학년1학기',60),(630,'st027','mat','1학년2학기',25),(631,'st027','soc','1학년1학기',46),(632,'st027','soc','1학년2학기',57),(633,'st027','sci','1학년1학기',47),(634,'st027','sci','1학년2학기',66),(635,'st027','his','1학년1학기',85),(636,'st027','his','1학년2학기',27),(637,'st027','eth','1학년1학기',81),(638,'st027','eth','1학년2학기',21),(639,'st027','phy','1학년1학기',64),(640,'st027','phy','1학년2학기',57),(641,'st027','art','1학년1학기',95),(642,'st027','art','1학년2학기',100),(643,'st027','tec','1학년1학기',16),(644,'st027','tec','1학년2학기',83),(645,'st027','inf','1학년1학기',63),(646,'st027','inf','1학년2학기',69),(647,'st027','mus','1학년1학기',55),(648,'st027','mus','1학년2학기',69),(649,'st028','kor','1학년1학기',77),(650,'st028','kor','1학년2학기',80),(651,'st028','eng','1학년1학기',67),(652,'st028','eng','1학년2학기',97),(653,'st028','mat','1학년1학기',83),(654,'st028','mat','1학년2학기',22),(655,'st028','soc','1학년1학기',64),(656,'st028','soc','1학년2학기',54),(657,'st028','sci','1학년1학기',79),(658,'st028','sci','1학년2학기',30),(659,'st028','his','1학년1학기',15),(660,'st028','his','1학년2학기',88),(661,'st028','eth','1학년1학기',93),(662,'st028','eth','1학년2학기',100),(663,'st028','phy','1학년1학기',19),(664,'st028','phy','1학년2학기',98),(665,'st028','art','1학년1학기',31),(666,'st028','art','1학년2학기',64),(667,'st028','tec','1학년1학기',23),(668,'st028','tec','1학년2학기',25),(669,'st028','inf','1학년1학기',55),(670,'st028','inf','1학년2학기',1),(671,'st028','mus','1학년1학기',44),(672,'st028','mus','1학년2학기',12),(673,'st029','kor','1학년1학기',32),(674,'st029','kor','1학년2학기',24),(675,'st029','eng','1학년1학기',25),(676,'st029','eng','1학년2학기',52),(677,'st029','mat','1학년1학기',86),(678,'st029','mat','1학년2학기',70),(679,'st029','soc','1학년1학기',96),(680,'st029','soc','1학년2학기',65),(681,'st029','sci','1학년1학기',39),(682,'st029','sci','1학년2학기',2),(683,'st029','his','1학년1학기',95),(684,'st029','his','1학년2학기',65),(685,'st029','eth','1학년1학기',42),(686,'st029','eth','1학년2학기',16),(687,'st029','phy','1학년1학기',53),(688,'st029','phy','1학년2학기',17),(689,'st029','art','1학년1학기',27),(690,'st029','art','1학년2학기',84),(691,'st029','tec','1학년1학기',37),(692,'st029','tec','1학년2학기',33),(693,'st029','inf','1학년1학기',54),(694,'st029','inf','1학년2학기',73),(695,'st029','mus','1학년1학기',2),(696,'st029','mus','1학년2학기',93),(697,'st030','kor','1학년1학기',55),(698,'st030','kor','1학년2학기',99),(699,'st030','eng','1학년1학기',27),(700,'st030','eng','1학년2학기',42),(701,'st030','mat','1학년1학기',29),(702,'st030','mat','1학년2학기',17),(703,'st030','soc','1학년1학기',99),(704,'st030','soc','1학년2학기',43),(705,'st030','sci','1학년1학기',18),(706,'st030','sci','1학년2학기',63),(707,'st030','his','1학년1학기',59),(708,'st030','his','1학년2학기',6),(709,'st030','eth','1학년1학기',55),(710,'st030','eth','1학년2학기',56),(711,'st030','phy','1학년1학기',13),(712,'st030','phy','1학년2학기',100),(713,'st030','art','1학년1학기',56),(714,'st030','art','1학년2학기',83),(715,'st030','tec','1학년1학기',47),(716,'st030','tec','1학년2학기',87),(717,'st030','inf','1학년1학기',91),(718,'st030','inf','1학년2학기',94),(719,'st030','mus','1학년1학기',97),(720,'st030','mus','1학년2학기',2);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
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
