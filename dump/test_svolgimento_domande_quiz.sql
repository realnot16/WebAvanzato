-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `svolgimento_domande_quiz`
--

DROP TABLE IF EXISTS `svolgimento_domande_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svolgimento_domande_quiz` (
  `codSvolgimentoQuiz` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `codQuiz` int NOT NULL,
  `codDomanda` int NOT NULL,
  `esitoDomanda` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codSvolgimentoQuiz`),
  KEY `email` (`email`),
  KEY `codQuiz` (`codQuiz`),
  KEY `codDomanda` (`codDomanda`),
  CONSTRAINT `svolgimento_domande_quiz_ibfk_1` FOREIGN KEY (`email`) REFERENCES `utenti` (`email`),
  CONSTRAINT `svolgimento_domande_quiz_ibfk_2` FOREIGN KEY (`codQuiz`) REFERENCES `quiz` (`codQuiz`),
  CONSTRAINT `svolgimento_domande_quiz_ibfk_3` FOREIGN KEY (`codDomanda`) REFERENCES `domande` (`codDomanda`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svolgimento_domande_quiz`
--

LOCK TABLES `svolgimento_domande_quiz` WRITE;
/*!40000 ALTER TABLE `svolgimento_domande_quiz` DISABLE KEYS */;
INSERT INTO `svolgimento_domande_quiz` VALUES (1,'poldi@gmail.com',1,1,1),(2,'poldi@gmail.com',1,2,1),(3,'poldi@gmail.com',1,3,0),(4,'poldi@gmail.com',1,4,0),(5,'poldi@gmail.com',3,4,0),(6,'poldi@gmail.com',3,1,0),(7,'poldi@gmail.com',3,2,1),(8,'poldi@gmail.com',3,3,1),(9,'poldi@gmail.com',3,3,1),(10,'poldi@gmail.com',3,5,1),(11,'poldi@gmail.com',3,6,1),(12,'lucapa@gmail.com',2,1,1),(13,'lucapa@gmail.com',2,2,0),(14,'lucapa@gmail.com',2,3,1),(15,'lucapa@gmail.com',2,4,1),(16,'lucapa@gmail.com',2,5,1);
/*!40000 ALTER TABLE `svolgimento_domande_quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-09 19:58:57
