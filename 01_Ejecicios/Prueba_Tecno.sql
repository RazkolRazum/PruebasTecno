-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: prueba_tecno
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `artist_id` bigint(20) NOT NULL,
  `bitactivo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_albums_on_artist_id` (`artist_id`),
  CONSTRAINT `fk_rails_124a79559a` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Thriller','Pop','1982-11-30',1,1,'2021-12-13 23:37:40.253758','2021-12-13 23:37:40.253758'),(2,'Bad','Pop','1987-08-31',1,1,'2021-12-13 23:38:14.649338','2021-12-13 23:38:14.649338'),(3,'Invincible','Pop','2001-10-30',1,1,'2021-12-13 23:39:11.410073','2021-12-13 23:39:11.410073'),(4,'30','Pop Soul','2021-11-19',2,1,'2021-12-17 14:31:03.572160','2021-12-17 14:31:03.572160'),(5,'25','Pop Soul','2015-11-20',2,1,'2021-12-17 14:31:03.661580','2021-12-17 14:31:03.661580'),(6,'21','Pop Soul','2011-01-19',2,1,'2021-12-17 14:31:03.673440','2021-12-17 14:31:03.673440'),(7,'19','Pop Soul','2021-01-28',2,1,'2021-12-17 14:31:03.684902','2021-12-17 14:31:03.684902'),(8,'WH1','Pop','2021-11-19',3,1,'2021-12-17 14:31:03.696621','2021-12-17 14:31:03.696621'),(9,'WH2','Pop','2015-11-20',3,1,'2021-12-17 14:31:04.098394','2021-12-17 14:31:04.098394'),(10,'WH3','Pop','2011-01-19',3,1,'2021-12-17 14:31:04.149320','2021-12-17 14:31:04.149320'),(11,'WH4','Pop','2021-01-28',3,1,'2021-12-17 14:31:04.163394','2021-12-17 14:31:04.163394'),(12,'TS1','Pop','2021-11-19',4,1,'2021-12-17 14:31:04.175120','2021-12-17 14:31:04.175120'),(13,'TS2','Pop','2015-11-20',4,1,'2021-12-17 14:31:04.227803','2021-12-17 14:31:04.227803'),(14,'TS3','Pop','2011-01-19',4,1,'2021-12-17 14:31:04.240017','2021-12-17 14:31:04.240017'),(15,'TS4','Pop','2021-01-28',4,1,'2021-12-17 14:31:04.251200','2021-12-17 14:31:04.251200'),(16,'BY1','Pop','2021-11-19',5,1,'2021-12-17 14:31:04.262721','2021-12-17 14:31:04.262721'),(17,'BY2','Pop','2015-11-20',5,1,'2021-12-17 14:31:04.275044','2021-12-17 14:31:04.275044'),(18,'BY3','Pop','2011-01-19',5,1,'2021-12-17 14:31:04.288445','2021-12-17 14:31:04.288445'),(19,'BY4','Pop','2021-01-28',5,1,'2021-12-17 14:31:04.298922','2021-12-17 14:31:04.298922');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-12-17 14:12:26.329439','2021-12-17 14:12:26.329439');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bitactivo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Michael Jackson',1,'2021-12-13 23:21:32.320302','2021-12-13 23:21:32.320302'),(2,'Adele',1,'2021-12-13 23:21:41.506613','2021-12-13 23:21:41.506613'),(3,'Whitney Houston',1,'2021-12-13 23:21:57.284935','2021-12-13 23:21:57.284935'),(4,'Taylor Swift',1,'2021-12-13 23:22:13.256046','2021-12-13 23:22:13.256046'),(5,'Beyoncé',1,'2021-12-13 23:22:31.631416','2021-12-13 23:22:31.631416');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `song_id` bigint(20) NOT NULL,
  `bitactivo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_playlists_on_user_id` (`user_id`),
  KEY `index_playlists_on_song_id` (`song_id`),
  CONSTRAINT `fk_rails_7890bdf6ed` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  CONSTRAINT `fk_rails_d67ef1eb45` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'PL 1',1,1,1,'2021-12-17 14:43:25.287192','2021-12-17 14:43:25.287192'),(2,'PL 2',1,1,1,'2021-12-17 14:43:25.311544','2021-12-17 14:43:25.311544'),(3,'PL 2',2,2,1,'2021-12-17 14:43:25.341831','2021-12-17 14:43:25.341831'),(4,'PL 2',2,3,1,'2021-12-17 14:43:25.407399','2021-12-17 14:43:25.407399'),(5,'PL 3',3,1,1,'2021-12-17 14:43:25.495671','2021-12-17 14:43:25.495671'),(6,'PL 3',3,3,1,'2021-12-17 14:43:25.508470','2021-12-17 14:43:25.508470'),(7,'PL 3',3,4,1,'2021-12-17 14:43:25.527373','2021-12-17 14:43:25.527373'),(8,'PL 4',4,1,1,'2021-12-17 14:43:25.582621','2021-12-17 14:43:25.582621'),(9,'PL 4',4,2,1,'2021-12-17 14:43:25.622074','2021-12-17 14:43:25.622074'),(10,'PL 4',4,3,1,'2021-12-17 14:43:25.637060','2021-12-17 14:43:25.637060'),(11,'PL 4',4,4,1,'2021-12-17 14:43:25.650057','2021-12-17 14:43:25.650057');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podcasts`
--

DROP TABLE IF EXISTS `podcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `podcasts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `duration` decimal(5,2) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `artist_id` bigint(20) NOT NULL,
  `bitactivo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_podcasts_on_artist_id` (`artist_id`),
  CONSTRAINT `fk_rails_4140bf7a26` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podcasts`
