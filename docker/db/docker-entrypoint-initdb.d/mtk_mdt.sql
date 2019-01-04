-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: mticket_mdt
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `add_agents`
--

DROP TABLE IF EXISTS `add_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiverid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `add_agents_receiverid_b093a0df_fk_agents_id` (`receiverid`),
  KEY `add_agents_senderid_0d02d852_fk_agents_id` (`senderid`),
  KEY `add_agents_ticketid_713054bf_fk_tickets_id` (`ticketid`),
  CONSTRAINT `add_agents_receiverid_b093a0df_fk_agents_id` FOREIGN KEY (`receiverid`) REFERENCES `agents` (`id`),
  CONSTRAINT `add_agents_senderid_0d02d852_fk_agents_id` FOREIGN KEY (`senderid`) REFERENCES `agents` (`id`),
  CONSTRAINT `add_agents_ticketid_713054bf_fk_tickets_id` FOREIGN KEY (`ticketid`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_agents`
--

LOCK TABLES `add_agents` WRITE;
/*!40000 ALTER TABLE `add_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_email` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `noti_noti` int(11) NOT NULL,
  `noti_chat` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Admin','adminmdt@gmail.com','adminmdt','0914185983',1,'mdt@)!*',3,'2018-10-03 09:59:59.347487',1,0,0,'db7ef329620318ecbe87bc57ab904cc85961dbd9f9ebffc1'),(2,'Trang Meditech','trang.nguyenthihuyen@meditech.vn','trangsieucute','0911114924',1,'huyentrang',1,'2018-10-03 10:09:28.633737',1,2,0,'34c2b0cc75de0491adc27186064c6aa453390211ce25b654'),(3,'Trần Xuân Hùng','thao.nguyenvan@meditech.vn','thaonv','969376440',1,'meditech2017',1,'2018-10-03 10:09:31.009383',1,2,0,'410eab7651818d815a4177def7034399643d1ee37e461e5c'),(4,'Vũ Văn Đặng','dangdiendao@gmail.com','dangvv','0914185983',1,'1',2,'2018-10-03 10:19:51.680104',1,0,0,'38ff3e25b98f5889a5103b22f6fc6fee6e31c0f669a2bc52'),(5,'Trần Trọng Nam','duc.nguyenminh@meditech.vn','ducnm37','0383165445',1,'123456',1,'2018-10-03 10:20:35.234741',1,0,0,'b00619565859c52ca78c6fe424d311b92a9d53b2845fca1f'),(6,'Nguyễn Việt Dũng','1234@gmail.com','dungnv','1234567890',1,'123456',0,'2018-10-03 10:29:50.650912',1,1,0,'ee0ff6c0c0bf18c94ebfca2f47d085e58a8a9a2c3c2e221f'),(7,'Khoa Dương','khoa.duongvan@meditech.vn','khoaduong','936086769',1,'123321',1,'2018-10-03 10:38:02.081532',1,0,0,'6cf82b9b62109034ba24033180e390eb65f09fa828702fb0'),(8,'Le Minh Hieu','hieule1191997@gmail.com','hieule','01665183711',1,'1',0,'2018-10-03 10:43:58.864247',1,0,0,'0b81e322ea0618e5d57ec74a6dd28b53bf8c7f8933ca477b'),(9,'Vũ Thu Hằng','thuhangmt.197@gmail.com','hangvt','+84986499732',1,'thuhangmt1907',0,'2018-10-03 10:52:33.892954',1,0,0,'870f0c0fd2b6142b5aca7c6329c98e5076107646924f0297'),(10,'Nguyen Tuan Anh','anh.nguyentuan@meditech.vn','anhnt','0943741989',1,'menhmong123',0,'2018-10-03 15:38:41.293523',1,0,0,'166914acd79ed007641332c7e234c639ff503dee63c6a60b'),(11,'Nguyễn Trịnh Quang Thành','thanh.ntq@mobifone.vn','thanhntq','0904894699',1,'1012thanh',0,'2018-10-04 01:29:08.128695',1,0,0,'353a95cfd210448f5d1fd8139b7f232bff0a7cf316b5c80b'),(12,'Nguyễn Trịnh Quang Thành','quangthanhnt@gmail.com','quangthanhnt','0904894699',1,'1012thanh',0,'2018-10-04 01:33:48.174623',1,0,0,'7461aebca92522463348f1315226de8bc20362cfa10a35ac'),(13,'Trần Hoài Phong','thoaiphong@gmail.com','phongth','0902414120',1,'123456',0,'2018-10-04 01:54:02.188071',1,8,0,'6f5839f0def1e105ab80a0ef8886fd11797580f221499505'),(14,'Trần Mạnh Cường','cuong.tm@mobifone.vn','cuongtm','0906898899',1,'vasc30405',0,'2018-10-04 08:11:34.136476',1,0,1,'df84c8530a48cebbdbb2449f164131239ebc400c108244e5'),(15,'Nguyễn Việt Tét','mticketchristianmesi@gmail.com','testnv','1234567890',1,'123456',0,'2018-10-04 08:23:47.601628',1,0,0,'3c1c2a629330c1ae8313ead1e07d3ab2e0f2143ad1764bb9'),(16,'Đức Nguyễn','duc.ntm@mobifone.vn','ducnguyen2611','0888991998',1,'Hallelujah94',0,'2018-10-04 09:10:18.383092',1,6,0,'abbc50998447aab9372ce853df723afcd1a813183f191a6c'),(17,'Mobifone','mbf@gmail.com','mbf','123456789',1,'123456aA@',4,'2018-10-24 02:20:25.892988',1,4,0,'71976579b6cbd140312da3c9ce6af5059467c7a8937cb76c'),(18,'Hoàng Đức Cương','cuong.hoangduc@meditech.vn','duccuongdc97','0343944610',1,'Duccuong97',0,'2018-10-27 13:26:38.642575',1,0,0,'a4266ba0e8df4d3aafdfd586c9f4d5e5d7c6ae3667456eeb'),(19,'Truong Trung Trang','trang.truong@mobifone.vn','truongtrungtrang','905666096',1,'12345678',0,'2018-11-23 03:29:41.390323',0,0,0,'0664efc2f79d7d14373ff00698a0320412bbf63cbeb1a55c'),(20,'NGUYEN VAN SON','sonnvptit@gmail.com','thailq','0983695304',1,'1231qa',0,'2018-11-27 07:19:25.509512',1,0,0,'ede945deaf9fa70c0b945cb10400ce9af8f01e28b2669738'),(21,'nam dep','nln@yopmail.com','nln','903445456',1,'123456',0,'2018-12-25 07:26:07.544083',0,0,0,'6beec70ceb873d8d408fe7992b8e3c47fae283d59a5500fa');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add forward tickets',7,'add_forwardtickets'),(20,'Can change forward tickets',7,'change_forwardtickets'),(21,'Can delete forward tickets',7,'delete_forwardtickets'),(22,'Can add agents',8,'add_agents'),(23,'Can change agents',8,'change_agents'),(24,'Can delete agents',8,'delete_agents'),(25,'Can add ticket log',9,'add_ticketlog'),(26,'Can change ticket log',9,'change_ticketlog'),(27,'Can delete ticket log',9,'delete_ticketlog'),(28,'Can add tickets',10,'add_tickets'),(29,'Can change tickets',10,'change_tickets'),(30,'Can delete tickets',10,'delete_tickets'),(31,'Can add group services',11,'add_groupservices'),(32,'Can change group services',11,'change_groupservices'),(33,'Can delete group services',11,'delete_groupservices'),(34,'Can add comments log',12,'add_commentslog'),(35,'Can change comments log',12,'change_commentslog'),(36,'Can delete comments log',12,'delete_commentslog'),(37,'Can add services',13,'add_services'),(38,'Can change services',13,'change_services'),(39,'Can delete services',13,'delete_services'),(40,'Can add service agent',14,'add_serviceagent'),(41,'Can change service agent',14,'change_serviceagent'),(42,'Can delete service agent',14,'delete_serviceagent'),(43,'Can add add agents',15,'add_addagents'),(44,'Can change add agents',15,'change_addagents'),(45,'Can delete add agents',15,'delete_addagents'),(46,'Can add ticket agent',16,'add_ticketagent'),(47,'Can change ticket agent',16,'change_ticketagent'),(48,'Can delete ticket agent',16,'delete_ticketagent');
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
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_log`
--

DROP TABLE IF EXISTS `comments_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `agentid` int(11) DEFAULT NULL,
  `ticketid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_log_agentid_7a31212a_fk_agents_id` (`agentid`),
  KEY `comments_log_ticketid_86966535_fk_tickets_id` (`ticketid`),
  CONSTRAINT `comments_log_agentid_7a31212a_fk_agents_id` FOREIGN KEY (`agentid`) REFERENCES `agents` (`id`),
  CONSTRAINT `comments_log_ticketid_86966535_fk_tickets_id` FOREIGN KEY (`ticketid`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_log`
--

LOCK TABLES `comments_log` WRITE;
/*!40000 ALTER TABLE `comments_log` DISABLE KEYS */;
INSERT INTO `comments_log` VALUES (3,'vpn chưa kết nối được','2018-10-05 06:57:36.611677',3,2),(4,'','2018-10-08 08:20:33.490575',3,2),(5,'done','2018-10-24 02:29:54.084985',5,4),(6,'done','2018-10-24 02:29:58.244881',5,3),(7,'done','2018-10-24 02:46:33.582320',5,6),(8,'','2018-10-24 08:14:02.963266',3,8),(9,'','2018-10-24 08:14:06.657111',3,7),(10,'','2018-10-24 08:46:24.176456',3,9),(11,'done','2018-10-29 01:41:23.556866',5,10),(12,'','2018-11-01 07:55:32.271678',3,11),(13,'','2018-11-23 06:34:17.501880',5,15),(14,'','2018-11-23 06:34:19.594612',5,14),(15,'','2018-11-23 06:34:21.462255',5,16),(16,'','2018-12-04 01:52:35.181154',3,13),(17,'done','2018-12-04 02:13:15.574935',5,20),(18,'done https://drive.google.com/file/d/16ynppa0eFrT8wRJ13NVnQVSphm5BrymP/view','2018-12-04 07:56:02.770119',5,19),(19,'done https://drive.google.com/open?id=1-BiemwshT5eEIwdSYOKj-BtV33TGZToE','2018-12-04 10:22:22.047183',5,19),(20,'done','2018-12-04 10:22:56.718142',5,18),(21,'','2018-12-10 07:40:11.245537',16,19),(22,'','2018-12-10 07:40:14.444488',16,21),(23,'','2018-12-10 07:40:16.125984',16,22),(24,'','2018-12-11 09:26:59.674531',16,23);
/*!40000 ALTER TABLE `comments_log` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(2,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(15,'user','addagents'),(8,'user','agents'),(12,'user','commentslog'),(7,'user','forwardtickets'),(11,'user','groupservices'),(14,'user','serviceagent'),(13,'user','services'),(16,'user','ticketagent'),(9,'user','ticketlog'),(10,'user','tickets');
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
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-10-03 09:52:18.856687'),(2,'auth','0001_initial','2018-10-03 09:52:20.116681'),(3,'admin','0001_initial','2018-10-03 09:52:20.367335'),(4,'admin','0002_logentry_remove_auto_add','2018-10-03 09:52:20.386219'),(5,'contenttypes','0002_remove_content_type_name','2018-10-03 09:52:20.559581'),(6,'auth','0002_alter_permission_name_max_length','2018-10-03 09:52:20.668166'),(7,'auth','0003_alter_user_email_max_length','2018-10-03 09:52:20.698557'),(8,'auth','0004_alter_user_username_opts','2018-10-03 09:52:20.716573'),(9,'auth','0005_alter_user_last_login_null','2018-10-03 09:52:20.808054'),(10,'auth','0006_require_contenttypes_0002','2018-10-03 09:52:20.815814'),(11,'auth','0007_alter_validators_add_error_messages','2018-10-03 09:52:20.836211'),(12,'auth','0008_alter_user_username_max_length','2018-10-03 09:52:20.951255'),(13,'auth','0009_alter_user_last_name_max_length','2018-10-03 09:52:21.078913'),(14,'sessions','0001_initial','2018-10-03 09:52:21.164088'),(15,'user','0001_initial','2018-10-03 09:52:36.335692');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ux1088j6posi0rbqklfn2rbxuzipjkh','MWNmNWU3Yjg2YWE0MzY2YjAwNGM2NWY5ZDIzM2I3ODYzNzFlMzUxMzp7ImFnZW50IjoidGhhb252In0=','2018-11-07 01:50:14.722454'),('10kl63ijkfe963sm2zcq6wgvtagi1g8y','ODM3ODQ0YjY5N2VlODRlMDEwNzY1MGQ5ODJlYTRmZGYzYmVlNmEwMTp7InVzZXIiOiJoYW5ndnQifQ==','2018-10-17 10:53:05.565584'),('1ox894flroabjkt3h9zahosvc57bc378','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2018-12-07 06:33:55.636769'),('2dp5c98jihlss3hk5u49xudn0rynnn30','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-12-18 04:35:05.689063'),('2f2i66ob15e4gron6ajwsj2q26trm37o','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2018-11-07 02:10:54.038905'),('2hprnqoxvfvc09qkfub6s1d2lqppcy3m','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2018-10-18 08:40:09.908813'),('2ynigmpsp0mopnorpuyqsswrvhs77b4q','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-11-07 02:15:04.375486'),('3cseq8bwxg89hvh3q4a8uvr2axuersbr','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-12-18 04:35:05.847340'),('3qrh0c1seaubwcp44hpibv2ha6zk5mub','NjhmMzZjZGY1YmQyZDc1OWM4MTQ3MWExMWU4MzgzNzhlM2RiZjBmZDp7ImFnZW50IjoidHJhbmdzaWV1Y3V0ZSJ9','2018-10-18 08:08:55.136074'),('523n3w6zh60n9se0zq83dh82nhjxzt5v','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-12-25 03:06:12.699183'),('5lgpravegvdcwdn9rgabjo8g0whhs0pm','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-11-07 01:50:13.160763'),('65i1epqozrw3lfb0280k0v8qszlh6668','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-11-03 03:52:30.424796'),('74whc06btsioitd4zv5hao1px608adkh','Yzc5ZWE1ZTY5NDczN2RiZjYyNWU3NTE4YTc3YmE5MGRhMTJiNTlkMjp7InVzZXIiOiJjdW9uZ3RtIn0=','2018-11-07 02:11:36.938306'),('7wwl75v98pcikbckgd5vp1fcobgwmck4','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-11-20 03:28:46.303002'),('8mywirbdyk443m5wg0celiy6n6r7dbkz','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2019-01-09 15:37:40.704166'),('8pfgn06p3fofa9q8v8ep70achs7ze9qw','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2019-01-15 16:05:58.954254'),('9fattflu02c66k7wteehnmxc9qf6wmx8','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-10-21 08:57:09.406109'),('9oz2rb4o909g7xm1n2m9ij72y623q87q','NjhmMzZjZGY1YmQyZDc1OWM4MTQ3MWExMWU4MzgzNzhlM2RiZjBmZDp7ImFnZW50IjoidHJhbmdzaWV1Y3V0ZSJ9','2018-10-17 10:25:04.906309'),('9p0c02fqhnh0vufq75c4antk36a7j1p8','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-12-11 08:09:20.286993'),('9p0c9mctmbyoeldusrbm0bdl1i4shwdx','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-11-09 16:47:31.072109'),('au5clvnk85o5hj6qs1dssh71v1o7djvk','YjUwNmU1MTI1YmQwMzEwZWYzMzdjN2ZhMGIxZmVhMmQ3OWUyODEwZDp7InVzZXIiOiJwaG9uZ3RoIn0=','2018-10-18 08:12:07.299274'),('bbzj8ydcts99i1cp7j3pvbuiprhtjezf','ODRlMmZjMzQxYTJjMDBlZTQ4MGZjNzJmOGY1NjI3MTQxNmNjZjg1Mjp7InVzZXIiOiJkdWNjdW9uZ2RjOTcifQ==','2018-11-10 13:27:05.277102'),('bl2ep2hokjecu7i6rm04cn18kcrihxgl','ZWRmZDE4ZjhhMDJlMTkxODY5N2IxMTU3MGFmMjkwM2FiN2QzNjJhZjp7InVzZXIiOiJ0aGFvbnYifQ==','2018-10-17 10:22:27.594009'),('dq0fih58lo0b8quliv2uqtsjqz2emwr9','Y2Q1NTNiZWJjOGRhNWNlZGFlMTQ5ZmJiNGVkOTM3YWY0ZTExNWU1Mjp7ImFkbWluIjoiYWRtaW5tZHQifQ==','2018-10-18 15:55:42.968835'),('eoaosuwn65158y9f5zt82cz1dl217nc5','Y2Q1NTNiZWJjOGRhNWNlZGFlMTQ5ZmJiNGVkOTM3YWY0ZTExNWU1Mjp7ImFkbWluIjoiYWRtaW5tZHQifQ==','2018-10-22 08:22:53.443744'),('f8zc5sxx82vqil6ktfrtn7yxinscipkf','YjUwNmU1MTI1YmQwMzEwZWYzMzdjN2ZhMGIxZmVhMmQ3OWUyODEwZDp7InVzZXIiOiJwaG9uZ3RoIn0=','2018-11-07 02:33:53.259738'),('g4fxu6am1l5lkwp6javd6wra1ezkf9q2','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-12-18 02:00:22.087052'),('g7nuwhh52vaomojqaj5u42kps7z3eeqc','MWNmNWU3Yjg2YWE0MzY2YjAwNGM2NWY5ZDIzM2I3ODYzNzFlMzUxMzp7ImFnZW50IjoidGhhb252In0=','2019-01-09 09:35:33.820983'),('g8iv95lcjyakhquhqyyemkaosnwubpvy','NTA5MDZlZDdjYzE0ZTQyMzMwNGJkZTE4ZDBiYWE1ZGZhNWQwOGM2Zjp7InVzZXIiOiJkdWNuZ3V5ZW4yNjExIn0=','2018-10-24 02:24:07.046312'),('g9fz789h7wib8643h5278qrun94rmq3c','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-12-14 05:14:20.800918'),('gp6alsaorynz9nvlkbe8qof0chrlu33a','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-10-19 07:04:54.221601'),('h1f9ghrg9kz0bybsljxv5a7hc483y985','NTA5MDZlZDdjYzE0ZTQyMzMwNGJkZTE4ZDBiYWE1ZGZhNWQwOGM2Zjp7InVzZXIiOiJkdWNuZ3V5ZW4yNjExIn0=','2018-12-17 02:50:33.405562'),('h21qvvjw3tiyzewwqmyi89xdk6m71d08','ZDc2MDJiNzU1YmZjMWZiM2MyOGQwNTlmN2MzMjEyYWYzODA2YmM2Yzp7ImxlYWRlciI6Im1iZiJ9','2018-12-07 07:11:38.299271'),('hslh0csmma2wdyp5w0fgo6ssgialf68i','NWY1OWIyMWM0ZDdmY2E4NThjNDExODZlMDkxNTMzOGNhOWU1ZGM4OTp7InVzZXIiOiJkdW5nbnYifQ==','2018-11-27 03:39:04.903669'),('hweyyiidstxsbgajh0vqk9ugapl81m0h','YjUwNmU1MTI1YmQwMzEwZWYzMzdjN2ZhMGIxZmVhMmQ3OWUyODEwZDp7InVzZXIiOiJwaG9uZ3RoIn0=','2018-11-09 01:50:22.228675'),('i1912hob3yguwxqm94t7po2gkyw6ri7q','ZjIxOTA4ODZlY2Y3Yjc5NzI3MzA3NjI3ZDYxZjVjY2YwNTc4YjExYzp7ImFnZW50Ijoia2hvYWR1b25nIn0=','2018-11-08 06:59:57.169909'),('i36rx3t5o58pw2b8lytbp80mqa54w1ib','YzFiNDI3NmM0ODM4ZjA2ZmRlYWRmY2E4ZDkxMTUxNjBkMTE1YmY2MDp7InVzZXIiOiJoaWV1bGUifQ==','2018-10-17 10:45:20.378897'),('ijacdjhdmleu6poxjn07qsvwtdpmu19r','ZDc2MDJiNzU1YmZjMWZiM2MyOGQwNTlmN2MzMjEyYWYzODA2YmM2Yzp7ImxlYWRlciI6Im1iZiJ9','2018-12-25 08:01:55.766220'),('imoxgon200ja2abu85fzf8cycf6i5td3','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-10-19 10:29:08.988866'),('izqq4r0z4mei7xf0s7vrfe2zja1f3fa3','NWY1OWIyMWM0ZDdmY2E4NThjNDExODZlMDkxNTMzOGNhOWU1ZGM4OTp7InVzZXIiOiJkdW5nbnYifQ==','2018-11-06 10:50:49.608557'),('jrrdbcq7h5hpf6chuukla0mv63pl1vh2','Yzc5ZWE1ZTY5NDczN2RiZjYyNWU3NTE4YTc3YmE5MGRhMTJiNTlkMjp7InVzZXIiOiJjdW9uZ3RtIn0=','2018-10-19 06:23:48.445182'),('kh6i3yw763y690ld7pqz43bypurskc2k','YjA4YzMxNGRmYzg4OGUxZDZhNThhNjVjODY4NjI4YTU1YWFiZGY2ZTp7ImFnZW50IjoiZHVuZ252In0=','2018-10-17 10:32:16.007711'),('koh2k2h4hdj67y8r8ypv9ksll68224yl','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-11-07 07:19:41.066800'),('l59oy9ufg7pu3gk1x9y5difdphbwna79','MDFiOTM3YWMwNjkwMjBmMmRmMmMyNjk3NmQ0NWRmMzQ4Zjk1YTViZjp7InVzZXIiOiJxdWFuZ3RoYW5obnQifQ==','2018-10-18 01:35:01.756450'),('lg3dj3v5of762xrdzymzpqb7srvk2yz2','Y2Q1NTNiZWJjOGRhNWNlZGFlMTQ5ZmJiNGVkOTM3YWY0ZTExNWU1Mjp7ImFkbWluIjoiYWRtaW5tZHQifQ==','2018-10-17 14:49:41.807628'),('lgv7jump7jbct81q4z7gq2x0pgwwzixv','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2018-11-26 04:22:43.231342'),('mf8tb2flyt6c139o767x50h32m4tyt31','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-11-16 06:39:06.926028'),('mwow5vt4rbryplp0cffftsmhansomz2e','NWY1OWIyMWM0ZDdmY2E4NThjNDExODZlMDkxNTMzOGNhOWU1ZGM4OTp7InVzZXIiOiJkdW5nbnYifQ==','2018-11-13 08:20:54.409752'),('myjf5zjh3k684b84u0vsz2q694mv9nic','ZDc2MDJiNzU1YmZjMWZiM2MyOGQwNTlmN2MzMjEyYWYzODA2YmM2Yzp7ImxlYWRlciI6Im1iZiJ9','2018-12-25 03:54:56.239029'),('ogghvlh8a2i0x0mc7z5igtvfifjva3nw','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2018-10-17 10:25:05.369531'),('p2ridmf02r8m0i1opvvl23ftc9sq9pv4','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-11-29 14:10:21.789551'),('q6a05eeu31bhbwxkr0k9ja0bbz3yrx62','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-10-17 15:39:03.484902'),('qaitoxhhtpgce1i5rdturpsclvuqshfs','YjUwNmU1MTI1YmQwMzEwZWYzMzdjN2ZhMGIxZmVhMmQ3OWUyODEwZDp7InVzZXIiOiJwaG9uZ3RoIn0=','2018-12-06 02:46:37.307853'),('qssey9g9ygo9qgc1xd5g4rv4hx2j3ysq','MWNmNWU3Yjg2YWE0MzY2YjAwNGM2NWY5ZDIzM2I3ODYzNzFlMzUxMzp7ImFnZW50IjoidGhhb252In0=','2018-11-21 11:11:56.515006'),('rdom0cx3ft549vuq2zo5qfu9nty6mc49','Y2Q1NTNiZWJjOGRhNWNlZGFlMTQ5ZmJiNGVkOTM3YWY0ZTExNWU1Mjp7ImFkbWluIjoiYWRtaW5tZHQifQ==','2018-10-17 11:10:33.772158'),('tcrufcm2c3vwoa174nkqrz9w8z6tcfaw','NTA5MDZlZDdjYzE0ZTQyMzMwNGJkZTE4ZDBiYWE1ZGZhNWQwOGM2Zjp7InVzZXIiOiJkdWNuZ3V5ZW4yNjExIn0=','2018-11-07 07:38:04.866646'),('ujho7jxpd6f797vkbpium7xs9p8jt1jt','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2019-01-04 02:20:02.023344'),('ul19kubigoltjejiajopapuwg55nwe8b','MWNmNWU3Yjg2YWE0MzY2YjAwNGM2NWY5ZDIzM2I3ODYzNzFlMzUxMzp7ImFnZW50IjoidGhhb252In0=','2018-12-17 04:13:50.538080'),('uri0c2cdtki61w23htpvpxk5zwaf0fad','MDFiOTM3YWMwNjkwMjBmMmRmMmMyNjk3NmQ0NWRmMzQ4Zjk1YTViZjp7InVzZXIiOiJxdWFuZ3RoYW5obnQifQ==','2018-12-25 06:57:21.526258'),('vqo1kgqsyf533k2490tjp3vj9hbj33cp','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-12-11 07:37:43.455300'),('vybkdnmfwmpykx8byxqburgoiakhka5s','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-12-17 04:28:58.129011'),('w1mea81hbgx4s6qx4q6cwdqb91aqbhuw','NWY1OWIyMWM0ZDdmY2E4NThjNDExODZlMDkxNTMzOGNhOWU1ZGM4OTp7InVzZXIiOiJkdW5nbnYifQ==','2018-11-21 11:12:20.440833'),('wixlwcjpa33maz0ns4ftbajbsqv17b0r','OWZjZmVkM2RkYzg1NDAxNzQ2ZmIwODQ2N2E5MGU1YmExZjMzODcyMjp7ImFnZW50IjoiZHVjbm0zNyJ9','2018-12-25 09:28:49.583888'),('wo2jk2a3rr2rj7h32mnk8rqd016kp6t2','Yzg4NjZmMTU2NTRjMTc5ODE4YTM4ZDE2MzBmMDNmY2E4MWEwNzY0ZTp7InVzZXIiOiJhbmhudCJ9','2018-11-02 10:39:47.917009'),('wt9owqlhylwcgs5sn66qumirvd7kj2o8','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-10-17 10:56:32.845097'),('xpsqmpqoo5eifonxy5ke9krdn05mp5rv','MWNmNWU3Yjg2YWE0MzY2YjAwNGM2NWY5ZDIzM2I3ODYzNzFlMzUxMzp7ImFnZW50IjoidGhhb252In0=','2018-10-18 07:53:38.295524'),('xvmh707riqoug6i0jikgwbitrhrlxica','NTA5MDZlZDdjYzE0ZTQyMzMwNGJkZTE4ZDBiYWE1ZGZhNWQwOGM2Zjp7InVzZXIiOiJkdWNuZ3V5ZW4yNjExIn0=','2018-12-24 07:39:28.132953'),('yeh2qraj8ief64oj8hw709vy9wad1rjk','ODM3ODQ0YjY5N2VlODRlMDEwNzY1MGQ5ODJlYTRmZGYzYmVlNmEwMTp7InVzZXIiOiJoYW5ndnQifQ==','2018-10-18 08:58:57.380953'),('yqa6kb5uoc3stmr6759e595dcl493hcx','MDIzNDJlOWZlM2Y5YTFmZjVhOTZmNzIwMDVkODZlOTUwMjAzYTYzNDp7ImxlYWRlciI6ImRhbmd2diJ9','2018-11-24 18:21:55.663142'),('zsopi2x26smkwicnq4i6ju81t26g74ul','YjFlMGNiNWIzZjg5N2IzOThkYWIzYzQxNTQyZTJlMWFmNzQ1ZDk2MDp7fQ==','2018-12-11 07:20:51.678384');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forward_tickets`
--

DROP TABLE IF EXISTS `forward_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forward_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiverid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forward_tickets_receiverid_00cdb591_fk_agents_id` (`receiverid`),
  KEY `forward_tickets_senderid_80ab19af_fk_agents_id` (`senderid`),
  KEY `forward_tickets_ticketid_49135b73_fk_tickets_id` (`ticketid`),
  CONSTRAINT `forward_tickets_receiverid_00cdb591_fk_agents_id` FOREIGN KEY (`receiverid`) REFERENCES `agents` (`id`),
  CONSTRAINT `forward_tickets_senderid_80ab19af_fk_agents_id` FOREIGN KEY (`senderid`) REFERENCES `agents` (`id`),
  CONSTRAINT `forward_tickets_ticketid_49135b73_fk_tickets_id` FOREIGN KEY (`ticketid`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forward_tickets`
--

LOCK TABLES `forward_tickets` WRITE;
/*!40000 ALTER TABLE `forward_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `forward_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupservices`
--

DROP TABLE IF EXISTS `groupservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupservices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupservices`
--

LOCK TABLES `groupservices` WRITE;
/*!40000 ALTER TABLE `groupservices` DISABLE KEYS */;
INSERT INTO `groupservices` VALUES (1,'Mobifone');
/*!40000 ALTER TABLE `groupservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_agent`
--

DROP TABLE IF EXISTS `service_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `serviceid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_agent_agentid_b7b897d6_fk_agents_id` (`agentid`),
  KEY `service_agent_serviceid_e3807312_fk_services_id` (`serviceid`),
  CONSTRAINT `service_agent_agentid_b7b897d6_fk_agents_id` FOREIGN KEY (`agentid`) REFERENCES `agents` (`id`),
  CONSTRAINT `service_agent_serviceid_e3807312_fk_services_id` FOREIGN KEY (`serviceid`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_agent`
--

LOCK TABLES `service_agent` WRITE;
/*!40000 ALTER TABLE `service_agent` DISABLE KEYS */;
INSERT INTO `service_agent` VALUES (33,3,1),(34,5,1),(35,7,1),(36,10,1),(37,17,1),(38,3,2),(39,5,2),(40,2,2),(41,7,2),(42,10,2),(43,17,2);
/*!40000 ALTER TABLE `service_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `downtime` int(11) NOT NULL,
  `groupserviceid` int(11) DEFAULT NULL,
  `agentid` int(11) DEFAULT NULL,
  `agentid_bk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_groupserviceid_910e55ef_fk_groupservices_id` (`groupserviceid`),
  KEY `services_agentid_b26c190e_fk_agents_id` (`agentid`),
  KEY `services_agentid_bk_dacc3f30_fk_agents_id` (`agentid_bk`),
  CONSTRAINT `services_agentid_b26c190e_fk_agents_id` FOREIGN KEY (`agentid`) REFERENCES `agents` (`id`),
  CONSTRAINT `services_agentid_bk_dacc3f30_fk_agents_id` FOREIGN KEY (`agentid_bk`) REFERENCES `agents` (`id`),
  CONSTRAINT `services_groupserviceid_910e55ef_fk_groupservices_id` FOREIGN KEY (`groupserviceid`) REFERENCES `groupservices` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Private Cloud',1,'Hỗ trợ Private Cloud',20,1,4,17),(2,'Monitor',1,'Hỗ trợ Monitor',30,1,4,17);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_agent`
--

DROP TABLE IF EXISTS `ticket_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_agent_agentid_d6a34996_fk_agents_id` (`agentid`),
  KEY `ticket_agent_ticketid_14699b3f_fk_tickets_id` (`ticketid`),
  CONSTRAINT `ticket_agent_agentid_d6a34996_fk_agents_id` FOREIGN KEY (`agentid`) REFERENCES `agents` (`id`),
  CONSTRAINT `ticket_agent_ticketid_14699b3f_fk_tickets_id` FOREIGN KEY (`ticketid`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_agent`
--

LOCK TABLES `ticket_agent` WRITE;
/*!40000 ALTER TABLE `ticket_agent` DISABLE KEYS */;
INSERT INTO `ticket_agent` VALUES (2,3,2),(4,5,4),(5,5,3),(6,5,6),(7,3,8),(8,3,7),(9,3,9),(10,5,10),(11,3,11),(12,3,13),(14,5,16),(15,5,14),(16,5,15),(17,5,19),(18,5,18),(19,5,20),(20,3,21),(21,3,22);
/*!40000 ALTER TABLE `ticket_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_log`
--

DROP TABLE IF EXISTS `ticket_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `agentid` int(11) DEFAULT NULL,
  `ticketid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_log_agentid_6c99614a_fk_agents_id` (`agentid`),
  KEY `ticket_log_ticketid_7fd3b154_fk_tickets_id` (`ticketid`),
  CONSTRAINT `ticket_log_agentid_6c99614a_fk_agents_id` FOREIGN KEY (`agentid`) REFERENCES `agents` (`id`),
  CONSTRAINT `ticket_log_ticketid_7fd3b154_fk_tickets_id` FOREIGN KEY (`ticketid`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_log`
--

LOCK TABLES `ticket_log` WRITE;
/*!40000 ALTER TABLE `ticket_log` DISABLE KEYS */;
INSERT INTO `ticket_log` VALUES (5,'tạo mới yêu cầu','2018-10-05','06:54:21.388584',14,2),(6,'nhận xử lý yêu cầu','2018-10-05','06:57:10.660573',3,2),(7,'xử lý xong yêu cầu','2018-10-08','08:20:33.497343',3,2),(8,'tạo mới yêu cầu','2018-10-10','02:26:51.658130',16,3),(9,'tạo mới yêu cầu','2018-10-10','02:28:09.403604',16,4),(12,'nhận xử lý yêu cầu','2018-10-24','02:29:27.238235',5,4),(13,'nhận xử lý yêu cầu','2018-10-24','02:29:30.650468',5,3),(14,'xử lý xong yêu cầu','2018-10-24','02:29:54.096816',5,4),(15,'xử lý xong yêu cầu','2018-10-24','02:29:58.250894',5,3),(16,'tạo mới yêu cầu','2018-10-24','02:38:36.674017',13,6),(17,'nhận xử lý yêu cầu','2018-10-24','02:46:19.425544',5,6),(18,'xử lý xong yêu cầu','2018-10-24','02:46:33.594459',5,6),(19,'tạo mới yêu cầu','2018-10-24','07:38:55.805327',16,7),(20,'tạo mới yêu cầu','2018-10-24','07:39:56.830098',16,8),(21,'nhận xử lý yêu cầu','2018-10-24','08:13:41.339826',3,8),(22,'nhận xử lý yêu cầu','2018-10-24','08:13:49.492171',3,7),(23,'xử lý xong yêu cầu','2018-10-24','08:14:02.970243',3,8),(24,'xử lý xong yêu cầu','2018-10-24','08:14:06.672358',3,7),(25,'tạo mới yêu cầu','2018-10-24','08:35:45.189302',16,9),(26,'nhận xử lý yêu cầu','2018-10-24','08:46:19.109164',3,9),(27,'xử lý xong yêu cầu','2018-10-24','08:46:24.182494',3,9),(28,'tạo mới yêu cầu','2018-10-26','02:08:26.342554',16,10),(29,'nhận xử lý yêu cầu','2018-10-26','08:45:05.983271',5,10),(30,'tạo mới yêu cầu','2018-10-26','09:55:08.338924',13,11),(31,'nhận xử lý yêu cầu','2018-10-29','01:38:53.839935',3,11),(32,'xử lý xong yêu cầu','2018-10-29','01:41:23.567803',5,10),(34,'tạo mới yêu cầu','2018-11-01','07:50:27.277521',16,13),(35,'nhận xử lý yêu cầu','2018-11-01','07:53:03.534724',3,13),(36,'xử lý xong yêu cầu','2018-11-01','07:55:32.283324',3,11),(37,'tạo mới yêu cầu','2018-11-01','08:37:07.330349',13,14),(38,'tạo mới yêu cầu','2018-11-02','01:44:57.576537',13,15),(39,'tạo mới yêu cầu','2018-11-02','01:46:23.424677',13,16),(40,'chỉnh sửa yêu cầu','2018-11-02','01:47:35.928049',13,15),(43,'nhận xử lý yêu cầu','2018-11-23','06:34:03.501867',5,16),(44,'nhận xử lý yêu cầu','2018-11-23','06:34:04.998750',5,14),(45,'nhận xử lý yêu cầu','2018-11-23','06:34:06.829945',5,15),(46,'xử lý xong yêu cầu','2018-11-23','06:34:17.508806',5,15),(47,'xử lý xong yêu cầu','2018-11-23','06:34:19.606325',5,14),(48,'xử lý xong yêu cầu','2018-11-23','06:34:21.468575',5,16),(49,'tạo mới yêu cầu','2018-11-30','07:05:59.774279',13,18),(50,'tạo mới yêu cầu','2018-12-03','02:55:42.335470',16,19),(51,'nhận xử lý yêu cầu','2018-12-03','04:17:41.503827',5,19),(52,'nhận xử lý yêu cầu','2018-12-03','04:17:51.459112',5,18),(53,'tạo mới yêu cầu','2018-12-04','01:52:30.899554',16,20),(54,'xử lý xong yêu cầu','2018-12-04','01:52:35.186684',3,13),(55,'tạo mới yêu cầu','2018-12-04','01:54:32.980787',16,21),(56,'tạo mới yêu cầu','2018-12-04','01:55:39.692847',16,22),(57,'nhận xử lý yêu cầu','2018-12-04','02:02:54.530919',5,20),(58,'nhận xử lý yêu cầu','2018-12-04','02:03:10.815595',3,21),(59,'nhận xử lý yêu cầu','2018-12-04','02:03:19.310299',3,22),(60,'xử lý xong yêu cầu','2018-12-04','02:13:15.586821',5,20),(61,'xử lý xong yêu cầu','2018-12-04','07:56:02.776645',5,19),(62,'xử lý lại yêu cầu','2018-12-04','10:22:22.054828',5,19),(63,'xử lý xong yêu cầu','2018-12-04','10:22:56.730030',5,18),(64,'đóng yêu cầu','2018-12-10','07:40:11.235298',16,19),(65,'đóng yêu cầu','2018-12-10','07:40:14.435285',16,21),(66,'đóng yêu cầu','2018-12-10','07:40:16.117521',16,22),(67,'tạo mới yêu cầu','2018-12-11','09:26:01.579587',16,23),(68,'đóng yêu cầu','2018-12-11','09:26:59.654907',16,23);
/*!40000 ALTER TABLE `ticket_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thong_so_kt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `datestart` datetime(6) NOT NULL,
  `dateend` datetime(6) NOT NULL,
  `attach` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lv_priority` int(11) NOT NULL,
  `expired` int(11) NOT NULL,
  `loai_su_co` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_close` date DEFAULT NULL,
  `agentid` int(11) NOT NULL,
  `serviceid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_agentid_f58ca772_fk_agents_id` (`agentid`),
  KEY `tickets_serviceid_87287287_fk_services_id` (`serviceid`),
  CONSTRAINT `tickets_agentid_f58ca772_fk_agents_id` FOREIGN KEY (`agentid`) REFERENCES `agents` (`id`),
  CONSTRAINT `tickets_serviceid_87287287_fk_services_id` FOREIGN KEY (`serviceid`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (2,'Private Cloud HCM','Dear anh chị,\r\n\r\nHiện máy ảo 10.16.150.8 không kết nối được, anh chị check giúp',2,'2018-10-05 06:54:21.371610','2018-10-05 07:14:21.371621','','',0,0,'Không kết nối được máy ảo',NULL,14,1),(3,'DB Keystone hiện đang gặp lỗi corrupt','Xử lý lỗi DB Keystone ở controller 1 để controller này join được cluster',2,'2018-10-10 02:26:51.643801','2018-10-10 02:46:51.643813','','',2,0,'Xử lý DB Keystone',NULL,16,1),(4,'Quá trình tắt bật controller chưa có thủ tục cụ thể.','Cần có quy trình tắt bật controller để tiến hành tối ưu hệ thống mạng.',2,'2018-10-10 02:28:09.390905','2018-10-10 02:48:09.390916','','',2,0,'Quy trình tắt bật controller',NULL,16,1),(6,'NTP synchronized: no','AE mở ticket thực hiện đổi NTP server của Private Cloud HCM  sang NTP server 10.151.70.33/10.151.70.32  giúp nhé.\r\nDeadline: 26/10 .',2,'2018-10-24 02:38:36.666162','2018-10-24 02:58:36.666172','','',1,0,'Change NTP server Private Cloud HCM',NULL,13,1),(7,'Đổi server NTP sang server mới','Nhờ Meditech hỗ trợ đổi ntp server trên hệ thống sang server mới',2,'2018-10-24 07:38:55.791440','2018-10-24 07:58:55.791449','','',1,0,'Change server NTP',NULL,16,1),(8,'Máy chủ 10.3.11.22 bị down không rõ nguyên nhân, reboot lại không được','Nhờ Meditech check giúp và khôi phục lại server 10.3.11.22 về trạng thái ban đầu',2,'2018-10-24 07:39:56.803087','2018-10-24 07:59:56.803096','','',2,0,'Lỗi máy chủ 10.3.11.22',NULL,16,1),(9,'Hiện tại controller 1 chưa đồng bộ được với cụm cluster 3 controller','Nhờ Meditech hỗ trợ đồng bộ lại controller 1 vào cụm 3 controller',2,'2018-10-24 08:35:45.180622','2018-10-24 08:55:45.180632','','',2,0,'Đồng bộ DB trên controller 1',NULL,16,1),(10,'Tối nay, TTTCTK tiến hành tối ưu hệ thống mạng','Nhờ các anh Meditech hỗ trợ onsite trong quá trình tắt bật',2,'2018-10-26 02:08:26.334550','2018-10-26 02:28:26.334560','','',1,0,'Hỗ trợ onsite tắt bật service controller',NULL,16,1),(11,'private cloud HCM','Xử lý tối ưu file ibdata của database Keystone hệ thống Private Cloud HCM vào đêm 29/10/2018',2,'2018-10-26 09:55:08.329709','2018-10-26 10:15:08.329720','','',2,0,'Xử lý tối ưu file ibdata của database Keystone hệ thống Private Cloud HCM',NULL,13,1),(13,'Windows Server 2016','Nhờ Meditech hỗ trợ tạo image WS 2016 để boot máy ảo',2,'2018-11-01 07:50:27.269931','2018-11-01 08:10:27.269941','','',2,0,'Tạo image windows server 2016',NULL,16,1),(14,'Thu Nov 01 12:33:34 2018\r\nWARN: ARC0: Terminating pid 1913 hung on an I/O operation\r\nThu Nov 01 12:39:15 2018\r\nProcess RSM0, PID = 1961, will be killed','Subject: Vv Hỗ trợ check máy chủ DR Datacode 10.16.150.20\r\n\r\nHi anh Cường\r\n \r\n \r\nNhờ anh kiểm tra giúp máy chủ Private Cloud DR Datacode  10.16.150.20\r\n \r\nNhư lần trước có trao đổi, máy này rất chậm, có reboot lại cũng ko cải thiện. Bị lỗi IO\r\n \r\nA check lại giúp em xem fix dc ko. Nếu ko chắc nhờ anh cấp lại giúp máy chủ khác thay thế.\r\n \r\nHiện tại Lỗi IO như bên dưới, DB chính apply dữ liệu sang DR cực cực chậm. \r\n \r\nHiện ko thể thao tác khắc phục đồng bộ lại cho DB DR này dc anh ạ, sau khi khắc phục IO máy chủ thì mới fix tiếp được DR anh ạ\r\n \r\n \r\nThu Nov 01 12:33:34 2018\r\nWARN: ARC0: Terminating pid 1913 hung on an I/O operation\r\nThu Nov 01 12:39:15 2018\r\nProcess RSM0, PID = 1961, will be killed',2,'2018-11-01 08:37:07.318028','2018-11-01 08:57:07.318038','','',2,0,'Vv Hỗ trợ check máy chủ DR Datacode 10.16.150.20',NULL,13,1),(15,'check lại các images mdt-xxxxx','Nhờ ae kỹ thuật hỗ trợ check lại các images mdt-xxxxxx, đa số tạo các máy ảo từ các image này đều báo lỗi từ sau đợt migrate máy ảo local trước đây (đợt xử lý chuyển bớt image trên các controller đi nơi khác để lấy chỗ migrate)',2,'2018-11-02 01:44:57.552235','2018-11-02 02:04:57.552245','','',1,0,'Hỗ trợ rà soát các images trên private cloud HCM',NULL,13,1),(16,'hỗ trợ kiểm tra các volume','Nhờ ae kỹ thuật hỗ trợ kiểm tra các volume có thể thu hồi được để giải phóng bớt SAN',2,'2018-11-02 01:46:23.412063','2018-11-02 02:06:23.412074','','',1,0,'Hỗ trợ rà soát các volume có thể thu hồi được',NULL,13,1),(18,'IP 10.16.149.104\r\nroot@mdt-kvm-hcm:~#','Nhờ đội kỹ thuật hỗ trợ tạo máy ảo trên kvm máy chủ chạy công cụ thống kê hiệu năng máy ảo\r\nThông tin phần cứng: 8Core CPU,16Gb ram, 300Gb disk,OS Centos 7, IP có thể kết nối tới giải Managerment của Openstack.',2,'2018-11-30 07:05:59.762883','2018-11-30 07:25:59.762894','','',1,0,'Hỗ trợ tạo máy chủ ảo trên KVM',NULL,13,1),(19,'https://mobifone888-my.sharepoint.com/:u:/g/personal/duc_ntm_mobifone_vn/EfaVESwiYmJNkeCdZK_765kBTmce9G-p3m_47fqYu4AYJw?e=PWZOOC','Đội Meditech hỗ trợ Mobifone tạo image RHEL 7.2 bản full có giao diện đồ họa.',3,'2018-12-03 02:55:42.326190','2018-12-03 03:15:42.326201','','',2,0,'Tạo image RHEL 7.2 bản full có giao diện đồ họa','2018-12-10',16,1),(20,'Máy chủ giám sát đang không hoạt động do đã off trước đó','Nhờ đối tác Meditech hỗ trợ xử lý on lại máy chủ giám sát',2,'2018-12-04 01:52:30.878325','2018-12-04 02:12:30.878335','','',2,0,'Hỗ trợ lỗi máy chủ giám sát',NULL,16,1),(21,'Tạo thêm máy chủ giám sát để thống kê được hoạt động của các VM','Tạo thêm máy chủ giám sát để thống kê được hoạt động của các VM',3,'2018-12-04 01:54:32.973404','2018-12-04 02:14:32.973416','','',2,0,'Hỗ trợ tạo máy chủ giám sát mới','2018-12-10',16,1),(22,'Cài đặt thêm công cụ giám sát thông tin máy ảo trên KVM','Cài đặt thêm công cụ giám sát thông tin máy ảo trên KVM',3,'2018-12-04 01:55:39.684692','2018-12-04 02:15:39.684701','','',2,0,'Cài đặt công cụ giám sát thông tin máy ảo','2018-12-10',16,1),(23,'Máy ảo không mount đươc volume','Meditech onsite hỗ trợ case máy ảo không mount được volume',3,'2018-12-11 09:26:01.558644','2018-12-11 09:46:01.558653','','',2,0,'Máy ảo không mount được volume','2018-12-11',16,1);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-03 10:24:44
