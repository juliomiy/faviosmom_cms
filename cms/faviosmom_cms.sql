-- MySQL dump 10.13  Distrib 5.7.12, for osx10.11 (x86_64)
--
-- Host: localhost    Database: faviosmom_cms
-- ------------------------------------------------------
-- Server version	5.7.12

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
-- Table structure for table `MenuPortions`
--

DROP TABLE IF EXISTS `MenuPortions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MenuPortions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `insert_datetime` datetime(6) NOT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `MenuPortions_menu_id_908913465daa172_fk_menu_id` (`menu_id`),
  CONSTRAINT `MenuPortions_menu_id_908913465daa172_fk_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuPortions`
--

LOCK TABLES `MenuPortions` WRITE;
/*!40000 ALTER TABLE `MenuPortions` DISABLE KEYS */;
/*!40000 ALTER TABLE `MenuPortions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `order_json` varchar(1000) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `order_tax` decimal(10,2) NOT NULL,
  `order_total` decimal(10,2) NOT NULL,
  `fulfilled` int(11) NOT NULL,
  `fulfilled_datetime` datetime(6) NOT NULL,
  `insert_datetime` datetime(6) NOT NULL,
  `update_datetime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3alertplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3alertplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3alertplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_23eeaeb886645d41_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3alertplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3alertplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3alertplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3alertplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3blockquoteplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3blockquoteplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3blockquoteplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `reverse` tinyint(1) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_5c15de90480dda7b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3blockquoteplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3blockquoteplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3blockquoteplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3blockquoteplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3buttonplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3buttonplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3buttonplugin` (
  `link_url` varchar(200) NOT NULL,
  `link_anchor` varchar(128) NOT NULL,
  `link_mailto` varchar(254) DEFAULT NULL,
  `link_phone` varchar(40) DEFAULT NULL,
  `link_target` varchar(100) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(256) NOT NULL,
  `type` varchar(10) NOT NULL,
  `btn_context` varchar(255) NOT NULL,
  `btn_size` varchar(255) NOT NULL,
  `btn_block` tinyint(1) NOT NULL,
  `txt_context` varchar(255) NOT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  `responsive` longtext NOT NULL,
  `responsive_print` longtext NOT NULL,
  `link_file_id` int(11) DEFAULT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_boostrap3buttonplugin_6e2e5dae` (`link_file_id`),
  KEY `aldryn_bootstrap3_boostrap3buttonplugin_5b76e141` (`link_page_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_4c0f8730c123eb96_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_bootstrap3_b_link_page_id_74458fee04d19791_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `aldryn_bootstrap3_link_file_id_7a62a38be957d76e_fk_filer_file_id` FOREIGN KEY (`link_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3buttonplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3buttonplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3buttonplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3buttonplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3iconplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3iconplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3iconplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_415e45f04c4848ab_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3iconplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3iconplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3iconplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3iconplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3imageplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3imageplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3imageplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `alt` longtext NOT NULL,
  `title` longtext NOT NULL,
  `aspect_ratio` varchar(10) NOT NULL,
  `thumbnail` tinyint(1) NOT NULL,
  `shape` varchar(64) NOT NULL,
  `classes` longtext NOT NULL,
  `img_responsive` tinyint(1) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `override_height` int(11),
  `override_width` int(11),
  `use_original_image` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_boostrap3imageplugin_814552b9` (`file_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_1e85a816567daa14_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_boots_file_id_661c0051c20cb6f6_fk_filer_image_file_ptr_id` FOREIGN KEY (`file_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3imageplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3imageplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3imageplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3imageplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3labelplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3labelplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3labelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(256) NOT NULL,
  `context` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_54010a691c1d39b7_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3labelplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3labelplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3labelplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3labelplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelbodyplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelbodyplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelbodyplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_70bde3480e8969d9_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelbodyplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelbodyplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelbodyplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelbodyplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelfooterplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelfooterplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelfooterplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_22148ed3668c619a_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelfooterplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelfooterplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelfooterplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelfooterplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelheadingplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelheadingplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelheadingplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_5f4d0d45dd074b98_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelheadingplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelheadingplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelheadingplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelheadingplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_74bba5aabb3eb3b1_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3spacerplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3spacerplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3spacerplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_78fe6a94db1bb1e6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3spacerplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3spacerplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3spacerplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3spacerplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3wellplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3wellplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3wellplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_7be7b408bae60dd0_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3wellplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3wellplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3wellplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3wellplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3accordionitemplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3accordionitemplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3accordionitemplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `context` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_7964362dcd0d9783_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3accordionitemplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3accordionitemplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionitemplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionitemplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3accordionplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3accordionplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3accordionplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `index` int(10) unsigned DEFAULT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_463718163e0564e6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3accordionplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3accordionplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3carouselplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3carouselplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3carouselplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `aspect_ratio` varchar(10) NOT NULL,
  `transition_effect` varchar(50) NOT NULL,
  `ride` tinyint(1) NOT NULL,
  `interval` int(11) NOT NULL,
  `wrap` tinyint(1) NOT NULL,
  `pause` tinyint(1) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_1e6f5b935628dca5_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3carouselplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3carouselplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_bootstrap3carouselplugin` VALUES (129,'standard','4x3','slide',1,3000,1,1,'carousel-holder'),(498,'standard','4x3','slide',1,3000,1,1,'carousel-holder');
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  `folder_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin_a8a44dbb` (`folder_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_32bed68319625dd3_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_bootstrap3__folder_id_369f5f84bcd59c11_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3carouselslideplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3carouselslideplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3carouselslideplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(200) NOT NULL,
  `link_anchor` varchar(128) NOT NULL,
  `link_mailto` varchar(254) DEFAULT NULL,
  `link_phone` varchar(40) DEFAULT NULL,
  `link_target` varchar(100) NOT NULL,
  `link_text` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `classes` longtext NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `link_file_id` int(11) DEFAULT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslideplugin_f33175e6` (`image_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslideplugin_6e2e5dae` (`link_file_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslideplugin_5b76e141` (`link_page_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_5cf00348e3810a4f_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_boot_image_id_4c92230673adeea7_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `aldryn_bootstrap3_bo_link_page_id_ebaa817f8d1cb4a_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `aldryn_bootstrap3_link_file_id_473a2399daa5f493_fk_filer_file_id` FOREIGN KEY (`link_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3carouselslideplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3carouselslideplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslideplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_bootstrap3carouselslideplugin` VALUES (130,'','','','','','','','img-responsive',13,NULL,NULL,'{}'),(131,'','','','','','','','',4,NULL,NULL,'{}'),(139,'','','','','','','','',5,NULL,NULL,'{}'),(283,'','','','','','','','',8,NULL,NULL,'{}'),(284,'','','','','','','','',7,NULL,NULL,'{}'),(298,'','','','','','','','',9,NULL,NULL,'{}'),(299,'','','','','','','','',10,NULL,NULL,'{}'),(418,'','','','','','','','',11,NULL,NULL,'{}'),(499,'','','','','','','','img-responsive',13,NULL,NULL,'{}'),(500,'','','','','','','','',4,NULL,NULL,'{}'),(501,'','','','','','','','',5,NULL,NULL,'{}'),(502,'','','','','','','','',8,NULL,NULL,'{}'),(503,'','','','','','','','',7,NULL,NULL,'{}'),(504,'','','','','','','','',9,NULL,NULL,'{}'),(505,'','','','','','','','',10,NULL,NULL,'{}'),(506,'','','','','','','','',11,NULL,NULL,'{}');
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslideplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3columnplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3columnplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3columnplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  `tag` varchar(50) NOT NULL,
  `xs_col` int(11) DEFAULT NULL,
  `xs_offset` int(11) DEFAULT NULL,
  `xs_push` int(11) DEFAULT NULL,
  `xs_pull` int(11) DEFAULT NULL,
  `sm_col` int(11) DEFAULT NULL,
  `sm_offset` int(11) DEFAULT NULL,
  `sm_push` int(11) DEFAULT NULL,
  `sm_pull` int(11) DEFAULT NULL,
  `md_col` int(11) DEFAULT NULL,
  `md_offset` int(11) DEFAULT NULL,
  `md_push` int(11) DEFAULT NULL,
  `md_pull` int(11) DEFAULT NULL,
  `lg_col` int(11) DEFAULT NULL,
  `lg_offset` int(11) DEFAULT NULL,
  `lg_push` int(11) DEFAULT NULL,
  `lg_pull` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3columnplugin_e4d23e84` (`tag`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_2b3c18f7e511e08b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3columnplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3columnplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3columnplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_bootstrap3columnplugin` VALUES (35,'','div',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'','div',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(365,'','div',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(386,'','div',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(388,'','div',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,'','div',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3columnplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3fileplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3fileplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3fileplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `open_new_window` tinyint(1) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3fileplugin_814552b9` (`file_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_10f28053f96a0fcb_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_bootstrap3_boot_file_id_170c7e6e5e6a0cb7_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3fileplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3fileplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3fileplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3fileplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3listgroupitemplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3listgroupitemplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3listgroupitemplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `context` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_6a538d3eba92ea30_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3listgroupitemplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3listgroupitemplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupitemplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupitemplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3listgroupplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3listgroupplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3listgroupplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  `add_list_group_class` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_2651d31113e817ef_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3listgroupplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3listgroupplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3rowplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3rowplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3rowplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_48bad58968d2fd4a_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3rowplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3rowplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3rowplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_bootstrap3rowplugin` VALUES (34,''),(55,''),(72,''),(385,''),(495,'');
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3rowplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_style_style`
--

DROP TABLE IF EXISTS `aldryn_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_style_style` (
  `label` varchar(128) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `id_name` varchar(50) NOT NULL,
  `tag_type` varchar(50) NOT NULL,
  `padding_left` smallint(6) DEFAULT NULL,
  `padding_right` smallint(6) DEFAULT NULL,
  `padding_top` smallint(6) DEFAULT NULL,
  `padding_bottom` smallint(6) DEFAULT NULL,
  `margin_left` smallint(6) DEFAULT NULL,
  `margin_right` smallint(6) DEFAULT NULL,
  `margin_top` smallint(6) DEFAULT NULL,
  `margin_bottom` smallint(6) DEFAULT NULL,
  `additional_class_names` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_sty_cmsplugin_ptr_id_6e4aecc2c939ab40_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_style_style`
--

LOCK TABLES `aldryn_style_style` WRITE;
/*!40000 ALTER TABLE `aldryn_style_style` DISABLE KEYS */;
INSERT INTO `aldryn_style_style` VALUES ('container-footer',1,'container','','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'navbar-default'),('facebook_like',54,'container','','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),('facebook_like',69,'container','','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),('content',71,'container','','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),('container-footer',384,'container','','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'navbar-default'),('content',494,'container','','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `aldryn_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add permission',3,'add_permission'),(4,'Can change permission',3,'change_permission'),(5,'Can delete permission',3,'delete_permission'),(6,'Can add group',4,'add_group'),(7,'Can change group',4,'change_group'),(8,'Can delete group',4,'delete_group'),(9,'Can add user',5,'add_user'),(10,'Can change user',5,'change_user'),(11,'Can delete user',5,'delete_user'),(12,'Can add content type',6,'add_contenttype'),(13,'Can change content type',6,'change_contenttype'),(14,'Can delete content type',6,'delete_contenttype'),(15,'Can add session',7,'add_session'),(16,'Can change session',7,'change_session'),(17,'Can delete session',7,'delete_session'),(18,'Can add log entry',8,'add_logentry'),(19,'Can change log entry',8,'change_logentry'),(20,'Can delete log entry',8,'delete_logentry'),(21,'Can add site',9,'add_site'),(22,'Can change site',9,'change_site'),(23,'Can delete site',9,'delete_site'),(24,'Can add user setting',10,'add_usersettings'),(25,'Can change user setting',10,'change_usersettings'),(26,'Can delete user setting',10,'delete_usersettings'),(27,'Can add page',2,'add_page'),(28,'Can delete page',2,'delete_page'),(29,'Can view page',2,'view_page'),(30,'Can publish page',2,'publish_page'),(31,'Can edit static placeholders',2,'edit_static_placeholder'),(32,'Can add Page global permission',11,'add_globalpagepermission'),(33,'Can change Page global permission',11,'change_globalpagepermission'),(34,'Can delete Page global permission',11,'delete_globalpagepermission'),(35,'Can add Page permission',12,'add_pagepermission'),(36,'Can change Page permission',12,'change_pagepermission'),(37,'Can delete Page permission',12,'delete_pagepermission'),(38,'Can add User (page)',13,'add_pageuser'),(39,'Can change User (page)',13,'change_pageuser'),(40,'Can delete User (page)',13,'delete_pageuser'),(41,'Can add User group (page)',14,'add_pageusergroup'),(42,'Can change User group (page)',14,'change_pageusergroup'),(43,'Can delete User group (page)',14,'delete_pageusergroup'),(44,'Can add placeholder',1,'add_placeholder'),(45,'Can change placeholder',1,'change_placeholder'),(46,'Can delete placeholder',1,'delete_placeholder'),(47,'Can add cms plugin',15,'add_cmsplugin'),(48,'Can change cms plugin',15,'change_cmsplugin'),(49,'Can delete cms plugin',15,'delete_cmsplugin'),(50,'Can add title',16,'add_title'),(51,'Can change title',16,'change_title'),(52,'Can delete title',16,'delete_title'),(53,'Can add placeholder reference',17,'add_placeholderreference'),(54,'Can change placeholder reference',17,'change_placeholderreference'),(55,'Can delete placeholder reference',17,'delete_placeholderreference'),(56,'Can add static placeholder',18,'add_staticplaceholder'),(57,'Can change static placeholder',18,'change_staticplaceholder'),(58,'Can delete static placeholder',18,'delete_staticplaceholder'),(59,'Can add alias plugin model',19,'add_aliaspluginmodel'),(60,'Can change alias plugin model',19,'change_aliaspluginmodel'),(61,'Can delete alias plugin model',19,'delete_aliaspluginmodel'),(62,'Can add urlconf revision',20,'add_urlconfrevision'),(63,'Can change urlconf revision',20,'change_urlconfrevision'),(64,'Can delete urlconf revision',20,'delete_urlconfrevision'),(65,'Can add cache key',21,'add_cachekey'),(66,'Can change cache key',21,'change_cachekey'),(67,'Can delete cache key',21,'delete_cachekey'),(68,'Can add text',22,'add_text'),(69,'Can change text',22,'change_text'),(70,'Can delete text',22,'delete_text'),(71,'Can add Folder',23,'add_folder'),(72,'Can change Folder',23,'change_folder'),(73,'Can delete Folder',23,'delete_folder'),(74,'Can use directory listing',23,'can_use_directory_listing'),(75,'Can add folder permission',24,'add_folderpermission'),(76,'Can change folder permission',24,'change_folderpermission'),(77,'Can delete folder permission',24,'delete_folderpermission'),(78,'Can add file',25,'add_file'),(79,'Can change file',25,'change_file'),(80,'Can delete file',25,'delete_file'),(81,'Can add clipboard',26,'add_clipboard'),(82,'Can change clipboard',26,'change_clipboard'),(83,'Can delete clipboard',26,'delete_clipboard'),(84,'Can add clipboard item',27,'add_clipboarditem'),(85,'Can change clipboard item',27,'change_clipboarditem'),(86,'Can delete clipboard item',27,'delete_clipboarditem'),(87,'Can add image',28,'add_image'),(88,'Can change image',28,'change_image'),(89,'Can delete image',28,'delete_image'),(90,'Can add thumbnail option',29,'add_thumbnailoption'),(91,'Can change thumbnail option',29,'change_thumbnailoption'),(92,'Can delete thumbnail option',29,'delete_thumbnailoption'),(93,'Can add source',30,'add_source'),(94,'Can change source',30,'change_source'),(95,'Can delete source',30,'delete_source'),(96,'Can add thumbnail',31,'add_thumbnail'),(97,'Can change thumbnail',31,'change_thumbnail'),(98,'Can delete thumbnail',31,'delete_thumbnail'),(99,'Can add thumbnail dimensions',32,'add_thumbnaildimensions'),(100,'Can change thumbnail dimensions',32,'change_thumbnaildimensions'),(101,'Can delete thumbnail dimensions',32,'delete_thumbnaildimensions'),(102,'Can add multi columns',33,'add_multicolumns'),(103,'Can change multi columns',33,'change_multicolumns'),(104,'Can delete multi columns',33,'delete_multicolumns'),(105,'Can add column',34,'add_column'),(106,'Can change column',34,'change_column'),(107,'Can delete column',34,'delete_column'),(108,'Can add link',35,'add_link'),(109,'Can change link',35,'change_link'),(110,'Can delete link',35,'delete_link'),(111,'Can add filer file',36,'add_filerfile'),(112,'Can change filer file',36,'change_filerfile'),(113,'Can delete filer file',36,'delete_filerfile'),(114,'Can add filer folder',37,'add_filerfolder'),(115,'Can change filer folder',37,'change_filerfolder'),(116,'Can delete filer folder',37,'delete_filerfolder'),(117,'Can add filer image',38,'add_filerimage'),(118,'Can change filer image',38,'change_filerimage'),(119,'Can delete filer image',38,'delete_filerimage'),(120,'Can add Snippet',39,'add_snippet'),(121,'Can change Snippet',39,'change_snippet'),(122,'Can delete Snippet',39,'delete_snippet'),(123,'Can add Snippet',40,'add_snippetptr'),(124,'Can change Snippet',40,'change_snippetptr'),(125,'Can delete Snippet',40,'delete_snippetptr'),(126,'Can add google map',41,'add_googlemap'),(127,'Can change google map',41,'change_googlemap'),(128,'Can delete google map',41,'delete_googlemap'),(129,'Can add video player',42,'add_videoplayer'),(130,'Can change video player',42,'change_videoplayer'),(131,'Can delete video player',42,'delete_videoplayer'),(132,'Can add video source',43,'add_videosource'),(133,'Can change video source',43,'change_videosource'),(134,'Can delete video source',43,'delete_videosource'),(135,'Can add video track',44,'add_videotrack'),(136,'Can change video track',44,'change_videotrack'),(137,'Can delete video track',44,'delete_videotrack'),(138,'Can add style',45,'add_style'),(139,'Can change style',45,'change_style'),(140,'Can delete style',45,'delete_style'),(141,'Can add boostrap3 button plugin',46,'add_boostrap3buttonplugin'),(142,'Can change boostrap3 button plugin',46,'change_boostrap3buttonplugin'),(143,'Can delete boostrap3 button plugin',46,'delete_boostrap3buttonplugin'),(144,'Can add boostrap3 blockquote plugin',47,'add_boostrap3blockquoteplugin'),(145,'Can change boostrap3 blockquote plugin',47,'change_boostrap3blockquoteplugin'),(146,'Can delete boostrap3 blockquote plugin',47,'delete_boostrap3blockquoteplugin'),(147,'Can add boostrap3 icon plugin',48,'add_boostrap3iconplugin'),(148,'Can change boostrap3 icon plugin',48,'change_boostrap3iconplugin'),(149,'Can delete boostrap3 icon plugin',48,'delete_boostrap3iconplugin'),(150,'Can add boostrap3 label plugin',49,'add_boostrap3labelplugin'),(151,'Can change boostrap3 label plugin',49,'change_boostrap3labelplugin'),(152,'Can delete boostrap3 label plugin',49,'delete_boostrap3labelplugin'),(153,'Can add boostrap3 well plugin',50,'add_boostrap3wellplugin'),(154,'Can change boostrap3 well plugin',50,'change_boostrap3wellplugin'),(155,'Can delete boostrap3 well plugin',50,'delete_boostrap3wellplugin'),(156,'Can add boostrap3 alert plugin',51,'add_boostrap3alertplugin'),(157,'Can change boostrap3 alert plugin',51,'change_boostrap3alertplugin'),(158,'Can delete boostrap3 alert plugin',51,'delete_boostrap3alertplugin'),(159,'Can add boostrap3 image plugin',52,'add_boostrap3imageplugin'),(160,'Can change boostrap3 image plugin',52,'change_boostrap3imageplugin'),(161,'Can delete boostrap3 image plugin',52,'delete_boostrap3imageplugin'),(162,'Can add boostrap3 spacer plugin',53,'add_boostrap3spacerplugin'),(163,'Can change boostrap3 spacer plugin',53,'change_boostrap3spacerplugin'),(164,'Can delete boostrap3 spacer plugin',53,'delete_boostrap3spacerplugin'),(165,'Can add bootstrap3 file plugin',54,'add_bootstrap3fileplugin'),(166,'Can change bootstrap3 file plugin',54,'change_bootstrap3fileplugin'),(167,'Can delete bootstrap3 file plugin',54,'delete_bootstrap3fileplugin'),(168,'Can add boostrap3 panel plugin',55,'add_boostrap3panelplugin'),(169,'Can change boostrap3 panel plugin',55,'change_boostrap3panelplugin'),(170,'Can delete boostrap3 panel plugin',55,'delete_boostrap3panelplugin'),(171,'Can add boostrap3 panel heading plugin',56,'add_boostrap3panelheadingplugin'),(172,'Can change boostrap3 panel heading plugin',56,'change_boostrap3panelheadingplugin'),(173,'Can delete boostrap3 panel heading plugin',56,'delete_boostrap3panelheadingplugin'),(174,'Can add boostrap3 panel body plugin',57,'add_boostrap3panelbodyplugin'),(175,'Can change boostrap3 panel body plugin',57,'change_boostrap3panelbodyplugin'),(176,'Can delete boostrap3 panel body plugin',57,'delete_boostrap3panelbodyplugin'),(177,'Can add boostrap3 panel footer plugin',58,'add_boostrap3panelfooterplugin'),(178,'Can change boostrap3 panel footer plugin',58,'change_boostrap3panelfooterplugin'),(179,'Can delete boostrap3 panel footer plugin',58,'delete_boostrap3panelfooterplugin'),(180,'Can add bootstrap3 row plugin',59,'add_bootstrap3rowplugin'),(181,'Can change bootstrap3 row plugin',59,'change_bootstrap3rowplugin'),(182,'Can delete bootstrap3 row plugin',59,'delete_bootstrap3rowplugin'),(183,'Can add bootstrap3 column plugin',60,'add_bootstrap3columnplugin'),(184,'Can change bootstrap3 column plugin',60,'change_bootstrap3columnplugin'),(185,'Can delete bootstrap3 column plugin',60,'delete_bootstrap3columnplugin'),(186,'Can add bootstrap3 accordion plugin',61,'add_bootstrap3accordionplugin'),(187,'Can change bootstrap3 accordion plugin',61,'change_bootstrap3accordionplugin'),(188,'Can delete bootstrap3 accordion plugin',61,'delete_bootstrap3accordionplugin'),(189,'Can add bootstrap3 accordion item plugin',62,'add_bootstrap3accordionitemplugin'),(190,'Can change bootstrap3 accordion item plugin',62,'change_bootstrap3accordionitemplugin'),(191,'Can delete bootstrap3 accordion item plugin',62,'delete_bootstrap3accordionitemplugin'),(192,'Can add bootstrap3 list group plugin',63,'add_bootstrap3listgroupplugin'),(193,'Can change bootstrap3 list group plugin',63,'change_bootstrap3listgroupplugin'),(194,'Can delete bootstrap3 list group plugin',63,'delete_bootstrap3listgroupplugin'),(195,'Can add bootstrap3 list group item plugin',64,'add_bootstrap3listgroupitemplugin'),(196,'Can change bootstrap3 list group item plugin',64,'change_bootstrap3listgroupitemplugin'),(197,'Can delete bootstrap3 list group item plugin',64,'delete_bootstrap3listgroupitemplugin'),(198,'Can add bootstrap3 carousel plugin',65,'add_bootstrap3carouselplugin'),(199,'Can change bootstrap3 carousel plugin',65,'change_bootstrap3carouselplugin'),(200,'Can delete bootstrap3 carousel plugin',65,'delete_bootstrap3carouselplugin'),(201,'Can add bootstrap3 carousel slide plugin',66,'add_bootstrap3carouselslideplugin'),(202,'Can change bootstrap3 carousel slide plugin',66,'change_bootstrap3carouselslideplugin'),(203,'Can delete bootstrap3 carousel slide plugin',66,'delete_bootstrap3carouselslideplugin'),(204,'Can add bootstrap3 carousel slide folder plugin',67,'add_bootstrap3carouselslidefolderplugin'),(205,'Can change bootstrap3 carousel slide folder plugin',67,'change_bootstrap3carouselslidefolderplugin'),(206,'Can delete bootstrap3 carousel slide folder plugin',67,'delete_bootstrap3carouselslidefolderplugin'),(207,'Can add poll',68,'add_poll'),(208,'Can change poll',68,'change_poll'),(209,'Can delete poll',68,'delete_poll'),(210,'Can add choice',69,'add_choice'),(211,'Can change choice',69,'change_choice'),(212,'Can delete choice',69,'delete_choice'),(213,'Can add application',70,'add_application'),(214,'Can change application',70,'change_application'),(215,'Can delete application',70,'delete_application'),(216,'Can add grant',71,'add_grant'),(217,'Can change grant',71,'change_grant'),(218,'Can delete grant',71,'delete_grant'),(219,'Can add access token',72,'add_accesstoken'),(220,'Can change access token',72,'change_accesstoken'),(221,'Can delete access token',72,'delete_accesstoken'),(222,'Can add refresh token',73,'add_refreshtoken'),(223,'Can change refresh token',73,'change_refreshtoken'),(224,'Can delete refresh token',73,'delete_refreshtoken'),(225,'Can add menuportions',79,'add_menuportions'),(226,'Can change menuportions',79,'change_menuportions'),(227,'Can delete menuportions',79,'delete_menuportions'),(228,'Can add orders',81,'add_orders'),(229,'Can change orders',81,'change_orders'),(230,'Can delete orders',81,'delete_orders'),(231,'Can add business detail',78,'add_businessdetail'),(232,'Can change business detail',78,'change_businessdetail'),(233,'Can delete business detail',78,'delete_businessdetail'),(234,'Can add menu',74,'add_menu'),(235,'Can change menu',74,'change_menu'),(236,'Can delete menu',74,'delete_menu'),(237,'Can add menu items',76,'add_menuitems'),(238,'Can change menu items',76,'change_menuitems'),(239,'Can delete menu items',76,'delete_menuitems'),(240,'Can add order',75,'add_order'),(241,'Can change order',75,'change_order'),(242,'Can delete order',75,'delete_order'),(243,'Can add phrase to menuitems',77,'add_phrasetomenuitems'),(244,'Can change phrase to menuitems',77,'change_phrasetomenuitems'),(245,'Can delete phrase to menuitems',77,'delete_phrasetomenuitems'),(246,'Can add shopping cart',82,'add_shoppingcart'),(247,'Can change shopping cart',82,'change_shoppingcart'),(248,'Can delete shopping cart',82,'delete_shoppingcart'),(249,'Can add type to menuitems',80,'add_typetomenuitems'),(250,'Can change type to menuitems',80,'change_typetomenuitems'),(251,'Can delete type to menuitems',80,'delete_typetomenuitems');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$lDNDzu7REs8f$hWrfP+IJBhKV6tp0mZqfd0HUemiCfVfx0B34fZXla2c=','2016-11-23 15:10:17.693624',1,'julio','Julio','Hernandez-Miyares','juliomiyares@mac.com',1,1,'2016-11-15 01:24:16.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_detail`
--

DROP TABLE IF EXISTS `business_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` longtext,
  `closed_days` longtext,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `current_location` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_detail`
--

LOCK TABLES `business_detail` WRITE;
/*!40000 ALTER TABLE `business_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11),
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_921abf5c` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmo_plugin_id_6cb0e8f62e7b802f_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms__alias_placeholder_id_19ff87f4b6506f7d_fk_cms_placeholder_id` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspl_cmsplugin_ptr_id_a146238a4a634c4_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmo_plugin_id_6cb0e8f62e7b802f_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11),
  `placeholder_id` int(11),
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_7692c19a7d5df9d5_uniq` (`path`),
  KEY `cms_cmsplugin_8512ae7d` (`language`),
  KEY `cms_cmsplugin_b5e4cf8f` (`plugin_type`),
  KEY `cms_cmsplugin_6be37982` (`parent_id`),
  KEY `cms_cmsplugin_667a6151` (`placeholder_id`),
  CONSTRAINT `cms_cmsplu_placeholder_id_45e08772be34ec0f_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_cmsplugin_parent_id_3227a3752b89b923_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (1,0,'en','StylePlugin','2016-11-15 01:45:10.572334','2016-11-30 02:08:44.461189',NULL,2,1,1,'0001'),(4,0,'en','TextPlugin','2016-11-15 01:46:09.991669','2016-11-28 21:56:36.740066',365,2,4,0,'0001000200020001'),(34,0,'en','Bootstrap3RowCMSPlugin','2016-11-28 21:54:53.673588','2016-11-30 02:32:16.197234',1,2,2,2,'00010002'),(35,0,'en','Bootstrap3ColumnCMSPlugin','2016-11-28 21:54:53.698648','2016-11-30 02:33:55.181386',34,2,3,1,'000100020001'),(54,0,'en','StylePlugin','2016-11-29 00:57:10.353642','2016-11-29 00:57:10.359842',NULL,15,1,1,'0003'),(55,0,'en','Bootstrap3RowCMSPlugin','2016-11-29 00:57:35.065033','2016-11-29 01:03:23.394737',NULL,1,1,0,'0005'),(63,1,'en','SnippetPlugin','2016-11-29 01:09:39.196373','2016-11-29 01:18:43.256498',54,15,2,0,'00030002'),(69,0,'en','StylePlugin','2016-11-29 00:57:10.353642','2016-11-29 01:18:47.575264',NULL,16,1,1,'0006'),(70,1,'en','SnippetPlugin','2016-11-29 01:09:39.196373','2016-11-29 01:18:47.585646',69,16,2,0,'00060001'),(71,0,'en','StylePlugin','2016-11-29 03:13:08.548791','2016-12-01 20:41:52.700121',NULL,9,1,2,'0007'),(72,0,'en','Bootstrap3RowCMSPlugin','2016-11-29 03:13:22.510404','2016-12-01 20:40:33.280483',71,9,2,1,'00070001'),(73,0,'en','Bootstrap3ColumnCMSPlugin','2016-11-29 03:13:22.528433','2016-12-01 20:43:55.532787',72,9,3,3,'000700010001'),(74,0,'en','TextPlugin','2016-11-29 03:13:43.546715','2016-11-30 01:29:29.935485',73,9,4,0,'0007000100010001'),(129,1,'en','Bootstrap3CarouselCMSPlugin','2016-11-29 04:23:30.849194','2016-12-01 15:28:55.915309',73,9,4,8,'0007000100010003'),(130,0,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-29 04:24:13.076513','2016-12-01 20:33:26.198538',129,9,5,0,'00070001000100030001'),(131,1,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-29 04:25:20.896854','2016-11-29 04:25:20.907175',129,9,5,0,'00070001000100030002'),(139,2,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-29 04:31:46.035047','2016-11-29 04:31:46.044577',129,9,5,0,'00070001000100030003'),(167,2,'en','TextPlugin','2016-11-29 23:25:52.991089','2016-11-30 01:28:43.354878',73,9,4,0,'0007000100010004'),(239,1,'en','GoogleMapPlugin','2016-11-30 01:01:32.890385','2016-11-30 01:03:42.866815',71,9,2,0,'00070002'),(283,3,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:13:13.625392','2016-11-30 01:14:55.549872',129,9,5,0,'00070001000100030004'),(284,4,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:13:39.869521','2016-11-30 01:13:39.877788',129,9,5,0,'00070001000100030005'),(298,5,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:15:09.311933','2016-11-30 01:15:09.319483',129,9,5,0,'00070001000100030006'),(299,6,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:15:22.333837','2016-11-30 01:15:22.342288',129,9,5,0,'00070001000100030007'),(365,1,'en','Bootstrap3ColumnCMSPlugin','2016-11-30 02:32:16.199623','2016-11-30 02:34:12.469690',34,2,3,1,'000100020002'),(371,0,'en','TextPlugin','2016-11-30 02:32:58.710943','2016-11-30 03:02:43.885038',35,2,4,0,'0001000200010001'),(384,0,'en','StylePlugin','2016-11-15 01:45:10.572334','2016-11-30 03:02:46.440542',NULL,3,1,1,'000B'),(385,0,'en','Bootstrap3RowCMSPlugin','2016-11-28 21:54:53.673588','2016-11-30 03:02:46.449824',384,3,2,2,'000B0001'),(386,0,'en','Bootstrap3ColumnCMSPlugin','2016-11-28 21:54:53.698648','2016-11-30 03:02:46.459555',385,3,3,1,'000B00010001'),(387,0,'en','TextPlugin','2016-11-30 02:32:58.710943','2016-11-30 03:02:46.501358',386,3,4,0,'000B000100010001'),(388,1,'en','Bootstrap3ColumnCMSPlugin','2016-11-30 02:32:16.199623','2016-11-30 03:02:46.480965',385,3,3,1,'000B00010002'),(389,0,'en','TextPlugin','2016-11-15 01:46:09.991669','2016-11-30 03:02:46.508199',388,3,4,0,'000B000100020001'),(418,7,'en','Bootstrap3CarouselSlideCMSPlugin','2016-12-01 18:11:00.091838','2016-12-01 18:11:00.113395',129,9,5,0,'00070001000100030008'),(494,0,'en','StylePlugin','2016-11-29 03:13:08.548791','2016-12-01 20:44:00.117894',NULL,11,1,2,'000C'),(495,0,'en','Bootstrap3RowCMSPlugin','2016-11-29 03:13:22.510404','2016-12-01 20:44:00.128349',494,11,2,1,'000C0001'),(496,0,'en','Bootstrap3ColumnCMSPlugin','2016-11-29 03:13:22.528433','2016-12-01 20:44:00.139671',495,11,3,3,'000C00010001'),(497,0,'en','TextPlugin','2016-11-29 03:13:43.546715','2016-12-01 20:44:00.308201',496,11,4,0,'000C000100010001'),(498,1,'en','Bootstrap3CarouselCMSPlugin','2016-11-29 04:23:30.849194','2016-12-01 20:44:00.164034',496,11,4,8,'000C000100010002'),(499,0,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-29 04:24:13.076513','2016-12-01 20:44:00.175096',498,11,5,0,'000C0001000100020001'),(500,1,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-29 04:25:20.896854','2016-12-01 20:44:00.187901',498,11,5,0,'000C0001000100020002'),(501,2,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-29 04:31:46.035047','2016-12-01 20:44:00.200699',498,11,5,0,'000C0001000100020003'),(502,3,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:13:13.625392','2016-12-01 20:44:00.214294',498,11,5,0,'000C0001000100020004'),(503,4,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:13:39.869521','2016-12-01 20:44:00.229104',498,11,5,0,'000C0001000100020005'),(504,5,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:15:09.311933','2016-12-01 20:44:00.243178',498,11,5,0,'000C0001000100020006'),(505,6,'en','Bootstrap3CarouselSlideCMSPlugin','2016-11-30 01:15:22.333837','2016-12-01 20:44:00.256510',498,11,5,0,'000C0001000100020007'),(506,7,'en','Bootstrap3CarouselSlideCMSPlugin','2016-12-01 18:11:00.091838','2016-12-01 20:44:00.269367',498,11,5,0,'000C0001000100020008'),(507,2,'en','TextPlugin','2016-11-29 23:25:52.991089','2016-12-01 20:44:00.331711',496,11,4,0,'000C000100010003'),(508,1,'en','GoogleMapPlugin','2016-11-30 01:01:32.890385','2016-12-01 20:44:00.296384',494,11,2,0,'000C0002');
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermiss_group_id_5495c04a8b715951_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermissio_user_id_5b7e387d572f1d18_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermiss_group_id_5495c04a8b715951_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_globalpagepermissio_user_id_5b7e387d572f1d18_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `globalpagepermission_id` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermiss_site_id_2805b267618ef941_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_globalpagepermiss_site_id_2805b267618ef941_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `f9540a0f4c5a4ddcc0802274553b3047` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `xframe_options` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_path_518270318703c18f_uniq` (`path`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  UNIQUE KEY `cms_page_reverse_id_a864144bd3516c9_uniq` (`reverse_id`,`site_id`,`publisher_is_draft`),
  UNIQUE KEY `cms_page_publisher_is_draft_7597e61e0082d3aa_uniq` (`publisher_is_draft`,`site_id`,`application_namespace`),
  KEY `cms_page_parent_id_3a1df0ef76fe1197_fk_cms_page_id` (`parent_id`),
  KEY `cms_page_site_id_74f6849b7245e838_fk_django_site_id` (`site_id`),
  KEY `cms_page_93b83098` (`publication_date`),
  KEY `cms_page_2247c5f0` (`publication_end_date`),
  KEY `cms_page_db3eb53f` (`in_navigation`),
  KEY `cms_page_1d85575d` (`soft_root`),
  KEY `cms_page_3d9ef52f` (`reverse_id`),
  KEY `cms_page_7b8acfa6` (`navigation_extenders`),
  KEY `cms_page_cb540373` (`limit_visibility_in_menu`),
  KEY `cms_page_4fa1c803` (`is_home`),
  KEY `cms_page_e721871e` (`application_urls`),
  KEY `cms_page_b7700099` (`publisher_is_draft`),
  CONSTRAINT `cms_page_parent_id_3a1df0ef76fe1197_fk_cms_page_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_6d3414df27b14e29_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_page_site_id_74f6849b7245e838_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'julio','julio','2016-11-15 01:26:36.179529','2016-12-01 20:44:00.404265','2016-11-15 01:26:36.229102',NULL,1,0,NULL,'','feature.html',0,NULL,1,'',NULL,1,'en',0,0,NULL,2,1,1,0,'0001'),(2,'julio','julio','2016-11-15 01:26:36.233600','2016-12-01 20:44:00.364630','2016-11-15 01:26:36.229102',NULL,1,0,NULL,'','feature.html',0,NULL,1,'',NULL,0,'en',0,0,NULL,1,1,1,0,'0002'),(3,'script','julio','2016-11-15 02:04:24.203529','2016-12-01 20:44:00.381807','2016-11-15 02:05:21.113405',NULL,1,0,NULL,'','about.html',0,NULL,0,'',NULL,1,'en',0,0,NULL,4,1,1,0,'0004'),(4,'julio','julio','2016-11-15 02:05:21.118773','2016-12-01 20:44:00.341724','2016-11-15 02:05:21.113405',NULL,1,0,NULL,'','about.html',0,NULL,0,'',NULL,0,'en',0,0,NULL,3,1,1,0,'0005'),(5,'script','julio','2016-11-15 19:39:12.644917','2016-11-29 01:18:47.503274','2016-11-15 19:39:39.371563',NULL,1,0,NULL,'','contact.html',0,NULL,0,'',NULL,1,'en',0,0,NULL,6,1,1,0,'0007'),(6,'julio','julio','2016-11-15 19:39:39.381822','2016-11-29 01:18:47.459682','2016-11-15 19:39:39.371563',NULL,1,0,NULL,'','contact.html',0,NULL,0,'',NULL,0,'en',0,0,NULL,5,1,1,0,'0008');
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`placeholder_id`),
  KEY `cms_page_p_placeholder_id_1e2710bd8c76d9ad_fk_cms_placeholder_id` (`placeholder_id`),
  CONSTRAINT `cms_page_p_placeholder_id_1e2710bd8c76d9ad_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_2339fb692425adb6_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,4),(2,1,5),(3,2,6),(4,2,7),(5,3,8),(6,3,9),(9,3,12),(7,4,10),(8,4,11),(10,4,17);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_39f298fdb5026_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_214a878c4fb6ec65_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_b6429a51a3e8e53_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_group_id_39f298fdb5026_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_214a878c4fb6ec65_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_pagepermission_user_id_b6429a51a3e8e53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_18eb7aa0ce6f1c16_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_18eb7aa0ce6f1c16_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_7b1c6e2f6b58ccde_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_53218d1b0250196_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_53218d1b0250196_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_2fed9cde9e11700f_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_5e97994e` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'footer',NULL),(3,'footer',NULL),(4,'feature',NULL),(5,'content',NULL),(6,'feature',NULL),(7,'content',NULL),(8,'feature',NULL),(9,'content',NULL),(10,'feature',NULL),(11,'content',NULL),(12,'javascript',NULL),(13,'social_shares',NULL),(14,'social_shares',NULL),(15,'facebook_like_share',NULL),(16,'facebook_like_share',NULL),(17,'javascript',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_328d0afc` (`placeholder_ref_id`),
  CONSTRAINT `cms_pl_placeholder_ref_id_6d7ea115a2f488ec_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_placeh_cmsplugin_ptr_id_57d93b52c864bee6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_6c6b490a9fe0e459_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_65c8a138163af08f_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_5cb48773` (`draft_id`),
  KEY `cms_staticplaceholder_1ee2744d` (`public_id`),
  CONSTRAINT `cms_staticplace_public_id_20b32af3aef57809_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceh_draft_id_6c2edc7f36488820_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_site_id_65c8a138163af08f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
INSERT INTO `cms_staticplaceholder` VALUES (1,'','footer',0,'template',2,3,NULL),(2,'','social_shares',0,'template',13,14,NULL),(3,'','facebook_like_share',0,'template',15,16,NULL);
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_7a69dc7eaf856287_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_527ebd61f3936a12_fk_cms_page_id` (`page_id`),
  KEY `cms_title_8512ae7d` (`language`),
  KEY `cms_title_2dbcba41` (`slug`),
  KEY `cms_title_d6fe1d0b` (`path`),
  KEY `cms_title_1268de9a` (`has_url_overwrite`),
  KEY `cms_title_b7700099` (`publisher_is_draft`),
  KEY `cms_title_f7202fc0` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_527ebd61f3936a12_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_74e956b52b3e4a1d_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','Home','','','','home','',0,'','2016-11-15 01:26:36.221720',1,1,0,1,2),(2,'en','Home','','','','home','',0,'','2016-11-15 01:26:36.221720',1,0,0,2,1),(3,'en','About',NULL,NULL,NULL,'about','about',0,'','2016-11-15 02:04:24.229664',1,1,0,3,4),(4,'en','About',NULL,NULL,NULL,'about','about',0,'','2016-11-15 02:04:24.229664',1,0,1,4,3),(5,'en','Contact Us',NULL,NULL,NULL,'contact-us','contact-us',0,'','2016-11-15 19:39:12.682854',1,1,0,5,6),(6,'en','Contact Us',NULL,NULL,NULL,'contact-us','contact-us',0,'','2016-11-15 19:39:12.682854',1,0,0,6,5);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
INSERT INTO `cms_urlconfrevision` VALUES (1,'9b9eb02b-d291-4828-b4e8-5cb233e0a2b9');
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersett_clipboard_id_15eac87d124304f3_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersett_clipboard_id_15eac87d124304f3_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_usersettings_user_id_2cfe7a2128ccc2b3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'en',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_filer_file_filerfile`
--

DROP TABLE IF EXISTS `cmsplugin_filer_file_filerfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_filer_file_filerfile` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `target_blank` tinyint(1) NOT NULL,
  `style` varchar(255) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_filer_file_filerfile_814552b9` (`file_id`),
  CONSTRAINT `cmsplugin__cmsplugin_ptr_id_41d23fc2e948ebc9_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cmsplugin_filer_file_f_file_id_4f255e59830018d3_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_filer_file_filerfile`
--

LOCK TABLES `cmsplugin_filer_file_filerfile` WRITE;
/*!40000 ALTER TABLE `cmsplugin_filer_file_filerfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_filer_file_filerfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_filer_folder_filerfolder`
--

DROP TABLE IF EXISTS `cmsplugin_filer_folder_filerfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_filer_folder_filerfolder` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `style` varchar(50) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_filer_folder_filerfolder_a8a44dbb` (`folder_id`),
  CONSTRAINT `cmsplugin__cmsplugin_ptr_id_782af9abae289fc5_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cmsplugin_filer_fo_folder_id_31ec3853b8645959_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_filer_folder_filerfolder`
--

LOCK TABLES `cmsplugin_filer_folder_filerfolder` WRITE;
/*!40000 ALTER TABLE `cmsplugin_filer_folder_filerfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_filer_folder_filerfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_filer_image_filerimage`
--

DROP TABLE IF EXISTS `cmsplugin_filer_image_filerimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_filer_image_filerimage` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `caption_text` varchar(255) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `use_original_image` tinyint(1) NOT NULL,
  `use_autoscale` tinyint(1) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  `alignment` varchar(10) DEFAULT NULL,
  `free_link` varchar(2000) DEFAULT NULL,
  `original_link` tinyint(1) NOT NULL,
  `description` longtext,
  `target_blank` tinyint(1) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `thumbnail_option_id` int(11),
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_filer_image_filerimage_0fe0fc57` (`file_link_id`),
  KEY `cmsplugin_filer_image_filerimage_f33175e6` (`image_id`),
  KEY `cmsplugin_filer_image_filerimage_d916d256` (`page_link_id`),
  KEY `cmsplugin_filer_image_filerimage_6b85b7b1` (`thumbnail_option_id`),
  CONSTRAINT `cmsplugin__cmsplugin_ptr_id_21aa2d865378a28b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cmsplugin_f_image_id_47889415dca79a55_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `cmsplugin_filer_i_file_link_id_17f9aa70b502dc05_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `cmsplugin_filer_ima_page_link_id_5c423471ccb39250_fk_cms_page_id` FOREIGN KEY (`page_link_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `thumbnail_option_id_d243368a21c0685_fk_filer_thumbnailoption_id` FOREIGN KEY (`thumbnail_option_id`) REFERENCES `filer_thumbnailoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_filer_image_filerimage`
--

LOCK TABLES `cmsplugin_filer_image_filerimage` WRITE;
/*!40000 ALTER TABLE `cmsplugin_filer_image_filerimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_filer_image_filerimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-11-15 01:26:36.347219','1','Home',1,'',2,1),(2,'2016-11-15 01:26:50.902624','1','Home',2,'Changed template and xframe_options.',2,1),(3,'2016-11-15 01:26:59.426565','1','Home',2,'',2,1),(4,'2016-11-15 01:27:50.960820','1','Home',2,'Changed template and xframe_options.',2,1),(5,'2016-11-15 01:46:03.147680','2','2',3,'',15,1),(6,'2016-11-15 01:46:32.224920','1','Home',2,'',2,1),(7,'2016-11-15 01:46:50.996225','1','Home',2,'',2,1),(8,'2016-11-15 02:05:13.542323','3','About',2,'Changed template and xframe_options.',2,1),(9,'2016-11-15 02:05:21.258026','3','About',2,'',2,1),(10,'2016-11-15 18:18:42.090642','3','About',2,'Changed template and xframe_options.',2,1),(11,'2016-11-15 18:21:42.275727','3','About',2,'Changed xframe_options.',2,1),(12,'2016-11-15 18:22:38.868645','3','About',2,'',2,1),(13,'2016-11-15 19:39:35.924142','5','Contact Us',2,'Changed template and xframe_options.',2,1),(14,'2016-11-15 19:39:39.504047','5','Contact Us',2,'',2,1),(15,'2016-11-16 22:06:11.262638','5','Contact Us',2,'',2,1),(16,'2016-11-16 22:07:39.205931','5','Contact Us',2,'',2,1),(17,'2016-11-16 22:08:49.279529','12','12',3,'',15,1),(18,'2016-11-16 22:08:54.825762','17','17',3,'',15,1),(19,'2016-11-16 23:04:06.070946','1','nashville_30302949151_o.jpg',2,'Changed subject_location.',28,1),(20,'2016-11-16 23:04:09.106508','1','nashville_30302949151_o.jpg',2,'No fields changed.',28,1),(21,'2016-11-16 23:04:50.405974','5','Contact Us',2,'',2,1),(22,'2016-11-16 23:05:36.933333','5','Contact Us',2,'',2,1),(23,'2016-11-20 15:12:24.068134','2','faviosmom.com',1,'',9,1),(24,'2016-11-21 01:52:10.506775','1','julio',2,'Changed first_name, last_name and email.',5,1),(25,'2016-11-21 02:06:08.834853','37','biggggggggggly black beans 5 +/and rice',3,'',76,1),(26,'2016-11-21 02:06:08.837102','35','bigggggggggly black beans and rice',3,'',76,1),(27,'2016-11-21 02:06:08.839958','30','bigggggggly black beans and rice',3,'',76,1),(28,'2016-11-21 02:06:08.841525','25','biggggggly black beans and rice',3,'',76,1),(29,'2016-11-21 02:06:08.842730','24','bigggggly black beans and rice',3,'',76,1),(30,'2016-11-21 02:06:08.843909','21','biggggly black beans and rice',3,'',76,1),(31,'2016-11-21 02:06:08.845075','20','bigggly black beans and rice',3,'',76,1),(32,'2016-11-21 02:06:23.965719','19','biggly black beans and rice',3,'',76,1),(33,'2016-11-21 02:06:23.966949','18','bigly black beans and rice',3,'',76,1),(34,'2016-11-21 02:06:23.968128','17','biggest black beans and rice',3,'',76,1),(35,'2016-11-21 02:06:23.969246','16','bigger black beans and rice',3,'',76,1),(36,'2016-11-21 12:09:48.953622','15','typical black beans and rice',2,'No fields changed.',76,1),(37,'2016-11-21 12:10:26.626018','1','Pot of Black Beans',2,'Changed price.',76,1),(38,'2016-11-21 12:12:54.936634','39','Order object',2,'Changed order.',75,1),(39,'2016-11-22 02:04:06.370407','8','big tostones',1,'',77,1),(40,'2016-11-22 02:14:11.688762','8','big tostones',2,'No fields changed.',77,1),(41,'2016-11-22 02:26:32.749883','9','biggest pot of black beans',1,'',77,1),(42,'2016-11-22 03:23:02.363414','15','typical black beans and rice',2,'No fields changed.',76,1),(43,'2016-11-22 03:26:39.960679','7','Ham Croquetas',2,'Changed available.',76,1),(44,'2016-11-22 03:26:48.652629','7','Ham Croquetas',2,'Changed available.',76,1),(45,'2016-11-22 03:31:27.951098','38','Potato Crquetas',1,'',76,1),(46,'2016-11-22 03:32:12.833382','38','Potato Croquetas',2,'Changed name.',76,1),(47,'2016-11-22 03:39:50.723311','8','ham',2,'No fields changed.',80,1),(48,'2016-11-22 03:40:19.618771','9','vegetarian',1,'',80,1),(49,'2016-11-22 05:18:34.977119','39','[{\"id\": 4, \"name\": \"Cuban Sandwich\", \"price\": 10, \"menu_id\": 2, \"portions\": \"2\", \"vegetarian\": 0, \"portion_size\": \"10 inches\", \"normalized_name\": \"cubansandwich\"}]',2,'Changed fulfilled.',75,1),(50,'2016-11-23 16:17:49.770085','6','flan',1,'',74,1),(51,'2016-11-23 16:18:11.896783','6','flan',2,'Changed short_description and long_description.',74,1),(52,'2016-11-23 17:57:43.994362','11','dessert Guayaba Pastelistos',1,'',80,1),(53,'2016-11-23 20:43:19.158754','38','Potato Croquetas',2,'No fields changed.',76,1),(54,'2016-11-23 20:48:54.480779','40','Flan',1,'',76,1),(55,'2016-11-23 20:49:37.037437','40','Flan Whole Pie',2,'Changed name.',76,1),(56,'2016-11-24 08:23:38.786710','41','Flan slice',1,'',76,1),(57,'2016-11-24 08:33:32.997639','10','large sandwich',1,'',77,1),(58,'2016-11-24 08:33:54.535713','11','small sandwich',1,'',77,1),(59,'2016-11-24 16:41:52.391610','11','Type: dessert MenuItem: Guayaba Pastelistos',2,'No fields changed.',80,1),(60,'2016-11-24 16:42:34.891373','12','Type: dessert MenuItem: Flan Whole Pie',1,'',80,1),(61,'2016-11-24 16:42:46.139364','13','Type: dessert MenuItem: Flan slice',1,'',80,1),(62,'2016-11-24 20:41:15.762457','7','test',2,'No fields changed.',81,1),(63,'2016-11-24 20:41:24.420317','8','tester',2,'Changed order_json.',81,1),(64,'2016-11-24 20:53:37.719324','1','test',2,'Changed orderID.',81,1),(65,'2016-11-26 01:13:34.299991','15','typical black beans and rice',2,'Changed vegetarian.',76,1),(66,'2016-11-26 01:14:18.842168','11','medium size black beans',2,'Changed vegetarian.',76,1),(67,'2016-11-28 21:17:38.082639','9','9',3,'',15,1),(68,'2016-11-28 21:55:15.058266','5','Contact Us',2,'',2,1),(69,'2016-11-28 21:56:41.980341','1','Home',2,'',2,1),(70,'2016-11-28 21:58:31.267027','1','Home',2,'',2,1),(71,'2016-11-29 00:54:43.631775','48','48',3,'',15,1),(72,'2016-11-29 00:54:47.170273','1','Home',2,'',2,1),(73,'2016-11-29 00:59:39.136425','1','Home',2,'',2,1),(74,'2016-11-29 01:02:10.876011','5','Contact Us',2,'',2,1),(75,'2016-11-29 01:03:23.374251','56','56',3,'',15,1),(76,'2016-11-29 01:09:29.217834','1','facebook_like',1,'',39,1),(77,'2016-11-29 01:09:45.285679','5','Contact Us',2,'',2,1),(78,'2016-11-29 01:09:58.975151','1','clipboard',3,'',1,1),(79,'2016-11-29 01:10:02.095287','5','Contact Us',2,'',2,1),(80,'2016-11-29 01:18:40.587899','1','facebook_like',2,'Changed html.',39,1),(81,'2016-11-29 01:18:47.596516','5','Contact Us',2,'',2,1),(82,'2016-11-29 03:15:21.034548','3','About',2,'',2,1),(83,'2016-11-29 03:18:34.818375','3','About',2,'',2,1),(84,'2016-11-29 03:50:08.030867','3','About',2,'',2,1),(85,'2016-11-29 03:51:57.960341','3','About',2,'',2,1),(86,'2016-11-29 03:53:08.419886','3','About',2,'',2,1),(87,'2016-11-29 03:55:32.400996','3','About',2,'',2,1),(88,'2016-11-29 03:56:32.034106','3','About',2,'',2,1),(89,'2016-11-29 03:57:26.028318','3','About',2,'',2,1),(90,'2016-11-29 03:59:39.304710','3','About',2,'',2,1),(91,'2016-11-29 04:21:18.743825','3','About',2,'',2,1),(92,'2016-11-29 04:23:45.991363','100','100',3,'',15,1),(93,'2016-11-29 04:25:24.732649','3','About',2,'',2,1),(94,'2016-11-29 04:32:28.128831','3','About',2,'',2,1),(95,'2016-11-29 04:34:56.743332','3','About',2,'',2,1),(96,'2016-11-29 04:47:34.164070','3','About',2,'',2,1),(97,'2016-11-29 23:25:25.682524','164','164',3,'',15,1),(98,'2016-11-29 23:28:55.734984','3','About',2,'',2,1),(99,'2016-11-30 00:49:23.366045','3','About',2,'',2,1),(100,'2016-11-30 00:50:10.428121','3','About',2,'',2,1),(101,'2016-11-30 00:50:50.104169','3','About',2,'',2,1),(102,'2016-11-30 00:53:43.642259','3','About',2,'',2,1),(103,'2016-11-30 00:54:53.806440','3','About',2,'',2,1),(104,'2016-11-30 00:55:21.120771','177','177',3,'',15,1),(105,'2016-11-30 00:55:27.839809','218','218',3,'',15,1),(106,'2016-11-30 00:55:30.196505','3','About',2,'',2,1),(107,'2016-11-30 01:01:38.258020','3','About',2,'',2,1),(108,'2016-11-30 01:03:48.507706','3','About',2,'',2,1),(109,'2016-11-30 01:06:03.589682','3','About',2,'',2,1),(110,'2016-11-30 01:07:18.052307','3','About',2,'',2,1),(111,'2016-11-30 01:13:46.827078','3','About',2,'',2,1),(112,'2016-11-30 01:15:30.201299','3','About',2,'',2,1),(113,'2016-11-30 01:28:46.936383','3','About',2,'',2,1),(114,'2016-11-30 01:29:33.711673','3','About',2,'',2,1),(115,'2016-11-30 02:08:47.768345','3','About',2,'',2,1),(116,'2016-12-01 03:18:40.730067','2','Cup of Black Beans',2,'Changed short_description.',76,1),(117,'2016-12-01 03:19:13.413867','1','Pot of Black Beans',2,'Changed short_description.',76,1),(118,'2016-12-01 15:27:47.781196','3','About',2,'',2,1),(119,'2016-12-01 15:29:00.272140','3','About',2,'',2,1),(120,'2016-12-01 18:11:04.951309','3','About',2,'',2,1),(121,'2016-12-01 18:18:56.522475','3','About',2,'',2,1),(122,'2016-12-01 20:33:33.410067','3','About',2,'',2,1),(123,'2016-12-01 20:41:13.516149','3','About',2,'',2,1),(124,'2016-12-01 20:42:27.459907','3','About',2,'',2,1),(125,'2016-12-01 20:44:00.427597','3','About',2,'',2,1),(126,'2016-12-02 02:25:12.704123','4','Cuban Sandwich',2,'Changed short_description.',76,1),(127,'2016-12-02 02:26:24.751918','3','Half Cuban Sandwich',2,'Changed price and short_description.',76,1),(128,'2016-12-02 02:27:18.090860','5','Small Tostones',2,'Changed price and short_description.',76,1),(129,'2016-12-02 02:28:03.640207','6','Large Tostones',2,'Changed price and short_description.',76,1),(130,'2016-12-02 02:37:23.870097','5','Small Tostones',2,'No fields changed.',76,1),(131,'2016-12-02 02:37:37.359339','6','Large Tostones',2,'No fields changed.',76,1),(132,'2016-12-02 02:38:13.426081','6','Large Tostones',2,'Changed portion_size.',76,1),(133,'2016-12-02 02:38:44.750782','5','Small Tostones',2,'Changed portion_size.',76,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(51,'aldryn_bootstrap3','boostrap3alertplugin'),(47,'aldryn_bootstrap3','boostrap3blockquoteplugin'),(46,'aldryn_bootstrap3','boostrap3buttonplugin'),(48,'aldryn_bootstrap3','boostrap3iconplugin'),(52,'aldryn_bootstrap3','boostrap3imageplugin'),(49,'aldryn_bootstrap3','boostrap3labelplugin'),(57,'aldryn_bootstrap3','boostrap3panelbodyplugin'),(58,'aldryn_bootstrap3','boostrap3panelfooterplugin'),(56,'aldryn_bootstrap3','boostrap3panelheadingplugin'),(55,'aldryn_bootstrap3','boostrap3panelplugin'),(53,'aldryn_bootstrap3','boostrap3spacerplugin'),(50,'aldryn_bootstrap3','boostrap3wellplugin'),(62,'aldryn_bootstrap3','bootstrap3accordionitemplugin'),(61,'aldryn_bootstrap3','bootstrap3accordionplugin'),(65,'aldryn_bootstrap3','bootstrap3carouselplugin'),(67,'aldryn_bootstrap3','bootstrap3carouselslidefolderplugin'),(66,'aldryn_bootstrap3','bootstrap3carouselslideplugin'),(60,'aldryn_bootstrap3','bootstrap3columnplugin'),(54,'aldryn_bootstrap3','bootstrap3fileplugin'),(64,'aldryn_bootstrap3','bootstrap3listgroupitemplugin'),(63,'aldryn_bootstrap3','bootstrap3listgroupplugin'),(59,'aldryn_bootstrap3','bootstrap3rowplugin'),(45,'aldryn_style','style'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(19,'cms','aliaspluginmodel'),(15,'cms','cmsplugin'),(11,'cms','globalpagepermission'),(2,'cms','page'),(12,'cms','pagepermission'),(13,'cms','pageuser'),(14,'cms','pageusergroup'),(1,'cms','placeholder'),(17,'cms','placeholderreference'),(18,'cms','staticplaceholder'),(16,'cms','title'),(20,'cms','urlconfrevision'),(10,'cms','usersettings'),(36,'cmsplugin_filer_file','filerfile'),(37,'cmsplugin_filer_folder','filerfolder'),(38,'cmsplugin_filer_image','filerimage'),(6,'contenttypes','contenttype'),(34,'djangocms_column','column'),(33,'djangocms_column','multicolumns'),(41,'djangocms_googlemap','googlemap'),(35,'djangocms_link','link'),(39,'djangocms_snippet','snippet'),(40,'djangocms_snippet','snippetptr'),(22,'djangocms_text_ckeditor','text'),(42,'djangocms_video','videoplayer'),(43,'djangocms_video','videosource'),(44,'djangocms_video','videotrack'),(30,'easy_thumbnails','source'),(31,'easy_thumbnails','thumbnail'),(32,'easy_thumbnails','thumbnaildimensions'),(26,'filer','clipboard'),(27,'filer','clipboarditem'),(25,'filer','file'),(23,'filer','folder'),(24,'filer','folderpermission'),(28,'filer','image'),(29,'filer','thumbnailoption'),(21,'menus','cachekey'),(72,'oauth2_provider','accesstoken'),(70,'oauth2_provider','application'),(71,'oauth2_provider','grant'),(73,'oauth2_provider','refreshtoken'),(69,'polls','choice'),(68,'polls','poll'),(78,'product','businessdetail'),(74,'product','menu'),(76,'product','menuitems'),(79,'product','menuportions'),(75,'product','order'),(81,'product','orders'),(77,'product','phrasetomenuitems'),(82,'product','shoppingcart'),(80,'product','typetomenuitems'),(7,'sessions','session'),(9,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-11-15 01:18:27.920965'),(2,'auth','0001_initial','2016-11-15 01:18:28.405903'),(3,'admin','0001_initial','2016-11-15 01:18:28.506143'),(4,'filer','0001_initial','2016-11-15 01:18:29.326734'),(5,'filer','0002_auto_20150606_2003','2016-11-15 01:18:29.383511'),(6,'contenttypes','0002_remove_content_type_name','2016-11-15 01:18:29.536984'),(7,'sites','0001_initial','2016-11-15 01:18:29.554994'),(8,'cms','0001_initial','2016-11-15 01:18:30.277043'),(9,'cms','0002_auto_20140816_1918','2016-11-15 01:18:32.111345'),(10,'cms','0003_auto_20140926_2347','2016-11-15 01:18:32.209796'),(11,'cms','0004_auto_20140924_1038','2016-11-15 01:18:33.415907'),(12,'cms','0005_auto_20140924_1039','2016-11-15 01:18:33.428549'),(13,'cms','0006_auto_20140924_1110','2016-11-15 01:18:34.400903'),(14,'cms','0007_auto_20141028_1559','2016-11-15 01:18:34.490063'),(15,'cms','0008_auto_20150208_2149','2016-11-15 01:18:34.575959'),(16,'cms','0008_auto_20150121_0059','2016-11-15 01:18:34.675785'),(17,'cms','0009_merge','2016-11-15 01:18:34.678273'),(18,'cms','0010_migrate_use_structure','2016-11-15 01:18:34.780665'),(19,'cms','0011_auto_20150419_1006','2016-11-15 01:18:34.980357'),(20,'aldryn_bootstrap3','0001_initial','2016-11-15 01:18:38.334589'),(21,'aldryn_bootstrap3','0002_bootstrap3fileplugin','2016-11-15 01:18:38.534527'),(22,'aldryn_bootstrap3','0003_auto_20151113_1604','2016-11-15 01:18:39.640247'),(23,'aldryn_bootstrap3','0004_auto_20151211_1333','2016-11-15 01:18:40.472059'),(24,'aldryn_bootstrap3','0005_boostrap3imageplugin_use_original_image','2016-11-15 01:18:40.634952'),(25,'aldryn_bootstrap3','0006_auto_20160615_1740','2016-11-15 01:18:40.921049'),(26,'aldryn_bootstrap3','0007_auto_20160705_1155','2016-11-15 01:18:41.178072'),(27,'aldryn_bootstrap3','0008_auto_20160820_2332','2016-11-15 01:18:43.137632'),(28,'aldryn_style','0001_initial','2016-11-15 01:18:43.298544'),(29,'aldryn_style','0002_auto_20150622_1606','2016-11-15 01:18:43.461564'),(30,'aldryn_style','0003_auto_20161113_2018','2016-11-15 01:18:43.713511'),(31,'auth','0002_alter_permission_name_max_length','2016-11-15 01:18:43.885196'),(32,'auth','0003_alter_user_email_max_length','2016-11-15 01:18:44.045811'),(33,'auth','0004_alter_user_username_opts','2016-11-15 01:18:44.194578'),(34,'auth','0005_alter_user_last_login_null','2016-11-15 01:18:44.368526'),(35,'auth','0006_require_contenttypes_0002','2016-11-15 01:18:44.371948'),(36,'cms','0012_auto_20150607_2207','2016-11-15 01:18:44.716497'),(37,'cms','0013_urlconfrevision','2016-11-15 01:18:44.742767'),(38,'cms','0014_auto_20160404_1908','2016-11-15 01:18:44.767419'),(39,'cms','0015_auto_20160421_0000','2016-11-15 01:18:44.971949'),(40,'cms','0016_auto_20160608_1535','2016-11-15 01:18:45.300232'),(41,'cmsplugin_filer_file','0001_initial','2016-11-15 01:18:45.493550'),(42,'cmsplugin_filer_file','0002_auto_20160112_1617','2016-11-15 01:18:45.684857'),(43,'cmsplugin_filer_file','0003_filerfile_link_attributes','2016-11-15 01:18:45.851081'),(44,'cmsplugin_filer_file','0004_auto_20160705_1334','2016-11-15 01:18:45.996370'),(45,'cmsplugin_filer_file','0005_auto_20160713_1853','2016-11-15 01:18:46.216706'),(46,'cmsplugin_filer_folder','0001_initial','2016-11-15 01:18:46.419700'),(47,'cmsplugin_filer_folder','0002_auto_20160113_1318','2016-11-15 01:18:46.621761'),(48,'cmsplugin_filer_folder','0003_auto_20160713_1853','2016-11-15 01:18:46.803338'),(49,'filer','0003_thumbnailoption','2016-11-15 01:18:46.836186'),(50,'cmsplugin_filer_image','0001_initial','2016-11-15 01:18:47.341336'),(51,'cmsplugin_filer_image','0002_auto_20160108_1708','2016-11-15 01:18:48.302626'),(52,'cmsplugin_filer_image','0003_mv_thumbnail_option_to_filer_20160119_1720','2016-11-15 01:18:48.318615'),(53,'cmsplugin_filer_image','0004_auto_20160120_0950','2016-11-15 01:18:48.516983'),(54,'cmsplugin_filer_image','0005_auto_20160224_1457','2016-11-15 01:18:48.689763'),(55,'cmsplugin_filer_image','0006_auto_20160427_1438','2016-11-15 01:18:48.838171'),(56,'cmsplugin_filer_image','0007_filerimage_link_attributes','2016-11-15 01:18:49.026124'),(57,'cmsplugin_filer_image','0008_auto_20160705_1334','2016-11-15 01:18:49.195646'),(58,'cmsplugin_filer_image','0009_auto_20160713_1853','2016-11-15 01:18:49.423080'),(59,'djangocms_column','0001_initial','2016-11-15 01:18:49.778958'),(60,'djangocms_column','0002_auto_20160915_0818','2016-11-15 01:18:50.141267'),(61,'djangocms_googlemap','0001_initial','2016-11-15 01:18:50.352706'),(62,'djangocms_googlemap','0002_auto_20160622_1031','2016-11-15 01:18:50.994548'),(63,'djangocms_googlemap','0003_auto_20160825_1829','2016-11-15 01:18:51.187123'),(64,'djangocms_link','0001_initial','2016-11-15 01:18:51.413541'),(65,'djangocms_link','0002_auto_20140929_1705','2016-11-15 01:18:51.579061'),(66,'djangocms_link','0003_auto_20150212_1310','2016-11-15 01:18:51.753502'),(67,'djangocms_link','0004_auto_20150708_1133','2016-11-15 01:18:52.094209'),(68,'djangocms_link','0005_auto_20151003_1710','2016-11-15 01:18:52.291057'),(69,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2016-11-15 01:18:53.089101'),(70,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2016-11-15 01:18:53.284563'),(71,'djangocms_link','0008_link_attributes','2016-11-15 01:18:53.485334'),(72,'djangocms_link','0009_auto_20160705_1344','2016-11-15 01:18:53.653889'),(73,'djangocms_link','0010_adapted_fields','2016-11-15 01:18:55.032157'),(74,'djangocms_link','0011_fixed_null_values','2016-11-15 01:18:55.048031'),(75,'djangocms_link','0012_removed_null','2016-11-15 01:18:55.683461'),(76,'djangocms_snippet','0001_initial','2016-11-15 01:18:55.939568'),(77,'djangocms_snippet','0002_snippet_slug','2016-11-15 01:18:56.166225'),(78,'djangocms_snippet','0003_auto_data_fill_slug','2016-11-15 01:18:56.182066'),(79,'djangocms_snippet','0004_auto_alter_slug_unique','2016-11-15 01:18:56.393013'),(80,'djangocms_snippet','0005_set_related_name_for_cmsplugin_ptr','2016-11-15 01:18:56.594292'),(81,'djangocms_snippet','0006_auto_20160831_0729','2016-11-15 01:18:57.246964'),(82,'djangocms_snippet','0007_auto_alter_template_helptext','2016-11-15 01:18:58.001045'),(83,'djangocms_text_ckeditor','0001_initial','2016-11-15 01:18:58.193498'),(84,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2016-11-15 01:18:58.432477'),(85,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2016-11-15 01:18:58.626983'),(86,'djangocms_text_ckeditor','0004_auto_20160706_1339','2016-11-15 01:18:58.643634'),(87,'filer','0004_auto_20160328_1434','2016-11-15 01:18:58.857118'),(88,'filer','0005_auto_20160623_1425','2016-11-15 01:18:59.443418'),(89,'filer','0006_auto_20160623_1627','2016-11-15 01:18:59.644528'),(90,'djangocms_video','0001_initial','2016-11-15 01:18:59.860823'),(91,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2016-11-15 01:19:00.072751'),(92,'djangocms_video','0003_field_adaptions','2016-11-15 01:19:01.044594'),(93,'djangocms_video','0004_move_to_attributes','2016-11-15 01:19:04.134379'),(94,'djangocms_video','0005_migrate_to_filer','2016-11-15 01:19:04.150591'),(95,'djangocms_video','0006_field_adaptions','2016-11-15 01:19:05.158747'),(96,'djangocms_video','0007_create_nested_plugin','2016-11-15 01:19:05.376929'),(97,'djangocms_video','0008_reset_null_values','2016-11-15 01:19:05.395135'),(98,'djangocms_video','0009_removed_null_values','2016-11-15 01:19:05.606410'),(99,'easy_thumbnails','0001_initial','2016-11-15 01:19:05.787028'),(100,'easy_thumbnails','0002_thumbnaildimensions','2016-11-15 01:19:05.842068'),(101,'menus','0001_initial','2016-11-15 01:19:05.883836'),(102,'polls','0001_initial','2016-11-15 01:19:06.022873'),(103,'sessions','0001_initial','2016-11-15 01:19:06.070787'),(104,'oauth2_provider','0001_initial','2016-11-17 20:53:41.532620'),(105,'oauth2_provider','0002_08_updates','2016-11-17 20:53:42.281429'),(106,'product','0001_initial','2017-02-19 21:23:56.679425');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6gbol3ztxms5g3nxobgqmgxl0poyj8qe','OTQxNzVhNTg2OTM5MmY2YzA2MWJkN2ZlNDJkNGY3NGY2NGUxM2IzZDp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2lkIjoiMSIsImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiZmlsZXJfbGFzdF9mb2xkZXJfaWQiOm51bGwsIndpemFyZF93aXphcmRfY3JlYXRlX3ZpZXciOnsic3RlcF9maWxlcyI6e30sInN0ZXAiOm51bGwsImV4dHJhX2RhdGEiOnt9LCJzdGVwX2RhdGEiOnt9fSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJjbXNfZWRpdCI6ZmFsc2UsIl9hdXRoX3VzZXJfaGFzaCI6ImZhNzQ4NjE2NmExZGUxNTY4YTRjNjJiZmExMGIzNTYyMjYwYzU3N2EifQ==','2016-11-30 23:05:37.084368'),('8kl2349qwiy80k3kftpq6ob326sannsh','OTQxNzVhNTg2OTM5MmY2YzA2MWJkN2ZlNDJkNGY3NGY2NGUxM2IzZDp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2lkIjoiMSIsImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiZmlsZXJfbGFzdF9mb2xkZXJfaWQiOm51bGwsIndpemFyZF93aXphcmRfY3JlYXRlX3ZpZXciOnsic3RlcF9maWxlcyI6e30sInN0ZXAiOm51bGwsImV4dHJhX2RhdGEiOnt9LCJzdGVwX2RhdGEiOnt9fSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJjbXNfZWRpdCI6ZmFsc2UsIl9hdXRoX3VzZXJfaGFzaCI6ImZhNzQ4NjE2NmExZGUxNTY4YTRjNjJiZmExMGIzNTYyMjYwYzU3N2EifQ==','2016-12-16 02:38:46.809604'),('9xx6drjed1bo6gsjz071923v8l38olni','NjJhNmJkZDY1MDFlMDQ2NzZlMTE4Y2Y1MGJiY2Y5NjRmZDEzZGE3Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJmaWxlcl9sYXN0X2ZvbGRlcl9pZCI6bnVsbCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJjbXNfZWRpdCI6ZmFsc2UsIl9hdXRoX3VzZXJfaGFzaCI6ImZhNzQ4NjE2NmExZGUxNTY4YTRjNjJiZmExMGIzNTYyMjYwYzU3N2EifQ==','2016-12-15 21:05:07.534582'),('zvukeu1yrn0dr58so1i70ueitdjjw4qv','YzFlYWY1NDVhMmZjNTE5MzU3Y2IxMjIxNzFiZjI0MzgwZDgyZDg3Yjp7ImNtc19sb2dfbGF0ZXN0IjoyNCwiY21zX2FkbWluX3NpdGUiOjEsIl9hdXRoX3VzZXJfaGFzaCI6ImZhNzQ4NjE2NmExZGUxNTY4YTRjNjJiZmExMGIzNTYyMjYwYzU3N2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-05 01:52:10.510766');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com'),(2,'faviosmom.com','Favios Mom');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_column`
--

DROP TABLE IF EXISTS `djangocms_column_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_column` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `width` varchar(50) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_432d5235a0694579_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_column`
--

LOCK TABLES `djangocms_column_column` WRITE;
/*!40000 ALTER TABLE `djangocms_column_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_column_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_multicolumns`
--

DROP TABLE IF EXISTS `djangocms_column_multicolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_multicolumns` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_c_cmsplugin_ptr_id_1988dc6134360e9_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_multicolumns`
--

LOCK TABLES `djangocms_column_multicolumns` WRITE;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `zipcode` varchar(30) NOT NULL,
  `city` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `route_planer_title` varchar(150) DEFAULT NULL,
  `route_planer` tinyint(1) NOT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `info_window` tinyint(1) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_27416e1ea4d425bd_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
INSERT INTO `djangocms_googlemap_googlemap` VALUES (239,'','197 Benton Road','12523','Elizaville','',13,NULL,NULL,'Calculate your fastest way to here',0,'100%','400px',1,1,1,1,1,1,1,1,''),(508,'','197 Benton Road','12523','Elizaville','',13,NULL,NULL,'Calculate your fastest way to here',0,'100%','400px',1,1,1,1,1,1,1,1,'');
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link__internal_link_id_28d2ec9505a81a34_fk_cms_page_id` (`internal_link_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_15f60a222b2c5a7d_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link__internal_link_id_28d2ec9505a81a34_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippet`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `djangocms_snippet_snippet_slug_595b984cd068cc13_uniq` (`slug`),
  KEY `djangocms_snippet_snippet_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippet`
--

LOCK TABLES `djangocms_snippet_snippet` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` DISABLE KEYS */;
INSERT INTO `djangocms_snippet_snippet` VALUES (1,'facebook_like','<div class=\"fb-like\" data-href=\"http://faviosmom.com\" data-layout=\"standard\" data-action=\"like\" data-size=\"small\" data-show-faces=\"true\" data-share=\"true\"></div>','','facebook_like');
/*!40000 ALTER TABLE `djangocms_snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippetptr`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djan_snippet_id_5c36edfcd7b7e868_fk_djangocms_snippet_snippet_id` (`snippet_id`),
  CONSTRAINT `djan_snippet_id_5c36edfcd7b7e868_fk_djangocms_snippet_snippet_id` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`),
  CONSTRAINT `djangocms_s_cmsplugin_ptr_id_d41298032b1b800_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippetptr`
--

LOCK TABLES `djangocms_snippet_snippetptr` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` DISABLE KEYS */;
INSERT INTO `djangocms_snippet_snippetptr` VALUES (63,1),(70,1);
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_5cfb7ff7d38a35c0_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
INSERT INTO `djangocms_text_ckeditor_text` VALUES (4,'<p>Copyright @2016 All rights reserved</p>\n'),(74,'<p>Maria Victoria and I  strive to bring genuiene Cuba Style cooking to the Upper Hudson Valley of New York and with maximum convenience and flexibility.  There is precious little genuine Cuban cuisine available in the New York area and that includes New York City.  Most of what passes for Cuban in New York though more often then not  edible, is not truely Cuban and is crafted to speak to the mystic of Cuban without any of the legitimacy.   No one\'s fault other then the fact that most Cubans in the USA don\'t venture North of Broward County Florida.</p>\n\n<p>All of our recipes for typical Cuban food are passed down predominantly from my grandmother Apita\" who ran a farm in Cuban till after the Revolution of 1959 and exiled to the United States with my grandfather in 1963 after the Castro revolution nationalized her mid-size farm.</p>\n\n<hr>\n<p> </p>\n'),(167,'<hr>\n<p>We are located in the idylic Upper Hudson Valley , New York near the city of Hudson, Columbia County. To the extent possible we use locally produced ingredients or for eggs, we use our own free range Hens which we have on our property.</p>\n'),(371,'<p>Bringing genuine Cuban food staples to the Upper Hudson Valley of New York.</p>\n'),(387,'<p>Bringing genuine Cuban food staples to the Upper Hudson Valley of New York.</p>\n'),(389,'<p>Copyright @2016 All rights reserved</p>\n'),(497,'<p>Maria Victoria and I  strive to bring genuiene Cuba Style cooking to the Upper Hudson Valley of New York and with maximum convenience and flexibility.  There is precious little genuine Cuban cuisine available in the New York area and that includes New York City.  Most of what passes for Cuban in New York though more often then not  edible, is not truely Cuban and is crafted to speak to the mystic of Cuban without any of the legitimacy.   No one\'s fault other then the fact that most Cubans in the USA don\'t venture North of Broward County Florida.</p>\n\n<p>All of our recipes for typical Cuban food are passed down predominantly from my grandmother Apita\" who ran a farm in Cuban till after the Revolution of 1959 and exiled to the United States with my grandfather in 1963 after the Castro revolution nationalized her mid-size farm.</p>\n\n<hr>\n<p> </p>\n'),(507,'<hr>\n<p>We are located in the idylic Upper Hudson Valley , New York near the city of Hudson, Columbia County. To the extent possible we use locally produced ingredients or for eggs, we use our own free range Hens which we have on our property.</p>\n');
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11),
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_9b86e5fe` (`poster_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_47cdddbe8380d21e_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms__poster_id_119ad9cf4126fb1b_fk_filer_image_file_ptr_id` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_01490fd0` (`source_file_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_618bd01cf1165ac6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_source_file_id_2464e1b08e8ff7e9_fk_filer_file_id` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_3166800b` (`src_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_743998d001d5f6fb_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_videotr_src_id_786d24ebb648901c_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_40116450c1e4f2ed_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg','2016-11-16 23:05:32.919761'),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg','2016-11-30 01:06:45.723363'),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png','2016-11-29 03:52:58.371830'),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg','2016-11-30 01:06:45.989375'),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg','2016-11-30 01:06:46.405158'),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg','2016-11-30 01:13:14.362999'),(7,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg','2016-11-30 01:13:40.478710'),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg','2016-11-30 01:14:56.114697'),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg','2016-11-30 01:15:09.872559'),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg','2016-11-30 01:15:22.969599'),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg','2016-12-01 18:11:00.782769'),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg','2016-12-01 20:32:41.037803'),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg','2016-12-01 20:33:27.874227');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_66cc758d07ef9fce_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thu_source_id_50b260de7106e1b7_fk_easy_thumbnails_source_id` (`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  CONSTRAINT `easy_thu_source_id_50b260de7106e1b7_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-16 23:03:45.202472',1),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-16 23:03:46.028467',1),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-16 23:03:46.850850',1),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-16 23:03:47.693591',1),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-16 23:03:48.539114',1),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__210x10000_q85_subsampling-2_upscale.jpg','2016-11-16 23:03:53.277507',1),(7,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__32x32_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:04:06.987017',1),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__64x64_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:04:07.876820',1),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__48x48_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:04:08.829697',1),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__16x16_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:04:10.098994',1),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__40x40_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:04:44.247159',1),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__1170x877_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:04:45.878932',1),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg__50x37_q85_crop_subject_location-2016,1517_subsampling-2_upscale.jpg','2016-11-16 23:05:32.923261',1),(14,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:48:19.214976',2),(15,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:48:19.270324',2),(16,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:48:19.326211',2),(17,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:48:19.376917',2),(18,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:48:19.438766',2),(19,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__40x40_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:48:23.920204',2),(20,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__1170x0_q85_subsampling-2_upscale.jpg','2016-11-29 03:48:24.524464',2),(21,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:49:46.424900',3),(22,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:49:46.494892',3),(23,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:49:46.563770',3),(24,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:49:46.634595',3),(25,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:49:46.710165',3),(26,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__40x40_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:49:58.231375',3),(27,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__1170x0_q85_subsampling-2_upscale.jpg','2016-11-29 03:49:58.814075',3),(28,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:51:10.860578',3),(29,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png__100x75_q85_crop_subsampling-2_upscale.jpg','2016-11-29 03:52:58.374280',3),(30,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__200x100_q85_subsampling-2_upscale.jpg','2016-11-29 03:56:28.766210',2),(31,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:25:13.487092',4),(32,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:25:13.547252',4),(33,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:25:13.608079',4),(34,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:25:13.668983',4),(35,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:25:13.736683',4),(36,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__1170x0_q85_subsampling-2_upscale.jpg','2016-11-29 04:25:21.689504',4),(37,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:31:37.666647',5),(38,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:31:37.858397',5),(39,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:31:38.046212',5),(40,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:31:38.229438',5),(41,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-29 04:31:38.425028',5),(42,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__1170x0_q85_subsampling-2_upscale.jpg','2016-11-29 04:31:47.009428',5),(43,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:06:45.727370',2),(44,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:06:45.991941',4),(45,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:06:46.407698',5),(46,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:02.279449',6),(47,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:02.453137',6),(48,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:02.631719',6),(49,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:02.807262',6),(50,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:03.002194',6),(51,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:14.367170',6),(52,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:25.037567',7),(53,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:25.103829',7),(54,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:25.175582',7),(55,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:25.240786',7),(56,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:25.316696',7),(57,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:13:40.480938',7),(58,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:14:43.574530',8),(59,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:14:43.639232',8),(60,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:14:43.701387',8),(61,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:14:43.763383',8),(62,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:14:43.835144',8),(63,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:14:56.118280',8),(64,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:06.046618',9),(65,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:06.109090',9),(66,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:06.171841',9),(67,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:06.232437',9),(68,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:06.307148',9),(69,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:09.875679',9),(70,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:19.163841',10),(71,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:19.239444',10),(72,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:19.310859',10),(73,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:19.389187',10),(74,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:19.475228',10),(75,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-11-30 01:15:22.972308',10),(76,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-01 18:10:51.131505',11),(77,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-01 18:10:51.155549',11),(78,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-01 18:10:51.177742',11),(79,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-01 18:10:51.199019',11),(80,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-01 18:10:51.232864',11),(81,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-12-01 18:11:00.785194',11),(82,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:32:41.040043',12),(83,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:32:41.869778',12),(84,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:32:42.715263',12),(85,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:32:43.572124',12),(86,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:32:44.444799',12),(87,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:33:21.171098',13),(88,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:33:22.015134',13),(89,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:33:22.891033',13),(90,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:33:23.766627',13),(91,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:33:25.000482',13),(92,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg__1170x877_q85_crop_subsampling-2_upscale.jpg','2016-12-01 20:33:27.878164',13);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `ea_thumbnail_id_29ad34faceb3c17c_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_e8701ad4` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_2b30c76f2cd235df_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipbo_clipboard_id_335d159e1aea2cdc_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_814552b9` (`file_id`),
  CONSTRAINT `filer_clipbo_clipboard_id_335d159e1aea2cdc_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_7b1b6a14b5a3f2b1_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` int(11) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11),
  `owner_id` int(11),
  `polymorphic_ctype_id` int(11),
  PRIMARY KEY (`id`),
  KEY `filer_file_a8a44dbb` (`folder_id`),
  KEY `filer_file_5e7b1936` (`owner_id`),
  KEY `filer_file_d3e32c49` (`polymorphic_ctype_id`),
  CONSTRAINT `filer_file_folder_id_24318dda71f59785_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_67317c663ea33283_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `polymorphic_ctype_id_37b6c9e9cb7a323a_fk_django_content_type_id` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (1,'filer_public/6f/86/6f864a9f-b695-4118-b9e4-ddab5053920b/nashville_30302949151_o.jpg',3063102,'1bddbce7d690d85f59db8a4ef8e44c802e7d28c6',0,'nashville_30302949151_o.jpg','','','2016-11-16 23:03:44.290580','2016-11-16 23:04:09.104312',1,NULL,1,28),(2,'filer_public/82/d8/82d8e68e-3b45-48d5-8e04-f576c1f493ff/2059705853_21876b0f39_b.jpg',325110,'1ca862e520fd620ad9b031c2f6f8671fd96c81d4',0,'2059705853_21876b0f39_b.jpg','',NULL,'2016-11-29 03:48:19.107429','2016-11-29 03:48:19.107476',1,NULL,1,28),(3,'filer_public/51/d6/51d6392e-293c-4453-9b5e-8b06d2f0a2d1/2059705853_21876b0f39_b.png',1120667,'3b4a139039ec8d4365419b7e7d7b7067f01ec4f9',0,'2059705853_21876b0f39_b.png','',NULL,'2016-11-29 03:49:46.339439','2016-11-29 03:49:46.339480',1,NULL,1,28),(4,'filer_public/09/a0/09a0170b-5374-471d-af32-fb2d573832d6/2060486294_2ab2c3c153_b.jpg',388894,'277c7b041ff67085f84c62a5fdd5a89aeca05272',0,'2060486294_2ab2c3c153_b.jpg','',NULL,'2016-11-29 04:25:13.414628','2016-11-29 04:25:13.414678',1,NULL,1,28),(5,'filer_public/e4/8e/e48e74b9-7592-414a-adfd-262e4ccb40a5/27211571810_e23c36d8dd_k.jpg',640169,'47fb00e8cdeec5c5539cd8470dec9c8387cadc8d',0,'27211571810_e23c36d8dd_k.jpg','',NULL,'2016-11-29 04:31:37.461408','2016-11-29 04:31:37.461451',1,NULL,1,28),(6,'filer_public/96/1b/961b00e3-5997-46a6-bd19-75361d05977a/27211571810_e23c36d8dd_k.jpg',640169,'47fb00e8cdeec5c5539cd8470dec9c8387cadc8d',0,'27211571810_e23c36d8dd_k.jpg','',NULL,'2016-11-30 01:13:02.085675','2016-11-30 01:13:02.085722',1,NULL,1,28),(7,'filer_public/86/07/86078966-fc9f-4865-bdb7-9e5a697140b5/442477677_383d69aabc_b.jpg',471655,'7f521cebe5eef7e3455913398eb3f7157380ee9f',0,'442477677_383d69aabc_b.jpg','',NULL,'2016-11-30 01:13:24.956214','2016-11-30 01:13:24.956249',1,NULL,1,28),(8,'filer_public/b7/c3/b7c3700c-5886-4fa7-9c87-fa1707afc18c/4740534946_d534aef41a_b.jpg',374071,'b5d75aab4d9d235f5b48c293120b4a001c32c6f2',0,'4740534946_d534aef41a_b.jpg','',NULL,'2016-11-30 01:14:43.507684','2016-11-30 01:14:43.507730',1,NULL,1,28),(9,'filer_public/bb/0c/bb0c7085-62e4-4e9f-949a-8fd8c16803d6/4740533960_4033661d2b_b.jpg',375351,'007a8224bf62088f9cf98def832a84220cc6f7f5',0,'4740533960_4033661d2b_b.jpg','',NULL,'2016-11-30 01:15:05.982110','2016-11-30 01:15:05.982160',1,NULL,1,28),(10,'filer_public/aa/c3/aac366f9-c75e-4270-9f37-a87a284c5e67/5049121058_b2ec028f50_b.jpg',719146,'709a61b74ab35429a09fd9e8ec45b90ed3ed2f89',0,'5049121058_b2ec028f50_b.jpg','',NULL,'2016-11-30 01:15:19.084474','2016-11-30 01:15:19.084509',1,NULL,1,28),(11,'filer_public/f9/c0/f9c02309-3267-4f44-a0de-6329110a7371/galliten-800x300_copy.jpg',120359,'ef9c4169e9f967a105c733a853deeade4221be24',0,'galliten-800x300 copy.jpg','',NULL,'2016-12-01 18:10:51.063291','2016-12-01 18:10:51.063325',1,NULL,1,28),(12,'filer_public/a1/28/a128c7b8-6576-4130-8c6e-1f16435ac5fb/nashville_30302949151_o.jpg',3063102,'1bddbce7d690d85f59db8a4ef8e44c802e7d28c6',0,'nashville_30302949151_o.jpg','',NULL,'2016-12-01 20:32:40.113809','2016-12-01 20:32:40.113849',1,NULL,1,28),(13,'filer_public/46/18/46182560-4f70-403b-a669-17e3f55f2021/nashville_30302949151_o.jpg',3063102,'1bddbce7d690d85f59db8a4ef8e44c802e7d28c6',0,'nashville_30302949151_o.jpg','',NULL,'2016-12-01 20:33:20.259670','2016-12-01 20:33:20.259703',1,NULL,1,28);
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_30ad83e34d901e49_uniq` (`parent_id`,`name`),
  KEY `filer_folder_caf7cc51` (`lft`),
  KEY `filer_folder_3cfbd988` (`rght`),
  KEY `filer_folder_656442a0` (`tree_id`),
  KEY `filer_folder_c9e9a848` (`level`),
  KEY `filer_folder_owner_id_6527f5f13a76f3ed_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_6527f5f13a76f3ed_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_4170098ac31c2cbf_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermis_folder_id_442a5347ee209a98_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermissio_group_id_7c2389ac07ebbde2_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7c6e1a7187a0f15b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermis_folder_id_442a5347ee209a98_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermissio_group_id_7c2389ac07ebbde2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7c6e1a7187a0f15b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_1dde9ad32bce39a6_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
INSERT INTO `filer_image` VALUES (1,3024,4032,'2016-11-16 23:03:44.234934','','','',0,0,'2016,1517'),(2,683,1024,'2016-11-29 03:48:19.059870',NULL,NULL,NULL,0,0,''),(3,683,1024,'2016-11-29 03:49:46.309651',NULL,NULL,NULL,0,0,''),(4,683,1024,'2016-11-29 04:25:13.395676',NULL,NULL,NULL,0,0,''),(5,1536,2048,'2016-11-29 04:31:37.439625',NULL,NULL,NULL,0,0,''),(6,1536,2048,'2016-11-30 01:13:02.074983',NULL,NULL,NULL,0,0,''),(7,768,1024,'2016-11-30 01:13:24.949473',NULL,NULL,NULL,0,0,''),(8,768,1024,'2016-11-30 01:14:43.502233',NULL,NULL,NULL,0,0,''),(9,768,1024,'2016-11-30 01:15:05.974660',NULL,NULL,NULL,0,0,''),(10,765,1024,'2016-11-30 01:15:19.075729',NULL,NULL,NULL,0,0,''),(11,300,800,'2016-12-01 18:10:51.031024',NULL,NULL,NULL,0,0,''),(12,3024,4032,'2016-12-01 20:32:40.077190',NULL,NULL,NULL,0,0,''),(13,3024,4032,'2016-12-01 20:33:20.239819',NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `long_description` longtext,
  `name` varchar(45) NOT NULL,
  `normalized_name` varchar(45) DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `normalized_name` (`normalized_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `portion_size` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `article_url` varchar(255) DEFAULT NULL,
  `vegetarian` tinyint(1) NOT NULL,
  `normalized_name` varchar(45) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `normalized_name` (`normalized_name`),
  KEY `menu_items_menu_id_2b9f0582f61c4be5_fk_menu_id` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_2b9f0582f61c4be5_fk_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (173,'en',1,'menu_cache_menu_nodes_en_1_1_user'),(174,'en',1,'menu_cache_menu_nodes_en_1');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `D5ac3019ee1c474fd85718b015e3d3a1` (`application_id`),
  KEY `oauth2_provider_accesstoken_94a08da1` (`token`),
  KEY `oauth2_provider_accesst_user_id_5e2f004fdebea22d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `D5ac3019ee1c474fd85718b015e3d3a1` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_accesst_user_id_5e2f004fdebea22d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_9d667c2b` (`client_secret`),
  KEY `oauth2_provider_applica_user_id_7fa13387c260b798_fk_auth_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_applica_user_id_7fa13387c260b798_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D6b2a4f1402d4f338b690c38b795830a` (`application_id`),
  KEY `oauth2_provider_grant_user_id_3111344894d452da_fk_auth_user_id` (`user_id`),
  KEY `oauth2_provider_grant_c1336794` (`code`),
  CONSTRAINT `D6b2a4f1402d4f338b690c38b795830a` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_3111344894d452da_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  KEY `d3e264ceec355cabed6ff9976fc42a06` (`application_id`),
  KEY `oauth2_provider_refresh_user_id_3f695b639cfbc9a3_fk_auth_user_id` (`user_id`),
  KEY `oauth2_provider_refreshtoken_94a08da1` (`token`),
  CONSTRAINT `b58d9cb3b93afb36b11b7741bf1bcc1a` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `d3e264ceec355cabed6ff9976fc42a06` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refresh_user_id_3f695b639cfbc9a3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `order` longtext NOT NULL,
  `total_order_price` decimal(9,2) NOT NULL,
  `sales_tax` decimal(9,2) NOT NULL,
  `fulfilled` tinyint(1) NOT NULL,
  `delivery_charge` decimal(5,2) NOT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `orderID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderID` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phrase_to_menuitems`
--

DROP TABLE IF EXISTS `phrase_to_menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phrase_to_menuitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `long_phrase` varchar(255) NOT NULL,
  `normalized` varchar(255) DEFAULT NULL,
  `menuitem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `long_phrase` (`long_phrase`),
  UNIQUE KEY `normalized` (`normalized`),
  KEY `phrase_to_menuitem_menuitem_id_16e5cc58464ae4ea_fk_menu_items_id` (`menuitem_id`),
  CONSTRAINT `phrase_to_menuitem_menuitem_id_16e5cc58464ae4ea_fk_menu_items_id` FOREIGN KEY (`menuitem_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phrase_to_menuitems`
--

LOCK TABLES `phrase_to_menuitems` WRITE;
/*!40000 ALTER TABLE `phrase_to_menuitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `phrase_to_menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_582e9e5a` (`poll_id`),
  CONSTRAINT `polls_choice_poll_id_672f8d8e836026ff_fk_polls_poll_id` FOREIGN KEY (`poll_id`) REFERENCES `polls_poll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_poll`
--

DROP TABLE IF EXISTS `polls_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_poll`
--

LOCK TABLES `polls_poll` WRITE;
/*!40000 ALTER TABLE `polls_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_to_menuitems`
--

DROP TABLE IF EXISTS `type_to_menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_to_menuitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insert_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  `menuitem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_to_menuitems_type_56632c5926bbd788_uniq` (`type`,`menuitem_id`),
  KEY `type_to_menuitems_menuitem_id_6a3baff7c9f10f41_fk_menu_items_id` (`menuitem_id`),
  CONSTRAINT `type_to_menuitems_menuitem_id_6a3baff7c9f10f41_fk_menu_items_id` FOREIGN KEY (`menuitem_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_to_menuitems`
--

LOCK TABLES `type_to_menuitems` WRITE;
/*!40000 ALTER TABLE `type_to_menuitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_to_menuitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-19 18:23:17