--

LOCK TABLES `podcasts` WRITE;
/*!40000 ALTER TABLE `podcasts` DISABLE KEYS */;
INSERT INTO `podcasts` VALUES (1,30.00,'Pop Soul',2,1,'2021-12-17 14:34:41.542332','2021-12-17 14:34:41.542332'),(2,60.00,'Pop',5,1,'2021-12-17 14:34:41.832355','2021-12-17 14:34:41.832355'),(3,20.00,'Pop',5,1,'2021-12-17 14:34:42.261193','2021-12-17 14:34:42.261193'),(4,10.00,'Pop',5,1,'2021-12-17 14:34:42.360324','2021-12-17 14:34:42.360324'),(5,60.00,'Pop',5,1,'2021-12-17 14:34:42.457794','2021-12-17 14:34:42.457794');
/*!40000 ALTER TABLE `podcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20211213225553'),('20211213230402'),('20211213230458'),('20211213230836'),('20211213231558'),('20211213231703');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `description` text,
  `length` decimal(5,2) DEFAULT NULL,
  `artist_id` bigint(20) NOT NULL,
  `bitactivo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_songs_on_artist_id` (`artist_id`),
  CONSTRAINT `fk_rails_5ce8fd4cc7` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Song 1','Pop Soul','Song',30.00,1,1,'2021-12-17 14:38:22.584214','2021-12-17 14:38:22.584214'),(2,'Song 2','Pop','Song',60.00,2,1,'2021-12-17 14:38:22.611059','2021-12-17 14:39:56.181622'),(3,'Song 3','Pop','Song',20.00,3,1,'2021-12-17 14:38:23.012138','2021-12-17 14:40:02.597885'),(4,'Song 4','Pop','Song',10.00,4,1,'2021-12-17 14:38:23.217089','2021-12-17 14:40:08.872161'),(5,'Song 5','Pop','Song',60.00,5,1,'2021-12-17 14:38:23.428881','2021-12-17 14:40:14.494397');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `bitactivo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Due','2017-02-13',1,'2021-12-13 23:19:10.244209','2021-12-13 23:19:10.244209'),(2,'Michael','Brown','2016-01-06',0,'2021-12-13 23:19:36.333900','2021-12-13 23:19:36.333900'),(3,'Brayam','Galindo','2018-04-02',1,'2021-12-13 23:19:54.545129','2021-12-13 23:19:54.545129'),(4,'Merlina','Paez','2016-05-08',1,'2021-12-13 23:20:26.048868','2021-12-13 23:20:26.048868');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-17  9:48:09
