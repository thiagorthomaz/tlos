CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Tab_bonus_building`
--

DROP TABLE IF EXISTS `Tab_bonus_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_bonus_building` (
  `id` int(11) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `storage` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Tab_bonus_building_Tab_producing1` FOREIGN KEY (`id`) REFERENCES `Tab_producing` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_bonus_building`
--

LOCK TABLES `Tab_bonus_building` WRITE;
/*!40000 ALTER TABLE `Tab_bonus_building` DISABLE KEYS */;
INSERT INTO `Tab_bonus_building` VALUES (1,30,20),(2,35,40),(3,40,60),(4,45,80),(5,50,100),(6,55,120),(7,60,140),(8,65,160),(9,70,180),(10,75,200);
/*!40000 ALTER TABLE `Tab_bonus_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_building`
--

DROP TABLE IF EXISTS `Tab_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `cost_wood` int(11) NOT NULL,
  `cost_stone` int(11) NOT NULL,
  `cost_iron` int(11) NOT NULL,
  `destruction_cost` int(11) NOT NULL,
  `build_time` int(11) NOT NULL,
  `destruction_time` int(11) NOT NULL,
  `rank_point` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Tab_building_Tab_producing1_idx` (`level`),
  CONSTRAINT `fk_Tab_building_Tab_producing1` FOREIGN KEY (`level`) REFERENCES `Tab_producing` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_building`
--

