-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: notasbd
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `idEstudiante` varchar(20) NOT NULL,
  `nombreEstudiante` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstudiante`),
  UNIQUE KEY `idEstudiante_UNIQUE` (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES ('20201020032','Armando Casas'),('20201020040','Ana Maria'),('20201020050','Carlos Martinez');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantemateria`
--

DROP TABLE IF EXISTS `estudiantemateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantemateria` (
  `Estudiante_idEstudiante` varchar(20) NOT NULL,
  `Materia_idMateria` int NOT NULL,
  `nota` varchar(20) DEFAULT 'NO REGISTRA',
  KEY `fk_EstudianteMateria_Estudiante_idx` (`Estudiante_idEstudiante`),
  KEY `fk_EstudianteMateria_Materia1_idx` (`Materia_idMateria`),
  CONSTRAINT `fk_EstudianteMateria_Estudiante` FOREIGN KEY (`Estudiante_idEstudiante`) REFERENCES `estudiante` (`idEstudiante`),
  CONSTRAINT `fk_EstudianteMateria_Materia1` FOREIGN KEY (`Materia_idMateria`) REFERENCES `materia` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantemateria`
--

LOCK TABLES `estudiantemateria` WRITE;
/*!40000 ALTER TABLE `estudiantemateria` DISABLE KEYS */;
INSERT INTO `estudiantemateria` VALUES ('20201020032',6,'NO REGISTRA'),('20201020032',7,'NO REGISTRA'),('20201020032',8,'NO REGISTRA'),('20201020032',9,'NO REGISTRA'),('20201020032',10,'NO REGISTRA'),('20201020040',6,'5.0'),('20201020040',7,'4'),('20201020040',8,'NO REGISTRA'),('20201020040',9,'NO REGISTRA'),('20201020040',10,'NO REGISTRA'),('20201020050',6,'NO REGISTRA'),('20201020050',7,'5'),('20201020050',8,'NO REGISTRA'),('20201020050',9,'NO REGISTRA'),('20201020050',10,'NO REGISTRA');
/*!40000 ALTER TABLE `estudiantemateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `idMateria` int NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(45) NOT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (6,'Cálculo 1'),(7,'Progamación 1'),(8,'Inteligencia artificial'),(9,'Producción de textos'),(10,'Lógica matemática');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-29 19:53:56
