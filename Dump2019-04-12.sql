-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cleaningservices
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL DEFAULT '0',
  `phone` int(11) NOT NULL DEFAULT '0',
  `discription` varchar(200) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_advert_idx` (`userId`),
  CONSTRAINT `FK_advert` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert`
--

LOCK TABLES `advert` WRITE;
/*!40000 ALTER TABLE `advert` DISABLE KEYS */;
INSERT INTO `advert` VALUES (84,'Juozapas',30,'Lanku g',862589766,'geras valymas',9),(188,'Tadas',12,'Liepu g.',86521455,'geras valymas',9),(193,'Jonas1',13,'Lanku g',86258988,'geras valymas',67),(222,'geras bybis',333,'Lanku gggggg',11111111,'geras valymas',9),(223,'Valymas',9,'Herkaus manto g. 15, Klaipeda',123456789,'geras valymas',9),(225,'geras bybis',5,'Lanku gggggg',11111111,'geras valymas',9),(227,'valymas',222,'geras',86254254,'fff',67),(228,'valymas',44,'geras',86254254,'fff',67),(234,'Valymas1',123,'Liepu g.',8652145,'geras valymas',69),(235,'Langų valymas',25,'Herkaus manto g. 15, Klaipeda',8652145,'geras valymas',69),(237,'Valymas',55,'Herkaus manto g. 15, Klaipeda',865214255,'geras valymas',69),(243,'Valymas',55,'Herkaus manto g. 15, Klaipeda',86521455,'geras valymas',67),(244,'Valymas',55,'Liepu g.',85423654,'geras valymas',67),(245,'Valymas',55,'Herkaus manto g. 15, Klaipeda',86521456,'geras valymas',71);
/*!40000 ALTER TABLE `advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL DEFAULT '0',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL DEFAULT '0',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL DEFAULT '0',
  `registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'Tadas','tomas@gmail.com','$2b$10$n5sPh0vy9gMEOlXpWmu1pea/Kn6nDT2FkCym8nlYW0jb3iaspq3PC','2019-03-08 12:23:31'),(10,'Mantas','mantas@gmail.com','$2b$10$0W1uanVBwsA2qQEjff366uVd6LGGjzBeLN3B1rwZgGMbUbt5cTwv.','2019-03-08 19:06:10'),(67,'Juozapas','john_smith@gmail.com','$2b$10$prYXt9SopM6ciWwzUgX3aumwDeTuRIsGJsivmxchDHicVO0mONX06','2019-03-25 11:55:31'),(68,'Juozas','juozas@gmail.com','$2b$10$pxOFyxKfhRi3Kz1CvY.oie6QjFQayfC3k60eQ2af8YxuHJk5pt7H2','2019-04-03 04:32:12'),(69,'Vilius','vilius@gmail.com','$2b$10$5.8SGfb071Hzv/Rc8ZNOX.ex/suihJviXBUaEIMlTvOVnulX2tdHW','2019-04-10 13:40:58'),(70,'asdasd','john_smithas@gmail.com','$2a$10$DCTgFHrJf08o4LbHg32lJOamVeUHq8R991hCw6cBx3q5s096vyhzi','2019-04-12 12:07:53'),(71,'Tadass','tadasnarkeviciuss@gmail.com','$2a$10$Jh9emoc/uRYpKb4YZKxixeYJmw74KjNpfiJN1XlrGW3LB3M.kkE.O','2019-04-12 12:10:25');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-12 19:52:17
