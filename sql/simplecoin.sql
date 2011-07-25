-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: simplecoin
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
-- Table structure for table `accountBalance`
--

DROP TABLE IF EXISTS `accountBalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountBalance` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userId` int(255) NOT NULL,
  `balance` varchar(40) DEFAULT NULL,
  `sendAddress` varchar(255) DEFAULT '',
  `paid` varchar(40) DEFAULT '0',
  `threshold` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`),
  KEY `b_userId` (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=567 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountBalance`
--
-- WHERE:  0=1

LOCK TABLES `accountBalance` WRITE;
/*!40000 ALTER TABLE `accountBalance` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountBalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locks` (
  `name` varchar(11) NOT NULL,
  `locked` tinyint(4) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--
-- WHERE:  0=1

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkBlocks`
--

DROP TABLE IF EXISTS `networkBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networkBlocks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `blockNumber` int(255) NOT NULL,
  `timestamp` int(255) NOT NULL,
  `accountAddress` varchar(255) NOT NULL,
  `confirms` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2398 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkBlocks`
--
-- WHERE:  0=1

LOCK TABLES `networkBlocks` WRITE;
/*!40000 ALTER TABLE `networkBlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `networkBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_worker`
--

DROP TABLE IF EXISTS `pool_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_worker` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `associatedUserId` int(255) NOT NULL,
  `username` char(50) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `hashrate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=1039 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_worker`
--
-- WHERE:  0=1

LOCK TABLES `pool_worker` WRITE;
/*!40000 ALTER TABLE `pool_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`setting`),
  KEY `set_setting` (`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--
-- WHERE:  0=1

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shares` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `rem_host` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `our_result` enum('Y','N') NOT NULL,
  `upstream_result` enum('Y','N') DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `solution` varchar(257) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blockNumber` int(255) DEFAULT NULL,
  `score` double(10,2) DEFAULT NULL,
  `counted` enum('0','1') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shares_blockNumber` (`blockNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2672510 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--
-- WHERE:  0=1

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shares_counted`
--

DROP TABLE IF EXISTS `shares_counted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shares_counted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blockNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `invalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares_counted`
--
-- WHERE:  0=1

LOCK TABLES `shares_counted` WRITE;
/*!40000 ALTER TABLE `shares_counted` DISABLE KEYS */;
/*!40000 ALTER TABLE `shares_counted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userHashrates`
--

DROP TABLE IF EXISTS `userHashrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userHashrates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(255) NOT NULL,
  `hashrate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `userHashrates_id1` (`userId`),
  KEY `userId_timestamp` (`userId`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1161252 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userHashrates`
--
-- WHERE:  0=1

LOCK TABLES `userHashrates` WRITE;
/*!40000 ALTER TABLE `userHashrates` DISABLE KEYS */;
/*!40000 ALTER TABLE `userHashrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webUsers`
--

DROP TABLE IF EXISTS `webUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webUsers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `admin` int(1) NOT NULL,
  `username` varchar(40) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'Assocaited email: used for validating users, and re-setting passwords',
  `emailAuthPin` varchar(10) NOT NULL COMMENT 'The pin required to authorize that email address',
  `secret` varchar(10) NOT NULL,
  `loggedIp` varchar(255) NOT NULL,
  `sessionTimeoutStamp` int(255) NOT NULL,
  `accountLocked` int(255) NOT NULL COMMENT 'This is the timestamp when the account will be unlocked(usually used to lock accounts that are trying to be bruteforced)',
  `accountFailedAttempts` int(2) NOT NULL COMMENT 'This counts the number of failed attempts for web login',
  `pin` varchar(255) NOT NULL COMMENT 'four digit pin to allow account changes',
  `share_count` int(11) DEFAULT NULL,
  `stale_share_count` int(11) DEFAULT NULL,
  `shares_this_round` int(11) DEFAULT NULL,
  `api_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `activeEmail` int(1) DEFAULT NULL,
  `hashrate` int(11) DEFAULT NULL,
  `donate_percent` varchar(11) DEFAULT '0',
  `round_estimate` varchar(40) DEFAULT '0',
  `btc_lock` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `u_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=571 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webUsers`
--
-- WHERE:  0=1

LOCK TABLES `webUsers` WRITE;
/*!40000 ALTER TABLE `webUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `webUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winning_shares`
--

DROP TABLE IF EXISTS `winning_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winning_shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blockNumber` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winning_shares`
--
-- WHERE:  0=1

LOCK TABLES `winning_shares` WRITE;
/*!40000 ALTER TABLE `winning_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `winning_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'simplecoin'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-20 10:48:49