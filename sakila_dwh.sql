-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: sakila_dwh
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_customer`
--

DROP TABLE IF EXISTS `dim_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dim_customer` (
  `customer_key` int(8) NOT NULL AUTO_INCREMENT,
  `customer_id` int(8) DEFAULT NULL,
  `customer_first_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_last_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_active` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_created` date DEFAULT NULL,
  `customer_address` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_district` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_postal_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_phone_number` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_city` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_country` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `customer_last_update` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `customer_version_number` smallint(5) DEFAULT NULL,
  `customer_valid_from` date DEFAULT NULL,
  `customer_valid_through` date DEFAULT NULL,
  PRIMARY KEY (`customer_key`),
  KEY `customer_id` (`customer_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4195 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_film`
--

DROP TABLE IF EXISTS `dim_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dim_film` (
  `film_key` int(8) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) DEFAULT NULL,
  `film_title` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `film_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `film_release_year` smallint(5) DEFAULT NULL,
  `category` char(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `film_language` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `film_rental_duration` tinyint(3) DEFAULT NULL,
  `film_rental_rate` decimal(4,2) DEFAULT NULL,
  `film_duration` int(8) DEFAULT NULL,
  `film_replacement_cost` decimal(5,2) DEFAULT NULL,
  `film_rating_code` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `film_last_update` datetime DEFAULT NULL,
  `film_version_number` int(11) DEFAULT NULL,
  `film_valid_from` date DEFAULT NULL,
  `film_valid_through` date DEFAULT NULL,
  PRIMARY KEY (`film_key`)
) ENGINE=MyISAM AUTO_INCREMENT=7001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_staff`
--

DROP TABLE IF EXISTS `dim_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dim_staff` (
  `staff_key` int(8) NOT NULL AUTO_INCREMENT,
  `staff_id` int(8) DEFAULT NULL,
  `staff_first_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `staff_last_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `staff_store_id` int(8) DEFAULT NULL,
  `staff_active` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `staff_last_update` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `staff_version_number` smallint(5) DEFAULT NULL,
  `staff_valid_from` date DEFAULT NULL,
  `staff_valid_through` date DEFAULT NULL,
  PRIMARY KEY (`staff_key`),
  KEY `staff_id` (`staff_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_store`
--

DROP TABLE IF EXISTS `dim_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dim_store` (
  `store_key` int(8) NOT NULL AUTO_INCREMENT,
  `store_id` int(8) DEFAULT NULL,
  `store_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_address` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_district` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_postal_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_phone_number` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_city` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_country` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_manager_staff_id` int(8) DEFAULT NULL,
  `store_manager_first_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_manager_last_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `store_last_update` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `store_version_number` smallint(5) DEFAULT NULL,
  `store_valid_from` date DEFAULT NULL,
  `store_valid_through` date DEFAULT NULL,
  PRIMARY KEY (`store_key`),
  KEY `store_id` (`store_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fact_rental`
--

DROP TABLE IF EXISTS `fact_rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fact_rental` (
  `customer_key` int(8) NOT NULL,
  `staff_key` int(8) NOT NULL,
  `film_key` int(8) NOT NULL,
  `store_key` int(8) NOT NULL,
  `rental_date` varchar(32) NOT NULL,
  `return_date` varchar(32) DEFAULT NULL,
  `rental_time` varchar(32) NOT NULL,
  `count_returns` int(10) NOT NULL,
  `count_rentals` int(8) NOT NULL DEFAULT '1',
  `rental_duration` int(11) DEFAULT NULL,
  `rental_last_update` datetime DEFAULT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `rental_amount` double DEFAULT NULL,
  KEY `dim_store_fact_rental_fk` (`store_key`),
  KEY `dim_staff_fact_rental_fk` (`staff_key`),
  KEY `dim_time_fact_rental_fk` (`rental_time`),
  KEY `dim_film_fact_rental_fk` (`film_key`),
  KEY `dim_date_fact_rental_fk` (`rental_date`),
  KEY `dim_customer_fact_rental_fk` (`customer_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 19:10:23
