drop database segmento;
CREATE DATABASE  IF NOT EXISTS `segmento` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `segmento`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: segmento
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `dim_detalle_obra`
--

DROP TABLE IF EXISTS `dim_detalle_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_detalle_obra` (
  `IdDetalleObra` int NOT NULL,
  `PuntoInicial` varchar(80) DEFAULT NULL,
  `PuntoFinal` varchar(80) DEFAULT NULL,
  `LongitudSegmento` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`IdDetalleObra`),
  UNIQUE KEY `IdDetalleObra_UNIQUE` (`IdDetalleObra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_detalle_obra`
--

LOCK TABLES `dim_detalle_obra` WRITE;
/*!40000 ALTER TABLE `dim_detalle_obra` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_detalle_obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_detalle_segemento`
--

DROP TABLE IF EXISTS `dim_detalle_segemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_detalle_segemento` (
  `IdTipoSegmento` int NOT NULL,
  `NombreTipoSegmento` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`IdTipoSegmento`),
  UNIQUE KEY `IdTipoSegmento_UNIQUE` (`IdTipoSegmento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_detalle_segemento`
--

LOCK TABLES `dim_detalle_segemento` WRITE;
/*!40000 ALTER TABLE `dim_detalle_segemento` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_detalle_segemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_detalle_ubicacion`
--

DROP TABLE IF EXISTS `dim_detalle_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_detalle_ubicacion` (
  `IdUpz` int NOT NULL,
  `NombreUpz` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`IdUpz`),
  UNIQUE KEY `IdBarrio_UNIQUE` (`IdUpz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_detalle_ubicacion`
--

LOCK TABLES `dim_detalle_ubicacion` WRITE;
/*!40000 ALTER TABLE `dim_detalle_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_detalle_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_ejevial`
--

DROP TABLE IF EXISTS `dim_ejevial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_ejevial` (
  `IdEjeVial` int NOT NULL,
  `NombreEjeVial` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`IdEjeVial`),
  UNIQUE KEY `idEjeVial_UNIQUE` (`IdEjeVial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_ejevial`
--

LOCK TABLES `dim_ejevial` WRITE;
/*!40000 ALTER TABLE `dim_ejevial` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_ejevial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_suddetalle_ubicacion`
--

DROP TABLE IF EXISTS `dim_suddetalle_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_suddetalle_ubicacion` (
  `IdBarrio` int NOT NULL,
  `NombreBarrio` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`IdBarrio`),
  UNIQUE KEY `IdUpz_UNIQUE` (`IdBarrio`),
  KEY `IdUpz_idx` (`IdBarrio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_suddetalle_ubicacion`
--

LOCK TABLES `dim_suddetalle_ubicacion` WRITE;
/*!40000 ALTER TABLE `dim_suddetalle_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_suddetalle_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_ubicacion`
--

DROP TABLE IF EXISTS `dim_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_ubicacion` (
  `IdLocalidad` int NOT NULL,
  `NombreLocalidad` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`IdLocalidad`),
  UNIQUE KEY `IdLocalidad_UNIQUE` (`IdLocalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_ubicacion`
--

LOCK TABLES `dim_ubicacion` WRITE;
/*!40000 ALTER TABLE `dim_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facs_obras_viales_terminadas`
--

DROP TABLE IF EXISTS `facs_obras_viales_terminadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facs_obras_viales_terminadas` (
  `IdObras_Viales_Terminadas` int NOT NULL,
  `Fecha_Terminado` date DEFAULT NULL,
  `Cantidad_Tipo_Segmento_Localidad` int DEFAULT NULL,
  `Catidad_Eje_Vial_Localidad` int DEFAULT NULL,
  `Catidad_Obra_Vial_Localidad` int DEFAULT NULL,
  `Catidad_Obra_Vial_Upz` int DEFAULT NULL,
  `Catidad_Obra_Vial_Barrio` int DEFAULT NULL,
  `Longitud_Obra_Localidad` decimal(20,0) DEFAULT NULL,
  `Longitud_Obra_Upz` decimal(20,0) DEFAULT NULL,
  `Longitud_Obra_Barrio` decimal(20,0) DEFAULT NULL,
  `IdDetalleObra_HC` int DEFAULT NULL,
  `IdEjeVial_HC` int DEFAULT NULL,
  `IdTipoSegmento_HC` int DEFAULT NULL,
  `IdLocalidad_HC` int DEFAULT NULL,
  `IdUpz_HC` int DEFAULT NULL,
  `IdBarrio_HC` int DEFAULT NULL,
  PRIMARY KEY (`IdObras_Viales_Terminadas`),
  UNIQUE KEY `IdObras_Viales_Terminadas_HEC_UNIQUE` (`IdObras_Viales_Terminadas`),
  KEY `IdDetalleObra_HC_idx` (`IdDetalleObra_HC`),
  KEY `IdEjeVial_HC_idx` (`IdEjeVial_HC`),
  KEY `IdTipoSegmento_HC_idx` (`IdTipoSegmento_HC`),
  KEY `IdLocalidad_HC_idx` (`IdLocalidad_HC`),
  KEY `IdUpz_HC_idx` (`IdUpz_HC`),
  KEY `IdBarrio_HC_idx` (`IdBarrio_HC`),
  CONSTRAINT `IdBarrio_HC` FOREIGN KEY (`IdBarrio_HC`) REFERENCES `dim_suddetalle_ubicacion` (`IdBarrio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IdDetalleObra_HC` FOREIGN KEY (`IdDetalleObra_HC`) REFERENCES `dim_detalle_obra` (`IdDetalleObra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IdEjeVial_HC` FOREIGN KEY (`IdEjeVial_HC`) REFERENCES `dim_ejevial` (`IdEjeVial`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IdLocalidad_HC` FOREIGN KEY (`IdLocalidad_HC`) REFERENCES `dim_ubicacion` (`IdLocalidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IdTipoSegmento_HC` FOREIGN KEY (`IdTipoSegmento_HC`) REFERENCES `dim_detalle_segemento` (`IdTipoSegmento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IdUpz_HC` FOREIGN KEY (`IdUpz_HC`) REFERENCES `dim_detalle_ubicacion` (`IdUpz`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facs_obras_viales_terminadas`
--

LOCK TABLES `facs_obras_viales_terminadas` WRITE;
/*!40000 ALTER TABLE `facs_obras_viales_terminadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facs_obras_viales_terminadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'segmento'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01 12:43:21
