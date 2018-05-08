-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eanalyze_test
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.29-MariaDB

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
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `lab` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `contacted_on` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `iso2` varchar(2) COLLATE utf8_bin NOT NULL,
  `iso3` varchar(3) COLLATE utf8_bin NOT NULL,
  `numeric_code` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','AFG',4),(2,'Aland Islands','AX','ALA',248),(3,'Albania','AL','ALB',8),(4,'Algeria','DZ','DZA',12),(5,'American Samoa','AS','ASM',16),(6,'Andorra','AD','AND',20),(7,'Angola','AO','AGO',24),(8,'Anguilla','AI','AIA',660),(9,'Antarctica','AQ','ATA',10),(10,'Antigua and Barbuda','AG','ATG',28),(11,'Argentina','AR','ARG',32),(12,'Armenia','AM','ARM',51),(13,'Aruba','AW','ABW',533),(14,'Australia','AU','AUS',36),(15,'Austria','AT','AUT',40),(16,'Azerbaijan','AZ','AZE',31),(17,'Bahamas','BS','BHS',44),(18,'Bahrain','BH','BHR',48),(19,'Bangladesh','BD','BGD',50),(20,'Barbados','BB','BRB',52),(21,'Belarus','BY','BLR',112),(22,'Belgium','BE','BEL',56),(23,'Belize','BZ','BLZ',84),(24,'Benin','BJ','BEN',204),(25,'Bermuda','BM','BMU',60),(26,'Bhutan','BT','BTN',64),(27,'Bolivia, Plurinational State of','BO','BOL',68),(28,'Bonaire, Sint Eustatius and Saba','BQ','BES',535),(29,'Bosnia and Herzegovina','BA','BIH',70),(30,'Botswana','BW','BWA',72),(31,'Bouvet Island','BV','BVT',74),(32,'Brazil','BR','BRA',76),(33,'British Indian Ocean Territory','IO','IOT',86),(34,'Brunei Darussalam','BN','BRN',96),(35,'Bulgaria','BG','BGR',100),(36,'Burkina Faso','BF','BFA',854),(37,'Burundi','BI','BDI',108),(38,'Cambodia','KH','KHM',116),(39,'Cameroon','CM','CMR',120),(40,'Canada','CA','CAN',124),(41,'Cape Verde','CV','CPV',132),(42,'Cayman Islands','KY','CYM',136),(43,'Central African Republic','CF','CAF',140),(44,'Chad','TD','TCD',148),(45,'Chile','CL','CHL',152),(46,'China','CN','CHN',156),(47,'Christmas Island','CX','CXR',162),(48,'Cocos (Keeling) Islands','CC','CCK',166),(49,'Colombia','CO','COL',170),(50,'Comoros','KM','COM',174),(51,'Congo','CG','COG',178),(52,'Congo, the Democratic Republic of the','CD','COD',180),(53,'Cook Islands','CK','COK',184),(54,'Costa Rica','CR','CRI',188),(55,'Cote d\'Ivoire','CI','CIV',384),(56,'Croatia','HR','HRV',191),(57,'Cuba','CU','CUB',192),(58,'Cura','CW','CUW',531),(59,'Cyprus','CY','CYP',196),(60,'Czech Republic','CZ','CZE',203),(61,'Denmark','DK','DNK',208),(62,'Djibouti','DJ','DJI',262),(63,'Dominica','DM','DMA',212),(64,'Dominican Republic','DO','DOM',214),(65,'Ecuador','EC','ECU',218),(66,'Egypt','EG','EGY',818),(67,'El Salvador','SV','SLV',222),(68,'Equatorial Guinea','GQ','GNQ',226),(69,'Eritrea','ER','ERI',232),(70,'Estonia','EE','EST',233),(71,'Ethiopia','ET','ETH',231),(72,'Falkland Islands (Malvinas)','FK','FLK',238),(73,'Faroe Islands','FO','FRO',234),(74,'Fiji','FJ','FJI',242),(75,'Finland','FI','FIN',246),(76,'France','FR','FRA',250),(77,'French Guiana','GF','GUF',254),(78,'French Polynesia','PF','PYF',258),(79,'French Southern Territories','TF','ATF',260),(80,'Gabon','GA','GAB',266),(81,'Gambia','GM','GMB',270),(82,'Georgia','GE','GEO',268),(83,'Germany','DE','DEU',276),(84,'Ghana','GH','GHA',288),(85,'Gibraltar','GI','GIB',292),(86,'Greece','GR','GRC',300),(87,'Greenland','GL','GRL',304),(88,'Grenada','GD','GRD',308),(89,'Guadeloupe','GP','GLP',312),(90,'Guam','GU','GUM',316),(91,'Guatemala','GT','GTM',320),(92,'Guernsey','GG','GGY',831),(93,'Guinea','GN','GIN',324),(94,'Guinea-Bissau','GW','GNB',624),(95,'Guyana','GY','GUY',328),(96,'Haiti','HT','HTI',332),(97,'Heard Island and McDonald Islands','HM','HMD',334),(98,'Holy See (Vatican City State)','VA','VAT',336),(99,'Honduras','HN','HND',340),(100,'Hong Kong','HK','HKG',344),(101,'Hungary','HU','HUN',348),(102,'Iceland','IS','ISL',352),(103,'India','IN','IND',356),(104,'Indonesia','ID','IDN',360),(105,'Iran, Islamic Republic of','IR','IRN',364),(106,'Iraq','IQ','IRQ',368),(107,'Ireland','IE','IRL',372),(108,'Isle of Man','IM','IMN',833),(109,'Israel','IL','ISR',376),(110,'Italy','IT','ITA',380),(111,'Jamaica','JM','JAM',388),(112,'Japan','JP','JPN',392),(113,'Jersey','JE','JEY',832),(114,'Jordan','JO','JOR',400),(115,'Kazakhstan','KZ','KAZ',398),(116,'Kenya','KE','KEN',404),(117,'Kiribati','KI','KIR',296),(118,'Korea, Democratic People\'s Republic of','KP','PRK',408),(119,'Korea, Republic of','KR','KOR',410),(120,'Kuwait','KW','KWT',414),(121,'Kyrgyzstan','KG','KGZ',417),(122,'Lao People\'s Democratic Republic','LA','LAO',418),(123,'Latvia','LV','LVA',428),(124,'Lebanon','LB','LBN',422),(125,'Lesotho','LS','LSO',426),(126,'Liberia','LR','LBR',430),(127,'Libya','LY','LBY',434),(128,'Liechtenstein','LI','LIE',438),(129,'Lithuania','LT','LTU',440),(130,'Luxembourg','LU','LUX',442),(131,'Macao','MO','MAC',446),(132,'Macedonia, the former Yugoslav Republic of','MK','MKD',807),(133,'Madagascar','MG','MDG',450),(134,'Malawi','MW','MWI',454),(135,'Malaysia','MY','MYS',458),(136,'Maldives','MV','MDV',462),(137,'Mali','ML','MLI',466),(138,'Malta','MT','MLT',470),(139,'Marshall Islands','MH','MHL',584),(140,'Martinique','MQ','MTQ',474),(141,'Mauritania','MR','MRT',478),(142,'Mauritius','MU','MUS',480),(143,'Mayotte','YT','MYT',175),(144,'Mexico','MX','MEX',484),(145,'Micronesia, Federated States of','FM','FSM',583),(146,'Moldova, Republic of','MD','MDA',498),(147,'Monaco','MC','MCO',492),(148,'Mongolia','MN','MNG',496),(149,'Montenegro','ME','MNE',499),(150,'Montserrat','MS','MSR',500),(151,'Morocco','MA','MAR',504),(152,'Mozambique','MZ','MOZ',508),(153,'Myanmar','MM','MMR',104),(154,'Namibia','NA','NAM',516),(155,'Nauru','NR','NRU',520),(156,'Nepal','NP','NPL',524),(157,'Netherlands','NL','NLD',528),(158,'New Caledonia','NC','NCL',540),(159,'New Zealand','NZ','NZL',554),(160,'Nicaragua','NI','NIC',558),(161,'Niger','NE','NER',562),(162,'Nigeria','NG','NGA',566),(163,'Niue','NU','NIU',570),(164,'Norfolk Island','NF','NFK',574),(165,'Northern Mariana Islands','MP','MNP',580),(166,'Norway','NO','NOR',578),(167,'Oman','OM','OMN',512),(168,'Pakistan','PK','PAK',586),(169,'Palau','PW','PLW',585),(170,'Palestine, State of','PS','PSE',275),(171,'Panama','PA','PAN',591),(172,'Papua New Guinea','PG','PNG',598),(173,'Paraguay','PY','PRY',600),(174,'Peru','PE','PER',604),(175,'Philippines','PH','PHL',608),(176,'Pitcairn','PN','PCN',612),(177,'Poland','PL','POL',616),(178,'Portugal','PT','PRT',620),(179,'Puerto Rico','PR','PRI',630),(180,'Qatar','QA','QAT',634),(181,'Reunion','RE','REU',638),(182,'Romania','RO','ROU',642),(183,'Russian Federation','RU','RUS',643),(184,'Rwanda','RW','RWA',646),(185,'Saint Barthelemy','BL','BLM',652),(186,'Saint Helena, Ascension and Tristan da Cunha','SH','SHN',654),(187,'Saint Kitts and Nevis','KN','KNA',659),(188,'Saint Lucia','LC','LCA',662),(189,'Saint Martin (French part)','MF','MAF',663),(190,'Saint Pierre and Miquelon','PM','SPM',666),(191,'Saint Vincent and the Grenadines','VC','VCT',670),(192,'Samoa','WS','WSM',882),(193,'San Marino','SM','SMR',674),(194,'Sao Tome and Principe','ST','STP',678),(195,'Saudi Arabia','SA','SAU',682),(196,'Senegal','SN','SEN',686),(197,'Serbia','RS','SRB',688),(198,'Seychelles','SC','SYC',690),(199,'Sierra Leone','SL','SLE',694),(200,'Singapore','SG','SGP',702),(201,'Sint Maarten (Dutch part)','SX','SXM',534),(202,'Slovakia','SK','SVK',703),(203,'Slovenia','SI','SVN',705),(204,'Solomon Islands','SB','SLB',90),(205,'Somalia','SO','SOM',706),(206,'South Africa','ZA','ZAF',710),(207,'South Georgia and the South Sandwich Islands','GS','SGS',239),(208,'South Sudan','SS','SSD',728),(209,'Spain','ES','ESP',724),(210,'Sri Lanka','LK','LKA',144),(211,'Sudan','SD','SDN',729),(212,'Suriname','SR','SUR',740),(213,'Svalbard and Jan Mayen','SJ','SJM',744),(214,'Swaziland','SZ','SWZ',748),(215,'Sweden','SE','SWE',752),(216,'Switzerland','CH','CHE',756),(217,'Syrian Arab Republic','SY','SYR',760),(218,'Taiwan, Province of China','TW','TWN',158),(219,'Tajikistan','TJ','TJK',762),(220,'Tanzania, United Republic of','TZ','TZA',834),(221,'Thailand','TH','THA',764),(222,'Timor-Leste','TL','TLS',626),(223,'Togo','TG','TGO',768),(224,'Tokelau','TK','TKL',772),(225,'Tonga','TO','TON',776),(226,'Trinidad and Tobago','TT','TTO',780),(227,'Tunisia','TN','TUN',788),(228,'Turkey','TR','TUR',792),(229,'Turkmenistan','TM','TKM',795),(230,'Turks and Caicos Islands','TC','TCA',796),(231,'Tuvalu','TV','TUV',798),(232,'Uganda','UG','UGA',800),(233,'Ukraine','UA','UKR',804),(234,'United Arab Emirates','AE','ARE',784),(235,'United Kingdom','GB','GBR',826),(236,'United States','US','USA',840),(237,'United States Minor Outlying Islands','UM','UMI',581),(238,'Uruguay','UY','URY',858),(239,'Uzbekistan','UZ','UZB',860),(240,'Vanuatu','VU','VUT',548),(241,'Venezuela, Bolivarian Republic of','VE','VEN',862),(242,'Viet Nam','VN','VNM',704),(243,'Virgin Islands, British','VG','VGB',92),(244,'Virgin Islands, U.S.','VI','VIR',850),(245,'Wallis and Futuna','WF','WLF',876),(246,'Western Sahara','EH','ESH',732),(247,'Yemen','YE','YEM',887),(248,'Zambia','ZM','ZMB',894),(249,'Zimbabwe','ZW','ZWE',716);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_manager`
--

DROP TABLE IF EXISTS `data_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_manager` (
  `dm_id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_email` varchar(255) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `institute` varchar(500) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `secondary_email` varchar(45) DEFAULT NULL,
  `UserFld1` varchar(45) DEFAULT NULL,
  `UserFld2` varchar(45) DEFAULT NULL,
  `UserFld3` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `force_password_reset` int(1) NOT NULL DEFAULT '0',
  `qc_access` varchar(100) DEFAULT NULL,
  `enable_adding_test_response_date` varchar(45) DEFAULT NULL,
  `enable_choosing_mode_of_receipt` varchar(45) DEFAULT NULL,
  `view_only_access` varchar(45) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `IsVl` varchar(45) DEFAULT '0',
  `IsTester` varchar(45) DEFAULT '0',
  `resetCode` varchar(105) DEFAULT 'null',
  PRIMARY KEY (`dm_id`),
  UNIQUE KEY `primary_email` (`primary_email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 COMMENT='A PT user Table for Data entry or report printing';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_manager`
--

LOCK TABLES `data_manager` WRITE;
/*!40000 ALTER TABLE `data_manager` DISABLE KEYS */;
INSERT INTO `data_manager` VALUES (27,'osoromichaels@gmail.com','e10adc3949ba59abbe56e057f20f883e','referral','test','one','0737239910','osoromichael@gmail.com',NULL,NULL,NULL,'0711560619',0,'no','no','no','no','active','2017-11-15 12:17:54',NULL,'2017-11-20 09:36:01',NULL,'2017-11-20 14:23:36','1',NULL,'null'),(28,'mosoro@abnosoftwares.co.ke','e10adc3949ba59abbe56e057f20f883e','referral','osoro','michael','','mosoro@abnosoftwares.co.ke',NULL,NULL,NULL,'0711560619',0,'no','no','no','no','active','2017-11-15 12:31:55',NULL,'2017-11-16 10:17:06','31','2017-11-15 12:38:35','1','0','null'),(29,'test@abnosoftwares.com','ac67faf56aae1327c4531f9fc326319d','kisii','osoro','michae','','',NULL,NULL,NULL,'0711560619',1,'no','no','no','no','active','2017-11-16 09:46:41','31','2017-11-16 10:20:08','31',NULL,'1','0','null'),(30,'osoromichael@outlook.com','f0035558f6d44b8d1993ff8376b7e561','Mombasa RH','Osoro Michael','Okari','','osoromichael@outlook.com',NULL,NULL,NULL,'',1,'no','no','no','no','active','2017-11-20 13:11:46',NULL,NULL,NULL,NULL,'1','0','null'),(31,'mombasatest@gmail.com','ea1e91288fb28a5bcad9335b2e48fbc2','MRH','osoro','michael','0711560619','mombasatest@gmail.com',NULL,NULL,NULL,'0737239910',1,'no','no','no','no','active','2017-11-20 14:21:06',NULL,NULL,NULL,NULL,'1','0','null'),(32,'okarmikell@gmail.com','e10adc3949ba59abbe56e057f20f883e','KNH','Osoro','Michael','','',NULL,NULL,NULL,'0711560619',0,'no','no',NULL,NULL,'active','2018-02-22 13:37:50','31',NULL,NULL,'2018-03-28 09:18:11','1','0','MqeE8UlfKFgYf593oLrOzgw1J9BKfEyZw7jTeltDQiGxpQlkxdEffLOx4tprmAqQ'),(36,'osoromichael@gmail.com','c33367701511b4f6020ec61ded352059','44','4','44','','',NULL,NULL,NULL,'45112',0,'no','no',NULL,NULL,'active','2018-03-05 15:08:08','31',NULL,NULL,NULL,'3','0','JwQKL2Ofr1SDdoiB9$A3DEz4PhXCWdJ9LXKPzhOwCQoW2EBDfSd1$34diDAr'),(37,'warior@test.com','1651c27510b7ae6235752eae8fb15a67','ktest','kljlkj','lkjljlk','','',NULL,NULL,NULL,'45125',1,'no','no',NULL,NULL,'active','2018-04-11 16:46:16','3',NULL,NULL,NULL,'3','0','pFvLYVwC6yDrByKAVtfdkgMNZJ1Uai1MtavwgLyVdNJFYCAfUpiDZBk6VKry'),(38,'testemailer@gmail.com','2d99a77ec7c7118145e43a01c180bb20','123654','123654','12365','','',NULL,NULL,NULL,'123654',1,'no','no',NULL,NULL,'active','2018-04-11 16:51:35','3',NULL,NULL,NULL,'3','0','yLAoMrGj4NOPKRchw6zixWWH36JElXi3R6ElKoAMhyrG6zOXWx4NLjwHcPWJ'),(39,'uioyiuyiu@gmail.com','38b5cf44f7924b79b76e77b785df95fa','65465465','454645','465465465','','',NULL,NULL,NULL,'4654654654',1,'no','no',NULL,NULL,'active','2018-04-11 16:55:16','3',NULL,NULL,NULL,'3','0','OTEv4R0q8pdDQ@u7HZ4RMUnI91AsFX8ZOqER1UdnIHTsM0XF@u494DQApv7R'),(40,'tetstetet@gmail.com','9d25546bdf3775e8b855204993cb8e3b','546546465','65465465','4564654654','','',NULL,NULL,NULL,'6546465',1,'no','no',NULL,NULL,'active','2018-04-11 16:57:02','3',NULL,NULL,NULL,'3','0','qh1nOWEDCFeaivZmZdYB8ktHMQRK9heCWtkhnMqiR8DYvBZmQdKh1OFaHZ9E'),(41,'oiuoiuouoiuoi@gmail.com','0880700744d1b86350768704aae13beb','12365478','6546546','65465465','','',NULL,NULL,NULL,'6546546',1,'no','no',NULL,NULL,'active','2018-04-11 16:58:40','3',NULL,NULL,NULL,'3','0','MszTMYL3FIDa1P6Wxi7S0xJQ@BAeftxWexQTL67zM@PJI1aM0s3FDtYfBSAi'),(42,'itell@gmail.com','417f87937c79f5cc66c944cef6618613','7856412','412563','452145','','',NULL,NULL,NULL,'45415',1,'no','no',NULL,NULL,'active','2018-04-11 17:00:59','3',NULL,NULL,NULL,'3','0','LuhYKGS3snBP72EQqFxSNWyeHAlu9teY9uW73HlNBQPsAFhuStx2SnLEKGqy'),(43,'opiwoeirpweio@gmail.com','11f6f3cd89e72440638ec280a94905de','89797898','7987979','7987987987','','',NULL,NULL,NULL,'899789789',1,'no','no',NULL,NULL,'active','2018-04-11 17:02:49','3',NULL,NULL,NULL,'3','0','e0iTUoBD86bYL2KgNF4aI5XSMYiAhjKgY24ADeBNa8FTXio5jUiLIMY60Shb'),(44,'oiuoiuoierute@gmail.com','c7e70ffb82b7110522de44e90cca751b','554465464','65464654','654654645','','',NULL,NULL,NULL,'45',1,'no','no',NULL,NULL,'active','2018-04-11 17:06:04','3',NULL,NULL,NULL,'3','0','z6VsBEpw7XBAgnq59H4pNxCDGjUILRHEpCRGBDz5VxqnBAgLwp7X4Isj6N9U'),(45,'osdoroo@gmail.com','380e398117803e1455d374aaf655543b','1236541','123654','123654','','',NULL,NULL,NULL,'145236',1,'no','no',NULL,NULL,'active','2018-04-11 17:08:52','3',NULL,NULL,NULL,'3','0','nEvLUhrg7dvYsSyPZGqFJMSf2eWTD9PLDysvFSgfYnSZ97dEGrWvJqheMTU2'),(46,'lksjdfkjld@gmail.com','a231afc7039f1799986cc8b06739e7f7','123654','123654','123654','','',NULL,NULL,NULL,'123654',1,'no','no',NULL,NULL,'active','2018-04-11 17:10:21','3',NULL,NULL,NULL,'3','0','zqYTZUBvI2wResghFJ6pDnvHAfLH4S6FBgz2nSZRLpTfh4vHUvJYsADweIHq'),(47,'islsdfkjgjs@gmail.com','3b4e738882139d6a890b9592ada1519f','87987','7978978','78979879','','',NULL,NULL,NULL,'987978',1,'no','no',NULL,NULL,'active','2018-04-11 17:11:38','3',NULL,NULL,NULL,'3','0','BtTMOWplHKE14KarD6vukkdUPzIcZQpzWDKKcZUQktTdaE6vHIMkBrl1OP4u');
/*!40000 ALTER TABLE `data_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributions`
--

DROP TABLE IF EXISTS `distributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributions` (
  `distribution_id` int(11) NOT NULL AUTO_INCREMENT,
  `distribution_code` varchar(255) NOT NULL,
  `distribution_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `readinessdate` date DEFAULT NULL,
  PRIMARY KEY (`distribution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributions`
--

LOCK TABLES `distributions` WRITE;
/*!40000 ALTER TABLE `distributions` DISABLE KEYS */;
INSERT INTO `distributions` VALUES (14,'D/00014/2017','2017-10-18','shipped','2017-10-19 05:51:21','31','2017-10-19 09:23:11','31','2017-10-30'),(15,'D/00015/2017','2017-10-19','shipped','2017-10-19 10:09:46','31',NULL,NULL,'2017-10-31'),(16,'D/00016/2017','2017-11-16','shipped','2017-11-16 10:28:32','31',NULL,NULL,'2017-11-17'),(17,'D/00017/2017','2017-11-23','shipped','2017-11-20 09:22:51','31',NULL,NULL,'2017-11-23'),(18,'D/00018/2017','2017-11-19','shipped','2017-11-20 11:26:48','31','2017-11-20 11:58:39','31','2017-11-30'),(19,'D/00019/2017','2017-11-22','pending','2017-11-20 11:46:15','31',NULL,NULL,'2017-11-28'),(20,'D/00020/2017','2017-11-29','shipped','2017-11-20 11:47:13','31',NULL,NULL,'2017-01-29'),(21,'A/00021/2018','2018-03-01','shipped','2018-03-28 09:16:08','31',NULL,NULL,'2018-03-28');
/*!40000 ALTER TABLE `distributions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dts_recommended_testkits`
--

DROP TABLE IF EXISTS `dts_recommended_testkits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dts_recommended_testkits` (
  `test_no` int(11) NOT NULL,
  `testkit` varchar(255) NOT NULL,
  PRIMARY KEY (`test_no`,`testkit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dts_recommended_testkits`
--

LOCK TABLES `dts_recommended_testkits` WRITE;
/*!40000 ALTER TABLE `dts_recommended_testkits` DISABLE KEYS */;
INSERT INTO `dts_recommended_testkits` VALUES (1,'tk50f41f66a2388'),(1,'tk50f41f66a238f'),(1,'tk50f41f66a2399'),(1,'tk50f41f66a239e'),(1,'tk50f41f66a23a7'),(1,'tk50f41f66a23b1'),(1,'tk50f41f66a23b5'),(1,'tk50f41f66a23ba'),(1,'tk50f41f66a23bf'),(1,'tk50f41f66a23c4'),(1,'tk50f41f66a23c8'),(1,'tk50f41f66a23cd'),(1,'tk50f41f66a23d1'),(1,'tk50f41f66a23d6'),(1,'tk50f41f66a23db'),(1,'tk50f41f66a23df'),(1,'tk50f41f66a23e3'),(1,'tk50f41f66a23e8'),(1,'tk50f41f66a23ed'),(1,'tk50f41f66a23f1'),(1,'tk50f41f66a23f6'),(1,'tk50f41f66a23fa'),(1,'tk50f41f66a23ff'),(1,'tk50f41f66a2404'),(1,'tk50f41f66a2408'),(1,'tk50f41f66a240d'),(1,'tk50f41f66a2411'),(1,'tk50f41f66a2415'),(1,'tk50f41f66a241a'),(1,'tk50f41f66a241f'),(1,'tk50f41f66a2423'),(1,'tk50f41f66a2428'),(1,'tk50f41f66a242c'),(1,'tk50f41f66a2430'),(1,'tk50f41f66a2435'),(1,'tk50f41f66a2439'),(1,'tk50f41f66a243e'),(1,'tk50f41f66a2443'),(1,'tk50f41f66a2447'),(1,'tk50f41f66a244b'),(1,'tk5136b425387a4'),(1,'tk5137b608ac1d9'),(1,'tk51435b69f3b7e'),(1,'tk514b50a81832c'),(2,'tk50f41f66a238f'),(2,'tk50f41f66a23df'),(2,'tk50f41f66a2423'),(2,'tk50f41f66a2428'),(3,'tk50f41f66a2388'),(3,'tk50f41f66a238f'),(3,'tk50f41f66a2399'),(3,'tk50f41f66a239e'),(3,'tk50f41f66a23a7'),(3,'tk50f41f66a23b1'),(3,'tk50f41f66a23b5'),(3,'tk50f41f66a23ba'),(3,'tk50f41f66a23bf'),(3,'tk50f41f66a23c4'),(3,'tk50f41f66a23c8'),(3,'tk50f41f66a23cd'),(3,'tk50f41f66a23d1'),(3,'tk50f41f66a23d6'),(3,'tk50f41f66a23db'),(3,'tk50f41f66a23df'),(3,'tk50f41f66a23e3'),(3,'tk50f41f66a23e8'),(3,'tk50f41f66a23ed'),(3,'tk50f41f66a23f1'),(3,'tk50f41f66a23f6'),(3,'tk50f41f66a23fa'),(3,'tk50f41f66a23ff'),(3,'tk50f41f66a2404'),(3,'tk50f41f66a2408'),(3,'tk50f41f66a240d'),(3,'tk50f41f66a2411'),(3,'tk50f41f66a2415'),(3,'tk50f41f66a241a'),(3,'tk50f41f66a241f'),(3,'tk50f41f66a2423'),(3,'tk50f41f66a2428'),(3,'tk50f41f66a242c'),(3,'tk50f41f66a2430'),(3,'tk50f41f66a2435'),(3,'tk50f41f66a2439'),(3,'tk50f41f66a243e'),(3,'tk50f41f66a2443'),(3,'tk50f41f66a2447'),(3,'tk50f41f66a244b'),(3,'tk5136b425387a4'),(3,'tk5137b608ac1d9'),(3,'tk51435b69f3b7e'),(3,'tk514b50a81832c');
/*!40000 ALTER TABLE `dts_recommended_testkits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dts_shipment_corrective_action_map`
--

DROP TABLE IF EXISTS `dts_shipment_corrective_action_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dts_shipment_corrective_action_map` (
  `shipment_map_id` int(11) NOT NULL,
  `corrective_action_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dts_shipment_corrective_action_map`
--

LOCK TABLES `dts_shipment_corrective_action_map` WRITE;
/*!40000 ALTER TABLE `dts_shipment_corrective_action_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `dts_shipment_corrective_action_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollments` (
  `scheme_id` varchar(255) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `enrolled_on` date DEFAULT NULL,
  `enrollment_ended_on` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`participant_id`,`scheme_id`),
  KEY `participant_id` (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES ('eid',1,'2017-02-10',NULL,'enrolled'),('vl',1,'2017-02-01',NULL,'enrolled'),('eid',8,'2017-03-19',NULL,'enrolled'),('vl',8,'2017-03-19',NULL,'enrolled'),('eid',9,'2017-03-19',NULL,'enrolled'),('vl',9,'2017-03-19',NULL,'enrolled'),('vl',23,'2017-05-23',NULL,'enrolled'),('vl',24,'2017-05-24',NULL,'enrolled'),('vl',28,'2017-05-24',NULL,'enrolled'),('eid',29,'2017-05-24',NULL,'enrolled'),('vl',29,'2017-05-24',NULL,'enrolled'),('eid',30,'2017-05-24',NULL,'enrolled'),('vl',30,'2017-05-24',NULL,'enrolled'),('eid',31,'2017-05-24',NULL,'enrolled'),('vl',31,'2017-05-24',NULL,'enrolled'),('eid',33,'2017-05-24',NULL,'enrolled'),('vl',33,'2017-05-24',NULL,'enrolled'),('eid',36,'2017-06-21',NULL,'enrolled'),('vl',36,'2017-06-21',NULL,'enrolled'),('eid',37,'2017-06-21',NULL,'enrolled'),('vl',37,'2017-06-21',NULL,'enrolled'),('eid',38,'2017-06-21',NULL,'enrolled'),('vl',38,'2017-06-21',NULL,'enrolled'),('eid',39,'2017-06-22',NULL,'enrolled'),('vl',39,'2017-06-22',NULL,'enrolled'),('eid',40,'2017-06-22',NULL,'enrolled'),('eid',41,'2017-10-19',NULL,'enrolled'),('vl',41,'2017-10-19',NULL,'enrolled'),('eid',42,'2017-10-19',NULL,'enrolled'),('vl',42,'2017-10-19',NULL,'enrolled'),('vl',43,'2017-10-23',NULL,'enrolled'),('vl',44,'2017-10-23',NULL,'enrolled'),('eid',45,'2017-10-23',NULL,'enrolled'),('vl',45,'2017-10-23',NULL,'enrolled'),('eid',52,'2017-11-15',NULL,'enrolled'),('vl',52,'2017-11-15',NULL,'enrolled'),('eid',53,'2017-11-15',NULL,'enrolled'),('vl',53,'2017-11-15',NULL,'enrolled'),('eid',54,'2017-11-20',NULL,'enrolled'),('vl',54,'2017-11-20',NULL,'enrolled'),('eid',55,'2017-11-20',NULL,'enrolled'),('vl',55,'2017-11-20',NULL,'enrolled');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityName` varchar(100) DEFAULT NULL,
  `MFLCode` varchar(50) DEFAULT NULL,
  `Department` int(11) DEFAULT NULL,
  `PhysicalAddress` varchar(255) DEFAULT NULL,
  `PostalAddress` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Town` varchar(20) DEFAULT NULL,
  `Telephone` varchar(30) DEFAULT NULL,
  `County` int(11) DEFAULT NULL,
  `Country` int(11) DEFAULT NULL,
  `Partner` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `ContactTelephone` varchar(30) DEFAULT NULL,
  `additionalinfo` text,
  PRIMARY KEY (`ID`),
  KEY `Department` (`Department`),
  KEY `County` (`County`),
  CONSTRAINT `facility_ibfk_2` FOREIGN KEY (`County`) REFERENCES `rep_counties` (`CountyID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityplatform`
--

DROP TABLE IF EXISTS `facilityplatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilityplatform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) DEFAULT NULL,
  `PlatformID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PlatformID` (`PlatformID`),
  KEY `facilityplatform_ibfk_1` (`FacilityID`),
  CONSTRAINT `facilityplatform_ibfk_1` FOREIGN KEY (`FacilityID`) REFERENCES `participant` (`participant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `facilityplatform_ibfk_2` FOREIGN KEY (`PlatformID`) REFERENCES `vl_platform` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityplatform`
--

LOCK TABLES `facilityplatform` WRITE;
/*!40000 ALTER TABLE `facilityplatform` DISABLE KEYS */;
INSERT INTO `facilityplatform` VALUES (1,27,1),(2,27,2),(3,30,1),(4,30,2),(5,30,3),(6,30,4),(7,33,1),(8,33,2),(9,33,3),(10,33,4),(11,36,1),(12,36,2),(13,36,3),(14,38,2),(15,43,1),(16,43,2),(17,43,3),(18,44,2),(19,51,2),(20,51,3),(21,52,2),(22,54,3),(23,55,3);
/*!40000 ALTER TABLE `facilityplatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilityscheme`
--

DROP TABLE IF EXISTS `facilityscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilityscheme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FacilityID` int(11) DEFAULT NULL,
  `SchemeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SchemeID` (`SchemeID`),
  KEY `facilityscheme_ibfk_1` (`FacilityID`),
  CONSTRAINT `facilityscheme_ibfk_1` FOREIGN KEY (`FacilityID`) REFERENCES `participant` (`participant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `facilityscheme_ibfk_2` FOREIGN KEY (`SchemeID`) REFERENCES `vl_scheme` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilityscheme`
--

LOCK TABLES `facilityscheme` WRITE;
/*!40000 ALTER TABLE `facilityscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `facilityscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_config`
--

DROP TABLE IF EXISTS `global_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `global_config` (
  `name` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_config`
--

LOCK TABLES `global_config` WRITE;
/*!40000 ALTER TABLE `global_config` DISABLE KEYS */;
INSERT INTO `global_config` VALUES ('admin_email','eptmanager@gmail.com'),('custom_field_1',''),('custom_field_2',''),('custom_field_needed','no'),('pass_percentage','95'),('qc_access','no'),('response_after_evaluate','no'),('text_under_logo','Test Instance for Viral Load and Early Infant Diagnosis PT Schemes');
/*!40000 ALTER TABLE `global_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_banner`
--

DROP TABLE IF EXISTS `home_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_banner`
--

LOCK TABLES `home_banner` WRITE;
/*!40000 ALTER TABLE `home_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory_peer_means`
--

DROP TABLE IF EXISTS `laboratory_peer_means`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratory_peer_means` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipmentId` int(11) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `sampleId` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `laboratoryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory_peer_means`
--

LOCK TABLES `laboratory_peer_means` WRITE;
/*!40000 ALTER TABLE `laboratory_peer_means` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratory_peer_means` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_template`
--

DROP TABLE IF EXISTS `mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_template` (
  `mail_temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_purpose` varchar(255) NOT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `mail_from` varchar(255) DEFAULT NULL,
  `mail_cc` varchar(255) DEFAULT NULL,
  `mail_bcc` varchar(255) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_content` text,
  `mail_footer` text,
  PRIMARY KEY (`mail_temp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_template`
--

LOCK TABLES `mail_template` WRITE;
/*!40000 ALTER TABLE `mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfl_facility_codes`
--

DROP TABLE IF EXISTS `mfl_facility_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mfl_facility_codes` (
  `MflID` int(11) NOT NULL AUTO_INCREMENT,
  `MflCode` text,
  `Name` text,
  `Registration_number` text,
  `KephLevel` text,
  `FacilityType` text,
  `Owner` text,
  `Regulatory Body` text,
  `Beds` int(11) DEFAULT NULL,
  `Cots` int(11) DEFAULT NULL,
  `County` text,
  `Constituency` text,
  `Sub county` text,
  `Ward` text,
  `OperationStatus` text,
  `Open_whole_day` text,
  `Open_public_holidays` text,
  `Open_weekends` text,
  `Open_late_night` text,
  `Service_names` text,
  `Approved` text,
  `Public visible` text,
  `Closed` text,
  PRIMARY KEY (`MflID`)
) ENGINE=InnoDB AUTO_INCREMENT=8669 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfl_facility_codes`
--

LOCK TABLES `mfl_facility_codes` WRITE;
/*!40000 ALTER TABLE `mfl_facility_codes` DISABLE KEYS */;
INSERT INTO `mfl_facility_codes` VALUES (8094,'14039','Raruowa Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',28,0,'HOMA BAY','KARACHUONYO','karachuonyo','KIBIRI','Operational','No','No','No','No','','Yes','Yes','No'),(8095,'16338','Bindura Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',4,0,'UASIN GISHU','KESSES','kesses','TULWET/CHIYAT','Operational','No','No','No','No','','Yes','Yes','No'),(8096,'15666','St Teresa Olokirikirai Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',3,0,'NAROK','NAROK NORTH','narok north','OLORROPIL','Operational','No','No','No','No','','Yes','Yes','No'),(8097,'10446','Kambui (PCEA) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'KIAMBU','GITHUNGURI','githunguri','NGEWA','Operational','No','No','No','No','','Yes','Yes','No'),(8098,'14092','Sino Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',2,0,'HOMA BAY','KASIPUL','kasipul','EAST KAMAGAK','Operational','No','No','No','No','','Yes','Yes','No'),(8099,'13873','Nyagowa Elck Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'HOMA BAY','KASIPUL','kasipul','WEST KASIPUL','Operational','No','No','No','No','','Yes','Yes','No'),(8100,'16477','Badana Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'ISIOLO','ISIOLO SOUTH','garbatulla','SERICHO','Operational','No','No','Yes','No','','Yes','Yes','No'),(8101,'10219','Gathiruini (PCEA) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'KIAMBU','GITHUNGURI','githunguri','KOMOTHAI','Operational','No','No','No','No','','Yes','Yes','No'),(8102,'12659','Nguruki-Iruma Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'THARAKA-NITHI','MAARA','maara','MWIMBI','Operational','No','No','No','No','','Yes','Yes','No'),(8103,'10506','Karura (SDA) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'KIAMBU','KIAMBAA','kiambaa','NDENDERU','Operational','No','No','Yes','No','','Yes','Yes','No'),(8104,'11296','Daba (AIC) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',1,0,'TANA RIVER','GALOLE','GALOLE','WAYU','Operational','No','No','No','No','','Yes','Yes','No'),(8105,'14281','Cedar Medical Clinic (Kimana)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',4,0,'KAJIADO','KAJIADO SOUTH','loitokitok','KIMANA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8106,'14581','Isinet Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',4,0,'KAJIADO','KAJIADO SOUTH','loitokitok','KIMANA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8107,'14002','Othoro Health Centre (Rachuonyo)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'HOMA BAY','KABONDO KASIPUL','kabondo kasipul','KABONDO EAST','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8108,'11538','Magongo (MCM) Dispensary','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'MOMBASA','CHANGAMWE','changamwe','KIPEVU','Operational','No','No','No','No','','Yes','Yes','No'),(8109,'14911','Kipsaos Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','METKEI','Operational','No','No','No','No','','Yes','Yes','No'),(8110,'16666','Nyaitara Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',3,0,'MIGORI','KURIA EAST','kuria east sub county','NYABASI WEST','Operational','No','No','No','No','','Yes','Yes','No'),(8111,'14461','Enkirotet Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',4,0,'KAJIADO','KAJIADO SOUTH','loitokitok','ROMBO','Operational','No','No','Yes','No','','Yes','Yes','No'),(8112,'16462','Kariakomo Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'THARAKA-NITHI','MAARA','maara','GANGA','Operational','No','No','No','No','','Yes','Yes','No'),(8113,'10984','Rwanyambo Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'NYANDARUA','KINANGOP','kinangop','MAGUMU','Operational','No','No','No','No','','Yes','Yes','No'),(8114,'12579','Murambani Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'THARAKA-NITHI','MAARA','maara','MUTHAMBI','Operational','No','No','No','No','','Yes','Yes','No'),(8115,'14462','Enkitoria Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAROK','NAROK WEST','narok west','NAIKARRA','Operational','No','No','No','No','','Yes','Yes','No'),(8116,'15737','Torosei Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAJIADO','KAJIADO WEST','kajiado west','ILOODOKILANI','Operational','No','No','No','No','','Yes','Yes','No'),(8117,'16645','Makengi Dispensary (Maara)','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Kenya MPDB - Institution',0,0,'THARAKA-NITHI','MAARA','maara','MWIMBI','Operational','No','No','No','No','','Yes','Yes','No'),(8118,'15309','Napusimoru Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'TURKANA','TURKANA SOUTH','turkana south','LOKICHAR','Operational','No','No','No','No','','Yes','Yes','No'),(8119,'14239','Barsombe Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'UASIN GISHU','SOY','soy','SEGEROI/BARSOMBE','Operational','No','No','No','No','','Yes','Yes','No'),(8120,'11445','Kadaina Community Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'KILIFI','KILIFI NORTH','kilifi north','MATSANGONI','Operational','No','No','No','No','','Yes','Yes','No'),(8121,'14546','Helmon Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAJIADO','KAJIADO EAST','kajiado east','IMARORO','Operational','No','No','Yes','No','','Yes','Yes','No'),(8122,'14840','Kerol Health Services','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KERICHO','BURETI','bureti','KAPKATET','Operational','No','No','No','No','','Yes','Yes','No'),(8123,'15296','Namelok Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',20,4,'KAJIADO','KAJIADO SOUTH','loitokitok','KIMANA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8124,'14156','Ukwala Sub County Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',0,0,'SIAYA','UGENYA','ugenya','UKWALA','Operational','Yes','No','No','No','','Yes','Yes','No'),(8125,'10755','Mukeu (AIC) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'NYANDARUA','KINANGOP','kinangop','NYAKIO','Operational','No','No','No','No','','Yes','Yes','No'),(8126,'14360','Chepseon Health Care Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KERICHO','KIPKELION EAST','kipkelion east','CHEPSEON','Operational','No','No','No','No','','Yes','Yes','No'),(8127,'14815','Kataret Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BOMET','CHEPALUNGU','chepalungu','CHEBUNYO','Operational','No','No','No','No','','Yes','Yes','No'),(8128,'14757','Kapset Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BOMET','KONOIN','konoin','KIMULOT','Operational','No','No','No','No','','Yes','Yes','No'),(8129,'14740','Kaplomboi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Ministry of Health',12,0,'BOMET','SOTIK','sotik','NDANAI/ABOSI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8130,'14848','Kibagenge Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Kenya MPDB - Institution',0,0,'UASIN GISHU','SOY','soy','SEGEROI/BARSOMBE','Operational','No','No','No','No','','Yes','Yes','No'),(8131,'14915','Kipsigak Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',2,0,'UASIN GISHU','SOY','soy','ZIWA','Operational','No','No','No','No','','Yes','Yes','No'),(8132,'15751','Tumoi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BOMET','CHEPALUNGU','chepalungu','KONG\'ASIS','Operational','No','No','No','No','','Yes','Yes','No'),(8133,'14918','Kipsingei Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BOMET','SOTIK','sotik','NDANAI/ABOSI','Operational','No','No','No','No','','Yes','Yes','No'),(8134,'14948','Kitale Mobile Clinic','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'TRANS NZOIA','SABOTI','saboti','TUWANI','Operational','No','No','No','No','','Yes','Yes','No'),(8135,'14994','Kosikiria Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'TURKANA','TURKANA CENTRAL','turkana central','KERIO DELTA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8136,'15824','Bumala B Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',14,0,'BUSIA','BUTULA','butula','MARACHI NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8137,'15831','Busembe Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BUSIA','FUNYULA','samia','BWIRI','Operational','No','No','No','No','','Yes','Yes','No'),(8138,'15792','Akichelesit Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BUSIA','TESO NORTH','teso north','ANG\'URAI SOUTH','Operational','No','No','No','No','','Yes','Yes','No'),(8139,'16131','Sisenye Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BUSIA','BUDALANGI','bunyala','BUNYALA NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8140,'15555','Setano Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','SOY SOUTH','Operational','No','No','No','No','','Yes','Yes','No'),(8141,'14695','Kapcherop Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',32,0,'ELEGEYO-MARAKWET','MARAKWET WEST','marakwet west','SENGWER','Operational','No','No','No','No','','Yes','Yes','No'),(8142,'15658','St Michael Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',40,0,'ELEGEYO-MARAKWET','MARAKWET EAST','marakwet east','SAMBIRIR','Operational','No','No','No','No','','Yes','Yes','No'),(8143,'14274','Burnt Forest Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'UASIN GISHU','KESSES','kesses','TARAKWA','Operational','No','No','No','No','','Yes','Yes','No'),(8144,'14980','Koloch Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NANDI','ALDAI','aldai','KABWARENG','Operational','No','No','No','No','','Yes','Yes','No'),(8145,'14886','Kings Medical Centre (Delivarance) Nakuru','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'NAKURU','NAKURU TOWN EAST','nakuru east','BIASHARA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8146,'14502','Fountain Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'NAROK','NAROK NORTH','narok north','NKARETA','Operational','No','No','No','No','','Yes','Yes','No'),(8147,'15858','Chimoi Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Private Practice',18,3,'KAKAMEGA','MALAVA','malava','MANDA-SHIVANGA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8148,'13342','Galmagalla Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'GARISSA','FAFI','fafi','BURA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8149,'12039','Gitare Dispensary (Embu)','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'EMBU','RUNYENJES','runyenjes','CENTRAL  WARD','Operational','No','No','No','No','','Yes','Yes','No'),(8150,'13420','Police Line Dispensary (Garissa)','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'GARISSA','GARISSA TOWNSHIP','garissa','IFTIN','Operational','No','No','No','No','','Yes','Yes','No'),(8151,'10965','Royal Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'NYANDARUA','KINANGOP','kinangop','GATHARA','Operational','No','No','No','No','','Yes','Yes','No'),(8152,'14298','Chebitet Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Company Medical Service','Kenya MPDB - Private Practice',1,0,'BOMET','KONOIN','konoin','CHEPCHABAS','Operational','No','No','No','No','','Yes','Yes','No'),(8153,'12727','Samburu Complex','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',2,0,'ISIOLO','ISIOLO NORTH','isiolo','NGARE MARA','Operational','No','No','No','No','','Yes','Yes','No'),(8154,'13458','Young Muslim Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Supreme Council for Kenya Muslims','Ministry of Health',0,0,'GARISSA','GARISSA TOWNSHIP','garissa','IFTIN','Operational','No','No','No','No','','Yes','Yes','No'),(8155,'13336','Excel Health Services','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'GARISSA','GARISSA TOWNSHIP','garissa','GALBET','Operational','No','No','Yes','No','','Yes','Yes','No'),(8156,'13360','Handaro Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'GARISSA','IJARA','hulugho','SANGAILU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8157,'13459','Yumbis Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'GARISSA','FAFI','fafi','FAFI','Operational','No','No','No','No','','Yes','Yes','No'),(8158,'12513','Merti Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',2,0,'ISIOLO','ISIOLO NORTH','merti','CHERAB','Operational','No','No','No','No','','Yes','Yes','No'),(8159,'11960','Catholic Dispensary (Isiolo)','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',2,0,'ISIOLO','ISIOLO NORTH','isiolo','WABERA','Operational','No','No','No','No','','Yes','Yes','No'),(8160,'11274','Chaani (MCM) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'MOMBASA','CHANGAMWE','changamwe','CHAANI','Operational','No','No','No','No','','Yes','Yes','No'),(8161,'15948','Kimalewa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',11,0,'BUNGOMA','KABUCHAI','kabuchai','MUKUYUNI','Operational','Yes','No','No','No','','Yes','Yes','No'),(8162,'16175','Muthithi (PCEA) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'MURANG\'A','KIGUMO','kigumo','MUTHITHI','Operational','No','No','No','No','','Yes','Yes','No'),(8163,'10692','Mariira Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'MURANG\'A','KIGUMO','kigumo','KANGARI','Operational','No','No','No','No','','Yes','Yes','No'),(8164,'15911','Kabuchai Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',13,0,'BUNGOMA','KABUCHAI','kabuchai','WEST NALONDO','Operational','Yes','No','No','No','','Yes','Yes','No'),(8165,'16063','Nalondo Cbm Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',2,0,'BUNGOMA','KABUCHAI','kabuchai','KABUCHAI/CHWELE','Operational','No','No','No','No','','Yes','Yes','No'),(8166,'16081','Ngalasia Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',2,0,'BUNGOMA','KABUCHAI','kabuchai','WEST NALONDO','Operational','No','No','No','No','','Yes','Yes','No'),(8167,'14947','Kitale  County Refferal  Hospital','None','Level 5','Secondary care hospitals','Ministry of Health','Ministry of Health',250,12,'TRANS NZOIA','KIMININI','kiminini','HOSPITAL','Operational','Yes','Yes','Yes','Yes','','Yes','Yes','No'),(8168,'10312','Heni Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'NYANDARUA','KINANGOP','kinangop','GITHABAI','Operational','No','No','No','No','','Yes','Yes','No'),(8169,'14358','Chepsaita Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'UASIN GISHU','TURBO','turbo','NGENYILEL','Operational','No','No','No','No','','Yes','Yes','No'),(8170,'15314','Nasolot Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'WEST POKOT','SIGOR','pokot central','SEKERR','Operational','No','No','No','No','','Yes','Yes','No'),(8171,'15636','St Elizabeth Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',12,12,'NAROK','NAROK SOUTH','narok south','MAJI MOTO/NAROOSURA','Operational','No','No','No','No','','Yes','Yes','No'),(8172,'15414','Olmekenyu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'NAROK','NAROK SOUTH','narok south','MELELO','Operational','No','No','No','No','','Yes','Yes','No'),(8173,'15348','Ngito Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',8,1,'NAROK','NAROK WEST','narok west','ILMOTIOOK','Operational','No','No','No','No','','Yes','Yes','No'),(8174,'15526','Sancta Maria Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','NGONG','Operational','No','No','Yes','No','','Yes','Yes','No'),(8175,'15787','Zam Zam Medical Services','None','Level 3','Basic primary health care facility','Non-Governmental Organizations','Other',4,0,'KAJIADO','KAJIADO NORTH','kajiado north','NGONG','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8176,'12684','Nyambene District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',80,8,'MERU','IGEMBE SOUTH','igembe south','MAUA','Operational','Yes','No','No','No','','Yes','Yes','No'),(8177,'15128','Mararianta Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAROK','NAROK WEST','narok west','MARA','Operational','No','No','No','No','','Yes','Yes','No'),(8178,'13069','Maringo Clinic','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'NAIROBI','MAKADARA','makadara','MARINGO/HAMZA','Operational','No','No','No','No','','Yes','Yes','No'),(8179,'16169','Lady Northey Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Kenya MPDB - Institution',0,0,'NAIROBI','DAGORETTI NORTH','dagoretti north','KILIMANI','Operational','No','No','No','No','','Yes','Yes','No'),(8180,'12444','Magundu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'THARAKA-NITHI','MAARA','maara','MITHERU','Operational','No','No','No','No','','Yes','Yes','No'),(8181,'16384','Our Lady of Mercy (Magumu)','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'NYANDARUA','KINANGOP','kinangop','MAGUMU','Operational','No','No','No','No','','Yes','Yes','No'),(8182,'16112','Shikusa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,0,'KAKAMEGA','SHINYALU','shinyalu','ISUKHA NORTH','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8183,'15130','Marich Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'WEST POKOT','SIGOR','pokot central','WEI WEI','Operational','No','No','No','No','','Yes','Yes','No'),(8184,'15369','Nturumeti Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAROK','NAROK EAST','narok east','MOSIRO','Operational','No','No','No','No','','Yes','Yes','No'),(8185,'15938','Khumsalaba Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KAKAMEGA','KHWISERO','khwisero','KISA CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8186,'16045','Munyanza Nursing Home','None','Level 3','Basic primary health care facility','Private Practice - Nurse / Midwifery','Kenya MPDB - Institution',10,0,'KAKAMEGA','KHWISERO','khwisero','KISA CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8187,'16033','Mulwanda Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','KHWISERO','khwisero','KISA CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8188,'16718','Shimuli Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','SHINYALU','shinyalu','ISUKHA EAST','Operational','No','No','No','No','','Yes','Yes','No'),(8189,'16143','St Pauline Nursing Home and Marternity','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Ministry of Health',10,0,'KAKAMEGA','SHINYALU','shinyalu','ISUKHA CENTRAL','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8190,'16040','Mundoli Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',8,0,'KAKAMEGA','KHWISERO','khwisero','KISA CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8191,'14986','Kongoni Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'LAIKIPIA','LAIKIPIA NORTH','laikipia east','UMANDE','Operational','No','No','No','No','','Yes','Yes','No'),(8192,'15697','Tabuga (PCEA) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'NAKURU','BAHATI','nakuru north','DUNDORI','Operational','No','No','No','No','','Yes','Yes','No'),(8193,'16056','Mwasi Med Clinc','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Nursing Council of Kenya (Private Practice)',4,0,'KAKAMEGA','NAVAKHOLO','navakholo','BUNYALA CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8194,'15134','Marie Stopes Clinic (Kitale)','None','Level 2','Dispensaries and clinic-out patient only','Non-Governmental Organizations','Other',0,0,'TRANS NZOIA','SABOTI','saboti','MATISI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8195,'15237','Mpata Club Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'NAROK','KILGORIS','transmara west','KIMINTET','Operational','No','No','No','No','','Yes','Yes','No'),(8196,'15397','Olendeem Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAROK','NAROK NORTH','narok north','MELILI','Operational','No','No','No','No','','Yes','Yes','No'),(8197,'16058','Mwihila Mission Hospital','None','Level 3','Primary care hospitals','Other Faith Based','Kenya MPDB - Institution',20,1,'KAKAMEGA','KHWISERO','khwisero','KISA NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8198,'16675','Toror Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'ELEGEYO-MARAKWET','KEIYO NORTH','keiyo north','KAMARINY','Operational','No','No','No','No','','Yes','Yes','No'),(8199,'14719','Kapkitony Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','KABIEMIT','Operational','No','No','No','No','','Yes','Yes','No'),(8200,'14365','Cheptabes Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'BOMET','KONOIN','konoin','EMBOMOS','Operational','No','No','No','No','','Yes','Yes','No'),(8201,'16016','Mihuu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Public Institution','Ministry of Health',0,0,'BUNGOMA','WEBUYE EAST','webuye east','MARAKA','Operational','No','No','No','No','','Yes','Yes','No'),(8202,'16125','Sikulu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BUNGOMA','KABUCHAI','kabuchai','MUKUYUNI','Operational','No','No','No','No','','Yes','Yes','No'),(8203,'10674','Makuyu Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,1,'MURANG\'A','MARAGWA','maragwa','MAKUYU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8204,'15779','West Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Other',30,0,'UASIN GISHU','TURBO','turbo','HURUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8205,'10687','Maragua Ridge Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,1,'MURANG\'A','MARAGWA','maragwa','KAMBITI','Operational','No','No','No','No','','Yes','Yes','No'),(8206,'11650','Mpinzinyi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,1,'TAITA TAVETA','MWATATE','mwatate','WUSI/KISHAMBA','Operational','No','No','No','No','','Yes','Yes','No'),(8207,'10112','Don Bosco Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'MURANG\'A','MARAGWA','maragwa','KIMORORI/WEMPA','Operational','No','No','No','No','','Yes','Yes','No'),(8208,'10969','Ruchu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'MURANG\'A','KANDARA','kandara','ITHIRU','Operational','No','No','No','No','','Yes','Yes','No'),(8209,'14590','Jamii Clinical Services','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'WEST POKOT','KAPENGURIA','west pokot','MNAGEI','Operational','No','No','No','No','','Yes','Yes','No'),(8210,'15276','Naikara Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAROK','NAROK WEST','narok west','NAIKARRA','Operational','No','No','No','No','','Yes','Yes','No'),(8211,'15278','Nairasirasa Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',3,1,'NAROK','NAROK NORTH','narok north','NAROK TOWN','Operational','No','No','No','No','','Yes','Yes','No'),(8212,'15762','ASN Upendo Village Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'NAKURU','NAIVASHA','naivasha','HELLSGATE','Operational','No','No','No','No','','Yes','Yes','No'),(8213,'15983','Mabusi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',7,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','No','No','No','No','','Yes','Yes','No'),(8214,'14602','June Mar Maternity and Medical Centre','None','Level 2','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','NGONG','Operational','No','No','No','No','','Yes','Yes','No'),(8215,'16170','Sabasaba Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'MURANG\'A','MARAGWA','maragwa','KAMAHUHA','Operational','No','No','No','No','','Yes','Yes','No'),(8216,'14277','Bwena Dipensary','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'WEST POKOT','KAPENGURIA','west pokot','MNAGEI','Operational','No','No','No','No','','Yes','Yes','No'),(8217,'14391','Chumvi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'LAIKIPIA','LAIKIPIA NORTH','laikipia north','MUGOGODO EAST','Operational','No','No','No','No','','Yes','Yes','No'),(8218,'14896','Kipkelion (CHFC) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KERICHO','KIPKELION WEST','kipkelion west','KIPKELION','Operational','No','No','No','No','','Yes','Yes','No'),(8219,'15882','Eshikhuyu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',4,0,'KAKAMEGA','LURAMBI','lurambi','BUTSOTSO CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8220,'14403','Diguna Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NANDI','TINDERET','tinderet','TINDERET','Operational','No','No','No','No','','Yes','Yes','No'),(8221,'13526','Chinato Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'MIGORI','KURIA EAST','kuria east sub county','NYABASI WEST','Operational','Yes','No','No','No','','Yes','Yes','No'),(8222,'15957','St Charles Lwanga Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',9,0,'KAKAMEGA','LUGARI','lugari','CHEKALINI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8223,'14357','Cheppemma (AIC) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAKURU','RONGAI','rongai','SOIN','Operational','No','No','No','No','','Yes','Yes','No'),(8224,'14771','Kaptabuk Dispensary (Marakwet)','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'ELEGEYO-MARAKWET','MARAKWET WEST','marakwet west','KAPSOWAR','Operational','No','No','No','No','','Yes','Yes','No'),(8225,'15984','Machwele Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BUNGOMA','BUMULA','bumula','WEST BUKUSU','Operational','No','No','No','No','','Yes','Yes','No'),(8226,'11683','Mwakirunge Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'MOMBASA','KISAUNI','kisauni','MWAKIRUNGE','Operational','No','No','No','No','','Yes','Yes','No'),(8227,'13104','Muthurwa Clinic','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'NAIROBI','MAKADARA','makadara','MAKONGENI','Operational','No','No','No','No','','Yes','Yes','No'),(8228,'15521','Salawa Catholic Mission Dispensary PHC','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Other',0,0,'BARINGO','BARINGO CENTRAL','baringo central','KABARNET','Operational','No','No','No','No','','Yes','Yes','No'),(8229,'15137','Marigat Catholic Mission','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',6,0,'BARINGO','BARINGO SOUTH','marigat','MARIGAT','Operational','No','No','No','No','','Yes','Yes','No'),(8230,'14215','Arroket Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',2,0,'BOMET','SOTIK','sotik','RONGENA/MANARET','Operational','No','No','Yes','No','','Yes','Yes','No'),(8231,'15422','Ololpironito Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',3,0,'NAROK','NAROK EAST','narok east','ILDAMAT','Operational','No','No','No','No','','Yes','Yes','No'),(8232,'10865','Ngewa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,6,'KIAMBU','GITHUNGURI','githunguri','NGEWA','Operational','No','No','No','No','','Yes','Yes','No'),(8233,'10507','Karuri Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',18,1,'KIAMBU','KIAMBAA','kiambaa','KARURI','Operational','No','No','No','No','','Yes','Yes','No'),(8234,'10493','Karia Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'KIAMBU','GITHUNGURI','githunguri','IKINU','Operational','No','No','No','No','','Yes','Yes','No'),(8235,'10263','Githiga Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,0,'KIAMBU','GITHUNGURI','githunguri','GITHIGA','Operational','No','No','No','No','','Yes','Yes','No'),(8236,'11908','Wundanyi Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',16,2,'TAITA TAVETA','WUNDANYI','wundanyi','WUNDANYI/MBALE','Operational','No','No','No','No','','Yes','Yes','No'),(8237,'11764','Sagala Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,1,'TAITA TAVETA','VOI','voi','SAGALA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8238,'11995','Ekalakala Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,5,'MACHAKOS','MASINGA','masinga','EKALAKALA','Operational','No','No','No','No','','Yes','Yes','No'),(8239,'11718','Njukini Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',7,0,'TAITA TAVETA','TAVETA','taveta','CHALA','Operational','No','No','No','No','','Yes','Yes','No'),(8240,'13316','Dadaab Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',25,4,'GARISSA','DAADAB','dadaab','DADAAB','Operational','No','No','No','No','','Yes','Yes','No'),(8241,'11720','Nyache Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',15,1,'TAITA TAVETA','WUNDANYI','wundanyi','WUMINGU/KISHUSHE','Operational','No','No','No','No','','Yes','Yes','No'),(8242,'11589','Mbale Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'TAITA TAVETA','WUNDANYI','wundanyi','WUNDANYI/MBALE','Operational','Yes','No','No','No','','Yes','Yes','No'),(8243,'12375','Kivaa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',32,4,'MACHAKOS','MASINGA','masinga','KIVAA','Operational','No','No','No','No','','Yes','Yes','No'),(8244,'12589','Muthambi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,2,'THARAKA-NITHI','MAARA','maara','MUTHAMBI','Operational','No','No','No','No','','Yes','Yes','No'),(8245,'11839','Tausa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',2,0,'TAITA TAVETA','VOI','voi','MBOLOLO','Operational','No','No','No','No','','Yes','Yes','No'),(8246,'15166','Medical Reception Service - Ist Kr','None','Level 2','Basic primary health care facility','Armed Forces','Other',10,0,'LAIKIPIA','LAIKIPIA EAST','laikipia east','NANYUKI','Operational','No','No','No','No','','Yes','Yes','No'),(8247,'10588','Kigumo Sub County Hospital (Kigumo)','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',6,1,'MURANG\'A','KIGUMO','kigumo','KIGUMO','Operational','No','No','No','No','','Yes','Yes','No'),(8248,'10587','Kigumo Health Centre (Kiambu East)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,0,'KIAMBU','GITHUNGURI','githunguri','KOMOTHAI','Operational','No','No','No','No','','Yes','Yes','No'),(8249,'12476','Masinga Sub County Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',24,8,'MACHAKOS','MASINGA','masinga','MASINGA CENTRAL','Operational','Yes','Yes','Yes','No','','Yes','Yes','No'),(8250,'15421','Olokyin Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',9,0,'BOMET','BOMET EAST','bomet east','KIPRERES','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8251,'15551','Serewo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'WEST POKOT','KAPENGURIA','west pokot','RIWO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8252,'14613','Kabianga Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,2,'KERICHO','BELGUT','belgut','KABIANGA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8253,'14623','Kabiyet Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',15,2,'NANDI','MOSOP','mosop','KABIYET','Operational','No','No','No','No','','Yes','Yes','No'),(8254,'13788','Matare Mission Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',2,0,'MIGORI','KURIA EAST','kuria east sub county','NTIMARU WEST','Operational','No','No','No','No','','Yes','Yes','No'),(8255,'15605','Sogoo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,12,'NAROK','NAROK SOUTH','narok south','SOGOO','Operational','No','No','No','No','','Yes','Yes','No'),(8256,'14734','Kaplamai Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'TRANS NZOIA','CHERANGANY','cherangany','KAPLAMAI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8257,'15200','Mogotio Rhdc','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,7,'NAKURU','RONGAI','rongai','SOIN','Operational','No','No','No','No','','Yes','Yes','No'),(8258,'13939','Jaramogi Oginga Odinga Teaching  Referral Hospital','None','Level 5','Comprehensive Teaching &Referral','Ministry of Health','Ministry of Health',457,0,'KISUMU','KISUMU CENTRAL','kisumu central','SHAURI MOYO KALOLENI','Operational','Yes','Yes','Yes','Yes','','Yes','Yes','No'),(8259,'14615','Kabichbich Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,2,'WEST POKOT','POKOT SOUTH','pokot south','LELAN','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8260,'14841','Kesses Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'UASIN GISHU','KESSES','kesses','TULWET/CHIYAT','Operational','No','No','No','No','','Yes','Yes','No'),(8261,'15495','Rongai Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,4,'NAKURU','RONGAI','rongai','VISOI','Operational','No','No','No','No','','Yes','Yes','No'),(8262,'15516','Sakutiek Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,0,'NAROK','NAROK NORTH','narok north','MELILI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8263,'15601','Soba River Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',3,0,'NANDI','TINDERET','tinderet','SONGHOR/SOBA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8264,'14779','Kapteldon Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',6,0,'UASIN GISHU','KAPSERET','kapseret','SIMAT/KAPSERET','Operational','No','No','No','No','','Yes','Yes','No'),(8265,'15498','Roret Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',24,0,'KERICHO','BURETI','bureti','KISIARA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8266,'15229','Mosoriot Rural Health Training Centre','None','Level 3','Comprehensive primary health care facility','Ministry of Health','Ministry of Health',15,2,'NANDI','CHESUMEI','chesumei','LELMOKO/NGECHEK','Operational','Yes','Yes','Yes','Yes','','Yes','Yes','No'),(8267,'14728','Kapkoros Sub-County Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',12,0,'BOMET','BOMET CENTRAL','bomet central','CHESOEN','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8268,'14781','Kapteren Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'ELEGEYO-MARAKWET','KEIYO NORTH','keiyo north','KAMARINY','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8269,'15953','Kolanya Salvation Army Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Private Practice',0,0,'BUSIA','TESO NORTH','teso north','ANG\'URAI SOUTH','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8270,'16547','Kinondo Kwetu Community Clinic','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Kenya MPDB - Institution',0,0,'KWALE','MSAMBWENI','msambweni','KINONDO','Operational','No','No','No','No','','Yes','Yes','No'),(8271,'15587','Siongiroi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,0,'BOMET','CHEPALUNGU','chepalungu','SIONGIROI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8272,'14998','Kuikui Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',8,0,'BARINGO','BARINGO NORTH','baringo north','BARWESSA','Operational','No','No','No','No','','Yes','Yes','No'),(8273,'15522','Salawa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,1,'BARINGO','BARINGO CENTRAL','baringo central','KABARNET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8274,'15197','Mogorwa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'BARINGO','BARINGO CENTRAL','baringo central','TENGES','Operational','No','No','No','No','','Yes','Yes','No'),(8275,'15549','Seretunin Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',5,0,'BARINGO','BARINGO CENTRAL','baringo central','EWALEL/CHAPCHAP','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8276,'14677','Kampi Samaki Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',3,0,'BARINGO','BARINGO SOUTH','marigat','IICHAMUS','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8277,'11243','Baobab Clinic - Bamburi Cement','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'MOMBASA','NYALI','nyali','FRERE TOWN','Operational','No','No','No','No','','Yes','Yes','No'),(8278,'15106','Maiela Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,4,'NAKURU','NAIVASHA','naivasha','MAEILLA','Operational','No','No','No','No','','Yes','Yes','No'),(8279,'14611','Kabazi Sub-District Hospital','None','Level 3','Primary care hospitals','Ministry of Health','Ministry of Health',6,2,'NAKURU','SUBUKIA','subukia','KABAZI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8280,'16103','Serem Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',15,5,'VIHIGA','HAMISI','hamisi','BANJA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8281,'14442','Emarti Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',18,3,'NAROK','KILGORIS','transmara west','KIMINTET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8282,'11592','Mbuta Model Health Centre','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',4,0,'MOMBASA','LIKONI','likoni','TIMBWANI','Operational','Yes','No','No','No','','Yes','Yes','No'),(8283,'15753','Turbo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'UASIN GISHU','TURBO','turbo','TAPSAGOI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8284,'15747','Tulwet Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'TRANS NZOIA','KIMININI','kiminini','WAITALUK','Operational','No','No','No','No','','Yes','Yes','No'),(8285,'15692','Suwerwa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,0,'TRANS NZOIA','CHERANGANY','cherangany','CHERANGANY/SUWERWA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8286,'15678','Subukia SDH','None','Level 3','Primary care hospitals','Ministry of Health','Ministry of Health',12,2,'NAKURU','SUBUKIA','subukia','SUBUKIA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8287,'15617','Sosiot Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',26,2,'KERICHO','BELGUT','belgut','WALDAI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8288,'15616','Sosiani Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'UASIN GISHU','TURBO','turbo','KAMAGUT','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8289,'15114','Maji Tamu Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'NAKURU','RONGAI','rongai','SOLAI','Operational','No','No','No','No','','Yes','Yes','No'),(8290,'14965','Koilot Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'NANDI','NANDI HILLS','nandi east','KAPCHORUA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8291,'12912','Dandora II Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,1,'NAIROBI','EMBAKASI NORTH','embakasi north','DANDORA AREA I','Operational','No','No','No','No','','Yes','Yes','No'),(8292,'15019','Lelboinet Health Centre (Keiyo)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,1,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','CHEPKORIO','Operational','No','No','No','No','','Yes','Yes','No'),(8293,'15798','Amukura Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'BUSIA','TESO SOUTH','teso south','AMUKURA EAST','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8294,'15825','Bumula Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',51,0,'BUNGOMA','BUMULA','bumula','BUMULA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8295,'15800','Angurai Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'BUSIA','TESO NORTH','teso north','ANG\'URAI NORTH','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8296,'15619','Sotik Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,0,'BOMET','SOTIK','sotik','CHEMAGEL','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8297,'15714','Tegat Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'BOMET','BOMET EAST','bomet east','KEMBU','Operational','No','No','No','No','','Yes','Yes','No'),(8298,'15735','Torongo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',9,0,'BARINGO','ELDAMA RAVINE','koibatek','LEMBUS KWEN','Operational','No','No','No','No','','Yes','Yes','No'),(8299,'14477','Esageri Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'BARINGO','ELDAMA RAVINE','koibatek','KOIBATEK','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8300,'15799','Amukura Mission Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Ministry of Health',28,0,'BUSIA','TESO SOUTH','teso south','AMUKURA EAST','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8301,'10171','Engineer District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',6,0,'NYANDARUA','KINANGOP','kinangop','GATHARA','Operational','No','No','No','No','','Yes','Yes','No'),(8302,'14424','Dundori Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,2,'NAKURU','BAHATI','nakuru north','DUNDORI','Operational','No','No','No','No','','Yes','Yes','No'),(8303,'15312','Naroosura Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',11,2,'NAROK','NAROK SOUTH','narok south','MAJI MOTO/NAROOSURA','Operational','No','No','No','No','','Yes','Yes','No'),(8304,'15763','Upper Solai Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,4,'NAKURU','SUBUKIA','subukia','KABAZI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8305,'14610','Kabatini Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,2,'NAKURU','BAHATI','nakuru north','KABATINI','Operational','No','No','No','No','','Yes','Yes','No'),(8306,'14453','Enabelbel Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',9,3,'NAROK','NAROK NORTH','narok north','OLORROPIL','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8307,'15362','Nkararo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'NAROK','KILGORIS','transmara west','LOLGORIAN','Operational','No','No','Yes','No','','Yes','Yes','No'),(8308,'14997','Koyo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',14,0,'NANDI','ALDAI','aldai','KOYO/NDURIO','Operational','No','No','No','No','','Yes','Yes','No'),(8309,'16018','Milo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'BUNGOMA','WEBUTE WEST','webuye west','SITIKHO','Operational','No','No','No','No','','Yes','Yes','No'),(8310,'15277','Nairagie-Enkare Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,0,'NAROK','NAROK EAST','narok east','KEEKONYOKIE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8311,'15208','Moi\'s Bridge Catholic','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Ministry of Health',0,0,'UASIN GISHU','SOY','soy','MOI\'S BRIDGE','Operational','No','No','No','No','','Yes','Yes','No'),(8312,'14893','Kipkabus Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'UASIN GISHU','AINABKOI','ainabkoi','AINABKOI/OLARE','Operational','No','No','No','No','','Yes','Yes','No'),(8313,'15205','Moi University Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'UASIN GISHU','KESSES','kesses','TULWET/CHIYAT','Operational','No','No','No','No','','Yes','Yes','No'),(8314,'15805','Banja Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,0,'VIHIGA','HAMISI','hamisi','BANJA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8315,'14935','Kipwastuiyo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',15,3,'KERICHO','BURETI','bureti','LITEIN','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8316,'15859','Chombeli Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MALAVA','malava','SHIRUNGU-MUGAI','Operational','No','No','No','No','','Yes','Yes','No'),(8317,'15238','Msekekwa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,2,'ELEGEYO-MARAKWET','KEIYO NORTH','keiyo north','KAPCHEMUTWA','Operational','No','No','No','No','','Yes','Yes','No'),(8318,'14920','Kipsonoi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,0,'BOMET','SOTIK','sotik','KAPLETUNDO','Operational','No','No','Yes','No','','Yes','Yes','No'),(8319,'15388','Olbutyo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',9,0,'BOMET','CHEPALUNGU','chepalungu','KONG\'ASIS','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8320,'14580','Irwaga Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',24,0,'BOMET','BOMET EAST','bomet east','MERIGI','Operational','No','No','No','No','','Yes','Yes','No'),(8321,'15195','Mogogosiek Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'BOMET','KONOIN','konoin','MOGOGOSIEK','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8322,'14970','Koiwa Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',24,3,'BOMET','KONOIN','konoin','EMBOMOS','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8323,'14923','Kiptagich Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,1,'BARINGO','BARINGO CENTRAL','baringo central','SACHO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8324,'14953','Kituro Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,0,'BARINGO','BARINGO CENTRAL','baringo central','EWALEL/CHAPCHAP','Operational','No','No','No','No','','Yes','Yes','No'),(8325,'14867','Kimalel Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',17,0,'BARINGO','BARINGO SOUTH','marigat','MARIGAT','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8326,'14446','Emining Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,2,'BARINGO','MOGOTIO','mogotio','EMINING','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8327,'15285','Nakurio Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'TURKANA','TURKANA CENTRAL','turkana central','KERIO DELTA','Operational','No','No','No','No','','Yes','Yes','No'),(8328,'14940','Kisanana Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,0,'BARINGO','MOGOTIO','mogotio','KISANANA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8329,'10887','North Kinangop Catholic Hospital','None','Level 4','Primary care hospitals','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',186,22,'NYANDARUA','KINANGOP','kinangop','GATHARA','Operational','No','No','No','No','','Yes','Yes','No'),(8330,'14550','Holy Trinity Health Centre (Mai Mahiu)','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',5,2,'NAKURU','NAIVASHA','naivasha','OLKARIA','Operational','No','No','No','No','','Yes','Yes','No'),(8331,'15447','Oserian Health Centre','None','Level 3','Basic primary health care facility','Company Medical Service','Kenya MPDB - Institution',8,0,'NAKURU','NAIVASHA','naivasha','OLKARIA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8332,'15136','Marie Stopes Health Centre (Kericho)','None','Level 3','Basic primary health care facility','Non-Governmental Organizations','Other',0,0,'KERICHO','AINAMOI','ainamoi','KIPCHEBOR','Operational','No','No','No','No','','Yes','Yes','No'),(8333,'14205','Angata Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'NAROK','KILGORIS','transmara west','ANGATA BARIKOI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8334,'16025','Mt Elgon Sub County Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',31,0,'BUNGOMA','MT. ELGON','mt elgon','ELGON','Operational','Yes','Yes','Yes','Yes','','Yes','Yes','No'),(8335,'14379','Cherangany Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',20,0,'TRANS NZOIA','CHERANGANY','cherangany','MOTOSIET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8336,'14338','Chepkemel Health Centre (Kericho)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,2,'KERICHO','SIGOWET/SOIN','sigowet/soin','KAPLELARTET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8337,'14315','Chemase Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,2,'NANDI','TINDERET','tinderet','CHEMELIL/CHEMASE','Operational','No','No','No','No','','Yes','Yes','No'),(8338,'14339','Chepkemel Health Centre (Mosop)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'NANDI','MOSOP','mosop','KIPKAREN','Operational','No','No','No','No','','Yes','Yes','No'),(8339,'14192','Ainamoi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',24,3,'KERICHO','AINAMOI','ainamoi','AINAMOI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8340,'14501','Forttenan Sub District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',18,0,'KERICHO','KIPKELION WEST','kipkelion west','CHILCHILA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8341,'15406','Ol-Jorai Dispensary','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,0,'NAKURU','GILGIL','gilgil','MBARUK/EBURU','Operational','No','No','No','No','','Yes','Yes','No'),(8342,'15325','Ndindika Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',17,0,'LAIKIPIA','LAIKIPIA WEST','laikipia west','GITHIGA','Operational','No','No','No','No','','Yes','Yes','No'),(8343,'15339','Ngarua Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',11,0,'LAIKIPIA','LAIKIPIA WEST','laikipia west','MARMANET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8344,'14555','Huruma District Hospital','None','Level 3','Secondary care hospitals','Ministry of Health','Ministry of Health',4,0,'UASIN GISHU','TURBO','turbo','HURUMA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8345,'10520','Kerugoya District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',276,47,'KIRINYAGA','KIRINYAGA CENTRAL','kirinyaga central','KERUGOYA','Operational','No','No','No','No','','Yes','Yes','No'),(8346,'14346','Chepkorio Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,2,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','CHEPKORIO','Operational','No','No','No','No','','Yes','Yes','No'),(8347,'15260','Muskut Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,1,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','SOY NORTH','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8348,'14261','Bomet Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'BOMET','BOMET EAST','bomet east','MERIGI','Operational','No','No','No','No','','Yes','Yes','No'),(8349,'14289','Chebangang Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',19,0,'BOMET','KONOIN','konoin','BOITO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8350,'14243','Barwessa Health Centre','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',5,0,'BARINGO','BARINGO NORTH','baringo north','BARWESSA','Operational','No','No','No','No','','Yes','Yes','No'),(8351,'10786','Murungaru Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,0,'NYANDARUA','KINANGOP','kinangop','MURUNGARU','Operational','No','No','No','No','','Yes','Yes','No'),(8352,'15319','Ndalat (PCEA) Health Centre','None','Level 2','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',12,2,'NANDI','MOSOP','mosop','NDALAT','Operational','No','No','No','No','','Yes','Yes','No'),(8353,'10332','Ichagaki (Mission) Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'MURANG\'A','MARAGWA','maragwa','ICHAGAKI','Operational','No','No','No','No','','Yes','Yes','No'),(8354,'16350','Ainabkoi (RCEA) Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Kenya MPDB - Institution',2,0,'UASIN GISHU','AINABKOI','ainabkoi','AINABKOI/OLARE','Operational','No','No','No','No','','Yes','Yes','No'),(8355,'10454','Kamung\'ang\'a (ACK) Dispensary','None','Level 3','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',16,0,'MURANG\'A','KIGUMO','kigumo','KINYONA','Operational','No','No','No','No','','Yes','Yes','No'),(8356,'10641','Kiumbu Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',10,0,'KIRINYAGA','MWEA','kirinyaga south','TEBERE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8357,'16720','Kimng\'oror (ACK) Health Centre','None','Level 2','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',10,0,'NANDI','MOSOP','mosop','KURGUNG/SURUNGAI','Operational','No','No','No','No','','Yes','Yes','No'),(8358,'15292','Nakwamoru Health Centre','None','Level 2','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',40,4,'TURKANA','TURKANA SOUTH','turkana south','KAPUTIR','Operational','No','No','No','No','','Yes','Yes','No'),(8359,'14822','Kebeneti (SDA) Health Centre','None','Level 3','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',4,2,'KERICHO','SIGOWET/SOIN','sigowet/soin','SIGOWET','Operational','No','No','No','No','','Yes','Yes','No'),(8360,'14624','Kabobo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Kenya MPDB - Institution',37,0,'UASIN GISHU','SOY','soy','SOY','Operational','No','No','No','No','','Yes','Yes','No'),(8361,'12774','St Theresa Thatha Mission Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',2,2,'MACHAKOS','MASINGA','masinga','KIVAA','Operational','No','No','No','No','','Yes','Yes','No'),(8362,'15057','Lokichar (RCEA) Health Centre','None','Level 3','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',22,2,'TURKANA','TURKANA SOUTH','turkana south','LOKICHAR','Operational','No','No','No','No','','Yes','Yes','No'),(8363,'14960','Kobujoi Mission Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',36,5,'NANDI','ALDAI','aldai','KOBUJOI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8364,'14478','Esther Memorial Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',12,2,'NAKURU','BAHATI','nakuru north','KIAMAINA','Operational','No','No','No','No','','Yes','Yes','No'),(8365,'14212','Archers Post Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Private Practice',30,0,'SAMBURU','SAMBURU EAST','samburu east','WASO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8366,'11587','Mazumalume Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KWALE','MATUGA','matuga','TSIMBA GOLINI','Operational','No','No','No','No','','Yes','Yes','No'),(8367,'14640','Kaiboi Mission Health Centre','None','Level 2','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',30,2,'NANDI','MOSOP','mosop','KURGUNG/SURUNGAI','Operational','No','No','No','No','','Yes','Yes','No'),(8368,'15209','Moi\'s Bridge Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',22,0,'UASIN GISHU','SOY','soy','MOI\'S BRIDGE','Operational','No','No','No','No','','Yes','Yes','No'),(8369,'13389','Kutulo Health Centre (Wajir East)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',3,0,'WAJIR','TARBAJ','tarbaj','WARGADUD','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8370,'14545','Hekima Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'NAKURU','NAKURU TOWN EAST','nakuru east','KIVUMBUNI','Operational','No','No','No','No','','Yes','Yes','No'),(8371,'15623','Soy Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Kenya MPDB - Institution',18,0,'UASIN GISHU','SOY','soy','SOY','Operational','No','No','No','No','','Yes','Yes','No'),(8372,'15353','Ngubereti Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',14,1,'BARINGO','MOGOTIO','mogotio','MOGOTIO','Operational','No','No','No','No','','Yes','Yes','No'),(8373,'16145','St Pius Musoli Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',19,5,'KAKAMEGA','IKOLOMANI','ikolomani','IDAKHO CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8374,'14394','Cmf Aitong Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',12,0,'NAROK','NAROK WEST','narok west','MARA','Operational','No','No','No','No','','Yes','Yes','No'),(8375,'10877','Njabini Maternity and Nursing Home','None','Level 2','Basic primary health care facility','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'NYANDARUA','KINANGOP','kinangop','NJABANI/KIBURU','Operational','No','No','No','No','','Yes','Yes','No'),(8376,'14500','Flourspar Health Centre','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',13,1,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','SOY SOUTH','Operational','No','No','No','No','','Yes','Yes','No'),(8377,'14628','Kaboson Health Centre','None','Level 3','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'BOMET','CHEPALUNGU','chepalungu','CHEBUNYO','Operational','No','No','No','No','','Yes','Yes','No'),(8378,'10686','Maragua District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',82,1,'MURANG\'A','MARAGWA','maragwa','ICHAGAKI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8379,'11906','Wesu District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',60,0,'TAITA TAVETA','WUNDANYI','wundanyi','WUNDANYI/MBALE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8380,'15643','St John Cottage Health Centre','None','Level 2','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',8,2,'NAKURU','BAHATI','nakuru north','KIAMAINA','Operational','No','No','No','No','','Yes','Yes','No'),(8381,'15622','South Horr Catholic Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',4,2,'SAMBURU','SAMBURU NORTH','samburu north','EL-BARTA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8382,'14572','Ime (AIC) Health Centre','None','Level 2','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'NAKURU','SUBUKIA','subukia','KABAZI','Operational','Yes','No','No','No','','Yes','Yes','No'),(8383,'15778','Wesley Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',0,0,'NAKURU','BAHATI','nakuru north','LANET/UMOJA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8384,'15640','St Francis Tinga Health Centre (Kipkelion)','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',30,0,'KERICHO','KIPKELION WEST','kipkelion west','KAMASIAN','Operational','No','No','No','No','','Yes','Yes','No'),(8385,'15722','Thessalia Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',6,0,'KERICHO','SIGOWET/SOIN','sigowet/soin','SOIN','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8386,'15839','Buyangu Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',19,0,'VIHIGA','HAMISI','hamisi','JEPKOYAI','Operational','No','No','No','No','','Yes','Yes','No'),(8387,'11366','St Raphael Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',0,0,'TANA RIVER','GALOLE','GALOLE','CHEWANI','Operational','No','No','No','No','','Yes','Yes','No'),(8388,'15632','St Brigitas Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',0,0,'UASIN GISHU','KAPSERET','kapseret','LANGAS','Operational','No','No','No','No','','Yes','Yes','No'),(8389,'15655','St Mary\'s Kapsoya Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'UASIN GISHU','AINABKOI','ainabkoi','KAPSOYA','Operational','No','No','No','No','','Yes','Yes','No'),(8390,'14476','Ereto Health Centre','None','Level 3','Basic primary health care facility','Non-Governmental Organizations','Other',12,0,'NAROK','NAROK EAST','narok east','KEEKONYOKIE','Operational','No','No','No','No','','Yes','Yes','No'),(8391,'14553','Huruma Health Centre (Laikipia East)','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',58,2,'LAIKIPIA','LAIKIPIA EAST','laikipia east','NANYUKI','Operational','No','No','No','No','','Yes','Yes','No'),(8392,'14398','Crater Medical Centre','None','Level 3','Basic primary health care facility','Private Practice - Medical Specialist','Kenya MPDB - Institution',25,17,'NAKURU','NAKURU TOWN EAST','nakuru east','BIASHARA','Operational','No','No','No','No','','Yes','Yes','No'),(8393,'10044','Bamboo Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',24,3,'NYANDARUA','KINANGOP','kinangop','MAGUMU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8394,'10539','Kiambu District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',289,33,'KIAMBU','KIAMBU','kiambu town','TOWNSHIP','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8395,'15881','Eregi Mission Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',18,0,'KAKAMEGA','IKOLOMANI','ikolomani','IDAKHO SOUTH','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8396,'15832','Bushiangala Health Centre','None','Level 3','Basic primary health care facility','Other Faith Based','Kenya MPDB - Institution',14,5,'KAKAMEGA','IKOLOMANI','ikolomani','IDAKHO CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8397,'14216','Arror Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',34,0,'ELEGEYO-MARAKWET','MARAKWET WEST','marakwet west','ARROR','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8398,'14385','Chesoi Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',25,0,'ELEGEYO-MARAKWET','MARAKWET EAST','marakwet east','SAMBIRIR','Operational','No','No','No','No','','Yes','Yes','No'),(8399,'14456','Endo Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',40,0,'ELEGEYO-MARAKWET','MARAKWET EAST','marakwet east','ENDO','Operational','No','No','No','No','','Yes','Yes','No'),(8400,'10449','Kamfas Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'KIRINYAGA','NDIA','kirinyaga west','KARITI','Operational','No','No','No','No','','Yes','Yes','No'),(8401,'14386','Chesongoch Health Centre','None','Level 4','Primary care hospitals','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',43,7,'ELEGEYO-MARAKWET','MARAKWET EAST','marakwet east','ENDO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8402,'15941','Kibabii Health Centre','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',28,2,'BUNGOMA','KANDUYI','kanduyi','MARAKARU/TUUTI','Operational','No','No','No','No','','Yes','Yes','No'),(8403,'15788','Ziwa Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',20,4,'UASIN GISHU','SOY','soy','ZIWA','Operational','No','No','No','No','','Yes','Yes','No'),(8404,'15768','Wamba Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',20,6,'SAMBURU','SAMBURU EAST','samburu east','WAMBA EAST','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8405,'14179','Nandi Hills District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',89,5,'NANDI','NANDI HILLS','nandi east','NANDI HILLS','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8406,'15311','Narok District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',155,15,'NAROK','NAROK NORTH','narok north','NAROK TOWN','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8407,'15996','Malava District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',66,8,'KAKAMEGA','MALAVA','malava','CHEMUCHE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8408,'14224','Bahati District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',65,5,'NAKURU','BAHATI','nakuru north','BAHATI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8409,'14792','Kaptumo Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',20,0,'NANDI','ALDAI','aldai','KOYO/NDURIO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8410,'14831','Kericho District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',250,7,'KERICHO','AINAMOI','ainamoi','KIPCHEBOR','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8411,'15068','Lolgorian Sub District Hosp','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',18,7,'NAROK','KILGORIS','transmara west','LOLGORIAN','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8412,'15305','Nanyuki District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',129,11,'LAIKIPIA','LAIKIPIA EAST','laikipia east','NANYUKI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8413,'15074','Londiani District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',50,1,'KERICHO','KIPKELION EAST','kipkelion east','KEDOWA/KIMUGUL','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8414,'11641','Moi District Hospital Voi','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',112,0,'TAITA TAVETA','VOI','voi','MBOLOLO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8415,'11695','Mwatate Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',17,2,'TAITA TAVETA','MWATATE','mwatate','CHAWIA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8416,'12445','Magutuni District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',30,2,'THARAKA-NITHI','MAARA','maara','MWIMBI','Operational','No','No','No','No','','Yes','Yes','No'),(8417,'14353','Cheplanget Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KERICHO','BURETI','bureti','CHEPLANGET','Operational','No','No','No','No','','Yes','Yes','No'),(8418,'11411','Hola District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',132,0,'TANA RIVER','GALOLE','GALOLE','CHEWANI','Operational','No','No','No','No','','Yes','Yes','No'),(8419,'10905','Nyeri Town Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'NYERI','NYERI TOWN','nyeri central','KIGANJO/MATHARI','Operational','No','No','No','No','','Yes','Yes','No'),(8420,'10591','Kihara Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',84,0,'KIAMBU','KIAMBAA','kiambaa','KIHARA','Operational','No','No','No','No','','Yes','Yes','No'),(8421,'14511','Gilgil Military Regional Hospital','None','Level 4','Primary care hospitals','Armed Forces','Other',0,0,'NAKURU','GILGIL','gilgil','GILGIL','Operational','No','No','No','No','','Yes','Yes','No'),(8422,'14706','Kapkatet District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',200,17,'KERICHO','BURETI','bureti','KAPKATET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8423,'14818','Katilu Sub County Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',20,2,'TURKANA','TURKANA SOUTH','turkana south','KATILU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8424,'14366','Cheptalal Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',32,6,'BOMET','KONOIN','konoin','EMBOMOS','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8425,'15703','Tambach Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',60,1,'ELEGEYO-MARAKWET','KEIYO NORTH','keiyo north','TAMBACH','Operational','No','No','No','No','','Yes','Yes','No'),(8426,'10758','Mukungi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'NYANDARUA','KINANGOP','kinangop','MURUNGARU','Operational','No','No','No','No','','Yes','Yes','No'),(8427,'15037','Limo Surgical Hospital','None','Level 3','Primary care hospitals','Private Enterprise (Institution)','Kenya MPDB - Institution',10,0,'UASIN GISHU','AINABKOI','ainabkoi','KAPSOYA','Operational','No','No','No','No','','Yes','Yes','No'),(8428,'15913','Kaimosi Mission Hospital','None','Level 4','Primary care hospitals','Other Faith Based','Kenya MPDB - Institution',50,10,'VIHIGA','HAMISI','hamisi','SHIRU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8429,'14369','Chepterwai Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',36,2,'NANDI','MOSOP','mosop','CHEPTERWAI','Operational','No','No','No','No','','Yes','Yes','No'),(8430,'15423','Ololulunga District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',14,1,'NAROK','NAROK SOUTH','narok south','OLOLULUNG\'A','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8431,'14753','Kapsara District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',18,0,'TRANS NZOIA','CHERANGANY','cherangany','MAKUTANO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8432,'15502','Rumuruti District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',12,0,'LAIKIPIA','LAIKIPIA WEST','laikipia west','RUMURUTI TOWNSHIP','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8433,'15181','Meteitei Sub-District Hospital','None','Level 3','Primary care hospitals','Ministry of Health','Ministry of Health',28,5,'NANDI','TINDERET','tinderet','SONGHOR/SOBA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8434,'15508','Saboti Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',12,0,'TRANS NZOIA','SABOTI','saboti','SABOTI','Operational','No','No','No','No','','Yes','Yes','No'),(8435,'15899','Iguhu District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',21,4,'KAKAMEGA','IKOLOMANI','ikolomani','IDAKHO EAST','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8436,'15568','Sigowet Sub-District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',24,3,'KERICHO','SIGOWET/SOIN','sigowet/soin','SIGOWET','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8437,'14228','Baragoi Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',30,1,'SAMBURU','SAMBURU NORTH','samburu north','EL-BARTA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8438,'13012','Mwiki CFW','None','Level 2','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'NAIROBI','KASARANI','kasarani','KASARANI','Operational','No','Yes','Yes','No','','Yes','Yes','No'),(8439,'16107','Shibwe Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',15,2,'KAKAMEGA','IKOLOMANI','ikolomani','IDAKHO CENTRAL','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8440,'10471','Kangu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KIRINYAGA','MWEA','kirinyaga south','NYANGUTI','Operational','No','No','No','No','','Yes','Yes','No'),(8441,'14307','Cheindoi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'NANDI','EMGWEN','emgwen','KAPSABET','Operational','No','No','No','No','','Yes','Yes','No'),(8442,'15739','Transmara District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',32,0,'NAROK','KILGORIS','transmara west','SHANKOE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8443,'14607','Baringo County Refferal Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',160,11,'BARINGO','BARINGO CENTRAL','baringo central','KAPROPITA','Operational','Yes','Yes','Yes','Yes','','Yes','Yes','No'),(8444,'15808','Bokoli Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',14,0,'BUNGOMA','WEBUTE WEST','webuye west','BOKOLI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8445,'15138','Marigat Sub District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',13,0,'BARINGO','BARINGO SOUTH','marigat','MARIGAT','Operational','No','No','No','No','','Yes','Yes','No'),(8446,'14432','Eldama Ravine District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',112,4,'BARINGO','ELDAMA RAVINE','koibatek','RAVINE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8447,'14586','Iten District Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',167,0,'ELEGEYO-MARAKWET','KEIYO NORTH','keiyo north','KAPCHEMUTWA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8448,'14776','Kaptarakwa Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',20,2,'ELEGEYO-MARAKWET','KEIYO SOUTH','keiyo south','KAPTARAKWA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8449,'16150','Teso  North Sub county Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',57,0,'BUSIA','TESO NORTH','teso north','MALABA SOUTH','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8450,'15795','Alupe Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',130,0,'BUSIA','TESO SOUTH','teso south','ANG\'OROM','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8451,'14609','Kabartonjo District Hospital','None','Level 3','Secondary care hospitals','Ministry of Health','Ministry of Health',18,0,'BARINGO','BARINGO NORTH','baringo north','KABARTONJO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8452,'10878','Njabini Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',6,0,'NYANDARUA','KINANGOP','kinangop','NJABANI/KIBURU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8453,'15928','Kegondi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'VIHIGA','SABATIA','sabatia','WEST SABATIA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8454,'16012','Mbale Rural Health Training Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',24,6,'VIHIGA','VIHIGA','vihiga','LUGAGA-WAMULUMA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8455,'14013','Pap Kodero Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',7,0,'SIAYA','RARIEDA','rarieda','WEST UYOMA','Operational','No','No','No','No','','Yes','Yes','No'),(8456,'16032','Mulele Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',2,0,'VIHIGA','VIHIGA','vihiga','MUNGOMA','Operational','No','No','No','No','','Yes','Yes','No'),(8457,'15815','Bugina Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',14,2,'VIHIGA','SABATIA','sabatia','BUSALI','Operational','No','No','No','No','','Yes','Yes','No'),(8458,'12893','Chandaria Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Other',0,0,'NAIROBI','DAGORETTI SOUTH','dagoretti south','UTHIRU/RUTHIMITU','Operational','No','No','No','No','','Yes','Yes','No'),(8459,'16060','Nadanya Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',4,0,'VIHIGA','SABATIA','sabatia','LYADUYWA/IZAVA','Operational','No','No','No','No','','Yes','Yes','No'),(8460,'16044','Munoywa Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'VIHIGA','SABATIA','sabatia','NORTH MARAGOLI','Operational','No','No','No','No','','Yes','Yes','No'),(8461,'15903','Inyali Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'VIHIGA','SABATIA','sabatia','NORTH MARAGOLI','Operational','No','No','No','No','','Yes','Yes','No'),(8462,'16161','Webuye Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',187,30,'BUNGOMA','WEBUTE WEST','webuye west','MISIKHU','Operational','Yes','No','No','No','','Yes','Yes','No'),(8463,'15896','Iduku Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',3,2,'VIHIGA','VIHIGA','vihiga','LUGAGA-WAMULUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8464,'16061','Naitiri Sub-County Hospital','None','Level 4','Hospitals','Ministry of Health','Ministry of Health',20,0,'BUNGOMA','TONGAREN','tongaren','MBAKALO','Operational','Yes','No','No','No','','Yes','Yes','No'),(8465,'15814','Bugamangi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',2,1,'VIHIGA','VIHIGA','vihiga','CENTRAL MARAGOLI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8466,'16449','Egago Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',1,0,'VIHIGA','VIHIGA','vihiga','SOUTH MARAGOLI','Operational','No','No','No','No','','Yes','Yes','No'),(8467,'16002','Marie Stopes Clinic (Vihiga)','None','Level 2','Dispensaries and clinic-out patient only','Non-Governmental Organizations','Other',0,0,'VIHIGA','SABATIA','sabatia','LYADUYWA/IZAVA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8468,'16013','Mbaleway Side Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'VIHIGA','VIHIGA','vihiga','LUGAGA-WAMULUMA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8469,'16017','Mijay Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'VIHIGA','SABATIA','sabatia','LYADUYWA/IZAVA','Operational','No','No','No','No','','Yes','Yes','No'),(8470,'15794','Alliance Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'VIHIGA','SABATIA','sabatia','CHAVAKALI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8471,'15842','Carol Afandi Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',2,1,'VIHIGA','SABATIA','sabatia','CHAVAKALI','Operational','No','No','No','No','','Yes','Yes','No'),(8472,'16448','Jasho Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'VIHIGA','VIHIGA','vihiga','LUGAGA-WAMULUMA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8473,'16450','Junction Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'VIHIGA','SABATIA','sabatia','CHAVAKALI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8474,'16097','Sabatia Eye Hospital Mission','None','Level 4','Basic primary health care facility','Christian Health Association of Kenya','Kenya MPDB - Institution',33,0,'VIHIGA','SABATIA','sabatia','WODANGA','Operational','No','No','No','No','','Yes','Yes','No'),(8475,'13093','Mji Wa Huruma Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'NAIROBI','WESTLANDS','westlands','KARURA','Operational','No','No','No','No','','Yes','Yes','No'),(8476,'15167','Mediheal Hospital','None','Level 4','Primary care hospitals','Private Enterprise (Institution)','Kenya MPDB - Institution',40,6,'UASIN GISHU','AINABKOI','ainabkoi','KAPSOYA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8477,'10267','Githumu Hospital','None','Level 4','Primary care hospitals','Christian Health Association of Kenya','Kenya MPDB - Institution',36,0,'MURANG\'A','KANDARA','kandara','RUCHU','Operational','No','No','No','No','','Yes','Yes','No'),(8478,'16073','Holy Family Nangina Hospital','None','Level 4','Primary care hospitals','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',96,5,'BUSIA','FUNYULA','samia','NANGINA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8479,'15965','Lugulu Friends Mission Hospital','None','Level 4','Primary care hospitals','Other Faith Based','Kenya MPDB - Institution',110,0,'BUNGOMA','WEBUTE WEST','webuye west','MISIKHU','Operational','No','No','No','No','','Yes','Yes','No'),(8480,'14699','Kapedo Sub-County Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',28,4,'TURKANA','TURKANA EAST','turkana east','KAPEDO/NAPEITOM','Operational','Yes','No','No','No','','Yes','Yes','No'),(8481,'14767','Kapsowar (AIC) Hospital','None','Level 4','Primary care hospitals','Christian Health Association of Kenya','Kenya MPDB - Institution',126,3,'ELEGEYO-MARAKWET','MARAKWET WEST','marakwet west','KAPSOWAR','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8482,'16098','Sabatia Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',9,1,'VIHIGA','SABATIA','sabatia','WODANGA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8483,'15845','Chamakanga Mission','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Other',13,2,'VIHIGA','SABATIA','sabatia','BUSALI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8484,'15879','Enzaro Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,4,'VIHIGA','VIHIGA','vihiga','SOUTH MARAGOLI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8485,'15847','Chavogere Mission','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Other',4,0,'VIHIGA','SABATIA','sabatia','BUSALI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8486,'15982','Lyanaginga Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',20,2,'VIHIGA','VIHIGA','vihiga','MUNGOMA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8487,'16141','St Mary\'s Hospital (Mumias)','None','Level 3','Primary care hospitals','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'KAKAMEGA','MUMIAS WEST','mumias west','MUMIAS CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8488,'16091','Port Victoria Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',60,6,'BUSIA','BUDALANGI','bunyala','BUNYALA WEST','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8489,'15905','Ivona Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',9,0,'KAKAMEGA','LUGARI','lugari','MAUTUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8490,'16093','Rophy Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LUGARI','lugari','LUMAKANDA','Operational','No','No','No','No','','Yes','Yes','No'),(8491,'16133','Soy Resource Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LIKUYANI','likuyani','LIKUYANI','Operational','No','No','No','No','','Yes','Yes','No'),(8492,'15807','Beberion Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',5,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','No','No','No','No','','Yes','Yes','No'),(8493,'15954','Kona Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','No','No','No','No','','Yes','Yes','No'),(8494,'16364','Matunda  Sub county Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',16,0,'TRANS NZOIA','KIMININI','kiminini','NABISWA','Operational','Yes','No','No','No','','Yes','Yes','No'),(8495,'15893','Go Down Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','No','No','No','No','','Yes','Yes','No'),(8496,'15843','Central Clinic (Lugari)','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','No','No','No','No','','Yes','Yes','No'),(8497,'16083','Nyarotis Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','No','No','No','No','','Yes','Yes','No'),(8498,'16084','Nzoia (ACK) Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'KAKAMEGA','LIKUYANI','likuyani','SINOKO','Operational','No','No','No','No','','Yes','Yes','No'),(8499,'16038','Mumias Sugar Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'KAKAMEGA','MUMIAS WEST','mumias west','MUMIAS NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8500,'16049','Musanda (ACK) Clinic','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'KAKAMEGA','MUMIAS WEST','mumias west','MUSANDA','Operational','No','No','No','No','','Yes','Yes','No'),(8501,'15841','Canaan Clinic (Matete)','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','LUGARI','lugari','LWANDETI','Operational','No','No','No','No','','Yes','Yes','No'),(8502,'16416','Mulukaka Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAKAMEGA','MATUNGU','matungu','MAYONI','Operational','No','No','No','No','','Yes','Yes','No'),(8503,'16029','Mukhobola Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,4,'BUSIA','BUDALANGI','bunyala','BUNYALA CENTRAL','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8504,'16129','Sirimba Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'BUSIA','BUDALANGI','bunyala','BUNYALA NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8505,'15811','Budalangi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'BUSIA','BUDALANGI','bunyala','BUNYALA NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8506,'15873','Elwasambi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MUMIAS EAST','mumias east','LUSHEYA/LUBINU','Operational','No','No','No','No','','Yes','Yes','No'),(8507,'16001','Marakusi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','LUGARI','Operational','No','No','No','No','','Yes','Yes','No'),(8508,'16011','Mbagara Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','MAUTUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8509,'16031','Mukuyu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','MAUTUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8510,'16086','Nzoia Matete Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','MAUTUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8511,'16046','Munyuki Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','LUMAKANDA','Operational','No','No','No','No','','Yes','Yes','No'),(8512,'15988','Majengo Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','LUMAKANDA','Operational','No','No','No','No','','Yes','Yes','No'),(8513,'16051','Musembe Dispensary (Lugari)','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','CHEKALINI','Operational','No','No','No','No','','Yes','Yes','No'),(8514,'16371','Kamla Community Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'WEST POKOT','KACHELIBA','pokot north','KIWAWA','Operational','No','No','No','No','','Yes','Yes','No'),(8515,'15970','Lumani Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','CHEVAYWA','Operational','No','No','No','No','','Yes','Yes','No'),(8516,'16009','Maturu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','LWANDETI','Operational','No','No','No','No','','Yes','Yes','No'),(8517,'16154','Turbo Forest Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LIKUYANI','likuyani','LIKUYANI','Operational','No','No','No','No','','Yes','Yes','No'),(8518,'16100','Sango Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LIKUYANI','likuyani','SANGO','Operational','No','No','No','No','','Yes','Yes','No'),(8519,'16007','Matunda Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',9,0,'KAKAMEGA','LIKUYANI','likuyani','KONGONI','Operational','No','No','No','No','','Yes','Yes','No'),(8520,'16134','Soy Sambu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LIKUYANI','likuyani','SANGO','Operational','No','No','No','No','','Yes','Yes','No'),(8521,'16035','Mumias Model Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MUMIAS WEST','mumias west','MUMIAS CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8522,'15818','Bukaya Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KAKAMEGA','MUMIAS WEST','mumias west','ETENJE','Operational','No','No','No','No','','Yes','Yes','No'),(8523,'10808','Mwea Mission (Our Lady of Lourdes) Hospital','None','Level 4','Primary care hospitals','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',110,10,'KIRINYAGA','MWEA','kirinyaga north/mwea west','THIBA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8524,'15936','Khaunga Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',4,0,'KAKAMEGA','MUMIAS EAST','mumias east','EAST WANGA','Operational','Yes','No','No','No','','Yes','Yes','No'),(8525,'16042','Mung\'ung\'u Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MATUNGU','matungu','KOYONZO','Operational','No','No','No','No','','Yes','Yes','No'),(8526,'16123','Shibanze Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MATUNGU','matungu','KHOLERA','Operational','No','No','No','No','','Yes','Yes','No'),(8527,'16070','Namulungu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MATUNGU','matungu','KHOLERA','Operational','No','No','No','No','','Yes','Yes','No'),(8528,'15972','Lung\'anyiro Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',2,0,'KAKAMEGA','MATUNGU','matungu','NAMAMALI','Operational','No','No','No','No','','Yes','Yes','No'),(8529,'16077','National Youth Service Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','LUMAKANDA','Operational','No','No','No','No','','Yes','Yes','No'),(8530,'16000','Mapengo Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','LUGARI','lugari','CHEKALINI','Operational','No','No','No','No','','Yes','Yes','No'),(8531,'12901','Community Health Foundation','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'NAIROBI','STAREHE','starehe','NAIROBI CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8532,'15817','Bukaya Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'KAKAMEGA','MUMIAS WEST','mumias west','ETENJE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8533,'16005','Matete Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',14,0,'KAKAMEGA','LUGARI','lugari','CHEVAYWA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8534,'16111','Shikunga Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,4,'KAKAMEGA','BUTERE','butere','MARAMA CENTRAL','Operational','Yes','No','No','No','','Yes','Yes','No'),(8535,'15955','Kongoni Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'KAKAMEGA','LIKUYANI','likuyani','KONGONI','Operational','No','No','No','No','','Yes','Yes','No'),(8536,'15827','Bungasi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'KAKAMEGA','MUMIAS WEST','mumias west','MUSANDA','Operational','Yes','No','No','No','','Yes','Yes','No'),(8537,'15977','Lusheya Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MUMIAS EAST','mumias east','LUSHEYA/LUBINU','Operational','No','No','Yes','No','','Yes','Yes','No'),(8538,'15991','Makunga Rhdc','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',12,0,'KAKAMEGA','MUMIAS EAST','mumias east','MALAHA/ISONGO/MAKUNGA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8539,'16041','Mung\'ang\'a Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MUMIAS EAST','mumias east','MALAHA/ISONGO/MAKUNGA','Operational','No','No','No','No','','Yes','Yes','No'),(8540,'15931','Khalaba Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'KAKAMEGA','MATUNGU','matungu','KHALABA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8541,'15131','Maridadi RCEA Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Other Faith Based','Kenya MPDB - Institution',0,0,'TRANS NZOIA','KWANZA','kwanza','BIDII','Operational','No','No','No','No','','Yes','Yes','No'),(8542,'13971','Ojola Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KISUMU','KISUMU WEST','kisumu west','SOUTH WEST KISUMU','Operational','No','No','No','No','','Yes','Yes','No'),(8543,'14877','Kimondo Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'TRANS NZOIA','ENDEBESS','endebess','ENDEBESS','Operational','No','No','No','No','','Yes','Yes','No'),(8544,'14332','Chepchoina Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'TRANS NZOIA','ENDEBESS','endebess','CHEPCHOINA','Operational','No','No','No','No','','Yes','Yes','No'),(8545,'16008','Matunda Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',10,0,'KAKAMEGA','LIKUYANI','likuyani','NZOIA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8546,'15961','Likuyani Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',75,3,'KAKAMEGA','LIKUYANI','likuyani','LIKUYANI','Operational','No','No','No','No','','Yes','Yes','No'),(8547,'12406','Kyangunga Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'KITUI','KITUI CENTRAL','kitui central','MULANGO','Operational','No','No','No','No','','Yes','Yes','No'),(8548,'12819','Tyaa Kamuthale Dispensary','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'KITUI','MWINGI NORTH','mwingi north','MUMONI','Operational','No','No','No','No','','Yes','Yes','No'),(8549,'16010','Mautuma Sub County Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',15,0,'KAKAMEGA','LUGARI','lugari','MAUTUMA','Operational','No','No','No','No','','Yes','Yes','No'),(8550,'16037','Matungu Sub-District Hospital','None','Level 4','Primary care hospitals','Ministry of Health','Ministry of Health',0,0,'KAKAMEGA','MATUNGU','matungu','MAYONI','Operational','No','No','No','No','','Yes','Yes','No'),(8551,'14646','Kaisagat Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'TRANS NZOIA','KWANZA','kwanza','KWANZA','Operational','No','No','No','No','','Yes','Yes','No'),(8552,'15933','Khaoya Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Public Institution','Ministry of Health',0,0,'BUNGOMA','WEBUYE EAST','webuye east','NDIVISI','Operational','No','No','No','No','','Yes','Yes','No'),(8553,'11092','Thiba Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',8,2,'KIRINYAGA','MWEA','kirinyaga north/mwea west','THIBA','Operational','Yes','Yes','Yes','No','','Yes','Yes','No'),(8554,'15240','Mt Elgon National Park Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'TRANS NZOIA','ENDEBESS','endebess','ENDEBESS','Operational','No','No','No','No','','Yes','Yes','No'),(8555,'10960','Roadside Medical Clinic Kiangai','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'KIRINYAGA','NDIA','kirinyaga west','KIINE','Operational','No','No','No','No','','Yes','Yes','No'),(8556,'11164','Wamumu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KIRINYAGA','MWEA','kirinyaga north/mwea west','MUTITHI','Operational','No','No','No','No','','Yes','Yes','No'),(8557,'10991','Sagana Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'KIRINYAGA','NDIA','kirinyaga west','KARITI','Operational','No','No','No','No','','Yes','Yes','No'),(8558,'10975','Rukanga  Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',4,0,'KIRINYAGA','MWEA','kirinyaga north/mwea west','MUTITHI','Operational','No','No','No','No','','Yes','Yes','No'),(8559,'10221','Gatithi Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KIRINYAGA','NDIA','kirinyaga west','KIINE','Operational','No','No','No','No','','Yes','Yes','No'),(8560,'10571','Kibirigwi Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',34,0,'KIRINYAGA','NDIA','kirinyaga west','KIINE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8561,'10217','Gathigiriri Health Centre','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',5,2,'KIRINYAGA','MWEA','kirinyaga south','TEBERE','Operational','Yes','No','No','No','','Yes','Yes','No'),(8562,'10566','Kiaragana Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KIRINYAGA','NDIA','kirinyaga west','MUKURE','Operational','No','No','No','No','','Yes','Yes','No'),(8563,'12456','Makueni Catholic Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',0,0,'MAKUENI','MAKUENI','makueni','WOTE','Operational','No','No','No','No','','Yes','Yes','No'),(8564,'14639','Kaibei Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'TRANS NZOIA','ENDEBESS','endebess','ENDEBESS','Operational','No','No','No','No','','Yes','Yes','No'),(8565,'14203','Andersen Medical Centre','None','Level 3','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',24,4,'TRANS NZOIA','ENDEBESS','endebess','CHEPCHOINA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8566,'15573','Siloam Medical clinic(Kwanza)','None','Level 2','Dispensaries and clinic-out patient only','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'TRANS NZOIA','KWANZA','kwanza','KWANZA','Operational','No','No','No','No','','Yes','Yes','No'),(8567,'14630','Kabirirsang Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'NANDI','EMGWEN','emgwen','KILIBWONI','Operational','No','No','No','No','','Yes','Yes','No'),(8568,'13831','Muhoroni County Hospital','None','Level 4','Secondary care hospitals','Ministry of Health','Ministry of Health',32,0,'KISUMU','MUHORONI','muhoroni','MUHORONI KORU','Operational','Yes','Yes','Yes','Yes','','Yes','Yes','No'),(8569,'11896','Watamu Maternity and Nursing Home','None','Level 3','Basic primary health care facility','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',6,0,'KILIFI','KILIFI NORTH','kilifi north','DABASO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8570,'15791','Ahmadiya Hospital','None','Level 4','Primary care hospitals','Other Faith Based','Kenya MPDB - Institution',0,0,'KAKAMEGA','MUMIAS EAST','mumias east','EAST WANGA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8571,'12976','Huruma Nursing Home & Maternity','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',30,0,'NAIROBI','MATHARE','mathare','KIAMAIKO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8572,'12545','Moyale Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',10,2,'MARSABIT','MOYALE','moyale','MOYALE TOWNSHIP','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8573,'15600','Enkitok Joy Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KAJIADO','KAJIADO WEST','kajiado west','KEEKONYOKIE','Operational','No','No','No','No','','Yes','Yes','No'),(8574,'13059','Makkah Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'NAIROBI','KAMUKUNJI','kamukunji','EASTLEIGH NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8575,'10488','Karatina Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',26,0,'NYERI','MATHIRA','mathira east','KARATINA TOWN','Operational','No','No','No','No','','Yes','Yes','No'),(8576,'13175','Salama Nursing Home','None','Level 3','Basic primary health care facility','Private Practice - General Practitioner','Kenya MPDB - Institution',8,2,'NAIROBI','KAMUKUNJI','kamukunji','AIRBASE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8577,'12869','Alice Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',8,2,'NAIROBI','EMBAKASI SOUTH','embakasi south','KWARE','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8578,'10098','Complex Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KIRINYAGA','MWEA','kirinyaga north/mwea west','WAMUMU','Operational','No','No','No','No','','Yes','Yes','No'),(8579,'15153','Matasia Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',12,0,'KAJIADO','KAJIADO NORTH','kajiado north','OLKERI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8580,'10740','Mt Sinai Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'KIAMBU','THIKA TOWN','thika town','KAMENU','Operational','No','No','No','No','','Yes','Yes','No'),(8581,'14955','Kkit Nursing Home','None','Level 2','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',5,0,'KAJIADO','KAJIADO NORTH','kajiado north','ONGATA RONGAI','Operational','No','No','No','No','','Yes','Yes','No'),(8582,'14061','Royal Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',19,1,'MIGORI','RONGO','rongo sub county','CENTRAL KAMAGAMBO','Operational','No','No','No','No','','Yes','Yes','No'),(8583,'14494','Fatima Maternity Hospital','None','Level 3','Basic primary health care facility','Kenya Episcopal Conference-Catholic Secretariat','Kenya MPDB - Institution',32,0,'KAJIADO','KAJIADO NORTH','kajiado north','ONGATA RONGAI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8584,'10604','Akshar Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',44,4,'KIAMBU','KIKUYU','kikuyu','KIKUYU','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8585,'10690','Marie Stopes Nursing Home (Muranga)','None','Level 2','Basic primary health care facility','Non-Governmental Organizations','Other',12,4,'MURANG\'A','KIHARU','kiharu','MBIRI','Operational','No','No','No','No','','Yes','Yes','No'),(8586,'12527','Milimani Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',21,0,'MERU','NORTH IMENTI','imenti north','MUNICIPALITY','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8587,'14129','Star Maternity & Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',22,0,'KISUMU','KISUMU CENTRAL','kisumu central','NYALENDA B','Operational','No','No','No','No','','Yes','Yes','No'),(8588,'12491','Maua Cottage','None','Level 2','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'MERU','IGEMBE SOUTH','igembe south','MAUA','Operational','No','No','No','No','','Yes','Yes','No'),(8589,'13776','Marie Stopes Nursing Home (Kisumu)','None','Level 3','Basic primary health care facility','Non-Governmental Organizations','Other',32,0,'KISUMU','KISUMU CENTRAL','kisumu central','SHAURI MOYO KALOLENI','Operational','No','No','No','No','','Yes','Yes','No'),(8590,'14430','Elburgon Nursing Home','None','Level 2','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',10,0,'NAKURU','MOLO','molo','TURI','Operational','No','No','No','No','','Yes','Yes','No'),(8591,'14134','Suna Nursing and Maternity Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',36,2,'MIGORI','SUNA WEST','suna west sub county','RAGANA-ORUBA','Operational','No','No','No','No','','Yes','Yes','No'),(8592,'11912','Oasis Medical Center','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Other',9,1,'KILIFI','KILIFI SOUTH','kilifi south','SHIMO LA TEWA','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8593,'16347','Burnt Forest Rhdc (Eldoret East)','None','Level 3','Basic primary health care facility','Ministry of Health','Ministry of Health',16,8,'UASIN GISHU','KESSES','kesses','TARAKWA','Operational','No','No','No','No','','Yes','Yes','No'),(8594,'10137','Dr Muhiu Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'MURANG\'A','KIHARU','kiharu','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8595,'10144','Dr Mwangi Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','NYERI TOWN','nyeri central','RWARE','Operational','No','No','No','No','','Yes','Yes','No'),(8596,'10121','Dr Gachiri','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8597,'10308','Kahawa Wendani Hospital','None','Level 4','Primary care hospitals','Private Enterprise (Institution)','Kenya MPDB - Institution',12,2,'KIAMBU','RUIRU','ruiru','KAHAWA WENDANI','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8598,'15734','Top Station Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Other',0,0,'TRANS NZOIA','SABOTI','saboti','MATISI','Operational','No','No','No','No','','Yes','Yes','No'),(8599,'10142','Dr Mulingwa','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','KAMENU','Operational','No','No','No','No','','Yes','Yes','No'),(8600,'10156','Dr Wanjohi','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8601,'10138','Thika Arcade Health Services','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8602,'10139','Dr Mukui','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8603,'10148','Dr Nguhiu','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8604,'10119','Dr E K Ritho Paediatric Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','NYERI TOWN','nyeri central','RWARE','Operational','No','No','No','No','','Yes','Yes','No'),(8605,'10521','Eastend Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIRINYAGA','KIRINYAGA CENTRAL','kirinyaga central','KERUGOYA','Operational','No','No','No','No','','Yes','Yes','No'),(8606,'10088','Caritas community hospital (Township)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',25,5,'KIAMBU','THIKA TOWN','thika town','TOWNSHIP','Operational','Yes','No','No','No','','Yes','Yes','No'),(8607,'10133','Dr M M Mburu Gynae / Obstretric Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','NYERI TOWN','nyeri central','RWARE','Operational','No','No','No','No','','Yes','Yes','No'),(8608,'10906','Nyeri Youth Heath Centre (Family Health Options Ke','None','Level 2','VCT','Non-Governmental Organizations','Kenya MPDB - Institution',0,0,'NYERI','NYERI TOWN','nyeri central','RURING\'U','Operational','No','No','Yes','No','','Yes','Yes','No'),(8609,'14006','Owens Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',15,0,'SIAYA','BONDO','bondo','NORTH SAKWA','Operational','No','No','No','No','','Yes','Yes','No'),(8610,'12685','Nyambene Nursing Home','None','Level 4','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',15,2,'MERU','IGEMBE CENTRAL','igembe central','NJIA','Operational','No','No','No','No','','Yes','Yes','No'),(8611,'12606','Mutuati Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',9,0,'MERU','IGEMBE NORTH','igembe north','NAATHU','Operational','No','No','No','No','','Yes','Yes','No'),(8612,'12294','Kiengu Maternity and Nursing Home','None','Level 4','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',25,4,'MERU','IGEMBE CENTRAL','igembe central','IGEMBE EAST','Operational','No','No','No','No','','Yes','Yes','No'),(8613,'11897','Watamu Hospital','None','Level 4','Primary care hospitals','Private Enterprise (Institution)','Kenya MPDB - Private Practice',10,0,'KILIFI','KILIFI NORTH','kilifi north','DABASO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8614,'12641','Neema Hospital','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',40,3,'KITUI','KITUI CENTRAL','kitui central','TOWNSHIP','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8615,'14508','Gilgil Astu Dispensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'NAKURU','GILGIL','gilgil','GILGIL','Operational','No','No','No','No','','Yes','Yes','No'),(8616,'11280','Changamwe Maternity','None','Level 2','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'MOMBASA','CHANGAMWE','changamwe','AIRPORT','Operational','No','No','No','No','','Yes','Yes','No'),(8617,'10038','Asantey Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIAMBU','THIKA TOWN','thika town','KAMENU','Operational','No','No','No','No','','Yes','Yes','No'),(8618,'10143','Dr Muraya Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Medical Specialist','Kenya MPDB - Private Practice',0,0,'KIRINYAGA','KIRINYAGA CENTRAL','kirinyaga central','KERUGOYA','Operational','No','No','No','No','','Yes','Yes','No'),(8619,'10491','Karen Hospital Annex','None','Level 4','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','NYERI TOWN','nyeri central','RWARE','Operational','No','No','No','No','','Yes','Yes','No'),(8620,'10127','Dr Kariuki N M Psychiatric Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','NYERI TOWN','nyeri central','RWARE','Operational','No','No','No','No','','Yes','Yes','No'),(8621,'10141','Dr Mukui F K Psychiatric Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','NYERI TOWN','nyeri central','RWARE','Operational','No','No','No','No','','Yes','Yes','No'),(8622,'14296','Chebirbei Dspensary','None','Level 2','Dispensaries and clinic-out patient only','Ministry of Health','Ministry of Health',0,0,'KERICHO','BELGUT','belgut','KABIANGA','Operational','No','No','No','No','','Yes','Yes','No'),(8623,'11515','Langoni Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',0,0,'LAMU','LAMU WEST','lamu west','MKOMANI','Operational','No','No','No','No','','Yes','Yes','No'),(8624,'14245','Batian Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO EAST','kajiado east','KAPUTIEI NORTH','Operational','No','No','No','No','','Yes','Yes','No'),(8625,'10783','Muruguru Medical Clinic (Nyeri North)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'NYERI','KIENI','kieni west','MWEIGA','Operational','No','No','No','No','','Yes','Yes','No'),(8626,'14250','Bethelm Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','ONGATA RONGAI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8627,'15295','Namayiana Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO CENTRAL','kajiado central','ILDAMAT','Operational','No','No','No','No','','Yes','Yes','No'),(8628,'10188','Frayjoy Clinic (Dr Tumbo)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KIRINYAGA','MWEA','kirinyaga south','NYANGUTI','Operational','No','No','No','No','','Yes','Yes','No'),(8629,'15496','Rongai Uzima Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','ONGATA RONGAI','Operational','No','No','No','No','','Yes','Yes','No'),(8630,'14189','Aga Khan University Hospital O/R Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','NKAIMURUNYA','Operational','No','No','No','No','','Yes','Yes','No'),(8631,'15184','Mid Hill Medical Clinic Ngong','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','OLOOLUA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8632,'15161','Mawepi Medical and VCT Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO EAST','kajiado east','OLOOSIRKON/SHOLINKE','Operational','No','No','Yes','No','','Yes','Yes','No'),(8633,'14187','Afya Frank Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','NKAIMURUNYA','Operational','No','No','No','No','','Yes','Yes','No'),(8634,'16204','Tumaini Medical Clinic (Marsabit)','None','Level 2','Dispensaries and clinic-out patient only','Christian Health Association of Kenya','Kenya MPDB - Institution',0,0,'MARSABIT','SAKU','saku','MARSABIT CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8635,'16348','Family Health Options Kenya (Eldoret)','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Private Practice',21,7,'UASIN GISHU','KAPSERET','kapseret','KIPKENYO','Operational','Yes','No','Yes','No','','Yes','Yes','No'),(8636,'10013','Afya Medical Clinic (Nyeri North)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','MATHIRA','mathira east','KONYU','Operational','No','No','No','No','','Yes','Yes','No'),(8637,'11288','Roka Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KILIFI','KILIFI NORTH','kilifi north','MATSANGONI','Operational','No','No','No','No','','Yes','Yes','No'),(8638,'11891','Wananchi Nursing Home','None','Level 3','Basic primary health care facility','Private Enterprise (Institution)','Kenya MPDB - Institution',12,0,'KILIFI','KILIFI NORTH','kilifi north','SOKONI','Operational','No','No','No','No','','Yes','Yes','No'),(8639,'11084','Tambaya Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','MUKURWEINI','mukurweini','MUKURWE-INI WEST','Operational','No','No','No','No','','Yes','Yes','No'),(8640,'10334','Ichamara Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','MUKURWEINI','mukurweini','MUKURWE-INI CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8641,'10751','Muguo Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KIRINYAGA','KIRINYAGA CENTRAL','kirinyaga central','MUTIRA','Operational','No','No','No','No','','Yes','Yes','No'),(8642,'10009','Afya Health Services','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','MUKURWEINI','mukurweini','MUKURWE-INI CENTRAL','Operational','No','No','No','No','','Yes','Yes','No'),(8643,'10925','Pacco Ebenezer Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','Nyeri South','nyeri south','KARIMA','Operational','No','No','No','No','','Yes','Yes','No'),(8644,'10067','Bethsaida Medical Clinic (Gatundu)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KIAMBU','GATUNDU SOUTH','gatundu south','NGENDA','Operational','No','No','Yes','No','','Yes','Yes','No'),(8645,'10699','Mary Hill Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'LAIKIPIA','LAIKIPIA WEST','laikipia west','IGWAMITI','Operational','No','No','No','No','','Yes','Yes','No'),(8646,'10059','Bethany Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KIRINYAGA','KIRINYAGA CENTRAL','kirinyaga central','MUTIRA','Operational','No','No','No','No','','Yes','Yes','No'),(8647,'15103','Maasai Medical Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KAJIADO','KAJIADO EAST','kajiado east','OLOOSIRKON/SHOLINKE','Operational','No','No','No','No','','Yes','Yes','No'),(8648,'10298','Good Shepherd Medical Clinic (Nyeri North)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','KIENI','kieni east','GAKAWA','Operational','No','No','No','No','','Yes','Yes','No'),(8649,'10008','Afya Bora Medical Clinic (Nyeri South)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','NYERI TOWN','nyeri central','KAMAKWA/MUKARO','Operational','No','No','Yes','No','','Yes','Yes','No'),(8650,'15886','Esirulo Imani Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',2,0,'VIHIGA','EMUHAYA','emuhaya','CENTRAL BUNYORE','Operational','No','No','No','No','','Yes','Yes','No'),(8651,'11177','Warui Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','NYERI TOWN','nyeri central','RURING\'U','Operational','No','No','Yes','No','','Yes','Yes','No'),(8652,'15210','Moka Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','OLKERI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8653,'10981','Ruringu Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','NYERI TOWN','nyeri central','KAMAKWA/MUKARO','Operational','No','No','No','No','','Yes','Yes','No'),(8654,'16667','Beacon of Hope Clinic (Kajiado)','None','Level 3','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','ONGATA RONGAI','Operational','No','No','Yes','No','','Yes','Yes','No'),(8655,'10073','Blue Line Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - General Practitioner','Kenya MPDB - Private Practice',0,0,'KIRINYAGA','KIRINYAGA CENTRAL','kirinyaga central','KERUGOYA','Operational','No','No','No','No','','Yes','Yes','No'),(8656,'11436','Jomvu Model Health Centre','None','Level 2','Basic primary health care facility','Ministry of Health','Ministry of Health',0,0,'MOMBASA','JOMVU','jomvu','JOMVU KUU','Operational','No','No','No','No','','Yes','Yes','No'),(8657,'13344','Garissa Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'GARISSA','GARISSA TOWNSHIP','garissa','TOWNSHIP','Operational','No','No','No','No','','Yes','Yes','No'),(8658,'14184','Acacia Medicare Centre','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KAJIADO','KAJIADO NORTH','kajiado north','NGONG','Operational','No','No','No','No','','Yes','Yes','No'),(8659,'11147','Victory Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','KIENI','kieni east','NAROMORU/KIAMATHAGA','Operational','No','No','No','No','','Yes','Yes','No'),(8660,'10198','Gadi Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','MATHIRA','mathira east','KONYU','Operational','No','No','No','No','','Yes','Yes','No'),(8661,'11792','Shuffa Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Nurse / Midwifery','Nursing Council of Kenya (Private Practice)',0,0,'TANA RIVER','GALOLE','GALOLE','WAYU','Operational','No','No','No','No','','Yes','Yes','No'),(8662,'15120','Manyatta Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'KAJIADO','KAJIADO EAST','kajiado east','OLOOSIRKON/SHOLINKE','Operational','No','No','No','No','','Yes','Yes','No'),(8663,'11101','Thunguma Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','NYERI TOWN','nyeri central','GATITU/MURUGURU','Operational','No','No','No','No','','Yes','Yes','No'),(8664,'11417','Ibnusina Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'LAMU','LAMU WEST','lamu west','MKOMANI','Operational','No','No','No','No','','Yes','Yes','No'),(8665,'10977','Rural Medical Clinic (Nyeri South)','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','TETU','tetu','WAMAGANA','Operational','No','No','No','No','','Yes','Yes','No'),(8666,'10469','Kangema Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'MURANG\'A','KANGEMA','mathioya','MUGURU','Operational','No','No','No','No','','Yes','Yes','No'),(8667,'11085','Tana Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','MATHIRA','mathira east','KONYU','Operational','No','No','No','No','','Yes','Yes','No'),(8668,'10538','Kiambogo Medical Clinic','None','Level 2','Dispensaries and clinic-out patient only','Private Practice - Clinical Officer','Clinical Officers Council',0,0,'NYERI','KIENI','kieni west','MUGUNDA','Operational','No','No','No','No','','Yes','Yes','No');
/*!40000 ALTER TABLE `mfl_facility_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `participant_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_identifier` varchar(255) NOT NULL,
  `individual` varchar(255) DEFAULT NULL,
  `lab_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `long` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(1000) DEFAULT NULL,
  `funding_source` varchar(255) DEFAULT NULL,
  `testing_volume` varchar(255) DEFAULT NULL,
  `enrolled_programs` varchar(255) DEFAULT NULL,
  `site_type` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `first_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `affiliation` varchar(45) DEFAULT NULL,
  `network_tier` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'inactive',
  `IsVl` varchar(45) DEFAULT '0',
  `ModuleID` int(11) DEFAULT '0',
  `MflCode` varchar(45) DEFAULT NULL,
  `IsModule` varchar(45) DEFAULT '0',
  PRIMARY KEY (`participant_id`),
  UNIQUE KEY `unique_identifier` (`unique_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (13,'153327','no','KNH','KNH','MICRO','175-00100 nairobi','Nairobi','',116,'','','','','',NULL,NULL,NULL,'BARINGO','KNH','Kenyatta hospital','','','','osoromichaels@gmail.com',NULL,'0','2017-04-21 14:21:02','micro@nphls.or.ke','2017-04-25 13:09:33','micro@nphls.or.ke','active','3',1,'22484','0'),(14,'12321','no','1231321','211','3231','21321','12132','2312',116,'40201','','','','','',NULL,'','BARINGO','1231321','','0711560619','0711560619','','osorom@gmail.com','Hospital','3','2017-04-25 14:20:26','micro@nphls.or.ke','2017-05-24 10:11:28','vladmin@nphls.or.ke','active','3',1,'12321','0'),(15,'236412','no',NULL,'KL5','CHEM','kisii','kisii','',116,'','','','','',NULL,NULL,NULL,'BARINGO','kisii level 5','','','','kisii level 5 ','okarmikell@gmail.com',NULL,'0','2017-05-22 08:51:39','micro@nphls.or.ke','2017-06-13 10:46:44','osoromichael@gmail.com','active','3',1,'11555','0'),(17,'osoro','no','kisii level 5','KL5','CHEM','kisii','kisii','',116,'','','','',NULL,NULL,NULL,NULL,'KISII','kisii level 5','','','','kisii level 5 ','okarmikell@gmail.com',NULL,'0','2017-05-22 08:54:28','micro@nphls.or.ke',NULL,NULL,'active','0',1,NULL,'0'),(19,'oiuoiu','no','iuoiuoi','uiouoi','oiuoiu','uoiuo','uiouoiu','uoiuio',116,'','','','',NULL,NULL,NULL,NULL,'BARINGO','iuoiuoi','','','','iuoiuoi ','kenyayetu@gmail.com',NULL,'0','2017-05-22 09:32:00','micro@nphls.or.ke',NULL,NULL,'active','3',1,'uiouo','0'),(20,'0002','no',NULL,'00002','00002','0002','nairobi','',116,'','','','','',NULL,NULL,NULL,'? string:30 ?','MALINDI','','','',' ','mosoros@abnosoftwares.co.ke',NULL,'level 4','2017-05-23 11:35:25','micro@nphls.or.ke','2017-06-15 14:59:58','osoromichael@gmail.com','active','3',1,'11553','0'),(22,'2131','no','21312','21321','2131','21321','21321','131',116,'','1231','3122','',NULL,NULL,NULL,'','BARINGO','21312','','','','21312 ','okarmikell@gmail.com',NULL,'0','2017-05-23 12:32:29','micro@nphls.or.ke',NULL,NULL,'active','3',1,'213132','0'),(23,'8797898','no','','7987978','79879','87987987','987987','',116,'12','','','1212',NULL,NULL,NULL,'','2','','','321321','1231321',' ','546456@gmail.com',NULL,'0','2017-05-23 12:40:32','micro@nphls.or.ke',NULL,NULL,'active','0',1,NULL,'0'),(24,'sdfsdf234234','no','sdfsdf','sdfsdf','sdfsdf','sdfsdf','sdfsdf','',116,'dfgdfg','','','dfg',NULL,NULL,NULL,'','12','sdfsdf','sdfsd','0711560619','0711560618','sdfsdf sdfsd','asdfsad123f@gmail.com',NULL,'0','2017-05-24 11:00:04',NULL,NULL,NULL,'active','1',1,NULL,'0'),(27,'0009','no',NULL,'KISII LEVEL 5','LABORATORY','KISII','KISII','',116,'dfgdfg','','','dfg','',NULL,NULL,NULL,'KISII','KISII LEVEL 5','sdfsd','0711560619','0711560618','sdfsdf sdfsd','osoromichael@gmail.co.ke',NULL,'level 5','2017-05-24 11:08:42',NULL,'2017-06-15 15:02:15','osoromichael@gmail.com','active','3',1,'11555','0'),(28,'xxxxx','no','xxxx','xxxx','xxxx','xxxx','xxxx','',116,'234','','','sdfsdf','','',NULL,'4','13','xxxx','','12132546','125463','xxxx xxx','xxxxx@gmail.com','Hospital','1','2017-05-24 11:44:20',NULL,'2017-05-24 15:32:05','vladmin@nphls.or.ke','active','1',1,NULL,'0'),(29,'qweqwe','no','qweqwe','qweqwe','qweqwe','qweqwe','qweqwe','',116,'DFGDFG','','','DFDF',NULL,NULL,NULL,'','5','qweqwe','qweqwe','23423423','234234234','qweqwe qweqwe','qweqweqw@gmail.com',NULL,'0','2017-05-24 11:52:29',NULL,NULL,NULL,'active','1',1,NULL,'0'),(30,'MFL0001','no','KISII','KISII LEVEL 5','BIOCHEMISTRY','kisii hospital street','KISII','',116,'402000','','','kisii,hospital road ,next to kmtc','','96',NULL,'','16','KISII','','0721671211','0700000000','KISII HOSPITAL','kisiihospital@gmail.com','CDC','1','2017-05-24 15:38:37',NULL,'2017-05-29 10:16:28','osoromichael@gmail.com','active','1',1,NULL,'0'),(31,'MFL0002','no','NAKURU','NAKURU','BIO','NAKURU','NAKURU','',116,'0012','','','nakuru hospital',NULL,NULL,NULL,'','31','NAKURU','HOSPITAL','0711560916','0721456654','NAKURU HOSPITAL','osoromichael@gmail.cof',NULL,'0','2017-05-24 15:44:52',NULL,NULL,NULL,'active','1',1,NULL,'0'),(33,'MFL007','no','KISUMU','KISUMU','CHEMISTRY','KISUMU ROAD','KISUMU','',116,'235','','','kisumu road','','',NULL,'7','17','KISUMU','','0711560619','','KISUMU MASENO','kisumu@gmail.co.ke','Mobile VCT','3','2017-05-24 15:52:23',NULL,'2017-05-24 16:02:15','osoromichael@gmail.com','active','1',1,NULL,'0'),(34,'00002','no',NULL,'TEST LAB','LABORATORY','','KISII','',116,'','','','','',NULL,NULL,NULL,'BUSIA','TEST LAB','','','','TEST LAB ','olilo@gmail.com',NULL,'level 5','2017-06-13 17:06:13','osoromichael@gmail.com','2017-06-15 14:57:45','osoromichael@gmail.com','active','3',1,'TES001','0'),(35,'TEST 2','no',NULL,'TEST 2','CHEMICTRY','','NAIROBI','',116,'','','','','',NULL,NULL,NULL,'NAIROBI','TEST NAIROBI 2','','','','TEST2 ','test@gmail.com',NULL,'level 6','2017-06-13 17:10:59','osoromichael@gmail.com','2017-06-13 17:28:26','osoromichael@gmail.com','active','3',1,'0002TEST','0'),(36,'111555','no','MSORO','ELD REFERRAL','LABORATORY','ELDORET','ELDORET','',116,'','','','eldoret',NULL,NULL,NULL,'','44','MSORO','OKARI','0737239910','','MSORO OKARI','mosoross@abnosoftwares.co.ke',NULL,'','2017-06-21 14:26:07',NULL,NULL,NULL,'active','1',1,NULL,'0'),(38,'000032','no','LOGIN','LOGIN TEST','TEST','TEST','TEST','',116,'254','','','test address',NULL,NULL,NULL,'','30','LOGIN','TEST','0711560629','','LOGIN TEST','mosoro@abnosoftwares.co.ke',NULL,'','2017-06-21 16:49:36',NULL,NULL,NULL,'active','1',1,NULL,'1'),(39,'P00019','yes',NULL,'LOGIN TEST',NULL,NULL,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'another','tester',NULL,'0723232323',NULL,'anothertest@gmail.com',NULL,NULL,'2017-06-22 09:02:47','mosoro@abnosoftwares.co.ke',NULL,NULL,'active','0',1,NULL,'0'),(40,'P00020','yes',NULL,'LOGIN TEST',NULL,NULL,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TESTER','TWO',NULL,'07115603619',NULL,'testertwo@gmail.com',NULL,NULL,'2017-06-22 09:29:46','mosoro@abnosoftwares.co.ke',NULL,NULL,'active','0',1,NULL,'0'),(41,'P00021','yes',NULL,'KNH',NULL,NULL,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'test','',NULL,'',NULL,'osoromichael@gmail.com2',NULL,NULL,'2017-10-19 08:16:34','osoromichaels@gmail.com',NULL,NULL,'active','0',1,NULL,'0'),(42,'P00022','yes',NULL,'KNH',NULL,NULL,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'osoro','',NULL,'',NULL,'osoro@gmail.com',NULL,NULL,'2017-10-19 08:17:20','osoromichaels@gmail.com',NULL,NULL,'active','0',1,NULL,'0'),(43,'00012','no','','TEST','TEST','KISII','TEST','',116,'','','','',NULL,NULL,NULL,'','16','','','','',' ','mosoro@abnosoftwares.co.ke',NULL,'','2017-10-23 12:43:29',NULL,NULL,NULL,'active','1',1,NULL,'1'),(44,'00121','no','TEST','K TEST','C-TEST','TEST','TEST','',116,'kisii','','','kisii',NULL,NULL,NULL,'','16','TEST','TEST','','','TEST TEST','osoro.michael@icloud.com',NULL,'','2017-10-23 12:57:27',NULL,NULL,NULL,'active','1',1,NULL,'1'),(45,'P00025','yes',NULL,'K TEST',NULL,NULL,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'k test user','k test user',NULL,'0711560619',NULL,'mosoro@abnosoftwares.co.ke',NULL,NULL,'2017-10-23 13:09:48','osoro.michael@icloud.com',NULL,NULL,'active','0',1,NULL,'0'),(46,'blank','no','test','test','test','test','test','test',116,'','','','',NULL,NULL,NULL,'1','county','test','','','','test ','osoromichael@gmail.com2',NULL,'1','2017-11-15 09:36:49','okarmikell@gmail.com',NULL,NULL,'active','1',1,'123456','0'),(48,'4521/48','no',NULL,'121212','12212','111','11','11',116,'','','','','','1',NULL,'7','kisii','1212','','','','1212 ','osoromichael@gmail.com2','CDC','1','2017-11-15 09:41:12','okarmikell@gmail.com','2017-11-15 10:02:48','okarmikell@gmail.com','active','1',1,'4521','0'),(49,'1234/49','no',NULL,'test','test','test','test','test',116,'','','','','','1',NULL,'9','kisii','test','','','','test ','test2@gmail.com','CDC','1','2017-11-15 10:14:34','okarmikell@gmail.com','2017-11-15 10:22:43','okarmikell@gmail.com','active','1',1,'1234','0'),(50,'8980/50','no','prog test','prog test','prog','prog','kisii','',116,'','','','',NULL,NULL,NULL,'8','16','prog test','','','','prog test ','osoromichael@gmail.com2','','3','2017-11-15 11:15:24','okarmikell@gmail.com',NULL,NULL,'active','1',1,'8980','0'),(51,'123456','no','Osoro Michael','nakuru','vl','nakuru','kisii','',116,'','','','kisii kenya',NULL,NULL,NULL,'','8','Osoro Michael','okari','','','Osoro Michael okari','osoromichael@icloud.com',NULL,'','2017-11-15 11:40:00',NULL,NULL,NULL,'active','1',1,NULL,'1'),(52,'987654/52','no',NULL,'referral','vl','a','kisii','',116,'','','','','','1',NULL,'','16','Check test','','','0737239910',' ','osoromichael222@gmail.com','','1','2017-11-15 12:17:54',NULL,'2018-03-28 09:12:51','okarmikell@gmail.com','active','1',1,'987654','1'),(53,'P00032','yes',NULL,'referral',NULL,NULL,NULL,NULL,116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'osoro','michael',NULL,'0711560619',NULL,'mosoro@abnosoftwares.co.ke',NULL,NULL,'2017-11-15 12:31:55','osoromichael@gmail.com',NULL,NULL,'active','1',1,NULL,'0'),(54,'9090901/54','no','Osoro Michael','Mombasa RH','VL','mombasa','mombasa','',116,'','','','',NULL,NULL,NULL,'','16','Osoro Michael','Okari','','','Osoro Michael Okari','osoromichael@outlook.com',NULL,'','2017-11-20 13:11:46',NULL,NULL,NULL,'active','1',1,'9090901','1'),(55,'45871205/55','no','mombasa test','MRH','vl','mbs likoni','mba','',116,'40200','','','mba likoni',NULL,NULL,NULL,'','28','osoro','michael','0711560619','0737239910','osoro michael','mombasatest@gmail.com',NULL,'','2017-11-20 14:21:06',NULL,NULL,NULL,'active','1',1,'45871205','1'),(56,'452125/56','no','Test','Test','Test','','kisii','',116,'','','','',NULL,NULL,NULL,'11','9','Test','','','','Test ','osoromichael@gmail.com','CDC','1','2018-03-28 09:14:20','okarmikell@gmail.com',NULL,NULL,'active','1',1,'452125','0');
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_enrolled_programs_map`
--

DROP TABLE IF EXISTS `participant_enrolled_programs_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_enrolled_programs_map` (
  `participant_id` int(11) NOT NULL,
  `ep_id` int(11) NOT NULL,
  PRIMARY KEY (`participant_id`,`ep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_enrolled_programs_map`
--

LOCK TABLES `participant_enrolled_programs_map` WRITE;
/*!40000 ALTER TABLE `participant_enrolled_programs_map` DISABLE KEYS */;
INSERT INTO `participant_enrolled_programs_map` VALUES (28,1),(28,2),(33,1),(33,2),(50,3),(50,4),(56,4),(56,5);
/*!40000 ALTER TABLE `participant_enrolled_programs_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_manager_map`
--

DROP TABLE IF EXISTS `participant_manager_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_manager_map` (
  `participant_id` int(11) NOT NULL,
  `dm_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT '1',
  `Parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`participant_id`,`dm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_manager_map`
--

LOCK TABLES `participant_manager_map` WRITE;
/*!40000 ALTER TABLE `participant_manager_map` DISABLE KEYS */;
INSERT INTO `participant_manager_map` VALUES (13,4,'1',0),(13,13,'1',0),(24,7,'1',0),(27,32,'1',0),(28,5,'1',0),(30,18,'1',17),(31,3,'1',0),(31,11,'1',0),(36,14,'1',0),(36,16,'1',14),(38,17,'1',0),(39,19,'1',17),(40,20,'1',17),(42,22,'1',3),(43,23,'1',0),(44,24,'1',0),(44,25,'1',24),(49,18,'1',0),(49,19,'1',0),(50,19,'1',0),(51,26,'1',0),(52,27,'1',0),(53,28,'1',27),(54,30,'1',0),(55,31,'1',0);
/*!40000 ALTER TABLE `participant_manager_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantassays`
--

DROP TABLE IF EXISTS `participantassays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participantassays` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AssayID` int(11) DEFAULT NULL,
  `Participant` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantassays`
--

LOCK TABLES `participantassays` WRITE;
/*!40000 ALTER TABLE `participantassays` DISABLE KEYS */;
INSERT INTO `participantassays` VALUES (1,1,37),(2,2,37),(3,3,37),(4,1,36),(5,3,36),(6,1,38),(7,2,38),(8,3,38),(9,1,39),(10,2,39),(11,3,39),(12,1,40),(13,1,41),(14,2,41),(15,3,41),(16,4,41),(17,1,42),(18,2,42),(19,3,42),(20,4,42),(21,2,45),(22,3,45),(23,3,53);
/*!40000 ALTER TABLE `participantassays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(500) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'CDC','',1,2,'2017-05-26 10:35:15','active');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `file_name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_control`
--

DROP TABLE IF EXISTS `r_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_control` (
  `control_id` int(11) NOT NULL AUTO_INCREMENT,
  `control_name` varchar(255) DEFAULT NULL,
  `for_scheme` varchar(255) DEFAULT NULL,
  `is_active` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_control`
--

LOCK TABLES `r_control` WRITE;
/*!40000 ALTER TABLE `r_control` DISABLE KEYS */;
INSERT INTO `r_control` VALUES (1,'Kit Negative Control','eid','active'),(2,'Kit Positive Control','eid','active'),(3,'PT Provider Negative Control','eid','active'),(4,'PT Provider Positive Control','eid','active'),(5,'In-House Negative Control','eid','active'),(6,'In-House Positive Control	','eid','active'),(7,'Negative Control','vl','active'),(8,'Low Positive Control','vl','active'),(9,'High Positive Control','vl','active');
/*!40000 ALTER TABLE `r_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_dbs_eia`
--

DROP TABLE IF EXISTS `r_dbs_eia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_dbs_eia` (
  `eia_id` int(11) NOT NULL AUTO_INCREMENT,
  `eia_name` varchar(500) NOT NULL,
  PRIMARY KEY (`eia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dbs_eia`
--

LOCK TABLES `r_dbs_eia` WRITE;
/*!40000 ALTER TABLE `r_dbs_eia` DISABLE KEYS */;
INSERT INTO `r_dbs_eia` VALUES (1,'EIA-01 BioRad Genetic Systems HIV 1/2 plus O'),(2,'EIA-02 bioMerieux Vironostika Uniform II plus O (3rd gen)'),(3,'EIA-03 bioMerieux Vironostika HIV Ag/Ab (4th gen)'),(4,'EIA-04 Murex HIV 1.2.0 (3rd gen)');
/*!40000 ALTER TABLE `r_dbs_eia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_dbs_wb`
--

DROP TABLE IF EXISTS `r_dbs_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_dbs_wb` (
  `wb_id` int(11) NOT NULL AUTO_INCREMENT,
  `wb_name` varchar(500) NOT NULL,
  PRIMARY KEY (`wb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dbs_wb`
--

LOCK TABLES `r_dbs_wb` WRITE;
/*!40000 ALTER TABLE `r_dbs_wb` DISABLE KEYS */;
INSERT INTO `r_dbs_wb` VALUES (1,'WB-01 BioRad GS HIV- 1 Western Blot'),(2,'WB-02 Cambridge Biotech HIV-1 Western Blot'),(3,'WB-03 BioRad LAV Blot I '),(4,'WB-04 Genelab Diagnostics HIV Blot kit');
/*!40000 ALTER TABLE `r_dbs_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_dts_corrective_actions`
--

DROP TABLE IF EXISTS `r_dts_corrective_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_dts_corrective_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `corrective_action` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_dts_corrective_actions`
--

LOCK TABLES `r_dts_corrective_actions` WRITE;
/*!40000 ALTER TABLE `r_dts_corrective_actions` DISABLE KEYS */;
INSERT INTO `r_dts_corrective_actions` VALUES (1,'Please submit response before last date','Late response, response not evaluated. Your response received after last date. Expected result for PT panel will be available for your reference. '),(2,'Review and refer to SOP for testing. Sample should be tested per National HIV Testing algorithm. ','For sample (1/2/3?) National HIV Testing algorithm was not followed.'),(3,'Review all testing procedures prior to performing client testing as reported result does not match expected result.','Sample (1/2/3?) reported result does not match with expected result.'),(4,'You are required to test all samples in PT panel','Sample (1/2/3) was not reported '),(5,'Ensure expired test kit are not be used for testing. If test kits are not available, please contact your superior.','Test kit XYZ expired M days before the test date DD-MON-YYY.'),(6,'Ensure expiry date information is submitted for all performed tests.','Result not evaluated Ð test kit expiry date (first/second/third) is not reported with PT response.'),(7,'Ensure test kit name is reported for all performed tests.','Result not evaluated Ð name of test kit not reported.'),(8,'Please use the approved test kits according to the SOP/National HIV Testing algorithm for confirmatory and tie-breaker.','Testkit XYZ repeated for all 3 test kits'),(9,'Please use the approved test kits according to the SOP/National HIV Testing algorithm for confirmatory and tie-breaker.','Test kit repeated for confirmatory or tiebreaker test (T1/T2/T3).'),(10,'Ensure test kit lot number is reported for all performed tests. ','Result not evaluated Ð Test Kit lot number (first/second/third) is not reported.'),(11,'Ensure to provide supervisor approval along with his name.','Missing supervisor approval for reported result.'),(12,'Ensure to provide sample rehydration date','Re-hydration date missing in PT report form.'),(13,'Ensure to provide to provide panel testing date.','Testing date missing in PT report form.'),(14,'DTS Testing should be done within specified hours of rehydration as per SOP.','Testing is not performed within X to Y hours of rehydration.'),(15,'Review all testing procedures prior to performing client testing and contact your supervisor for improvement.','Participant did not meet the score criteria (Participant Score is 80 and Required Score is 95)'),(16,'Ensure to provide to provide panel receipt date. ','Panel receipt date missing in PT report form.'),(17,'Please test DTS sample as per National HIV Testing algorithm. Review and refer to SOP for testing.','For Test (1/2/3) testing is not performed with country approved test kit.');
/*!40000 ALTER TABLE `r_dts_corrective_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_eid_detection_assay`
--

DROP TABLE IF EXISTS `r_eid_detection_assay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_eid_detection_assay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_eid_detection_assay`
--

LOCK TABLES `r_eid_detection_assay` WRITE;
/*!40000 ALTER TABLE `r_eid_detection_assay` DISABLE KEYS */;
INSERT INTO `r_eid_detection_assay` VALUES (1,'COBAS Ampliprep/Taqman HIV-1 Qual Test','active'),(2,'Roche - Amplicor HIV-1 Monitor Test','active'),(3,'QIAamp Viral Mini Kit (DNA or RNA)','active'),(4,'Biocentric - Generic','active'),(5,'Chelex','active'),(6,'In House','active'),(7,'Abbott RealTime HIV-1 Qualitative Assay','active'),(10,'GeneExpert ','active'),(11,'AlereQ ','active');
/*!40000 ALTER TABLE `r_eid_detection_assay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_eid_extraction_assay`
--

DROP TABLE IF EXISTS `r_eid_extraction_assay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_eid_extraction_assay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_eid_extraction_assay`
--

LOCK TABLES `r_eid_extraction_assay` WRITE;
/*!40000 ALTER TABLE `r_eid_extraction_assay` DISABLE KEYS */;
INSERT INTO `r_eid_extraction_assay` VALUES (1,'COBAS Ampliprep/Taqman HIV-1 Qual Test','active'),(2,'Roche - Amplicor HIV-1 Monitor Test','active'),(3,'QI Aamp Viral Mini Kit (DNA or RNA)','active'),(4,'Biocentric - Generic','active'),(5,'Chelex','active'),(6,'In House','active'),(7,'Abbott RealTime HIV-1 Qualitative Assay','active'),(8,'Other','active');
/*!40000 ALTER TABLE `r_eid_extraction_assay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_enrolled_programs`
--

DROP TABLE IF EXISTS `r_enrolled_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_enrolled_programs` (
  `r_epid` int(11) NOT NULL AUTO_INCREMENT,
  `enrolled_programs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_epid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_enrolled_programs`
--

LOCK TABLES `r_enrolled_programs` WRITE;
/*!40000 ALTER TABLE `r_enrolled_programs` DISABLE KEYS */;
INSERT INTO `r_enrolled_programs` VALUES (1,'PEPFAR RTQI Program'),(2,'PEPFAR'),(3,'VL'),(4,'EID'),(5,'BOTH(VL & EID)');
/*!40000 ALTER TABLE `r_enrolled_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_evaluation_comments`
--

DROP TABLE IF EXISTS `r_evaluation_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_evaluation_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_evaluation_comments`
--

LOCK TABLES `r_evaluation_comments` WRITE;
/*!40000 ALTER TABLE `r_evaluation_comments` DISABLE KEYS */;
INSERT INTO `r_evaluation_comments` VALUES (1,'dts','Mandatory Samples not reported'),(2,'dts','Minimum score not reached'),(3,'eid','Controls were not reported'),(4,'eid','Unsatisfactory score'),(5,'vl','There were not enough responses for the VL Assay chosen'),(6,'vl','Some mandatory samples were not reported'),(7,'dbs','Some Mandatory samples were not reported'),(8,'','Did not meet the minimum score required');
/*!40000 ALTER TABLE `r_evaluation_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_modes_of_receipt`
--

DROP TABLE IF EXISTS `r_modes_of_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_modes_of_receipt` (
  `mode_id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_modes_of_receipt`
--

LOCK TABLES `r_modes_of_receipt` WRITE;
/*!40000 ALTER TABLE `r_modes_of_receipt` DISABLE KEYS */;
INSERT INTO `r_modes_of_receipt` VALUES (1,'Online Response'),(2,'Courier'),(3,'Email'),(4,'Scan'),(5,'SMS');
/*!40000 ALTER TABLE `r_modes_of_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_network_tiers`
--

DROP TABLE IF EXISTS `r_network_tiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_network_tiers` (
  `network_id` int(11) NOT NULL AUTO_INCREMENT,
  `network_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`network_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_network_tiers`
--

LOCK TABLES `r_network_tiers` WRITE;
/*!40000 ALTER TABLE `r_network_tiers` DISABLE KEYS */;
INSERT INTO `r_network_tiers` VALUES (1,'Primary care laboratory service tier'),(2,'Secondary and tertiary laboratory service tiers'),(3,'Public Health Reference Laboratories');
/*!40000 ALTER TABLE `r_network_tiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_participant_affiliates`
--

DROP TABLE IF EXISTS `r_participant_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_participant_affiliates` (
  `aff_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate` varchar(255) NOT NULL,
  PRIMARY KEY (`aff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_participant_affiliates`
--

LOCK TABLES `r_participant_affiliates` WRITE;
/*!40000 ALTER TABLE `r_participant_affiliates` DISABLE KEYS */;
INSERT INTO `r_participant_affiliates` VALUES (1,'PMTCT'),(2,'VCT'),(3,'Mobile VCT'),(4,'Hospital');
/*!40000 ALTER TABLE `r_participant_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_possibleresult`
--

DROP TABLE IF EXISTS `r_possibleresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_possibleresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_id` varchar(45) NOT NULL,
  `scheme_sub_group` varchar(45) DEFAULT NULL,
  `response` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_possibleresult`
--

LOCK TABLES `r_possibleresult` WRITE;
/*!40000 ALTER TABLE `r_possibleresult` DISABLE KEYS */;
INSERT INTO `r_possibleresult` VALUES (1,'dts','DTS_TEST','REACTIVE'),(2,'dts','DTS_TEST','NONREACTIVE'),(3,'dts','DTS_TEST','INVALID'),(4,'dts','DTS_FINAL','POSITIVE'),(5,'dts','DTS_FINAL','NEGATIVE'),(6,'dts','DTS_FINAL','INDETERMINATE'),(7,'eid','EID_FINAL','Positive (HIV Detected)'),(8,'eid','EID_FINAL','Negative (HIV Not Detected)'),(10,'dbs','DBS_FINAL','P'),(11,'dbs','DBS_FINAL','N'),(12,'dts','DTS_FINAL','Not Tested'),(13,'dts','DTS_FINAL','NOT TESTED');
/*!40000 ALTER TABLE `r_possibleresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_results`
--

DROP TABLE IF EXISTS `r_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `result_name` varchar(255) NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_results`
--

LOCK TABLES `r_results` WRITE;
/*!40000 ALTER TABLE `r_results` DISABLE KEYS */;
INSERT INTO `r_results` VALUES (1,'Pass'),(2,'Fail'),(3,'Excluded'),(4,'Not Evaluated');
/*!40000 ALTER TABLE `r_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_site_type`
--

DROP TABLE IF EXISTS `r_site_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_site_type` (
  `r_stid` int(11) NOT NULL AUTO_INCREMENT,
  `site_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_stid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_site_type`
--

LOCK TABLES `r_site_type` WRITE;
/*!40000 ALTER TABLE `r_site_type` DISABLE KEYS */;
INSERT INTO `r_site_type` VALUES (1,'VCT'),(2,'Mobile VCT'),(3,'TB Center'),(4,'Antenatal Clinic (PMTCT)'),(5,'Outpatient Clinic'),(6,'Hospital'),(7,'Laboratory'),(8,'District'),(9,'Province'),(10,'Region'),(11,'Department'),(12,'Other');
/*!40000 ALTER TABLE `r_site_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_testkitname_dts`
--

DROP TABLE IF EXISTS `r_testkitname_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_testkitname_dts` (
  `TestKitName_ID` varchar(50) NOT NULL,
  `scheme_type` varchar(255) NOT NULL,
  `TestKit_Name` varchar(100) DEFAULT NULL,
  `TestKit_Name_Short` varchar(50) DEFAULT NULL,
  `TestKit_Comments` varchar(50) DEFAULT NULL,
  `Updated_On` datetime DEFAULT NULL,
  `Updated_By` int(11) DEFAULT NULL,
  `Installation_id` varchar(50) DEFAULT NULL,
  `TestKit_Manufacturer` varchar(50) DEFAULT NULL,
  `Created_On` datetime DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Approval` int(1) DEFAULT '1' COMMENT '1 = Approved , 0 not approved.',
  `TestKit_ApprovalAgency` varchar(20) DEFAULT NULL COMMENT 'USAID, FDA, LOCAL',
  `source_reference` varchar(50) DEFAULT NULL,
  `CountryAdapted` int(11) DEFAULT NULL COMMENT '0= Not allowed in the country 1 = approved in country ',
  `testkit_1` int(11) NOT NULL DEFAULT '0',
  `testkit_2` int(11) NOT NULL DEFAULT '0',
  `testkit_3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TestKitName_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_testkitname_dts`
--

LOCK TABLES `r_testkitname_dts` WRITE;
/*!40000 ALTER TABLE `r_testkitname_dts` DISABLE KEYS */;
INSERT INTO `r_testkitname_dts` VALUES ('tk245A0egsg03q6','','Advanced Quality',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:58:54',NULL,0,NULL,NULL,NULL,0,0,0),('tk50f41f66a2388','dts','ACON HIV 1/2/0 Tri-line','ACON HIV 1/2/0 Tri',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a238f','dts','Alere Determine HIV-1/2','Alere Determine HIV-1/2',NULL,'2013-01-14 10:09:21',0,'0',' Alere/Abbott Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a2399','dts','Aware HIV-1/2 BSP','Aware HIV-1/2 BSP',NULL,'2013-01-14 10:09:21',0,'0',' Calypte Biomedical ','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a239e','dts','Bionor HIV-1&2','Bionor HIV-1&2',NULL,'2013-01-14 10:09:21',0,'0',' Bionor A/S ','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23a7','dts','Calypte Aware HIV-1/2 OMT ','Calypte Aware HIV-',NULL,'2013-01-14 10:09:21',0,'0',' Calypte Biomedical Corp.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23b1','dts','Care Start HIV 1-2-O','Care Start HIV 1-2',NULL,'2013-01-14 10:09:21',0,'0',' Access Bio, Inc.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23b5','dts','ClearviewÃ‚Â® COMPLETE HIV1/2 (formerly SURE) CHECKÃ‚Â® HIV1/2)','ClearviewÃ‚Â® COMPLETE HIV1/2 Non - US Labeling',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23ba','dts','ClearviewÃ‚Â® COMPLETE HIV1/2 - US labeling** (formerly SURE CHECKÃ‚Â® HIV1/2)','ClearviewÃ‚Â® COMPLETE HIV1/2 - US labeling ',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23bf','dts','Clearview  HIV 1/2 STAT-PAK Assay','Clearview  HIV 1/2',NULL,'2013-01-14 10:09:21',0,'0',' Alere','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23c4','dts','Combaids RS Advantage','Combaids RS Advant',NULL,'2013-01-14 10:09:21',0,'0',' Span Diagnostics Ltd.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23c8','dts','DPP HIV 1/2 Screen ','DPP HIV 1/2 Screen',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23cd','dts','DPP HIV 1 / 2 Screen Assay  Oral Fluid, Whole Blood,Serum & Plasma','DPP HIV 1 / 2 Scre',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23d1','dts','Double Check HIV 1&2','Double Check HIV 1',NULL,'2013-01-14 10:09:21',0,'0',' Alere/ Orgenics, Ltd','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23d6','dts','Double Check Gold HIV1&2','Double Check Gold ',NULL,'2013-01-14 10:09:21',0,'0',' Alere/ Orgenics, Ltd','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23db','dts','EZ-TRUST Rapid Anti-HIV (1&2) Test','EZ-TRUST Rapid Ant',NULL,'2013-01-14 10:09:21',0,'0',' CS Innovation','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23df','dts','First Response HIV 1-2.0','First Response HIV',NULL,'2013-01-14 10:09:21',0,'0',' Premier Medical Corporation','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a23e3','dts','Genie Fast HIV 1/2 ','Genie Fast HIV 1/2',NULL,'2013-01-14 10:09:21',0,'0',' Bio-Rad Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23e8','dts','HIV 1/2 Gold Rapid Screen Test ','HIV 1/2 Gold Rapid',NULL,'2013-01-14 10:09:21',0,'0',' Medinostics IntÃ¢â‚¬â„¢l','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23ed','dts','HIV 1/2 Rapid Test Kit','HIV 1/2 Rapid Test',NULL,'2013-01-14 10:09:21',0,'0',' Medinostics IntÃ¢â‚¬â„¢l','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23f1','dts','HIV 1/ 2 STAT-PAK Assay','HIV 1/ 2 STAT-PAK ',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23f6','dts','HIV 1/2 STAT-PAK Dipstick Assay','HIV 1/2 STAT-PAK D',NULL,'2013-01-14 10:09:21',0,'0',' Chembio Diagnostic Systems, Inc','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23fa','dts','HIV(1+2) Rapid Test Strip','HIV(1+2) Rapid Tes',NULL,'2013-01-14 10:09:21',0,'0',' Shanghai Kehua Bio-engineering Co., Ltd (KHB)','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a23ff','dts','HIVSav 1&2 Rapid SeroTest','HIVSav 1&2 Rapid S',NULL,'2013-01-14 10:09:21',0,'0',' Savyvon Diagnostics Ltd.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2404','dts','iCARE Rapid Anti-HIV (1&2) ','iCARE Rapid Anti-H',NULL,'2013-01-14 10:09:21',0,'0',' JAL Innovation','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2408','dts','ImmunoComb HIV 1&2','ImmunoComb HIV 1&2',NULL,'2013-01-14 10:09:21',0,'0',' Alere/ Orgenics, Ltd','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a240d','dts','InstantCHEK HIV1+2','InstantCHEK HIV1+2',NULL,'2013-01-14 10:09:21',0,'0',' EY Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2411','dts','KSII  HIV 1/2 Rapid Diagnostic Test Kit ','KSII  HIV 1/2 Rapi',NULL,'2013-01-14 10:09:21',0,'0',' K. Shorehill Int\'l, Inc.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2415','dts','MPI Diagnostics Anti-HIV (1&2) Test ','MPI Diagnostics An',NULL,'2013-01-14 10:09:21',0,'0',' MPI Diagnostics','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a241a','dts','INSTI HIV Antibody','INSTI HIV Antibody',NULL,'2013-01-14 10:09:21',0,'0',' Biolytical Laboratories','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a241f','dts','Multispot HIV-1/HIV-2','Multispot HIV-1/HI',NULL,'2013-01-14 10:09:21',0,'0',' Bio-Rad laboratories','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2423','dts','OraQuick ADVANCE Rapid HIV-1/2','OraQuick ADVANCE R',NULL,'2013-01-14 10:09:21',0,'0',' OraSure Technologies','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a2428','dts','OraQuick HIV-1/2 Rapid Antibody Test','OraQuick HIV-1/2 R',NULL,'2013-01-14 10:09:21',0,'0',' OraSure Technologies','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,1,1),('tk50f41f66a242c','dts','RAPID 1-2-3 HEMA Dipstick','RAPID 1-2-3 HEMA D',NULL,'2013-01-14 10:09:21',0,'0',' Hema Diagnostics Systems','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2430','dts','RAPID 1-2-3 HEMA EZ ','RAPID 1-2-3 HEMA E',NULL,'2013-01-14 10:09:21',0,'0',' Hema Diagnostics Systems','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2435','dts','RAPID 1-2-3 HEMA EXPRESS','RAPID 1-2-3 HEMA E',NULL,'2013-01-14 10:09:21',0,'0',' Hema Diagnostics Systems','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2439','dts','Reveal Rapid HIV Test','Reveal Rapid HIV T',NULL,'2013-01-14 10:09:21',0,'0',' MedMira','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a243e','dts','Reveal G3 Rapid HIV-1 Antibody Test','Reveal G3 Rapid HI',NULL,'2013-01-14 10:09:21',0,'0',' MedMira','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2443','dts','Signal HIV Rapid Test','Signal HIV Rapid T',NULL,'2013-01-14 10:09:21',0,'0',' Span Diagnostics Ltd.','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a2447','dts','Uni-Gold HIV - USAID','Uni-Gold HIV -USAID',NULL,'2013-01-14 10:09:21',0,'0',' Trinity Biotech','2012-06-06 11:53:26',0,1,'USAID','USAID Approval List March 30, 2012',1,1,0,1),('tk50f41f66a244b','dts','Uni-Gold Recombigen HIV - FDA','Uni-Gold Recombige - FDA',NULL,'2013-01-14 10:09:21',0,'0',' Trinity Biotech','2012-06-06 11:53:26',0,1,'FDA','USAID Approval List March 30, 2012',1,1,0,1),('tk5136b425387a4','dts','First Own Test Kit','MyKitname','Comments',NULL,NULL,'LOG4fabc8babf6eb','Oh','2013-03-06 04:12:37',0,1,'WHO and National','Yes',1,1,0,1),('tk5137b608ac1d9','dts','Hexagon HIVI II','Hexagon','rwer',NULL,NULL,'LOG4fabc8babf6eb','rewr','2013-03-06 22:32:56',0,0,'NA','Yes',1,1,0,1),('tk51435b69f3b7e','dts','gdfg','gfdg','gfdg',NULL,NULL,'5132ceba8fafa','gfdg','2013-03-15 18:33:29',0,1,'NA','NA',1,1,0,1),('tk514b50a81832c','dts','Test Kit New ','New ','dasd',NULL,NULL,'5132ceba8fafa','dsad','2013-03-21 19:25:44',0,1,'Other','Yes',1,1,0,1),('tkHhd7y1xOFIOzl','','bioline',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:58:52',NULL,0,NULL,NULL,NULL,0,0,0),('tkHmogbQfQTpk6c','','Abon',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:53:23',NULL,0,NULL,NULL,NULL,0,0,0),('tkjbtACskirhDkM','','Advance Quality',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:53:23',NULL,0,NULL,NULL,NULL,0,0,0),('tkuEhwZIYiS7A1B','','Determine',NULL,NULL,NULL,NULL,NULL,NULL,'2015-09-08 07:55:27',NULL,0,NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `r_testkitname_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_vl_assay`
--

DROP TABLE IF EXISTS `r_vl_assay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_vl_assay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_vl_assay`
--

LOCK TABLES `r_vl_assay` WRITE;
/*!40000 ALTER TABLE `r_vl_assay` DISABLE KEYS */;
INSERT INTO `r_vl_assay` VALUES (1,'Plasma HIV RNA measurement','Plasma HIV RNA'),(2,'DBS HIV RNA measurement','DBS HIV RNA'),(3,'DBS HIV DNA PCR','DBS HIV DNA PCR'),(4,'test','test');
/*!40000 ALTER TABLE `r_vl_assay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readinesschecklist`
--

DROP TABLE IF EXISTS `readinesschecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readinesschecklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParticipantID` int(11) NOT NULL,
  `q1` varchar(100) DEFAULT NULL,
  `q2` varchar(100) DEFAULT NULL,
  `q3` varchar(100) DEFAULT NULL,
  `q4` text,
  `q5` varchar(100) DEFAULT NULL,
  `q6` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `verdict` varchar(250) DEFAULT NULL,
  `comment` text,
  `added_by` int(11) DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `RoundID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UN_KEY` (`ParticipantID`,`RoundID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readinesschecklist`
--

LOCK TABLES `readinesschecklist` WRITE;
/*!40000 ALTER TABLE `readinesschecklist` DISABLE KEYS */;
INSERT INTO `readinesschecklist` VALUES (12,22,'1','1','1','','1','1','Complete','Approved','none',NULL,'2017-05-26 11:14:47',5),(13,22,'0','0','0','yes','0','0','Approved','Approved',NULL,NULL,'2017-05-26 11:31:17',10),(14,29,'0','0','0','YES','0','0','In review','Approved',NULL,NULL,'2017-05-30 14:08:12',10),(15,31,'yes','yes','yes','n/a','yes','no','Complete','Congratulations, you have been approved for participation in this EQA round. Your panel will be shipped within 2 weeks. We greatly appreciate your continued support','okay',NULL,'2017-06-27 09:54:42',13),(16,13,'yes','yes','yes','none','yes','yes','Complete','Congratulations, you have been approved for participation in this EQA round. Your panel will be shipped within 2 weeks. We greatly appreciate your continued support','ok',NULL,'2017-10-19 10:25:47',0),(17,13,'Y','y','y','y','y','y','In review',NULL,NULL,NULL,'2017-10-19 10:39:09',15),(18,44,'yes','yes','yes','yes','yes','yes','Complete','We sincerely regret to inform you that you will not be participating in this round of EQA. We hope you will resolve the pending issues and join us again for te next round. We greatly appreciate your continued support.','WRONG',NULL,'2017-10-23 14:05:09',15),(19,52,'yes','yes','yes','yes','yes','yes','In review',NULL,NULL,NULL,'2017-11-16 10:38:47',16),(20,52,'we ready','yes','yes','yes','yes','no','In review',NULL,NULL,NULL,'2017-11-20 09:24:32',17);
/*!40000 ALTER TABLE `readinesschecklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receiveshipment`
--

DROP TABLE IF EXISTS `receiveshipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receiveshipment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ShipmentCode` varchar(50) DEFAULT NULL,
  `SampleStatus` text,
  `ReceivedBy` varchar(50) DEFAULT NULL,
  `DateReceived` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiveshipment`
--

LOCK TABLES `receiveshipment` WRITE;
/*!40000 ALTER TABLE `receiveshipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `receiveshipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dbs_eia`
--

DROP TABLE IF EXISTS `reference_dbs_eia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dbs_eia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `eia` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `od` varchar(255) DEFAULT NULL,
  `cutoff` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dbs_eia`
--

LOCK TABLES `reference_dbs_eia` WRITE;
/*!40000 ALTER TABLE `reference_dbs_eia` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dbs_eia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dbs_wb`
--

DROP TABLE IF EXISTS `reference_dbs_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dbs_wb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `wb` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `160` int(11) DEFAULT NULL,
  `120` int(11) DEFAULT NULL,
  `66` int(11) DEFAULT NULL,
  `55` int(11) DEFAULT NULL,
  `51` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dbs_wb`
--

LOCK TABLES `reference_dbs_wb` WRITE;
/*!40000 ALTER TABLE `reference_dbs_wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dbs_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dts_eia`
--

DROP TABLE IF EXISTS `reference_dts_eia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dts_eia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `eia` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `od` varchar(255) DEFAULT NULL,
  `cutoff` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dts_eia`
--

LOCK TABLES `reference_dts_eia` WRITE;
/*!40000 ALTER TABLE `reference_dts_eia` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dts_eia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dts_rapid_hiv`
--

DROP TABLE IF EXISTS `reference_dts_rapid_hiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dts_rapid_hiv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` varchar(255) NOT NULL,
  `sample_id` varchar(255) NOT NULL,
  `testkit` varchar(255) NOT NULL,
  `lot_no` varchar(255) NOT NULL,
  `expiry_date` date NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dts_rapid_hiv`
--

LOCK TABLES `reference_dts_rapid_hiv` WRITE;
/*!40000 ALTER TABLE `reference_dts_rapid_hiv` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dts_rapid_hiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_dts_wb`
--

DROP TABLE IF EXISTS `reference_dts_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_dts_wb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `wb` int(11) NOT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `160` int(11) DEFAULT NULL,
  `120` int(11) DEFAULT NULL,
  `66` int(11) DEFAULT NULL,
  `55` int(11) DEFAULT NULL,
  `51` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_dts_wb`
--

LOCK TABLES `reference_dts_wb` WRITE;
/*!40000 ALTER TABLE `reference_dts_wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_dts_wb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_dbs`
--

DROP TABLE IF EXISTS `reference_result_dbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_dbs` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(45) DEFAULT NULL,
  `reference_result` varchar(45) DEFAULT NULL,
  `control` int(11) DEFAULT '0',
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Referance Result for DBS Shipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_dbs`
--

LOCK TABLES `reference_result_dbs` WRITE;
/*!40000 ALTER TABLE `reference_result_dbs` DISABLE KEYS */;
INSERT INTO `reference_result_dbs` VALUES (5,1,'TEST','10',0,1,20),(21,1,'Test','10',0,1,10);
/*!40000 ALTER TABLE `reference_result_dbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_dts`
--

DROP TABLE IF EXISTS `reference_result_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_dts` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(45) DEFAULT NULL,
  `reference_result` varchar(45) DEFAULT NULL,
  `control` int(11) DEFAULT '0',
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`),
  CONSTRAINT `reference_result_dts_ibfk_1` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Referance Result for DTS Shipment';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_dts`
--

LOCK TABLES `reference_result_dts` WRITE;
/*!40000 ALTER TABLE `reference_result_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_result_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_eid`
--

DROP TABLE IF EXISTS `reference_result_eid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_eid` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(255) DEFAULT NULL,
  `reference_result` varchar(255) DEFAULT NULL,
  `control` int(11) DEFAULT '0',
  `reference_hiv_ct_od` varchar(45) DEFAULT NULL,
  `reference_ic_qs` varchar(45) DEFAULT NULL,
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`),
  CONSTRAINT `reference_result_eid_ibfk_1` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_eid`
--

LOCK TABLES `reference_result_eid` WRITE;
/*!40000 ALTER TABLE `reference_result_eid` DISABLE KEYS */;
INSERT INTO `reference_result_eid` VALUES (13,1,'Kit Negative Control','7',0,'1','1',0,1),(13,2,'In-House Positive Control	','8',0,'1','1',0,1),(13,3,'Kit Positive Control','8',1,'1','1',0,1),(14,1,'Kit Negative Control','7',1,'1','1',0,1),(14,2,'Kit Positive Control','8',0,'1','1',1,1),(14,3,'PT Provider Negative Control','8',0,'11','1',0,1),(14,4,'PT Provider Positive Control','7',1,'1','1',1,1),(14,5,'In-House Negative Control','8',0,'11','1',0,1),(14,6,'In-House Positive Control	','7',0,'1','1',1,1),(14,7,'Kit Positive Control','7',1,'1','1',0,1),(16,1,'Kit Negative Control','7',0,'10','1',1,1),(16,2,'Kit Positive Control','7',0,'10','2',1,1),(16,3,'PT Provider Negative Control','7',0,'10','3',1,1),(16,4,'Kit Positive Control','8',0,'7','2',0,1),(17,1,'Kit Negative Control','8',0,'1','1',0,1),(17,2,'PT Provider Positive Control','7',0,'1','1',1,1),(17,3,'Kit Positive Control','7',1,'1','1',0,1),(18,1,'Kit Negative Control','8',0,'1','1',1,1),(18,2,'Kit Positive Control','7',0,'1','1',0,1),(18,3,'Kit Control','8',1,'1','1',0,1),(19,1,'Kit Negative Control','7',0,'1','1',1,1),(19,2,'In-House Positive Control	','8',0,'1','1',1,1),(19,3,'Kit Positive Control','8',1,'1','1',0,1),(20,1,'Test','7',0,'1','1',0,1),(20,2,'Test Z','8',0,'1','1',0,1);
/*!40000 ALTER TABLE `reference_result_eid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_tb`
--

DROP TABLE IF EXISTS `reference_result_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_tb` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(255) DEFAULT NULL,
  `mtb_detected` varchar(255) DEFAULT NULL,
  `rif_resistance` varchar(255) DEFAULT NULL,
  `probe_d` varchar(255) DEFAULT NULL,
  `probe_c` varchar(255) DEFAULT NULL,
  `probe_e` varchar(255) DEFAULT NULL,
  `probe_b` varchar(255) DEFAULT NULL,
  `spc` varchar(255) DEFAULT NULL,
  `probe_a` varchar(255) DEFAULT NULL,
  `control` int(11) DEFAULT '0',
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_tb`
--

LOCK TABLES `reference_result_tb` WRITE;
/*!40000 ALTER TABLE `reference_result_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_result_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_result_vl`
--

DROP TABLE IF EXISTS `reference_result_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_result_vl` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `sample_label` varchar(255) DEFAULT NULL,
  `reference_result` varchar(45) DEFAULT NULL,
  `control` int(11) DEFAULT '0',
  `mandatory` int(11) NOT NULL DEFAULT '0',
  `sample_score` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipment_id`,`sample_id`),
  CONSTRAINT `reference_result_vl_ibfk_1` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_result_vl`
--

LOCK TABLES `reference_result_vl` WRITE;
/*!40000 ALTER TABLE `reference_result_vl` DISABLE KEYS */;
INSERT INTO `reference_result_vl` VALUES (15,1,'Negative Control',NULL,0,0,1),(15,2,'Low Positive Control',NULL,0,1,1),(15,3,'High Positive Control',NULL,0,1,1),(15,4,'unspecifie',NULL,0,1,1);
/*!40000 ALTER TABLE `reference_result_vl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_vl_calculation`
--

DROP TABLE IF EXISTS `reference_vl_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_vl_calculation` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `vl_assay` int(11) NOT NULL,
  `q1` double(20,10) DEFAULT NULL,
  `q3` double(20,10) DEFAULT NULL,
  `iqr` double(20,10) DEFAULT NULL,
  `quartile_low` double(20,10) DEFAULT NULL,
  `quartile_high` double(20,10) DEFAULT NULL,
  `mean` double(20,10) DEFAULT NULL,
  `sd` double(20,10) DEFAULT NULL,
  `cv` double(20,10) DEFAULT NULL,
  `low_limit` double(20,10) DEFAULT NULL,
  `high_limit` double(20,10) DEFAULT NULL,
  `calculated_on` datetime DEFAULT NULL,
  `manual_mean` double(20,10) DEFAULT NULL,
  `manual_sd` double(20,10) DEFAULT NULL,
  `manual_cv` double(20,10) DEFAULT NULL,
  `manual_q1` double(20,10) DEFAULT NULL,
  `manual_q3` double(20,10) DEFAULT NULL,
  `manual_iqr` double(20,10) DEFAULT NULL,
  `manual_quartile_low` double(20,10) DEFAULT NULL,
  `manual_quartile_high` double(20,10) DEFAULT NULL,
  `manual_low_limit` double(20,10) DEFAULT NULL,
  `manual_high_limit` double(20,10) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `use_range` varchar(255) NOT NULL DEFAULT 'calculated',
  PRIMARY KEY (`shipment_id`,`sample_id`,`vl_assay`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_vl_calculation`
--

LOCK TABLES `reference_vl_calculation` WRITE;
/*!40000 ALTER TABLE `reference_vl_calculation` DISABLE KEYS */;
INSERT INTO `reference_vl_calculation` VALUES (9,1,1,NULL,NULL,NULL,NULL,NULL,6.5000000000,5.5000000000,0.0000000000,6.0000000000,7.0000000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calculated'),(15,1,3,NULL,NULL,NULL,NULL,NULL,2.0000000000,NULL,NULL,1.5000000000,2.5000000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calculated'),(15,2,3,NULL,NULL,NULL,NULL,NULL,3.0000000000,NULL,NULL,2.5000000000,3.5000000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calculated'),(15,3,3,NULL,NULL,NULL,NULL,NULL,0.6000000000,NULL,NULL,0.5000000000,0.7000000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calculated'),(15,4,4,NULL,NULL,NULL,NULL,NULL,8.0000000000,NULL,NULL,7.0000000000,9.0000000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'calculated');
/*!40000 ALTER TABLE `reference_vl_calculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_vl_methods`
--

DROP TABLE IF EXISTS `reference_vl_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_vl_methods` (
  `shipment_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `assay` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`shipment_id`,`sample_id`,`assay`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_vl_methods`
--

LOCK TABLES `reference_vl_methods` WRITE;
/*!40000 ALTER TABLE `reference_vl_methods` DISABLE KEYS */;
INSERT INTO `reference_vl_methods` VALUES (2,1,1,'3'),(2,1,2,'3'),(2,2,1,'4'),(2,2,2,'4'),(2,3,1,'5'),(2,3,2,'5'),(3,1,1,'7'),(3,2,2,'7'),(3,3,1,'6'),(3,4,2,'6'),(8,1,1,'1'),(9,1,1,'1.1'),(9,2,1,'10'),(15,1,3,'1'),(15,2,3,'2'),(15,3,3,'4'),(15,4,4,'1');
/*!40000 ALTER TABLE `reference_vl_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_analytes`
--

DROP TABLE IF EXISTS `rep_analytes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_analytes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AnalyteDescription` varchar(128) NOT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `ProviderID` int(11) DEFAULT NULL,
  `LabID` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_analytes`
--

LOCK TABLES `rep_analytes` WRITE;
/*!40000 ALTER TABLE `rep_analytes` DISABLE KEYS */;
INSERT INTO `rep_analytes` VALUES (1,'Malaria Parasite Detection and Identification',1,1,NULL,'2016-11-29 14:58:18',NULL);
/*!40000 ALTER TABLE `rep_analytes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_counties`
--

DROP TABLE IF EXISTS `rep_counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_counties` (
  `CountyID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(20) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`CountyID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_counties`
--

LOCK TABLES `rep_counties` WRITE;
/*!40000 ALTER TABLE `rep_counties` DISABLE KEYS */;
INSERT INTO `rep_counties` VALUES (1,'BARINGO','1','2016-11-23 16:16:00','2017-04-03 19:41:02','1'),(2,'BOMET','1','2016-11-24 16:16:00','2017-04-03 19:41:02','1'),(3,'BUNGOMA','1','2016-11-25 16:16:00','2017-04-03 19:41:02','1'),(4,'BUSIA','1','2016-11-26 16:16:00','2017-04-03 19:41:02','1'),(5,'ELGEYO MARAKWET','1','2016-11-27 16:16:00','2017-04-03 19:41:02','1'),(6,'EMBU','1','2016-11-28 16:16:00','2017-04-03 19:41:02','1'),(7,'GARISSA','1','2016-11-29 16:16:00','2017-04-03 19:41:02','1'),(8,'HOMA BAY','1','2016-11-30 16:16:00','2017-04-03 19:41:02','1'),(9,'ISIOLO','1','2016-12-01 16:16:00','2017-04-03 19:41:02','1'),(10,'KAJIADO','1','2016-12-02 16:16:00','2017-04-03 19:41:02','1'),(11,'KAKAMEGA','1','2016-12-03 16:16:00','2017-04-03 19:41:02','1'),(12,'KERICHO','1','2016-12-04 16:16:00','2017-04-03 19:41:02','1'),(13,'KIAMBU','1','2016-12-05 16:16:00','2017-04-03 19:41:02','1'),(14,'KILIFI','1','2016-12-06 16:16:00','2017-04-03 19:41:02','1'),(15,'KIRINYAGA','1','2016-12-07 16:16:00','2017-04-03 19:41:02','1'),(16,'KISII','1','2016-12-08 16:16:00','2017-04-03 19:41:02','1'),(17,'KISUMU','1','2016-12-09 16:16:00','2017-04-03 19:41:02','1'),(18,'KITUI','1','2016-12-10 16:16:00','2017-04-03 19:41:02','1'),(19,'KWALE','1','2016-12-11 16:16:00','2017-04-03 19:41:02','1'),(20,'LAIKIPIA','1','2016-12-12 16:16:00','2017-04-03 19:41:02','1'),(21,'LAMU','1','2016-12-13 16:16:00','2017-04-03 19:41:02','1'),(22,'MACHAKOS','1','2016-12-14 16:16:00','2017-04-03 19:41:02','1'),(23,'MAKUENI','1','2016-12-15 16:16:00','2017-04-03 19:41:02','1'),(24,'MANDERA','1','2016-12-16 16:16:00','2017-04-03 19:41:02','1'),(25,'MARSABIT','1','2016-12-17 16:16:00','2017-04-03 19:41:02','1'),(26,'MERU','1','2016-12-18 16:16:00','2017-04-03 19:41:02','1'),(27,'MIGORI','1','2016-12-19 16:16:00','2017-04-03 19:41:02','1'),(28,'MOMBASA','1','2016-12-20 16:16:00','2017-04-03 19:41:02','1'),(29,'MURANG`A','1','2016-12-21 16:16:00','2017-04-03 19:41:02','1'),(30,'NAIROBI','1','2016-12-22 16:16:00','2017-04-03 19:41:02','1'),(31,'NAKURU','1','2016-12-23 16:16:00','2017-04-03 19:41:02','1'),(32,'NANDI','1','2016-12-24 16:16:00','2017-04-03 19:41:02','1'),(33,'NAROK','1','2016-12-25 16:16:00','2017-04-03 19:41:02','1'),(34,'NYAMIRA','1','2016-12-26 16:16:00','2017-04-03 19:41:02','1'),(35,'NYANDARUA','1','2016-12-27 16:16:00','2017-04-03 19:41:02','1'),(36,'NYERI','1','2016-12-28 16:16:00','2017-04-03 19:41:02','1'),(37,'SAMBURU','1','2016-12-29 16:16:00','2017-04-03 19:41:02','1'),(38,'SIAYA','1','2016-12-30 16:16:00','2017-04-03 19:41:02','1'),(39,'TAITA TAVETA','1','2016-12-31 16:16:00','2017-04-03 19:41:02','1'),(40,'TANA RIVER','1','2017-01-01 16:16:00','2017-04-03 19:41:02','1'),(41,'THARAKA NITHI','1','2017-01-02 16:16:00','2017-04-03 19:41:02','1'),(42,'TRANS NZOIA','1','2017-01-03 16:16:00','2017-04-03 19:41:02','1'),(43,'TURKANA','1','2017-01-04 16:16:00','2017-04-03 19:41:02','1'),(44,'UASIN GISHU','1','2017-01-05 16:16:00','2017-04-03 19:41:02','1'),(45,'VIHIGA','1','2017-01-06 16:16:00','2017-04-03 19:41:02','1'),(46,'WAJIR','1','2017-01-07 16:16:00','2017-04-03 19:41:02','1'),(47,'WEST POKOT','1','2017-01-08 16:16:00','2017-04-03 19:41:02','1');
/*!40000 ALTER TABLE `rep_counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_customfields`
--

DROP TABLE IF EXISTS `rep_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_customfields` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` varchar(128) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ColumnName` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Mandatory` varchar(128) DEFAULT NULL,
  `Datatype` varchar(50) DEFAULT NULL,
  `Length` int(11) DEFAULT NULL,
  `CreatedBy` varchar(20) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_customfields`
--

LOCK TABLES `rep_customfields` WRITE;
/*!40000 ALTER TABLE `rep_customfields` DISABLE KEYS */;
INSERT INTO `rep_customfields` VALUES (1,'m','MALARIA','Test','Test','NULL','varchar',200,'2','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `rep_customfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_failreasons`
--

DROP TABLE IF EXISTS `rep_failreasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_failreasons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonDescription` varchar(200) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_failreasons`
--

LOCK TABLES `rep_failreasons` WRITE;
/*!40000 ALTER TABLE `rep_failreasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_failreasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_grading`
--

DROP TABLE IF EXISTS `rep_grading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_grading` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GradeDescription` varchar(128) NOT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_grading`
--

LOCK TABLES `rep_grading` WRITE;
/*!40000 ALTER TABLE `rep_grading` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_grading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_labcontacts`
--

DROP TABLE IF EXISTS `rep_labcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_labcontacts` (
  `ContactID` int(11) NOT NULL AUTO_INCREMENT,
  `LabID` int(11) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `ContactTelephone` varchar(50) DEFAULT NULL,
  `Status` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ContactID`),
  KEY `LabID` (`LabID`),
  CONSTRAINT `rep_labcontacts_ibfk_1` FOREIGN KEY (`LabID`) REFERENCES `rep_labs` (`LabID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_labcontacts`
--

LOCK TABLES `rep_labcontacts` WRITE;
/*!40000 ALTER TABLE `rep_labcontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_labcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_labs`
--

DROP TABLE IF EXISTS `rep_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_labs` (
  `LabID` int(11) NOT NULL AUTO_INCREMENT,
  `LabName` varchar(200) NOT NULL,
  `County` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PostalCode` int(11) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `ContactTelephone` varchar(50) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`LabID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_labs`
--

LOCK TABLES `rep_labs` WRITE;
/*!40000 ALTER TABLE `rep_labs` DISABLE KEYS */;
INSERT INTO `rep_labs` VALUES (1,'Kisii',14,'Kisii',40200,'560619',NULL,NULL,NULL,'active','2','2017-11-09 16:36:47'),(2,'Kisii',9,'Kisii',120,'560619',NULL,NULL,NULL,'active','2','2017-11-09 16:37:09');
/*!40000 ALTER TABLE `rep_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_programs`
--

DROP TABLE IF EXISTS `rep_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_programs` (
  `ProgramID` int(11) NOT NULL AUTO_INCREMENT,
  `ProgramCode` varchar(100) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `Comments` text,
  PRIMARY KEY (`ProgramID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_programs`
--

LOCK TABLES `rep_programs` WRITE;
/*!40000 ALTER TABLE `rep_programs` DISABLE KEYS */;
INSERT INTO `rep_programs` VALUES (1,'001','MALARIA','active','2','2017-05-23 06:15:31',''),(3,'Test 001','tes','active','2','2017-11-09 16:17:28','');
/*!40000 ALTER TABLE `rep_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providercontacts`
--

DROP TABLE IF EXISTS `rep_providercontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providercontacts` (
  `ContactID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` int(11) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `ContactTelephone` varchar(50) DEFAULT NULL,
  `Status` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ContactID`),
  UNIQUE KEY `UN_KEY_EMAIL` (`ContactEmail`),
  KEY `ProviderID` (`ProviderID`),
  CONSTRAINT `rep_providercontacts_ibfk_1` FOREIGN KEY (`ProviderID`) REFERENCES `rep_providers` (`ProviderID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providercontacts`
--

LOCK TABLES `rep_providercontacts` WRITE;
/*!40000 ALTER TABLE `rep_providercontacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_providercontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerfiles`
--

DROP TABLE IF EXISTS `rep_providerfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerfiles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` varchar(128) DEFAULT NULL,
  `PeriodID` varchar(128) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `FileName` varchar(100) DEFAULT NULL,
  `FileType` varchar(100) DEFAULT NULL,
  `FileSize` int(11) DEFAULT NULL,
  `Url` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerfiles`
--

LOCK TABLES `rep_providerfiles` WRITE;
/*!40000 ALTER TABLE `rep_providerfiles` DISABLE KEYS */;
INSERT INTO `rep_providerfiles` VALUES (1,'2','1','1','ChromeSetup (2).exe','application/x-dosexec',1130328,'C:\\xampp\\htdocs\\EPTR\\public\\files\\ChromeSetup (2).exe','2','2017-11-10 13:26:28'),(2,'1','1','1','SMA_0056_15.pdf','application/pdf',19677,'C:\\xampp\\htdocs\\EPTR\\public\\files\\SMA_0056_15.pdf','2','2017-11-10 13:30:25');
/*!40000 ALTER TABLE `rep_providerfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerlabs`
--

DROP TABLE IF EXISTS `rep_providerlabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerlabs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LabID` int(11) DEFAULT NULL,
  `ProviderID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerlabs`
--

LOCK TABLES `rep_providerlabs` WRITE;
/*!40000 ALTER TABLE `rep_providerlabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_providerlabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerprograms`
--

DROP TABLE IF EXISTS `rep_providerprograms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerprograms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderID` int(11) DEFAULT NULL,
  `ProgramID` int(11) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerprograms`
--

LOCK TABLES `rep_providerprograms` WRITE;
/*!40000 ALTER TABLE `rep_providerprograms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_providerprograms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerresultcodes`
--

DROP TABLE IF EXISTS `rep_providerresultcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerresultcodes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ResultCode` varchar(200) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerresultcodes`
--

LOCK TABLES `rep_providerresultcodes` WRITE;
/*!40000 ALTER TABLE `rep_providerresultcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_providerresultcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providerrounds`
--

DROP TABLE IF EXISTS `rep_providerrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providerrounds` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PeriodDescription` varchar(128) NOT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `EnrolledLabs` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providerrounds`
--

LOCK TABLES `rep_providerrounds` WRITE;
/*!40000 ALTER TABLE `rep_providerrounds` DISABLE KEYS */;
INSERT INTO `rep_providerrounds` VALUES (1,'Test','m',10,'2017-11-10','2017-11-30','2','2017-11-10 10:46:53');
/*!40000 ALTER TABLE `rep_providerrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providers`
--

DROP TABLE IF EXISTS `rep_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providers` (
  `ProviderID` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderName` varchar(100) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `ContactTelephone` varchar(20) DEFAULT NULL,
  `ContactEmail` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ProviderID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providers`
--

LOCK TABLES `rep_providers` WRITE;
/*!40000 ALTER TABLE `rep_providers` DISABLE KEYS */;
INSERT INTO `rep_providers` VALUES (1,'m','osoromichael@gmail.com','m','m',0,NULL,NULL,NULL,'active','2','2017-11-09 16:47:45'),(2,'m','osoromichael@gmail.com','m','m',0,NULL,NULL,NULL,'active','2','2017-11-09 16:48:03');
/*!40000 ALTER TABLE `rep_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_providersamples`
--

DROP TABLE IF EXISTS `rep_providersamples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_providersamples` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SampleCode` varchar(100) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `PeriodID` varchar(128) DEFAULT NULL,
  `LabID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_providersamples`
--

LOCK TABLES `rep_providersamples` WRITE;
/*!40000 ALTER TABLE `rep_providersamples` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_providersamples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_repository`
--

DROP TABLE IF EXISTS `rep_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_repository` (
  `ImpID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Repository unique Identifier',
  `ProviderID` varchar(128) DEFAULT NULL COMMENT 'Provider Name',
  `LabID` varchar(200) DEFAULT NULL COMMENT 'Lab Names',
  `RoundID` varchar(128) DEFAULT NULL COMMENT 'Round Names',
  `ProgramID` varchar(128) DEFAULT NULL COMMENT 'Program Name',
  `ReleaseDate` date DEFAULT NULL COMMENT 'Release Date',
  `SampleCode` varchar(100) DEFAULT NULL COMMENT 'Sample Code',
  `AnalyteID` varchar(128) DEFAULT NULL COMMENT 'Analyte Name',
  `SampleCondition` varchar(100) DEFAULT NULL COMMENT 'Sample Condition',
  `DateSampleReceived` datetime DEFAULT NULL COMMENT 'Date Sample Received',
  `Result` varchar(200) DEFAULT NULL COMMENT 'Result',
  `ResultCode` varchar(100) DEFAULT NULL COMMENT 'Result Code',
  `Grade` varchar(128) DEFAULT NULL COMMENT 'Grade',
  `TestKitID` varchar(128) DEFAULT NULL COMMENT 'Test Kit Name',
  `DateSampleShipped` datetime DEFAULT NULL COMMENT 'Date Sample Shipped',
  `FailReasonCode` varchar(100) DEFAULT NULL COMMENT 'Fail Reason Code',
  `Frequency` text COMMENT 'Frequency',
  `StCount` text COMMENT 'St. Count',
  `TragetValue` text COMMENT 'Traget Value',
  `UpperLimit` text COMMENT 'Upper Limit',
  `LowerLimit` text COMMENT 'Lower Limit',
  `OverallScore` varchar(100) DEFAULT NULL COMMENT 'Overall Score',
  `Results` text COMMENT 'Result(s)',
  `MflCode` varchar(45) DEFAULT NULL COMMENT 'Laboratory MFL Code',
  `valid` varchar(45) DEFAULT '1',
  `BatchID` varchar(10) DEFAULT '0000',
  `Status` varchar(45) DEFAULT '0',
  `AdminApproved` varchar(45) DEFAULT '0',
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  `Test` varchar(200) DEFAULT NULL COMMENT 'test',
  PRIMARY KEY (`ImpID`),
  KEY `rep_repository_ibfk_1` (`ProviderID`),
  KEY `LabID` (`LabID`),
  KEY `RoundID` (`RoundID`),
  KEY `ProgramID` (`ProgramID`),
  KEY `AnalyteID` (`AnalyteID`),
  KEY `Grade` (`Grade`),
  KEY `TestKitID` (`TestKitID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_repository`
--

LOCK TABLES `rep_repository` WRITE;
/*!40000 ALTER TABLE `rep_repository` DISABLE KEYS */;
INSERT INTO `rep_repository` VALUES (61,'m','Coast Provincial General Hospital','Test','MALARIA','2017-11-10','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(62,'m','Coast Provincial General Hospital','Test','MALARIA','2017-11-10','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(63,'m','Coast Provincial General Hospital','Test','MALARIA','2017-11-10','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(64,'m','Coast Provincial General Hospital','Test','MALARIA','2017-11-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(65,'m','Coast Provincial General Hospital','Test','MALARIA','2017-11-10','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(66,'m','Kangemi Health Center','Test','MALARIA','2017-11-10','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(67,'m','Kangemi Health Center','Test','MALARIA','2017-11-10','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(68,'m','Kangemi Health Center','Test','MALARIA','2017-11-10','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(69,'m','Kangemi Health Center','Test','MALARIA','2017-11-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(70,'m','Kangemi Health Center','Test','MALARIA','2017-11-10','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(71,'m','Kenyatta National Hospital','Test','MALARIA','2017-11-10','5','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(72,'m','Kenyatta National Hospital','Test','MALARIA','2017-11-10','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(73,'m','Kenyatta National Hospital','Test','MALARIA','2017-11-10','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum, Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(74,'m','Kenyatta National Hospital','Test','MALARIA','2017-11-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(75,'m','Kenyatta National Hospital','Test','MALARIA','2017-11-10','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale, Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(76,'m','Kenyatta National Hospital- BTU','Test','MALARIA','2017-11-10','A','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(77,'m','Kenyatta National Hospital- BTU','Test','MALARIA','2017-11-10','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(78,'m','Kenyatta National Hospital- BTU','Test','MALARIA','2017-11-10','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(79,'m','Kenyatta National Hospital- BTU','Test','MALARIA','2017-11-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium vivax','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(80,'m','Kenyatta National Hospital- BTU','Test','MALARIA','2017-11-10','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(82,'m','Gilgil Sub-District Hospital','Test','MALARIA','2017-11-10','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(83,'m','Gilgil Sub-District Hospital','Test','MALARIA','2017-11-10','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(84,'m','Gilgil Sub-District Hospital','Test','MALARIA','2017-11-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(85,'m','Gilgil Sub-District Hospital','Test','MALARIA','2017-11-10','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','NOT ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(86,'m','Kangema Sub County Hospital','Test','MALARIA','2017-11-10','A','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(87,'m','Kangema Sub County Hospital','Test','MALARIA','2017-11-10','B','Malaria Parasite Detection and Identification ',NULL,NULL,'No Parasite Seen','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(88,'m','Kangema Sub County Hospital','Test','MALARIA','2017-11-10','C','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum, Plasmodium malariae','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(89,'m','Kangema Sub County Hospital','Test','MALARIA','2017-11-10','D','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium falciparum','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL),(90,'m','Kangema Sub County Hospital','Test','MALARIA','2017-11-10','E','Malaria Parasite Detection and Identification ',NULL,NULL,'Plasmodium ovale','OK','ACCEPTABLE',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'0','CADGVnxKmv','0','0',NULL,'2017-11-30',NULL);
/*!40000 ALTER TABLE `rep_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_testkits`
--

DROP TABLE IF EXISTS `rep_testkits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_testkits` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TestKitName` varchar(128) NOT NULL,
  `ProgramID` varchar(128) DEFAULT NULL,
  `ProviderID` varchar(128) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_testkits`
--

LOCK TABLES `rep_testkits` WRITE;
/*!40000 ALTER TABLE `rep_testkits` DISABLE KEYS */;
/*!40000 ALTER TABLE `rep_testkits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_config`
--

DROP TABLE IF EXISTS `report_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_config` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_config`
--

LOCK TABLES `report_config` WRITE;
/*!40000 ALTER TABLE `report_config` DISABLE KEYS */;
INSERT INTO `report_config` VALUES ('logo','logo_example.jpg'),('logo-right','logo_right.jpg'),('report-header','\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			<div><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><br></div>\r\n\r\n																																								');
/*!40000 ALTER TABLE `report_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_dbs`
--

DROP TABLE IF EXISTS `response_result_dbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_dbs` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `eia_1` int(11) DEFAULT NULL,
  `lot_no_1` varchar(45) DEFAULT NULL,
  `exp_date_1` date DEFAULT NULL,
  `od_1` varchar(45) DEFAULT NULL,
  `cutoff_1` varchar(45) DEFAULT NULL,
  `eia_2` int(11) DEFAULT NULL,
  `lot_no_2` varchar(45) DEFAULT NULL,
  `exp_date_2` date DEFAULT NULL,
  `od_2` varchar(45) DEFAULT NULL,
  `cutoff_2` varchar(45) DEFAULT NULL,
  `eia_3` int(11) DEFAULT NULL,
  `lot_no_3` varchar(45) DEFAULT NULL,
  `exp_date_3` date DEFAULT NULL,
  `od_3` varchar(45) DEFAULT NULL,
  `cutoff_3` varchar(45) DEFAULT NULL,
  `wb` int(11) DEFAULT NULL,
  `wb_lot` varchar(45) DEFAULT NULL,
  `wb_exp_date` date DEFAULT NULL,
  `wb_160` varchar(45) DEFAULT NULL,
  `wb_120` varchar(45) DEFAULT NULL,
  `wb_66` varchar(45) DEFAULT NULL,
  `wb_55` varchar(45) DEFAULT NULL,
  `wb_51` varchar(45) DEFAULT NULL,
  `wb_41` varchar(45) DEFAULT NULL,
  `wb_31` varchar(45) DEFAULT NULL,
  `wb_24` varchar(45) DEFAULT NULL,
  `wb_17` varchar(45) DEFAULT NULL,
  `reported_result` int(11) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_dbs`
--

LOCK TABLES `response_result_dbs` WRITE;
/*!40000 ALTER TABLE `response_result_dbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_dbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_dts`
--

DROP TABLE IF EXISTS `response_result_dts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_dts` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `test_kit_name_1` varchar(45) DEFAULT NULL,
  `lot_no_1` varchar(45) DEFAULT NULL,
  `exp_date_1` date DEFAULT NULL,
  `test_result_1` varchar(45) DEFAULT NULL,
  `test_kit_name_2` varchar(45) DEFAULT NULL,
  `lot_no_2` varchar(45) DEFAULT NULL,
  `exp_date_2` date DEFAULT NULL,
  `test_result_2` varchar(45) DEFAULT NULL,
  `test_kit_name_3` varchar(45) DEFAULT NULL,
  `lot_no_3` varchar(45) DEFAULT NULL,
  `exp_date_3` date DEFAULT NULL,
  `test_result_3` varchar(45) DEFAULT NULL,
  `reported_result` varchar(45) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`),
  CONSTRAINT `response_result_dts_ibfk_1` FOREIGN KEY (`shipment_map_id`) REFERENCES `shipment_participant_map` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_dts`
--

LOCK TABLES `response_result_dts` WRITE;
/*!40000 ALTER TABLE `response_result_dts` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_dts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_eid`
--

DROP TABLE IF EXISTS `response_result_eid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_eid` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `reported_result` varchar(45) DEFAULT NULL,
  `hiv_ct_od` varchar(45) DEFAULT NULL,
  `ic_qs` varchar(45) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`),
  CONSTRAINT `response_result_eid_ibfk_1` FOREIGN KEY (`shipment_map_id`) REFERENCES `shipment_participant_map` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_eid`
--

LOCK TABLES `response_result_eid` WRITE;
/*!40000 ALTER TABLE `response_result_eid` DISABLE KEYS */;
INSERT INTO `response_result_eid` VALUES (98,'1','7','1','1',NULL,'27','2017-11-20 09:59:02','27','2017-11-20 10:19:59'),(98,'2','7','1','1',NULL,'27','2017-11-20 09:59:02','27','2017-11-20 10:19:59'),(98,'3','7','1','1',NULL,'27','2017-11-20 09:59:02','27','2017-11-20 10:19:59'),(98,'4','8','1','1',NULL,'27','2017-11-20 09:59:02','27','2017-11-20 10:19:59'),(166,'1','7','1','1',NULL,'27','2017-11-20 11:52:52',NULL,NULL),(166,'2','8','1','1',NULL,'27','2017-11-20 11:52:52',NULL,NULL),(166,'3','7','1','1',NULL,'27','2017-11-20 11:52:53',NULL,NULL),(192,'1','7','1','1',NULL,'27','2017-11-20 15:34:37','27','2017-11-20 15:58:19'),(192,'2','8','11','1',NULL,'27','2017-11-20 15:34:37','27','2017-11-20 15:58:19'),(192,'3','7','1','1',NULL,'27','2017-11-20 15:34:37','27','2017-11-20 15:58:19');
/*!40000 ALTER TABLE `response_result_eid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_tb`
--

DROP TABLE IF EXISTS `response_result_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_tb` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `date_tested` date DEFAULT NULL,
  `mtb_detected` varchar(255) DEFAULT NULL,
  `rif_resistance` varchar(255) DEFAULT NULL,
  `probe_d` varchar(255) DEFAULT NULL,
  `probe_c` varchar(255) DEFAULT NULL,
  `probe_e` varchar(255) DEFAULT NULL,
  `probe_b` varchar(255) DEFAULT NULL,
  `spc` varchar(255) DEFAULT NULL,
  `probe_a` varchar(255) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_tb`
--

LOCK TABLES `response_result_tb` WRITE;
/*!40000 ALTER TABLE `response_result_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_result_vl`
--

DROP TABLE IF EXISTS `response_result_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_result_vl` (
  `shipment_map_id` int(11) NOT NULL,
  `sample_id` varchar(45) NOT NULL,
  `reported_viral_load` varchar(255) DEFAULT NULL,
  `calculated_score` varchar(45) DEFAULT NULL,
  `is_tnd` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_map_id`,`sample_id`),
  CONSTRAINT `response_result_vl_ibfk_1` FOREIGN KEY (`shipment_map_id`) REFERENCES `shipment_participant_map` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_result_vl`
--

LOCK TABLES `response_result_vl` WRITE;
/*!40000 ALTER TABLE `response_result_vl` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_result_vl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_vl_not_tested_reason`
--

DROP TABLE IF EXISTS `response_vl_not_tested_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_vl_not_tested_reason` (
  `vl_not_tested_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `vl_not_tested_reason` varchar(500) DEFAULT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`vl_not_tested_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_vl_not_tested_reason`
--

LOCK TABLES `response_vl_not_tested_reason` WRITE;
/*!40000 ALTER TABLE `response_vl_not_tested_reason` DISABLE KEYS */;
INSERT INTO `response_vl_not_tested_reason` VALUES (1,'Issue with Sample','active'),(2,'Viral Load Machine not working','active'),(3,'Other','active');
/*!40000 ALTER TABLE `response_vl_not_tested_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme_list`
--

DROP TABLE IF EXISTS `scheme_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme_list` (
  `scheme_id` varchar(10) NOT NULL,
  `scheme_name` varchar(255) NOT NULL,
  `response_table` varchar(45) DEFAULT NULL,
  `reference_result_table` varchar(45) DEFAULT NULL,
  `attribute_list` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scheme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme_list`
--

LOCK TABLES `scheme_list` WRITE;
/*!40000 ALTER TABLE `scheme_list` DISABLE KEYS */;
INSERT INTO `scheme_list` VALUES ('dbs','Dried Blood Spot -  HIV Viral Load','response_result_dbs','reference_result_dbs',NULL,'active'),('dts','Dried Tube Specimen - HIV Serology','response_result_dts','reference_result_dts',NULL,'Inactive'),('eid','Dried Blood Spot - Early Infant Diagnosis','response_result_eid','reference_result_eid',NULL,'active'),('tb','Dried Tube Specimen - Tuberculosis','response_result_tb','reference_result_tb',NULL,'Inactive'),('vl','Dried Tube Specimen - HIV Viral Load','response_result_vl','reference_result_vl',NULL,'active');
/*!40000 ALTER TABLE `scheme_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment` (
  `shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_code` varchar(255) NOT NULL,
  `scheme_type` varchar(10) DEFAULT NULL,
  `shipment_date` date DEFAULT NULL,
  `lastdate_response` date DEFAULT NULL,
  `distribution_id` int(11) NOT NULL,
  `number_of_samples` int(11) DEFAULT NULL,
  `number_of_controls` int(11) NOT NULL,
  `response_switch` varchar(255) NOT NULL DEFAULT 'off',
  `max_score` int(11) DEFAULT NULL,
  `average_score` varchar(255) DEFAULT '0',
  `shipment_comment` text,
  `created_by_admin` varchar(255) DEFAULT NULL,
  `created_on_admin` datetime DEFAULT NULL,
  `updated_by_admin` varchar(255) DEFAULT NULL,
  `updated_on_admin` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`shipment_id`),
  KEY `scheme_type` (`scheme_type`),
  KEY `distribution_id` (`distribution_id`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`scheme_type`) REFERENCES `scheme_list` (`scheme_id`),
  CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`distribution_id`) REFERENCES `distributions` (`distribution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (13,'EID1017-1','eid','2017-10-30','2017-10-30',14,2,1,'on',NULL,'0',NULL,'okarmikell@gmail.com','2017-10-19 06:02:41',NULL,NULL,'shipped'),(14,'EID1017-2','eid','2017-10-30','2017-10-31',14,4,3,'on',NULL,'0',NULL,'okarmikell@gmail.com','2017-10-19 06:11:56',NULL,NULL,'shipped'),(15,'VL1017-1','vl','2017-10-19','2017-10-31',15,4,0,'on',NULL,'0',NULL,'okarmikell@gmail.com','2017-10-19 10:12:09',NULL,NULL,'shipped'),(16,'EID1117-1','eid','2017-11-16','2017-11-30',16,4,0,'on',100,'0',NULL,'okarmikell@gmail.com','2017-11-16 10:33:26','okarmikell@gmail.com','2017-11-20 10:23:12','finalized'),(17,'EID1117-2','eid','2017-11-24','2017-11-20',18,2,1,'on',100,'0',NULL,'okarmikell@gmail.com','2017-11-20 11:28:59','okarmikell@gmail.com','2017-11-20 12:28:46','finalized'),(18,'EID1117-3','eid','2017-11-23','2017-11-30',17,2,1,'on',NULL,'0',NULL,'okarmikell@gmail.com','2017-11-20 11:49:47',NULL,NULL,'shipped'),(19,'EID1117-4','eid','2017-11-29','2017-11-30',20,2,1,'off',100,'0',NULL,'okarmikell@gmail.com','2017-11-20 12:42:11',NULL,NULL,'shipped'),(20,'EID0318-1','eid','2018-03-01','2018-03-28',21,2,0,'on',NULL,'0',NULL,'okarmikell@gmail.com','2018-03-28 09:29:47',NULL,NULL,'shipped'),(21,'DBS0318-1','dbs','2017-11-22','2018-03-28',19,1,0,'off',NULL,'0',NULL,'okarmikell@gmail.com','2018-03-28 09:55:38',NULL,NULL,'pending');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_participant_map`
--

DROP TABLE IF EXISTS `shipment_participant_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_participant_map` (
  `map_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `attributes` mediumtext,
  `evaluation_status` varchar(10) DEFAULT NULL COMMENT 'Shipment Status					\nUse this to flag - 					\nABCDEFG					',
  `shipment_score` decimal(5,2) DEFAULT NULL,
  `documentation_score` decimal(5,2) DEFAULT '0.00',
  `shipment_test_date` date DEFAULT '0000-00-00',
  `is_pt_test_not_performed` varchar(45) DEFAULT NULL,
  `vl_not_tested_reason` int(11) DEFAULT NULL,
  `pt_test_not_performed_comments` text,
  `pt_support_comments` text,
  `shipment_receipt_date` date DEFAULT NULL,
  `shipment_test_report_date` datetime DEFAULT NULL,
  `participant_supervisor` varchar(255) DEFAULT NULL,
  `supervisor_approval` varchar(45) DEFAULT NULL,
  `review_date` date DEFAULT NULL,
  `final_result` int(11) DEFAULT '0',
  `failure_reason` text,
  `evaluation_comment` int(11) DEFAULT '0',
  `optional_eval_comment` text,
  `is_followup` varchar(255) DEFAULT 'no',
  `is_excluded` varchar(255) NOT NULL DEFAULT 'no',
  `user_comment` varchar(90) DEFAULT NULL,
  `custom_field_1` text,
  `custom_field_2` text,
  `created_on_admin` datetime DEFAULT NULL,
  `updated_on_admin` datetime DEFAULT NULL,
  `updated_by_admin` varchar(45) DEFAULT NULL,
  `updated_on_user` datetime DEFAULT NULL,
  `updated_by_user` varchar(45) DEFAULT NULL,
  `created_by_admin` varchar(45) DEFAULT NULL,
  `created_on_user` datetime DEFAULT NULL,
  `report_generated` varchar(100) DEFAULT NULL,
  `last_new_shipment_mailed_on` datetime DEFAULT NULL,
  `new_shipment_mail_count` int(11) NOT NULL DEFAULT '0',
  `last_not_participated_mailed_on` datetime DEFAULT NULL,
  `last_not_participated_mail_count` int(11) NOT NULL DEFAULT '0',
  `qc_done` varchar(45) NOT NULL DEFAULT 'no',
  `qc_date` date DEFAULT NULL,
  `qc_done_by` varchar(255) DEFAULT NULL,
  `qc_created_on` datetime DEFAULT NULL,
  `mode_id` int(11) DEFAULT NULL,
  `sample_conditions` text,
  PRIMARY KEY (`map_id`),
  UNIQUE KEY `shipment_id_2` (`shipment_id`,`participant_id`),
  KEY `shipment_id` (`shipment_id`),
  KEY `participant_id` (`participant_id`),
  CONSTRAINT `shipment_participant_map_ibfk_1` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`),
  CONSTRAINT `shipment_participant_map_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1 COMMENT='Shipment for DTS Samples';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_participant_map`
--

LOCK TABLES `shipment_participant_map` WRITE;
/*!40000 ALTER TABLE `shipment_participant_map` DISABLE KEYS */;
INSERT INTO `shipment_participant_map` VALUES (68,13,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(69,13,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(70,13,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(71,13,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(72,13,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(73,13,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(74,13,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(75,13,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 06:16:34',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(76,14,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(77,14,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(78,14,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(79,14,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(80,14,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(81,14,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(82,14,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(83,14,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(84,14,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(85,14,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 09:23:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(86,15,23,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:38',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(87,15,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:38',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(88,15,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:38',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(89,15,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:38',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(90,15,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:38',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(91,15,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:38',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(92,15,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:39',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(93,15,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:39',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(94,15,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:39',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(95,15,24,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:39',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(96,15,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:39',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(97,15,28,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-10-19 10:37:39',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(98,16,52,'{\"sample_rehydration_date\":\"2017-11-21\",\"extraction_assay\":\"1\",\"detection_assay\":\"1\",\"extraction_assay_expiry_date\":\"2017-11-29\",\"detection_assay_expiry_date\":\"2017-11-30\",\"extraction_assay_lot_no\":\"111\",\"detection_assay_lot_no\":\"111\",\"uploaded_file\":\"\"}','19111190',100.00,0.00,'2017-11-21',NULL,NULL,NULL,NULL,'2017-11-20','2017-11-20 10:19:59','osoro michael','yes',NULL,1,'[]',3,'','no','no','done okay',NULL,NULL,'2017-11-16 10:34:15','2017-11-20 10:02:41','okarmikell@gmail.com','2017-11-20 10:19:59','27','31','2017-11-20 09:59:02','yes',NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(99,16,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(100,16,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(101,16,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(102,16,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(103,16,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(104,16,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(105,16,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(106,16,45,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(107,16,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(108,16,53,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(109,16,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(110,16,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-16 10:34:15',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(166,17,52,'{\"sample_rehydration_date\":\"2017-11-28\",\"extraction_assay\":\"6\",\"detection_assay\":\"6\",\"extraction_assay_expiry_date\":\"2017-11-29\",\"detection_assay_expiry_date\":\"2017-11-29\",\"extraction_assay_lot_no\":\"1\",\"detection_assay_lot_no\":\"1\",\"uploaded_file\":\"\"}','19111190',0.00,0.00,'2017-11-29',NULL,NULL,NULL,NULL,'2017-11-21','2017-11-20 11:52:52','','no',NULL,2,'[{\"warning\":\"Control\\/Sample <strong>Kit Negative Control<\\/strong> out of range\"},{\"warning\":\"Control\\/Sample <strong>PT Provider Positive Control<\\/strong> out of range\"},{\"warning\":\"Participant did not meet the score criteria (Participant Score - <strong>0<\\/strong> and Required Score - <strong>100<\\/strong>)\"}]',0,NULL,'no','no','done well',NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,'2017-11-20 11:52:52','27','31','2017-11-20 11:52:52','yes',NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(167,17,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(168,17,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(169,17,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(170,17,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(171,17,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(172,17,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(173,17,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(174,17,45,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(175,17,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(176,17,53,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(177,17,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(178,17,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:40:03',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(179,18,52,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(180,18,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(181,18,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(182,18,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(183,18,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(184,18,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(185,18,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(186,18,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(187,18,45,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(188,18,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(189,18,53,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(190,18,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(191,18,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 11:49:57',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(192,19,52,'{\"sample_rehydration_date\":\"2017-11-08\",\"extraction_assay\":\"3\",\"detection_assay\":\"3\",\"extraction_assay_expiry_date\":\"2017-11-29\",\"detection_assay_expiry_date\":\"2017-11-22\",\"extraction_assay_lot_no\":\"1\",\"detection_assay_lot_no\":\"1\",\"uploaded_file\":\"\"}','19111190',100.00,0.00,'2017-11-23',NULL,NULL,NULL,NULL,'2017-11-22','2017-11-20 15:58:19','','no',NULL,1,'[{\"warning\":\"Control\\/Sample <strong>Kit Positive Control<\\/strong> out of range\"}]',0,NULL,'no','no','',NULL,NULL,'2017-11-20 12:46:53',NULL,NULL,'2017-11-20 15:58:19','27','31','2017-11-20 15:34:37',NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,'they are spoilt        '),(193,19,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(194,19,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(195,19,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(196,19,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(197,19,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(198,19,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(199,19,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(200,19,45,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(201,19,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(202,19,53,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(203,19,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(204,19,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2017-11-20 12:46:54',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(205,20,52,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:51',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(206,20,30,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(207,20,33,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(208,20,38,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(209,20,36,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(210,20,31,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(211,20,54,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(212,20,40,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(213,20,39,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(214,20,45,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(215,20,42,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(216,20,53,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(217,20,55,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(218,20,29,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(219,20,41,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:30:52',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(220,19,28,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:31:32',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL),(221,19,55,NULL,'19901190',NULL,0.00,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,'no','no',NULL,NULL,NULL,'2018-03-28 09:31:44',NULL,NULL,NULL,NULL,'31',NULL,NULL,NULL,0,NULL,0,'no',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shipment_participant_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_admin`
--

DROP TABLE IF EXISTS `system_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `force_password_reset` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'inactive',
  `created_on` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `IsVl` int(11) DEFAULT NULL,
  `IsProvider` varchar(11) DEFAULT '0',
  `ProviderName` varchar(100) DEFAULT NULL,
  `AssignModule` int(11) DEFAULT '0',
  `County` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `UN_KEY_EMAIL` (`primary_email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_admin`
--

LOCK TABLES `system_admin` WRITE;
/*!40000 ALTER TABLE `system_admin` DISABLE KEYS */;
INSERT INTO `system_admin` VALUES (1,'System','Administrator','thomas.nyongesa@ken.aphl.org','e10adc3949ba59abbe56e057f20f883e','','0788492586',1,'active','2017-04-01 10:27:00','1','2017-04-01 10:41:24','1',4,'3','',1,NULL),(2,'Repository','Administrator','osoromichael@gmail.com','e10adc3949ba59abbe56e057f20f883e','','0788492586',1,'active','2017-04-05 12:29:55','2','2017-06-08 14:37:10','2',2,'1','',0,'30'),(3,'micro','Administrator','osoro@gmail.com','e10adc3949ba59abbe56e057f20f883e','','0788492586',0,'active','2017-04-05 12:29:55','2','2017-06-08 14:37:10','2',3,'1','',0,'30'),(31,'VL/EID','Administrator','okarmikell@gmail.com','b9c9604bb0630ac017b2051778a558bc','','0788492586',0,'active','2017-04-01 10:27:00','1','2018-03-13 10:48:38','31',1,'0','',0,NULL),(32,'MICRO','USER','micro@nphls.or.ke','e10adc3949ba59abbe56e057f20f883e','','0788492586',0,'active','2017-04-01 10:27:00','1','2017-04-24 08:35:24','32',3,'0','',0,NULL),(34,'Email Test','Test','testemail@gmail.com','677d4beebc4bf16513173a4bbd1e9bf7','','0711560619',1,'active','2018-04-11 16:21:00','3',NULL,NULL,3,NULL,NULL,0,NULL),(35,'mail','tester','mailtester@gmail.com','f0ce294f6d50bafcc97ba252f7a98559','','0711560619',1,'active','2018-04-11 16:30:00','3',NULL,NULL,3,NULL,NULL,0,NULL),(36,'M','Osoro','mosoro@abnosoftwares.co.ke','9b72ef4704d95252fab35a25e74ee3ae','','07115606189',1,'active','2018-04-12 09:38:58','2',NULL,NULL,2,'3',NULL,0,'30'),(37,'Test Multiple','t','osorom@gmail.com','e10adc3949ba59abbe56e057f20f883e','','123547',0,'active','2018-04-12 11:33:12','2',NULL,NULL,2,'3',NULL,0,'1,2,3,4,5,6,7'),(39,'test','Test','testchker@gmail.com','96224a627560ce152c8a6751ecbd9dfb','','4512454',1,'active','2018-04-12 12:12:56','2',NULL,NULL,2,'3',NULL,0,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,');
/*!40000 ALTER TABLE `system_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_bacteria`
--

DROP TABLE IF EXISTS `tbl_bac_bacteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_bacteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organismName` varchar(100) DEFAULT NULL,
  `organismCode` varchar(100) DEFAULT NULL,
  `conceptCode` varchar(100) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(100) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT '1',
  `updateDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fullname` (`fullName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_bacteria`
--

LOCK TABLES `tbl_bac_bacteria` WRITE;
/*!40000 ALTER TABLE `tbl_bac_bacteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_bacteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_bacteria_csv`
--

DROP TABLE IF EXISTS `tbl_bac_bacteria_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_bacteria_csv` (
  `Organism Name` text,
  `NHSN Organism Code` text,
  `SNOMED Concept Code` int(11) DEFAULT NULL,
  `SNOMED Fully Specified Name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_bacteria_csv`
--

LOCK TABLES `tbl_bac_bacteria_csv` WRITE;
/*!40000 ALTER TABLE `tbl_bac_bacteria_csv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_bacteria_csv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_couriers`
--

DROP TABLE IF EXISTS `tbl_bac_couriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_couriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courierName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `physicalAddress` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `tbl_bac_courierscol` varchar(45) DEFAULT NULL,
  `contactPerson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courierName_UNIQUE` (`courierName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_couriers`
--

LOCK TABLES `tbl_bac_couriers` WRITE;
/*!40000 ALTER TABLE `tbl_bac_couriers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_couriers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_expected_micro_bacterial_agents`
--

DROP TABLE IF EXISTS `tbl_bac_expected_micro_bacterial_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_expected_micro_bacterial_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` varchar(45) DEFAULT NULL,
  `antiMicroAgent` varchar(45) DEFAULT NULL,
  `reportedToStatus` varchar(45) DEFAULT NULL,
  `diskContent` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `createdBy` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `finalScore` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  `agentScore` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `SAMPLE_ANTI_UK` (`sampleId`,`antiMicroAgent`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_expected_micro_bacterial_agents`
--

LOCK TABLES `tbl_bac_expected_micro_bacterial_agents` WRITE;
/*!40000 ALTER TABLE `tbl_bac_expected_micro_bacterial_agents` DISABLE KEYS */;
INSERT INTO `tbl_bac_expected_micro_bacterial_agents` VALUES (1,'1','ampicilin','yes',10,1,31,NULL,NULL,NULL,'I',NULL,10),(2,'1','colistin','yes',15,1,31,NULL,NULL,NULL,'R',NULL,10);
/*!40000 ALTER TABLE `tbl_bac_expected_micro_bacterial_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_expected_results`
--

DROP TABLE IF EXISTS `tbl_bac_expected_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_expected_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `grainStainReaction` varchar(105) DEFAULT NULL,
  `grainStainReactionScore` int(11) DEFAULT NULL,
  `primaryMedia` varchar(105) DEFAULT NULL,
  `primaryMediaScore` int(11) DEFAULT NULL,
  `incubationConditions` varchar(105) DEFAULT NULL,
  `incubationConditionsScore` int(11) DEFAULT NULL,
  `colonialMorphology` varchar(45) DEFAULT NULL,
  `colonialMorphologyScore` int(11) DEFAULT NULL,
  `bacterialQualification` varchar(105) DEFAULT NULL,
  `bacterialQualificationScore` int(11) DEFAULT NULL,
  `bacterialReagents` varchar(105) DEFAULT NULL,
  `bacterialReagentsScore` int(11) DEFAULT NULL,
  `isolateProcessing` varchar(105) DEFAULT NULL,
  `isolateProcessingScore` int(11) DEFAULT NULL,
  `finalIdentification` varchar(105) DEFAULT NULL,
  `finalIdentificationScore` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sampleId_UNIQUE` (`sampleId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_expected_results`
--

LOCK TABLES `tbl_bac_expected_results` WRITE;
/*!40000 ALTER TABLE `tbl_bac_expected_results` DISABLE KEYS */;
INSERT INTO `tbl_bac_expected_results` VALUES (1,'1',NULL,'2018-03-13 12:19:12',31,NULL,NULL,NULL,NULL,'NONE',NULL,'NONE',NULL,'NONE',NULL,'NONE',NULL,'NONE',NULL,'NONE',NULL,'test',5,'1');
/*!40000 ALTER TABLE `tbl_bac_expected_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_grades`
--

DROP TABLE IF EXISTS `tbl_bac_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(45) DEFAULT NULL,
  `lowerMark` int(11) DEFAULT NULL,
  `upperMark` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `G_UK` (`grade`),
  UNIQUE KEY `L_UK` (`lowerMark`),
  UNIQUE KEY `U_UK` (`upperMark`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_grades`
--

LOCK TABLES `tbl_bac_grades` WRITE;
/*!40000 ALTER TABLE `tbl_bac_grades` DISABLE KEYS */;
INSERT INTO `tbl_bac_grades` VALUES (1,'UNACCEPTABLE',0,74,'NOT ACCEPTABLE',31,'2018-03-13 13:14:53',NULL,NULL,'1'),(2,'ACCEPTABLE',75,100,'ACCEPTABLE',31,'2018-03-13 13:15:14',NULL,NULL,'1');
/*!40000 ALTER TABLE `tbl_bac_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_micro_bacterial_agents`
--

DROP TABLE IF EXISTS `tbl_bac_micro_bacterial_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_micro_bacterial_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `antiMicroAgent` varchar(105) DEFAULT NULL,
  `reportedToStatus` varchar(45) DEFAULT NULL,
  `diskContent` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `panelToSampleId` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  `markedStatus` varchar(45) DEFAULT '0',
  `published` varchar(45) DEFAULT '0',
  `adminMarked` varchar(45) DEFAULT '0',
  `finalScore` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_sample_round_lab` (`roundId`,`sampleId`,`antiMicroAgent`,`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_micro_bacterial_agents`
--

LOCK TABLES `tbl_bac_micro_bacterial_agents` WRITE;
/*!40000 ALTER TABLE `tbl_bac_micro_bacterial_agents` DISABLE KEYS */;
INSERT INTO `tbl_bac_micro_bacterial_agents` VALUES (1,'','',0,4,1,1,13,7,'1','2017-11-09 09:37:10','31',NULL,'1',4,0,'0','1','1','');
/*!40000 ALTER TABLE `tbl_bac_micro_bacterial_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_panel_mst`
--

DROP TABLE IF EXISTS `tbl_bac_panel_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_panel_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panelName` varchar(45) NOT NULL,
  `panelType` varchar(45) DEFAULT NULL,
  `dateDelivered` date DEFAULT NULL,
  `panelLabel` varchar(45) DEFAULT NULL,
  `panelDateOfDelivery` date DEFAULT NULL,
  `panelDatePrepared` date DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `totalSamples` int(11) DEFAULT '0',
  `numberOfSamples` int(11) DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `panelStatus` varchar(45) DEFAULT '0',
  `shipmentNumber` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `barcode` varchar(20) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `totalSamplesAdded` int(11) DEFAULT NULL,
  `addedStatus` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`,`panelName`),
  UNIQUE KEY `uk_panel_name` (`panelName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Host panels names without the samples attached to them';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_panel_mst`
--

LOCK TABLES `tbl_bac_panel_mst` WRITE;
/*!40000 ALTER TABLE `tbl_bac_panel_mst` DISABLE KEYS */;
INSERT INTO `tbl_bac_panel_mst` VALUES (1,'Test','test','0000-00-00','test','2018-03-18','2018-03-04','1','2018-03-05 10:07:14',0,1,NULL,'2',0,NULL,NULL,NULL,'7070262227247399',32,'2018-03-05 10:07:14',31,NULL,'1'),(2,'654654654','54646','0000-00-00','654654','2018-03-05','2018-03-03','1','2018-03-05 17:06:19',0,NULL,NULL,'2',0,NULL,NULL,NULL,'4386863219601467',31,'2018-03-05 17:06:19',31,NULL,'1');
/*!40000 ALTER TABLE `tbl_bac_panel_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_panels_shipments`
--

DROP TABLE IF EXISTS `tbl_bac_panels_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_panels_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panelId` int(11) DEFAULT NULL,
  `shipmentId` int(11) DEFAULT NULL,
  `datecreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `deliveryStatus` varchar(45) DEFAULT '0',
  `status` varchar(45) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `conditionStatus` varchar(45) DEFAULT NULL,
  `comments` varchar(105) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `dateDelivered` datetime DEFAULT NULL,
  `storageMeans` varchar(105) DEFAULT NULL,
  `panelsReceived` int(11) DEFAULT NULL,
  `tempOfSamples` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `participantId` varchar(45) DEFAULT NULL,
  `receiveComment` varchar(200) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `startRoundFlag` varchar(10) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_ship_panel_lab` (`panelId`,`shipmentId`,`deliveryStatus`,`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_panels_shipments`
--

LOCK TABLES `tbl_bac_panels_shipments` WRITE;
/*!40000 ALTER TABLE `tbl_bac_panels_shipments` DISABLE KEYS */;
INSERT INTO `tbl_bac_panels_shipments` VALUES (1,1,1,'2018-03-05 10:10:30','31','2','1',31,'2018-03-05 10:10:30',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager',NULL,NULL,NULL,'1'),(2,1,1,'2018-03-05 10:12:40','31','3','1',32,'2018-03-05 10:12:40',NULL,NULL,1,'2018-03-05 00:00:00',NULL,NULL,NULL,'Current Lab Manager','27',NULL,1,'1'),(4,2,2,'2018-03-05 17:07:03','31','2','1',31,'2018-03-05 17:07:03',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager',NULL,NULL,NULL,'1'),(5,2,2,'2018-03-05 17:07:41','31','2','1',31,'2018-03-05 17:07:41',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','34',NULL,2,'1'),(6,2,2,'2018-03-05 17:07:42','31','2','1',31,'2018-03-05 17:07:42',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','27',NULL,2,'1'),(7,2,2,'2018-03-05 17:07:43','31','2','1',31,'2018-03-05 17:07:43',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','22',NULL,2,'1'),(8,2,2,'2018-03-05 17:07:43','31','2','1',31,'2018-03-05 17:07:43',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','20',NULL,2,'1'),(9,2,2,'2018-03-05 17:07:44','31','2','1',31,'2018-03-05 17:07:44',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','19',NULL,2,'1'),(10,2,2,'2018-03-05 17:07:45','31','2','1',31,'2018-03-05 17:07:45',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','15',NULL,2,'1'),(11,2,2,'2018-03-05 17:07:45','31','2','1',31,'2018-03-05 17:07:45',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','14',NULL,2,'1'),(12,2,2,'2018-03-05 17:07:46','31','2','1',31,'2018-03-05 17:07:46',NULL,NULL,1,'0000-00-00 00:00:00',NULL,NULL,NULL,'Current Lab Manager','13',NULL,2,'1');
/*!40000 ALTER TABLE `tbl_bac_panels_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_programs`
--

DROP TABLE IF EXISTS `tbl_bac_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `programCode` varchar(50) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `currentRoundId` int(11) DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `programDesc` varchar(90) DEFAULT NULL,
  `programName` varchar(90) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_bac_programs__pk_code` (`programName`,`programCode`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_programs`
--

LOCK TABLES `tbl_bac_programs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_programs` DISABLE KEYS */;
INSERT INTO `tbl_bac_programs` VALUES (1,'001','2017-04-26 09:39:37',32,NULL,NULL,NULL,'Trial Round','Trial Round',1),(7,'test','2017-04-27 15:15:47',32,NULL,NULL,NULL,'test','test',1);
/*!40000 ALTER TABLE `tbl_bac_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_ready_labs`
--

DROP TABLE IF EXISTS `tbl_bac_ready_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_ready_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labId` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `updateDate` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `roundId` int(11) DEFAULT NULL,
  `totalParticipants` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_ready_labs`
--

LOCK TABLES `tbl_bac_ready_labs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_ready_labs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_ready_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_response_results`
--

DROP TABLE IF EXISTS `tbl_bac_response_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_response_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  `participantId` varchar(45) DEFAULT NULL,
  `userId` varchar(45) DEFAULT '1',
  `panelToSampleId` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `grainStainReaction` varchar(105) DEFAULT NULL,
  `grainStainReactionScore` int(11) DEFAULT NULL,
  `primaryMedia` varchar(105) DEFAULT NULL,
  `primaryMediaScore` int(11) DEFAULT NULL,
  `incubationConditions` varchar(105) DEFAULT NULL,
  `incubationConditionsScore` int(11) DEFAULT NULL,
  `colonialMorphology` varchar(45) DEFAULT NULL,
  `colonialMorphologyScore` int(11) DEFAULT NULL,
  `bacterialQualification` varchar(105) DEFAULT NULL,
  `bacterialQualificationScore` int(11) DEFAULT NULL,
  `bacterialReagents` varchar(105) DEFAULT NULL,
  `bacterialReagentsScore` int(11) DEFAULT NULL,
  `isolateProcessing` varchar(105) DEFAULT NULL,
  `isolateProcessingScore` int(11) DEFAULT NULL,
  `finalIdentification` varchar(105) DEFAULT NULL,
  `finalIdentificationScore` int(11) DEFAULT NULL,
  `finalScore` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `changedStatus` varchar(45) DEFAULT '1',
  `markedStatus` varchar(45) DEFAULT '0',
  `feedback` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `grade` varchar(45) DEFAULT NULL,
  `remarks` varchar(105) DEFAULT NULL,
  `adminRemarks` varchar(400) DEFAULT NULL,
  `correctiveAction` int(11) DEFAULT '0',
  `adminMarked` varchar(45) DEFAULT '0',
  `totalMicroAgentsScore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sampleId_UNIQUE` (`roundId`,`participantId`,`userId`,`sampleId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_response_results`
--

LOCK TABLES `tbl_bac_response_results` WRITE;
/*!40000 ALTER TABLE `tbl_bac_response_results` DISABLE KEYS */;
INSERT INTO `tbl_bac_response_results` VALUES (1,'1','1','27','32','2','2018-03-05 12:00:04',32,31,NULL,NULL,0,'Test',NULL,'test',NULL,'test',NULL,'test',NULL,'test',NULL,'test',NULL,'Test',5,5,'1','1','1',0,1,NULL,NULL,NULL,0,'0',NULL);
/*!40000 ALTER TABLE `tbl_bac_response_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_rounds`
--

DROP TABLE IF EXISTS `tbl_bac_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_rounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roundName` varchar(45) DEFAULT NULL,
  `roundCode` varchar(45) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `roundStatus` int(11) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `roundDesc` varchar(200) DEFAULT NULL,
  `totalSamplesAdded` int(11) DEFAULT '0',
  `daysLeft` int(11) DEFAULT '0',
  `totalShipmentsAdded` int(11) DEFAULT '0',
  `startRoundFlag` varchar(10) DEFAULT '1',
  `dateStarted` datetime DEFAULT NULL,
  `evaluated` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `publishedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roundName_UNIQUE` (`roundName`),
  UNIQUE KEY `roundCode_UNIQUE` (`roundCode`),
  UNIQUE KEY `uk_round_roundname` (`roundName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_rounds`
--

LOCK TABLES `tbl_bac_rounds` WRITE;
/*!40000 ALTER TABLE `tbl_bac_rounds` DISABLE KEYS */;
INSERT INTO `tbl_bac_rounds` VALUES (1,'test','Test','2018-03-04','2018-03-25',31,1,1,'2018-03-05 10:09:42',31,'2018-03-05 10:09:42','test',0,0,0,'1',NULL,1,1,'2018-03-13 08:23:13'),(2,'6546544','46546','2018-03-04','2018-03-27',31,1,1,'2018-03-05 17:07:25',NULL,'2018-03-05 17:07:25','65465',0,0,0,'1',NULL,0,0,NULL);
/*!40000 ALTER TABLE `tbl_bac_rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_rounds_labs`
--

DROP TABLE IF EXISTS `tbl_bac_rounds_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_rounds_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roundId` varchar(45) DEFAULT NULL,
  `labId` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `dateUpdate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `lastMailSend` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_LAB_ROUND` (`roundId`,`labId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_rounds_labs`
--

LOCK TABLES `tbl_bac_rounds_labs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_rounds_labs` DISABLE KEYS */;
INSERT INTO `tbl_bac_rounds_labs` VALUES (1,'1','27','2018-03-05 10:12:40','31',NULL,NULL,'1','2018-03-05 10:12:40'),(3,'2','34','2018-03-05 17:07:41','31',NULL,NULL,'1','2018-03-05 17:07:41'),(4,'2','27','2018-03-05 17:07:42','31',NULL,NULL,'1','2018-03-05 17:07:42'),(5,'2','22','2018-03-05 17:07:42','31',NULL,NULL,'1','2018-03-05 17:07:42'),(6,'2','20','2018-03-05 17:07:43','31',NULL,NULL,'1','2018-03-05 17:07:43'),(7,'2','19','2018-03-05 17:07:44','31',NULL,NULL,'1','2018-03-05 17:07:44'),(8,'2','15','2018-03-05 17:07:45','31',NULL,NULL,'1','2018-03-05 17:07:45'),(9,'2','14','2018-03-05 17:07:45','31',NULL,NULL,'1','2018-03-05 17:07:45'),(10,'2','13','2018-03-05 17:07:46','31',NULL,NULL,'1','2018-03-05 17:07:46');
/*!40000 ALTER TABLE `tbl_bac_rounds_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_sample_instructions`
--

DROP TABLE IF EXISTS `tbl_bac_sample_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_sample_instructions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduction` varchar(1000) DEFAULT NULL,
  `scope` varchar(1000) DEFAULT NULL,
  `proficiency` varchar(1000) DEFAULT NULL,
  `surveyRequirement` varchar(1000) DEFAULT NULL,
  `factorsInfluenceTesting` varchar(1000) DEFAULT NULL,
  `selectionOfSample` varchar(1000) DEFAULT NULL,
  `homogeneityAndStability` varchar(1000) DEFAULT NULL,
  `clinicalDetails` varchar(1000) DEFAULT NULL,
  `specialHandling` varchar(1000) DEFAULT NULL,
  `specificEnvirons` varchar(1000) DEFAULT NULL,
  `sampleDispatch` varchar(1000) DEFAULT NULL,
  `returnInstructions` varchar(1000) DEFAULT NULL,
  `sampleInstructions` varchar(1000) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `sampleId` int(11) DEFAULT NULL,
  `batchName` varchar(45) DEFAULT NULL,
  `sampleReception` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_SAMPLEID` (`sampleId`),
  KEY `INDEX_KEY` (`id`,`status`,`sampleId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_sample_instructions`
--

LOCK TABLES `tbl_bac_sample_instructions` WRITE;
/*!40000 ALTER TABLE `tbl_bac_sample_instructions` DISABLE KEYS */;
INSERT INTO `tbl_bac_sample_instructions` VALUES (2,'thank you for participating in the nmrl proficiency testing scheme (pts) this year. we hope that your participation will be beneficial to your laboratory, as well as being enjoyable. we would like to welcome any new participants to the program.','the nmrl pts aims to determine the laboratory procedures on handling specimen including complete identification, antimicrobial susceptible testing and recommendation to clinicians. participants are encouraged to perform all the survey challenges.','read the clinical details and processing instructions for each sample. samples shall be analyzed using your own standard operating procedures. all participants are required to use the test method of their choice.\nsamples should be treated in the same way as routine patient specimen.','the nmrl pts endeavors to assess all aspects of specimen management, such as turn-around time, accuracy of reports, clinical relevance of results, specimen handling, etc. rapid turn-around time is an essential element of specimen management; survey questionnaires which are received after the return deadline will be penalized and those received after the interim results are distributed will not be assessed.\n if a laboratory code is not completed or incorrectly stated on the survey response form the submitted results shall not be assessed, this is equivalent to omitting a patient name of a report.\nplease contact nmrl if you are unsure of your laboratory code.','temperature:\n samples are shipped at ambient conditions. please ensure that samples are stored and processed at room temperature at all times unless instructions are supplied to the contrary.\n\n\n\nstability: \nsome of the simulated specimens have a limited viability; therefore your laboratory should process the samples as soon as they are received in the laboratory.','isolates which are included in the nmrl pts is carefully characterized to ensure that typical morphology and features to facilitate identification. prior to distribution, the organisms are tested using standard phenotypic, and where required, genotypic methods.',NULL,'the package contains:\nâ€¢	instruction sheet\nâ€¢	previous eqa performance reports\nâ€¢	2 cary blair swabs and 4 gram stain smears','if the packages contain broken samples, sterilize (autoclave) the container and contents immediately. dispose broken samples as per safety protocols used in your laboratory. guard against the production of aerosols. please follow universal safety precautions at all times.\ncarry out all procedures aseptically, preferably in class ii biosafety cabinet','please keep all processed samples at room temperature until you have identified the organism/s fully.','an electronic notification is sent out on dispatch of the pts samples, should you not receive your shipment or the condition of the shipment is unsuitable, please contact the scheme coordinators within 5 working days of the notification received.','the proficiency test results should be returned either by email or the postal address provided on the first page of this instruction sheet.','This package contains 4 samples A, B, C, D. Please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform PTS Scheme coordinator via email if samples were unsuitable. ','2017-03-22 17:11:50','1',NULL,NULL,'9',0,'EQA/NPHL/A/17','this package contains 4 samples a, b, c, d. please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform pts scheme coordinator via email if samples were unsuitable. \nplease keep all samples at room temperature until you have identified the organism/s fully.'),(6,'thank you for participating in the nmrl proficiency testing scheme (pts) this year. we hope that your participation will be beneficial to your laboratory, as well as being enjoyable. we would like to welcome any new participants to the program.','the nmrl pts aims to determine the laboratory procedures on handling specimen including complete identification, antimicrobial susceptible testing and recommendation to clinicians. participants are encouraged to perform all the survey challenges.','read the clinical details and processing instructions for each sample. samples shall be analyzed using your own standard operating procedures. all participants are required to use the test method of their choice.\nsamples should be treated in the same way as routine patient specimen.','the nmrl pts endeavors to assess all aspects of specimen management, such as turn-around time, accuracy of reports, clinical relevance of results, specimen handling, etc. rapid turn-around time is an essential element of specimen management; survey questionnaires which are received after the return deadline will be penalized and those received after the interim results are distributed will not be assessed.\n if a laboratory code is not completed or incorrectly stated on the survey response form the submitted results shall not be assessed, this is equivalent to omitting a patient name of a report.\nplease contact nmrl if you are unsure of your laboratory code.','temperature:\n samples are shipped at ambient conditions. please ensure that samples are stored and processed at room temperature at all times unless instructions are supplied to the contrary.\n\n\n\nstability: \nsome of the simulated specimens have a limited viability; therefore your laboratory should process the samples as soon as they are received in the laboratory.','isolates which are included in the nmrl pts is carefully characterized to ensure that typical morphology and features to facilitate identification. prior to distribution, the organisms are tested using standard phenotypic, and where required, genotypic methods.','zxczxczxc','the package contains:\nâ€¢	instruction sheet\nâ€¢	previous eqa performance reports\nâ€¢	2 cary blair swabs and 4 gram stain smears','if the packages contain broken samples, sterilize (autoclave) the container and contents immediately. dispose broken samples as per safety protocols used in your laboratory. guard against the production of aerosols. please follow universal safety precautions at all times.\ncarry out all procedures aseptically, preferably in class ii biosafety cabinet','please keep all processed samples at room temperature until you have identified the organism/s fully.','an electronic notification is sent out on dispatch of the pts samples, should you not receive your shipment or the condition of the shipment is unsuitable, please contact the scheme coordinators within 5 working days of the notification received.','the proficiency test results should be returned either by email or the postal address provided on the first page of this instruction sheet.','This package contains 4 samples A, B, C, D. Please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform PTS Scheme coordinator via email if samples were unsuitable. ','2017-03-23 11:17:15','1','','0000-00-00 00:00:00','1',2,'EQA/NPHL/A/17','this package contains 4 samples a, b, c, d. please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform pts scheme coordinator via email if samples were unsuitable. \nplease keep all samples at room temperature until you have identified the organism/s fully.'),(7,'thank you for participating in the nmrl proficiency testing scheme (pts) this year. we hope that your participation will be beneficial to your laboratory, as well as being enjoyable. we would like to welcome any new participants to the program.','the nmrl pts aims to determine the laboratory procedures on handling specimen including complete identification, antimicrobial susceptible testing and recommendation to clinicians. participants are encouraged to perform all the survey challenges.','read the clinical details and processing instructions for each sample. samples shall be analyzed using your own standard operating procedures. all participants are required to use the test method of their choice.\nsamples should be treated in the same way as routine patient specimen.','the nmrl pts endeavors to assess all aspects of specimen management, such as turn-around time, accuracy of reports, clinical relevance of results, specimen handling, etc. rapid turn-around time is an essential element of specimen management; survey questionnaires which are received after the return deadline will be penalized and those received after the interim results are distributed will not be assessed.\n if a laboratory code is not completed or incorrectly stated on the survey response form the submitted results shall not be assessed, this is equivalent to omitting a patient name of a report.\nplease contact nmrl if you are unsure of your laboratory code.','temperature:\n samples are shipped at ambient conditions. please ensure that samples are stored and processed at room temperature at all times unless instructions are supplied to the contrary.\n\n\n\nstability: \nsome of the simulated specimens have a limited viability; therefore your laboratory should process the samples as soon as they are received in the laboratory.','isolates which are included in the nmrl pts is carefully characterized to ensure that typical morphology and features to facilitate identification. prior to distribution, the organisms are tested using standard phenotypic, and where required, genotypic methods.','asdaSDasdasdAS','the package contains:\nâ€¢	instruction sheet\nâ€¢	previous eqa performance reports\nâ€¢	2 cary blair swabs and 4 gram stain smears','if the packages contain broken samples, sterilize (autoclave) the container and contents immediately. dispose broken samples as per safety protocols used in your laboratory. guard against the production of aerosols. please follow universal safety precautions at all times.\ncarry out all procedures aseptically, preferably in class ii biosafety cabinet','please keep all processed samples at room temperature until you have identified the organism/s fully.','an electronic notification is sent out on dispatch of the pts samples, should you not receive your shipment or the condition of the shipment is unsuitable, please contact the scheme coordinators within 5 working days of the notification received.','the proficiency test results should be returned either by email or the postal address provided on the first page of this instruction sheet.','This package contains 4 samples A, B, C, D. Please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform PTS Scheme coordinator via email if samples were unsuitable. ','2017-03-23 11:18:50','1','1','0000-00-00 00:00:00','1',1,'EQA/NPHL/A/17','this package contains 4 samples a, b, c, d. please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform pts scheme coordinator via email if samples were unsuitable. \nplease keep all samples at room temperature until you have identified the organism/s fully.'),(8,'thank you for participating in the nmrl proficiency testing scheme (pts) this year. we hope that your participation will be beneficial to your laboratory, as well as being enjoyable. we would like to welcome any new participants to the program.','the nmrl pts aims to determine the laboratory procedures on handling specimen including complete identification, antimicrobial susceptible testing and recommendation to clinicians. participants are encouraged to perform all the survey challenges.','read the clinical details and processing instructions for each sample. samples shall be analyzed using your own standard operating procedures. all participants are required to use the test method of their choice.\nsamples should be treated in the same way as routine patient specimen.','the nmrl pts endeavors to assess all aspects of specimen management, such as turn-around time, accuracy of reports, clinical relevance of results, specimen handling, etc. rapid turn-around time is an essential element of specimen management; survey questionnaires which are received after the return deadline will be penalized and those received after the interim results are distributed will not be assessed.\n if a laboratory code is not completed or incorrectly stated on the survey response form the submitted results shall not be assessed, this is equivalent to omitting a patient name of a report.\nplease contact nmrl if you are unsure of your laboratory code.','temperature:\n samples are shipped at ambient conditions. please ensure that samples are stored and processed at room temperature at all times unless instructions are supplied to the contrary.\n\n\n\nstability: \nsome of the simulated specimens have a limited viability; therefore your laboratory should process the samples as soon as they are received in the laboratory.','isolates which are included in the nmrl pts is carefully characterized to ensure that typical morphology and features to facilitate identification. prior to distribution, the organisms are tested using standard phenotypic, and where required, genotypic methods.','isolates which are included in the nmrl pts is carefully characterized to ensure that typical morphology and features to facilitate identification. prior to distribution, the organisms are tested using standard phenotypic, and where required, genotypic methods.','the package contains:\nâ€¢	instruction sheet\nâ€¢	previous eqa performance reports\nâ€¢	2 cary blair swabs and 4 gram stain smears','if the packages contain broken samples, sterilize (autoclave) the container and contents immediately. dispose broken samples as per safety protocols used in your laboratory. guard against the production of aerosols. please follow universal safety precautions at all times.\ncarry out all procedures aseptically, preferably in class ii biosafety cabinet','please keep all processed samples at room temperature until you have identified the organism/s fully.','an electronic notification is sent out on dispatch of the pts samples, should you not receive your shipment or the condition of the shipment is unsuitable, please contact the scheme coordinators within 5 working days of the notification received.','the proficiency test results should be returned either by email or the postal address provided on the first page of this instruction sheet.','This package contains 4 samples A, B, C, D. Please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform PTS Scheme coordinator via email if samples were unsuitable. ','2017-04-21 14:33:17','32','','0000-00-00 00:00:00','1',3,'EQA/NMHRl/17','this package contains 4 samples a, b, c, d. please open package and inspect for any breakages, possible deterioration during transportation or missing samples, inform pts scheme coordinator via email if samples were unsuitable. \nplease keep all samples at room temperature until you have identified the organism/s fully.');
/*!40000 ALTER TABLE `tbl_bac_sample_instructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_sample_to_panel`
--

DROP TABLE IF EXISTS `tbl_bac_sample_to_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_sample_to_panel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampleId` int(11) DEFAULT NULL,
  `panelId` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(15) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `deliveryStatus` int(11) DEFAULT '0',
  `deliveryCondition` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `dateDelivered` datetime DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `issuedStatus` int(11) DEFAULT '0',
  `roundId` int(11) DEFAULT NULL,
  `totalAddedSamples` int(11) DEFAULT NULL,
  `shipmentId` int(11) DEFAULT NULL,
  `startRoundFlag` varchar(10) DEFAULT '1',
  `conditionStatus` varchar(105) DEFAULT NULL,
  `sampleComment` varchar(300) DEFAULT NULL,
  `responseStatus` varchar(45) DEFAULT '0',
  `feedBack` varchar(45) DEFAULT '0',
  `issuedFlag` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_SAMPLE_PANEL` (`sampleId`,`panelId`,`deliveryStatus`,`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_sample_to_panel`
--

LOCK TABLES `tbl_bac_sample_to_panel` WRITE;
/*!40000 ALTER TABLE `tbl_bac_sample_to_panel` DISABLE KEYS */;
INSERT INTO `tbl_bac_sample_to_panel` VALUES (1,1,'1','31','2018-03-05 10:10:14','1',31,'2018-03-05 10:10:14',2,NULL,NULL,1,'0000-00-00 00:00:00',NULL,0,NULL,1,1,'1',NULL,NULL,'0','0','0'),(2,1,'1','31','2018-03-05 10:10:14','1',32,'2018-03-05 10:10:14',4,'','',1,'2018-03-05 02:52:38',27,0,1,1,1,'1','','','0','0','1'),(4,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,NULL,NULL,1,'0000-00-00 00:00:00',NULL,0,NULL,1,2,'1',NULL,NULL,'0','0','0'),(5,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',34,0,2,1,2,'1','','','0','0','0'),(6,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',27,0,2,1,2,'1','','','0','0','0'),(7,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',22,0,2,1,2,'1','','','0','0','0'),(8,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',20,0,2,1,2,'1','','','0','0','0'),(9,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',19,0,2,1,2,'1','','','0','0','0'),(10,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',15,0,2,1,2,'1','','','0','0','0'),(11,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',14,0,2,1,2,'1','','','0','0','0'),(12,2,'2','31','2018-03-05 17:06:28','1',31,'2018-03-05 17:06:28',2,'','',1,'0000-00-00 00:00:00',13,0,2,1,2,'1','','','0','0','0');
/*!40000 ALTER TABLE `tbl_bac_sample_to_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_samples`
--

DROP TABLE IF EXISTS `tbl_bac_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_samples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batchName` varchar(45) DEFAULT NULL,
  `datePrepared` date DEFAULT NULL,
  `manOrigin` varchar(45) DEFAULT NULL,
  `bloodPackNo` varchar(45) DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `materialOrigin` varchar(45) DEFAULT NULL,
  `materialType` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `expiryStatus` varchar(45) DEFAULT '0',
  `collectionDate` date DEFAULT NULL,
  `dispatchable` varchar(45) DEFAULT '1',
  `preparedAt` varchar(105) DEFAULT NULL,
  `lifespan` varchar(45) DEFAULT NULL,
  `originExtraInfo` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sampleStatus` varchar(45) DEFAULT '5',
  `participantId` varchar(45) DEFAULT 'null',
  `dateDelivered` date DEFAULT NULL,
  `barcode` varchar(45) DEFAULT 'null',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `issuedStatus` int(11) DEFAULT '0',
  `totalSamplesAdded` int(11) DEFAULT NULL,
  `materialSource` varchar(100) DEFAULT NULL,
  `sampleDetails` varchar(100) DEFAULT NULL,
  `sampleType` varchar(100) DEFAULT NULL,
  `sampleInstructions` varchar(100) DEFAULT NULL,
  `expectedResults` int(11) DEFAULT '0',
  `addedStatus` varchar(45) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sample_batcname` (`batchName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_samples`
--

LOCK TABLES `tbl_bac_samples` WRITE;
/*!40000 ALTER TABLE `tbl_bac_samples` DISABLE KEYS */;
INSERT INTO `tbl_bac_samples` VALUES (1,'Test  001','2018-03-04',NULL,NULL,NULL,'osoro','none','bacterial',1,'2018-03-05 10:06:55','0',NULL,'1','Test',NULL,'none',NULL,'5','null',NULL,'7594812188124447',31,'2018-03-05 10:06:55',31,0,NULL,'standard organisms','Test','1,2,3','test',1,'1'),(2,'987987','2018-03-05',NULL,NULL,NULL,'897987','789','89798',1,'2018-03-05 17:05:58','0',NULL,'1','6546',NULL,'654',NULL,'5','null',NULL,'8563265193198042',31,'2018-03-05 17:05:58',31,0,NULL,'standard organisms','65465','[\"2\"]','546',0,'1');
/*!40000 ALTER TABLE `tbl_bac_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_samples_to_users`
--

DROP TABLE IF EXISTS `tbl_bac_samples_to_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_samples_to_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `panelToSampleId` int(11) DEFAULT NULL,
  `dateAllocated` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT '1',
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `receiveStatus` varchar(45) DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `responseStatus` varchar(45) DEFAULT '0',
  `feedBack` varchar(45) DEFAULT '0',
  `sampleStatus` varchar(45) DEFAULT NULL,
  `dateReturned` datetime DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `totalCorrectScore` int(11) DEFAULT '0',
  `totalMicroAgentsScore` int(11) DEFAULT '0',
  `remarks` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `published` int(11) DEFAULT '0',
  `adminMarked` varchar(45) DEFAULT '0',
  `finalScore` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sampleUser` (`userId`,`sampleId`,`roundId`,`participantId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_samples_to_users`
--

LOCK TABLES `tbl_bac_samples_to_users` WRITE;
/*!40000 ALTER TABLE `tbl_bac_samples_to_users` DISABLE KEYS */;
INSERT INTO `tbl_bac_samples_to_users` VALUES (4,32,1,2,'2018-03-05 10:52:38','2018-03-05 10:52:38','1','31',NULL,NULL,32,'1','0',NULL,NULL,1,27,5,NULL,NULL,NULL,1,'0',5.00);
/*!40000 ALTER TABLE `tbl_bac_samples_to_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_saved_email_notifications`
--

DROP TABLE IF EXISTS `tbl_bac_saved_email_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_saved_email_notifications` (
  `id` int(11) NOT NULL,
  `recepientEmail` varchar(45) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `sendStatus` varchar(45) DEFAULT '1',
  `dateEmailSent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_saved_email_notifications`
--

LOCK TABLES `tbl_bac_saved_email_notifications` WRITE;
/*!40000 ALTER TABLE `tbl_bac_saved_email_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_saved_email_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_shipment_logs`
--

DROP TABLE IF EXISTS `tbl_bac_shipment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_shipment_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateReceived` datetime DEFAULT CURRENT_TIMESTAMP,
  `panelsReceived` varchar(45) DEFAULT NULL,
  `shipmentStatus` varchar(45) DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `shipmentId` varchar(45) DEFAULT NULL,
  `addressedTo` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `participantId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_shipment_logs`
--

LOCK TABLES `tbl_bac_shipment_logs` WRITE;
/*!40000 ALTER TABLE `tbl_bac_shipment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_shipment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_shipments`
--

DROP TABLE IF EXISTS `tbl_bac_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipmentName` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `dateUpdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `numberOfSamples` int(11) DEFAULT NULL,
  `numberOfPanels` varchar(45) DEFAULT NULL,
  `courier` varchar(45) DEFAULT NULL,
  `deliveryStatus` varchar(45) DEFAULT NULL,
  `dateDelivered` date DEFAULT NULL,
  `receivedBy` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `dispatchedBy` varchar(45) DEFAULT NULL,
  `shipmentDsc` varchar(100) DEFAULT NULL,
  `conditionDispatch` varchar(45) DEFAULT NULL,
  `conditionReceived` varchar(45) DEFAULT NULL,
  `receiveComments` varchar(105) DEFAULT NULL,
  `shipmentLabel` varchar(100) DEFAULT NULL,
  `roundId` varchar(20) DEFAULT NULL,
  `datePrepared` date DEFAULT NULL,
  `preparedBy` varchar(45) DEFAULT NULL,
  `shipmentStatus` varchar(45) DEFAULT '0',
  `panelsReceived` int(11) DEFAULT NULL,
  `dateReceived` date DEFAULT NULL,
  `tempAtReceiving` varchar(45) DEFAULT NULL,
  `storage` varchar(45) DEFAULT NULL,
  `dateDispatched` date DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `dispatchComments` varchar(45) DEFAULT NULL,
  `dispatchCourier` varchar(45) DEFAULT NULL,
  `addressedTo` varchar(45) DEFAULT NULL,
  `shippingMethod` varchar(45) DEFAULT NULL,
  `totalPanelsAdded` int(11) DEFAULT '0',
  `labId` int(11) DEFAULT NULL,
  `startRoundFlag` varchar(10) DEFAULT '1',
  `evaluated` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_shipment_name` (`shipmentName`),
  KEY `shipmentIndexKey` (`id`,`shipmentName`,`addressedTo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_shipments`
--

LOCK TABLES `tbl_bac_shipments` WRITE;
/*!40000 ALTER TABLE `tbl_bac_shipments` DISABLE KEYS */;
INSERT INTO `tbl_bac_shipments` VALUES (1,'Test','2018-03-05 10:07:31',1,31,'2018-03-05 10:07:31',NULL,'test',NULL,NULL,NULL,NULL,'31',NULL,'Test',NULL,NULL,NULL,'test','1','2018-03-04','test','2',NULL,NULL,NULL,NULL,'2018-03-04',NULL,'n/a','g4s','Current Lab Manager','Lorry',0,NULL,'1',1),(2,'65465','2018-03-05 17:06:51',1,31,'2018-03-05 17:06:51',NULL,'465465',NULL,NULL,NULL,NULL,'31',NULL,'64546',NULL,NULL,NULL,'5465','2','2018-03-05','56446','2',NULL,NULL,NULL,NULL,'2018-03-04',NULL,'6565','56465','Current Lab Manager','4',0,NULL,'1',0);
/*!40000 ALTER TABLE `tbl_bac_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_suscepitibility`
--

DROP TABLE IF EXISTS `tbl_bac_suscepitibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_suscepitibility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `participantId` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  `panelToSampleId` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `isolateIdentification` varchar(105) DEFAULT NULL,
  `methodUsed` varchar(105) DEFAULT NULL,
  `mediaUsed` varchar(105) DEFAULT NULL,
  `mediaManufacturer` varchar(105) DEFAULT NULL,
  `discManufacturer` varchar(100) DEFAULT NULL,
  `guidelines` varchar(105) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_lab_sample_round_uk` (`participantId`,`sampleId`,`roundId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_suscepitibility`
--

LOCK TABLES `tbl_bac_suscepitibility` WRITE;
/*!40000 ALTER TABLE `tbl_bac_suscepitibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_bac_suscepitibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_test_agents`
--

DROP TABLE IF EXISTS `tbl_bac_test_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_test_agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testAgentName` varchar(45) DEFAULT NULL,
  `testAgentCode` varchar(45) DEFAULT NULL,
  `testAgentType` varchar(45) DEFAULT NULL,
  `fewRange` int(11) DEFAULT NULL,
  `modRange` int(11) DEFAULT NULL,
  `manyRange` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `createdBy` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Uni_key` (`testAgentName`,`testAgentCode`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_test_agents`
--

LOCK TABLES `tbl_bac_test_agents` WRITE;
/*!40000 ALTER TABLE `tbl_bac_test_agents` DISABLE KEYS */;
INSERT INTO `tbl_bac_test_agents` VALUES (1,'amikacin','','3',10,100,1000,'1','1','2017-03-15 14:50:01','2','0000-00-00 00:00:00'),(2,'colistin','702','3',20,500,1500,'1','1','2017-03-15 14:50:36',NULL,NULL),(3,'ampicilin','502','3',100,1000,5000,'1','1','2017-03-15 14:51:06',NULL,NULL),(5,'cloxacilin','520','3',55,155,250,'1','1','2017-03-15 14:52:27',NULL,NULL),(6,'qweqwe','asd','1',NULL,NULL,NULL,'1','1','2017-03-25 00:26:59',NULL,NULL),(7,'MICILCOLIN','105','1',0,0,0,'1','2','2017-06-13 18:14:22','3','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbl_bac_test_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bac_test_types`
--

DROP TABLE IF EXISTS `tbl_bac_test_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bac_test_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testName` varchar(45) DEFAULT NULL,
  `testDesc` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '1',
  `lastUpdatePerson` varchar(45) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bac_test_types`
--

LOCK TABLES `tbl_bac_test_types` WRITE;
/*!40000 ALTER TABLE `tbl_bac_test_types` DISABLE KEYS */;
INSERT INTO `tbl_bac_test_types` VALUES (2,'ID testing','Identification','2017-03-22 15:17:21','1','1',NULL,NULL);
/*!40000 ALTER TABLE `tbl_bac_test_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbrr`
--

DROP TABLE IF EXISTS `tbrr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbrr` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sampleId` varchar(45) DEFAULT NULL,
  `roundId` varchar(45) DEFAULT NULL,
  `participantId` varchar(45) DEFAULT NULL,
  `userId` varchar(45) DEFAULT '1',
  `panelToSampleId` varchar(45) DEFAULT '1',
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatePerson` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `grainStainReaction` varchar(105) DEFAULT NULL,
  `grainStainReactionScore` int(11) DEFAULT '0',
  `primaryMedia` varchar(105) DEFAULT NULL,
  `primaryMediaScore` int(11) DEFAULT NULL,
  `incubationConditions` varchar(105) DEFAULT NULL,
  `incubationConditionsScore` int(11) DEFAULT NULL,
  `colonialMorphology` varchar(45) DEFAULT NULL,
  `colonialMorphologyScore` int(11) DEFAULT NULL,
  `bacterialQualification` varchar(105) DEFAULT NULL,
  `bacterialQualificationScore` int(11) DEFAULT NULL,
  `bacterialReagents` varchar(105) DEFAULT NULL,
  `bacterialReagentsScore` int(11) DEFAULT NULL,
  `isolateProcessing` varchar(105) DEFAULT NULL,
  `isolateProcessingScore` int(11) DEFAULT NULL,
  `finalIdentification` varchar(105) DEFAULT NULL,
  `finalIdentificationScore` int(11) DEFAULT NULL,
  `finalScore` int(11) DEFAULT '0',
  `status` varchar(45) DEFAULT '1',
  `changedStatus` varchar(45) DEFAULT '1',
  `markedStatus` varchar(45) DEFAULT '0',
  `feedback` int(11) DEFAULT '0',
  `published` int(11) DEFAULT '0',
  `grade` varchar(45) DEFAULT NULL,
  `remarks` varchar(105) DEFAULT NULL,
  `adminRemarks` varchar(400) DEFAULT NULL,
  `correctiveAction` int(11) DEFAULT '0',
  `adminMarked` varchar(45) DEFAULT '0',
  `totalMicroAgentsScore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbrr`
--

LOCK TABLES `tbrr` WRITE;
/*!40000 ALTER TABLE `tbrr` DISABLE KEYS */;
INSERT INTO `tbrr` VALUES (1,'1','1','13','3','2','2017-04-26 11:10:40',3,32,NULL,'MALARIA',0,'33',0,'33',0,'333',0,'333',0,'33',33,'33',33,'33',100,33,'1','1','1',0,0,'UNACCEPTABLE','UNACCEPTABLE',NULL,0,'0',0),(2,'2','1','13','3','2','2017-04-26 11:10:40',3,32,NULL,'3333',100,'33',0,'33',0,'333',0,'333',0,'33',33,'33',33,'33',100,0,'1','1','1',0,0,'ACCEPTABLE','ACCEPTABLE',NULL,0,'0',0);
/*!40000 ALTER TABLE `tbrr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_mail`
--

DROP TABLE IF EXISTS `temp_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_mail` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `from_mail` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) NOT NULL,
  `bcc` text,
  `cc` text,
  `subject` text,
  `from_full_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`temp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_mail`
--

LOCK TABLES `temp_mail` WRITE;
/*!40000 ALTER TABLE `temp_mail` DISABLE KEYS */;
INSERT INTO `temp_mail` VALUES (1,'',NULL,'kisiihospital@gmail.com','','',NULL,NULL,'pending'),(2,'',NULL,'osoromichael@gmail.com','','',NULL,NULL,'pending'),(3,'',NULL,'qweqweqw@gmail.com','','',NULL,NULL,'pending'),(4,'',NULL,'kisiihospital@gmail.com','','',NULL,NULL,'pending'),(5,'',NULL,'osoromichael@gmail.com','','',NULL,NULL,'pending'),(6,'',NULL,'kisumu@gmail.co.ke','','',NULL,NULL,'pending'),(7,'',NULL,'mosoross@abnosoftwares.co.ke','','',NULL,NULL,'pending'),(8,'',NULL,'anothertest@gmail.com','','',NULL,NULL,'pending'),(9,'',NULL,'testertwo@gmail.com','','',NULL,NULL,'pending');
/*!40000 ALTER TABLE `temp_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vl_department`
--

DROP TABLE IF EXISTS `vl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vl_department` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vl_department`
--

LOCK TABLES `vl_department` WRITE;
/*!40000 ALTER TABLE `vl_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `vl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vl_mfl`
--

DROP TABLE IF EXISTS `vl_mfl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vl_mfl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(40) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vl_mfl`
--

LOCK TABLES `vl_mfl` WRITE;
/*!40000 ALTER TABLE `vl_mfl` DISABLE KEYS */;
/*!40000 ALTER TABLE `vl_mfl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vl_peer_mean`
--

DROP TABLE IF EXISTS `vl_peer_mean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vl_peer_mean` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peerName` varchar(45) DEFAULT NULL,
  `dateCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `result` varchar(45) DEFAULT NULL,
  `roundId` int(11) DEFAULT NULL,
  `shipmentId` int(11) DEFAULT NULL,
  `mean` decimal(10,0) DEFAULT NULL,
  `SDI` decimal(10,0) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `sampleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vl_peer_mean`
--

LOCK TABLES `vl_peer_mean` WRITE;
/*!40000 ALTER TABLE `vl_peer_mean` DISABLE KEYS */;
INSERT INTO `vl_peer_mean` VALUES (73,NULL,'2017-06-23 14:06:43',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),(74,NULL,'2017-06-23 14:06:48',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),(75,NULL,'2017-06-23 14:07:35',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),(90,'1','2017-06-23 15:06:33','1',NULL,9,NULL,NULL,2,NULL,1),(91,'kisii','2017-10-18 17:08:59','12',NULL,9,NULL,NULL,31,NULL,1);
/*!40000 ALTER TABLE `vl_peer_mean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vl_platform`
--

DROP TABLE IF EXISTS `vl_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vl_platform` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PlatformName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vl_platform`
--

LOCK TABLES `vl_platform` WRITE;
/*!40000 ALTER TABLE `vl_platform` DISABLE KEYS */;
INSERT INTO `vl_platform` VALUES (1,'Roche CAP/CTM'),(2,'Roche C8800'),(3,'Roche 4800'),(4,'Abbott m2000');
/*!40000 ALTER TABLE `vl_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vl_scheme`
--

DROP TABLE IF EXISTS `vl_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vl_scheme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SchemeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vl_scheme`
--

LOCK TABLES `vl_scheme` WRITE;
/*!40000 ALTER TABLE `vl_scheme` DISABLE KEYS */;
INSERT INTO `vl_scheme` VALUES (1,'Viral Load'),(2,'EID');
/*!40000 ALTER TABLE `vl_scheme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-15 14:04:39