-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pid` int NOT NULL,
  `pname` varchar(25) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `admissiondate` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Ishawar',26,68.5,'ishwar@gmail.com','2023-05-28'),(2,'Rushikesh',28,72.3,'rushikesh@example.com','2023-06-10'),(3,'AdarshN',24,65.8,'adarshN@example.com','2023-07-15'),(4,'Maroti',35,78.1,'maroti@example.com','2023-08-20'),(5,'Bhakti',22,60.7,'bhakti@example.com','2023-09-05'),(6,'Abhishek',30,75.4,'abhishek@example.com','2023-10-12'),(7,'Pritam',32,70,'pritam@example.com','2023-11-18'),(8,'AdarshJ',27,68.9,'adarshJ@example.com','2023-12-03'),(9,'Utkarsha',29,62.5,'utkarsha@example.com','2024-01-08'),(10,'Sudarshan',31,82.2,'sudarshan@example.com','2024-02-14'),(11,'Yogesh',25,69.8,'yogesh@example.com','2024-03-20'),(12,'Suraj',28,74.6,'suraj@example.com','2024-04-25'),(13,'Prashant',33,76.3,'prashant@example.com','2024-05-30'),(14,'Prabhakar',36,85,'prabhakar@example.com','2024-06-05'),(15,'Neha',23,63.2,'neha@example.com','2024-07-10');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 18:34:26