LOCK TABLES `Tab_building` WRITE;
/*!40000 ALTER TABLE `Tab_building` DISABLE KEYS */;
INSERT INTO `Tab_building` VALUES (1,1,'Farm',50,0,0,40,15,15,1),(2,2,'Farm',200,0,0,40,54,54,1),(3,3,'Farm',400,200,0,40,360,360,1),(4,4,'Farm',1400,600,0,40,2700,2700,1),(5,5,'Farm',3500,1500,0,40,7560,7560,1),(6,6,'Farm',6000,3000,0,40,12420,12420,1),(7,7,'Farm',10000,5000,0,40,22500,22500,1),(8,8,'Farm',16000,800,0,40,35820,35820,1),(9,9,'Farm',25000,13000,0,40,53880,53880,1),(10,10,'Farm',38000,20000,0,40,81720,81720,1),(11,1,'Woodcutter',50,0,0,40,15,15,1),(12,2,'Woodcutter',200,0,0,40,54,54,1),(13,3,'Woodcutter',400,200,0,40,360,360,1),(14,4,'Woodcutter',1400,600,0,40,2700,2700,1),(15,5,'Woodcutter',3500,1500,0,40,7560,7560,1),(16,6,'Woodcutter',6000,3000,0,40,12420,12420,1),(17,7,'Woodcutter',10000,5000,0,40,22500,22500,1),(18,8,'Woodcutter',16000,800,0,40,35820,35820,1),(19,9,'Woodcutter',25000,13000,0,40,53880,53880,1),(20,10,'Woodcutter',38000,20000,0,40,81720,81720,1),(21,1,'Iron mine',50,0,0,40,15,15,1),(22,2,'Iron mine',200,0,0,40,54,54,1),(23,3,'Iron mine',400,200,0,40,360,360,1),(24,4,'Iron mine',1400,600,0,40,2700,2700,1),(25,5,'Iron mine',3500,1500,0,40,7560,7560,1),(26,6,'Iron mine',6000,3000,0,40,12420,12420,1),(27,7,'Iron mine',10000,5000,0,40,22500,22500,1),(28,8,'Iron mine',16000,800,0,40,35820,35820,1),(29,9,'Iron mine',25000,13000,0,40,53880,53880,1),(30,10,'Iron mine',38000,20000,0,40,81720,81720,1),(31,1,'Quarry',50,0,0,40,15,15,1),(32,2,'Quarry',200,0,0,40,54,54,1),(33,3,'Quarry',400,200,0,40,360,360,1),(34,4,'Quarry',1400,600,0,40,2700,2700,1),(35,5,'Quarry',3500,1500,0,40,7560,7560,1),(36,6,'Quarry',6000,3000,0,40,12420,12420,1),(37,7,'Quarry',10000,5000,0,40,22500,22500,1),(38,8,'Quarry',16000,800,0,40,35820,35820,1),(39,9,'Quarry',25000,13000,0,40,53880,53880,1),(40,10,'Quarry',38000,20000,0,40,81720,81720,1),(41,1,'Werehouse',60,0,0,40,15,15,1),(42,2,'Werehouse',150,0,0,40,36,36,1),(43,3,'Werehouse',250,50,0,40,240,240,1),(44,4,'Werehouse',500,150,0,40,1800,1800,1),(45,5,'Werehouse',1600,400,0,40,4025,4025,1),(46,6,'Werehouse',3000,1000,0,40,8100,8100,1),(47,7,'Werehouse',6000,2000,0,40,14760,14760,1),(48,8,'Werehouse',9600,4800,0,40,23825,23825,1),(49,9,'Werehouse',15000,9000,0,40,35885,35885,1),(50,10,'Werehouse',20000,13000,0,40,54425,54425,1),(51,1,'Hideout',0,50,0,40,15,15,1),(52,2,'Hideout',0,200,0,40,36,36,1),(53,3,'Hideout',0,600,0,40,240,240,1),(54,4,'Hideout',0,1000,0,40,1800,1800,1),(55,5,'Hideout',0,1500,0,40,4025,4025,1),(56,6,'Hideout',0,2200,0,40,8100,8100,1),(57,7,'Hideout',0,3500,0,40,14760,14760,1),(58,8,'Hideout',0,4500,0,40,23825,23825,1),(59,9,'Hideout',0,6000,0,40,35885,35885,1),(60,10,'Hideout',0,8000,0,40,54425,54425,1),(61,1,'Foundry',60,60,0,40,20,20,1),(62,2,'Foundry',150,150,0,140,108,108,4),(63,3,'Foundry',350,350,0,140,720,720,7),(64,4,'Foundry',1100,1100,0,140,5400,5400,14),(65,5,'Foundry',2700,2700,0,140,12125,12125,24),(66,6,'Foundry',5000,5000,0,40,24300,24300,36),(67,7,'Foundry',8500,8500,0,140,44280,44280,50),(68,8,'Foundry',13500,13500,0,140,71525,71525,68),(69,9,'Foundry',21500,21500,0,140,107705,107705,90),(70,10,'Foundry',33000,33000,0,140,163325,163325,120),(71,1,'Mill',60,60,0,40,20,20,1),(72,2,'Mill',150,150,0,140,108,108,4),(73,3,'Mill',350,350,0,140,720,720,7),(74,4,'Mill',1100,1100,0,140,5400,5400,14),(75,5,'Mill',2700,2700,0,140,12125,12125,24),(76,6,'Mill',5000,5000,0,40,24300,24300,36),(77,7,'Mill',8500,8500,0,140,44280,44280,50),(78,8,'Mill',13500,13500,0,140,71525,71525,68),(79,9,'Mill',21500,21500,0,140,107705,107705,90),(80,10,'Mill',33000,33000,0,140,163325,163325,120),(81,1,'Stonemason',60,60,0,40,20,20,1),(82,2,'Stonemason',150,150,0,140,108,108,4),(83,3,'Stonemason',350,350,0,140,720,720,7),(84,4,'Stonemason',1100,1100,0,140,5400,5400,14),(85,5,'Stonemason',2700,2700,0,140,12125,12125,24),(86,6,'Stonemason',5000,5000,0,40,24300,24300,36),(87,7,'Stonemason',8500,8500,0,140,44280,44280,50),(88,8,'Stonemason',13500,13500,0,140,71525,71525,68),(89,9,'Stonemason',21500,21500,0,140,107705,107705,90),(90,10,'Stonemason',33000,33000,0,140,163325,163325,120),(91,1,'Sawmill',60,60,0,40,20,20,1),(92,2,'Sawmill',150,150,0,140,108,108,4),(93,3,'Sawmill',350,350,0,140,720,720,7),(94,4,'Sawmill',1100,1100,0,140,5400,5400,14),(95,5,'Sawmill',2700,2700,0,140,12125,12125,24),(96,6,'Sawmill',5000,5000,0,40,24300,24300,36),(97,7,'Sawmill',8500,8500,0,140,44280,44280,50),(98,8,'Sawmill',13500,13500,0,140,71525,71525,68),(99,9,'Sawmill',21500,21500,0,140,107705,107705,90),(100,10,'Sawmill',33000,33000,0,140,163325,163325,120);
/*!40000 ALTER TABLE `Tab_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_building_requirement`
--

DROP TABLE IF EXISTS `Tab_building_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_building_requirement` (
  `id_building` int(11) NOT NULL,
  `id_building_required` int(11) NOT NULL,
  PRIMARY KEY (`id_building`,`id_building_required`),
  KEY `fk_Tab_building_requirement_Tab_building2_idx` (`id_building_required`),
  CONSTRAINT `fk_Tab_building_requirement_Tab_building1` FOREIGN KEY (`id_building`) REFERENCES `Tab_building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_building_requirement_Tab_building2` FOREIGN KEY (`id_building_required`) REFERENCES `Tab_building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_building_requirement`
--

LOCK TABLES `Tab_building_requirement` WRITE;
/*!40000 ALTER TABLE `Tab_building_requirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_building_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_city`
--

DROP TABLE IF EXISTS `Tab_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_world` int(11) NOT NULL,
  `id_player` int(11) NOT NULL,
  `city_name` varchar(45) NOT NULL,
  `total_points` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `z_UNIQUE` (`z`),
  UNIQUE KEY `y_UNIQUE` (`y`),
  UNIQUE KEY `x_UNIQUE` (`x`),
  KEY `fk_Tab_city_Tab_world1_idx` (`id_world`),
  KEY `fk_Tab_city_Tab_player1_idx` (`id_player`),
  CONSTRAINT `fk_Tab_city_Tab_world1` FOREIGN KEY (`id_world`) REFERENCES `Tab_world` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_city_Tab_player1` FOREIGN KEY (`id_player`) REFERENCES `Tab_player` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_city`
--

LOCK TABLES `Tab_city` WRITE;
/*!40000 ALTER TABLE `Tab_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_city_Tab_building`
--

DROP TABLE IF EXISTS `Tab_city_Tab_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_city_Tab_building` (
  `id_city` int(11) NOT NULL,
  `id_building` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  PRIMARY KEY (`id_city`,`id_building`),
  UNIQUE KEY `x_UNIQUE` (`x`),
  UNIQUE KEY `y_UNIQUE` (`y`),
  UNIQUE KEY `z_UNIQUE` (`z`),
  KEY `fk_City_has_Tab_building_Tab_building1_idx` (`id_building`),
  KEY `fk_City_has_Tab_building_City1_idx` (`id_city`),
  CONSTRAINT `fk_City_has_Tab_building_City1` FOREIGN KEY (`id_city`) REFERENCES `Tab_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_City_has_Tab_building_Tab_building1` FOREIGN KEY (`id_building`) REFERENCES `Tab_building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_city_Tab_building`
--

LOCK TABLES `Tab_city_Tab_building` WRITE;
/*!40000 ALTER TABLE `Tab_city_Tab_building` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_city_Tab_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_city_has_resources`
--

DROP TABLE IF EXISTS `Tab_city_has_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_city_has_resources` (
  `id_city` int(11) NOT NULL,
  `id_resources` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  PRIMARY KEY (`id_city`,`id_resources`),
  UNIQUE KEY `z_UNIQUE` (`z`),
  UNIQUE KEY `y_UNIQUE` (`y`),
  UNIQUE KEY `x_UNIQUE` (`x`),
  KEY `fk_City_has_Tab_resources_Tab_resources1_idx` (`id_resources`),
  KEY `fk_City_has_Tab_resources_City1_idx` (`id_city`),
  CONSTRAINT `fk_City_has_Tab_resources_City1` FOREIGN KEY (`id_city`) REFERENCES `Tab_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_City_has_Tab_resources_Tab_resources1` FOREIGN KEY (`id_resources`) REFERENCES `Tab_resources` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_city_has_resources`
--

LOCK TABLES `Tab_city_has_resources` WRITE;
/*!40000 ALTER TABLE `Tab_city_has_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_city_has_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_city_instance`
--

DROP TABLE IF EXISTS `Tab_city_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_city_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) NOT NULL,
  `amout_wood` int(11) NOT NULL,
  `amout_stone` int(11) NOT NULL,
  `amout_iron` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_city`),
  KEY `fk_Tab_city_instance_Tab_city1_idx` (`id_city`),
  CONSTRAINT `fk_Tab_city_instance_Tab_city1` FOREIGN KEY (`id_city`) REFERENCES `Tab_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_city_instance`
--

LOCK TABLES `Tab_city_instance` WRITE;
/*!40000 ALTER TABLE `Tab_city_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_city_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_event`
--

DROP TABLE IF EXISTS `Tab_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_event_type` int(11) NOT NULL,
  `initialized` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Tab_event_Tab_event_type1_idx` (`id_event_type`),
  CONSTRAINT `fk_Tab_event_Tab_event_type1` FOREIGN KEY (`id_event_type`) REFERENCES `Tab_event_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_event`
--

LOCK TABLES `Tab_event` WRITE;
/*!40000 ALTER TABLE `Tab_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_event_type`
--

DROP TABLE IF EXISTS `Tab_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_event_type` (
  `id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_event_type`
--

LOCK TABLES `Tab_event_type` WRITE;
/*!40000 ALTER TABLE `Tab_event_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tab_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_player`
--

DROP TABLE IF EXISTS `Tab_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_player`
--

LOCK TABLES `Tab_player` WRITE;
/*!40000 ALTER TABLE `Tab_player` DISABLE KEYS */;
INSERT INTO `Tab_player` VALUES (1,'thiago','$2y$10$4yvHE6chCqvJfpluTS5PgOLSmuWTSkzt/UDtN36woWUyAElferXpG','thiagorthomaz@gmail.com');
/*!40000 ALTER TABLE `Tab_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_player_has_world`
--

DROP TABLE IF EXISTS `Tab_player_has_world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_player_has_world` (
  `id_player` int(11) NOT NULL,
  `id_world` int(11) NOT NULL,
  PRIMARY KEY (`id_player`,`id_world`),
  KEY `fk_Tab_player_has_Tab_world_Tab_world1_idx` (`id_world`),
  KEY `fk_Tab_player_has_Tab_world_Tab_player1_idx` (`id_player`),
  CONSTRAINT `fk_Tab_player_has_Tab_world_Tab_player1` FOREIGN KEY (`id_player`) REFERENCES `Tab_player` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tab_player_has_Tab_world_Tab_world1` FOREIGN KEY (`id_world`) REFERENCES `Tab_world` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_player_has_world`
--

LOCK TABLES `Tab_player_has_world` WRITE;
/*!40000 ALTER TABLE `Tab_player_has_world` DISABLE KEYS */;
INSERT INTO `Tab_player_has_world` VALUES (1,1);
/*!40000 ALTER TABLE `Tab_player_has_world` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_producing`
--

DROP TABLE IF EXISTS `Tab_producing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_producing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_producing`
--

LOCK TABLES `Tab_producing` WRITE;
/*!40000 ALTER TABLE `Tab_producing` DISABLE KEYS */;
INSERT INTO `Tab_producing` VALUES (1,20),(2,40),(3,60),(4,85),(5,110),(6,140),(7,175),(8,210),(9,250),(10,300);
/*!40000 ALTER TABLE `Tab_producing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_resources`
--

DROP TABLE IF EXISTS `Tab_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `bonus_amout` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_resources`
--

LOCK TABLES `Tab_resources` WRITE;
/*!40000 ALTER TABLE `Tab_resources` DISABLE KEYS */;
INSERT INTO `Tab_resources` VALUES (1,'Wood',40),(2,'Stone',40),(3,'Iron',40),(4,'Grain',40);
/*!40000 ALTER TABLE `Tab_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_storage_building`
--

DROP TABLE IF EXISTS `Tab_storage_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_storage_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `storage` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Tab_storage_building_Tab_producing1_idx` (`level`),
  CONSTRAINT `fk_Tab_storage_building_Tab_producing1` FOREIGN KEY (`level`) REFERENCES `Tab_producing` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_storage_building`
--

LOCK TABLES `Tab_storage_building` WRITE;
/*!40000 ALTER TABLE `Tab_storage_building` DISABLE KEYS */;
INSERT INTO `Tab_storage_building` VALUES (1,1,2500),(2,2,5000),(3,3,9000),(4,4,1600),(5,5,2600),(6,6,4200),(7,7,6500),(8,8,10000),(9,9,14500),(10,10,20000),(11,1,500),(12,2,1000),(13,3,2000),(14,4,3000),(15,5,4500),(16,6,6000),(17,7,8000),(18,8,10000),(19,9,12000),(20,10,15000);
/*!40000 ALTER TABLE `Tab_storage_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tab_world`
--

DROP TABLE IF EXISTS `Tab_world`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tab_world` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tab_world`
--

LOCK TABLES `Tab_world` WRITE;
/*!40000 ALTER TABLE `Tab_world` DISABLE KEYS */;
INSERT INTO `Tab_world` VALUES (1,'World 1');
/*!40000 ALTER TABLE `Tab_world` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-18 13:28:37
