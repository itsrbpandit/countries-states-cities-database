-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `postcodes`
--

DROP TABLE IF EXISTS `postcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postcodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The postal code value (alphanumeric, country-specific format)',
  `country_id` mediumint unsigned NOT NULL,
  `country_code` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` mediumint unsigned DEFAULT NULL,
  `state_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` mediumint unsigned DEFAULT NULL,
  `locality_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Human-readable place name associated with the postcode',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Granularity: full | outward | sector | district | area',
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `source` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Originating data source for license/attribution tracking (e.g. openplz, wikidata, census)',
  `wikiDataId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Wikidata Q-ID for cross-referencing',
  `created_at` timestamp NOT NULL DEFAULT '2014-01-01 12:01:01',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_postcodes_code` (`code`),
  KEY `idx_postcodes_country_code` (`country_id`,`code`),
  KEY `idx_postcodes_state` (`state_id`),
  KEY `idx_postcodes_city` (`city_id`),
  CONSTRAINT `postcodes_city_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL,
  CONSTRAINT `postcodes_country_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `postcodes_state_fk` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='Postal codes (issue #1039) - Tier 4: one row per postcode';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postcodes`
--

/*!40000 ALTER TABLE `postcodes` DISABLE KEYS */;
INSERT INTO `postcodes` VALUES (1,'9485',125,'LI',451,'02',NULL,'Nendeln','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(2,'9486',125,'LI',455,'04',NULL,'Schaanwald','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(3,'9487',125,'LI',457,'03',NULL,'Bendern','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(4,'9488',125,'LI',449,'08',NULL,'Schellenberg','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(5,'9490',125,'LI',452,'11',NULL,'Vaduz','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(6,'9491',125,'LI',453,'06',NULL,'Ruggell','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(7,'9492',125,'LI',451,'02',NULL,'Eschen','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(8,'9493',125,'LI',455,'04',NULL,'Mauren','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(9,'9494',125,'LI',450,'07',NULL,'Schaan','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(10,'9495',125,'LI',459,'09',NULL,'Triesen','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(11,'9496',125,'LI',458,'01',NULL,'Balzers','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(12,'9497',125,'LI',456,'10',NULL,'Triesenberg','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(13,'9498',125,'LI',454,'05',NULL,'Planken','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(14,'98000',145,'MC',NULL,NULL,NULL,'Monaco','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(15,'47890',192,'SM',58,'07',NULL,'San Marino','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(16,'47891',192,'SM',65,'09',NULL,'Serravalle','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(17,'47892',192,'SM',59,'01',NULL,'Acquaviva','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(18,'47893',192,'SM',61,'06',NULL,'Borgo Maggiore','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(19,'47894',192,'SM',60,'02',NULL,'Chiesanuova','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(20,'47895',192,'SM',64,'03',NULL,'Domagnano','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(21,'47896',192,'SM',62,'04',NULL,'Faetano','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(22,'47897',192,'SM',66,'05',NULL,'Fiorentino','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(23,'47898',192,'SM',63,'08',NULL,'Montegiardino','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1),(24,'00120',238,'VA',NULL,NULL,NULL,'Citta del Vaticano','full',NULL,NULL,'manual',NULL,'2026-04-25 15:25:45','2026-04-25 15:25:45',1);
/*!40000 ALTER TABLE `postcodes` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-25 15:27:43
