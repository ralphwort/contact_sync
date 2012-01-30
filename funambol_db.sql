-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (x86_64)
--
-- Host: 10.1.11.16    Database: funambol
-- ------------------------------------------------------
-- Server version	5.0.77

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `fnbl_client_mapping`
--

DROP TABLE IF EXISTS `fnbl_client_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_client_mapping` (
  `principal` bigint(20) NOT NULL,
  `sync_source` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `luid` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `guid` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `last_anchor` varchar(20) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`principal`,`sync_source`,`luid`,`guid`),
  KEY `fk_source_cm` (`sync_source`),
  KEY `ind_client_mapping` (`principal`,`sync_source`),
  CONSTRAINT `fk_principal_cm` FOREIGN KEY (`principal`) REFERENCES `fnbl_principal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_source_cm` FOREIGN KEY (`sync_source`) REFERENCES `fnbl_sync_source` (`uri`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_client_mapping`
--

LOCK TABLES `fnbl_client_mapping` WRITE;
/*!40000 ALTER TABLE `fnbl_client_mapping` DISABLE KEYS */;
INSERT INTO `fnbl_client_mapping` VALUES (0,'card','1195','0','0'),(0,'card','1196','1','0'),(0,'card','1197','2','0'),(0,'card','1198','3','0'),(0,'card','1199','4','0'),(0,'card','1200','5','0'),(0,'card','1201','6','0'),(0,'card','1202','7','0'),(0,'card','1203','8','0'),(0,'card','1204','9','0'),(0,'card','1205','10','0'),(0,'card','1206','11','0'),(0,'card','1207','12','0'),(0,'card','1208','13','0'),(0,'card','1209','14','0'),(0,'card','1210','15','0'),(0,'card','1211','16','0'),(0,'card','1212','17','0'),(0,'card','1213','18','0'),(0,'card','1214','19','0'),(0,'card','1215','20','0'),(0,'card','1216','21','0'),(0,'card','1217','22','0'),(0,'card','1218','23','0'),(0,'card','1219','24','0'),(0,'card','1220','25','0'),(0,'card','1221','26','0'),(0,'card','1222','27','0'),(0,'card','1223','28','0'),(0,'card','1224','29','0'),(0,'card','1225','30','0'),(0,'card','1226','31','0'),(0,'card','1227','32','0'),(0,'card','1228','33','0'),(0,'card','1229','34','0'),(0,'card','1230','35','0'),(0,'card','1231','36','0'),(0,'card','1232','37','0'),(0,'card','1233','38','0'),(0,'card','1234','39','0'),(0,'card','1235','40','0'),(0,'card','1236','41','0'),(0,'card','1237','42','0'),(0,'card','1238','43','0'),(0,'card','1239','44','0'),(0,'card','1240','45','0'),(0,'card','1241','46','0'),(0,'card','1242','47','0'),(0,'card','1243','48','0'),(0,'card','1244','49','0'),(0,'card','1245','50','0'),(0,'card','1246','51','0'),(0,'card','1247','52','0'),(0,'card','1248','53','0'),(0,'card','1249','54','0'),(0,'card','1250','55','0'),(0,'card','1251','56','0'),(0,'card','1252','57','0'),(0,'card','1253','58','0'),(0,'card','1254','59','0'),(0,'card','1255','60','0'),(0,'card','1256','61','0'),(0,'card','1257','62','0'),(0,'card','1258','63','0'),(0,'card','1259','64','0'),(0,'card','1260','65','0'),(0,'card','1261','66','0'),(0,'card','1262','67','0'),(0,'card','1263','68','0'),(0,'card','1264','69','0'),(0,'card','1265','70','0'),(0,'card','1266','71','0'),(0,'card','1267','72','0'),(0,'card','1268','73','0'),(0,'card','1269','74','0'),(0,'card','1270','75','0'),(0,'card','1271','76','0'),(0,'card','1272','77','0'),(0,'card','1273','78','0'),(0,'card','1274','79','0'),(0,'card','1275','80','0'),(0,'card','1276','81','0'),(0,'card','1277','82','0'),(0,'card','1278','83','0'),(0,'card','1279','84','0'),(0,'card','1280','85','0'),(0,'card','1281','86','0'),(0,'card','1282','87','0'),(0,'card','1283','88','0'),(0,'card','1284','89','0'),(0,'card','1285','90','0'),(0,'card','1286','91','0'),(0,'card','1287','92','0'),(0,'card','1288','93','0'),(0,'card','1289','94','0'),(0,'card','1290','95','0'),(0,'card','1291','96','0'),(0,'card','1292','97','0'),(0,'card','1293','98','0'),(0,'card','1294','99','0'),(0,'card','1295','100','0'),(0,'card','1296','101','0'),(0,'card','1297','102','0'),(0,'card','1298','103','0'),(0,'card','1299','104','0'),(0,'card','1300','105','0'),(0,'card','1301','106','0'),(0,'card','1302','107','0'),(0,'card','1303','108','0'),(0,'card','1304','109','0'),(0,'card','1305','110','0'),(0,'card','1306','111','0'),(0,'card','1307','112','0'),(0,'card','1308','113','0'),(0,'card','1309','114','0'),(0,'card','1310','115','0'),(0,'card','1311','116','0'),(0,'card','1312','117','0'),(0,'card','1313','118','0'),(0,'card','1314','119','0'),(0,'card','1315','120','0'),(0,'card','1316','121','0'),(0,'card','1317','122','0'),(0,'card','1318','123','0'),(0,'card','1319','124','0'),(0,'card','1320','125','0'),(0,'card','1321','126','0'),(0,'card','1322','127','0'),(0,'card','1323','128','0'),(0,'card','1324','129','0'),(0,'card','1325','130','0'),(0,'card','1326','131','0'),(0,'card','1327','132','0'),(0,'card','1328','133','0'),(0,'card','1329','134','0'),(0,'card','1330','135','0'),(0,'card','1331','136','0'),(0,'card','1332','137','0'),(0,'card','1333','138','0'),(0,'card','1334','139','0'),(0,'card','1335','140','0'),(0,'card','1336','141','0'),(0,'card','1337','142','0'),(0,'card','1338','143','0'),(0,'card','1339','144','0'),(0,'card','1340','145','0'),(0,'card','1341','146','0'),(0,'card','1342','147','0'),(0,'card','1343','148','0'),(0,'card','1344','149','0'),(0,'card','1345','150','0'),(0,'card','1346','151','0'),(0,'card','1347','152','0'),(0,'card','1348','153','0'),(0,'card','1349','154','0'),(0,'card','1350','155','0'),(0,'card','1351','156','0'),(0,'card','1352','157','0'),(0,'card','1353','158','0'),(0,'card','1354','159','0'),(0,'card','1355','160','0'),(0,'card','1356','161','0'),(0,'card','1357','162','0'),(0,'card','1358','163','0'),(0,'card','1359','164','0'),(0,'card','1360','165','0'),(0,'card','1361','166','0'),(0,'card','1362','167','0'),(0,'card','1363','168','0'),(0,'card','1364','169','0'),(0,'card','1365','170','0'),(0,'card','1366','171','0'),(0,'card','1367','172','0'),(0,'card','1368','173','0'),(0,'card','1369','174','0'),(0,'card','1370','175','0'),(0,'card','1371','176','0'),(0,'card','1372','177','0'),(0,'card','1373','178','0'),(0,'card','1374','179','0'),(0,'card','1375','180','0'),(0,'card','1378','181','1325757757416'),(0,'card','1379','182','1325757757416'),(0,'card','1380','183','1325757757416'),(0,'card','1381','184','1325758127045'),(1,'card','62','185','0'),(1,'card','63','186','0');
/*!40000 ALTER TABLE `fnbl_client_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_connector`
--

DROP TABLE IF EXISTS `fnbl_connector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_connector` (
  `id` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `name` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `description` varchar(200) character set utf8 collate utf8_bin default NULL,
  `admin_class` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_connector`
--

LOCK TABLES `fnbl_connector` WRITE;
/*!40000 ALTER TABLE `fnbl_connector` DISABLE KEYS */;
INSERT INTO `fnbl_connector` VALUES ('email','FunambolEmailConnector','Funambol Email Connector','com.funambol.email.admin.ConsolePanel'),('foundation','FunambolFoundationConnector','Funambol Foundation Connector',NULL);
/*!40000 ALTER TABLE `fnbl_connector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_connector_source_type`
--

DROP TABLE IF EXISTS `fnbl_connector_source_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_connector_source_type` (
  `connector` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `sourcetype` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`connector`,`sourcetype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_connector_source_type`
--

LOCK TABLES `fnbl_connector_source_type` WRITE;
/*!40000 ALTER TABLE `fnbl_connector_source_type` DISABLE KEYS */;
INSERT INTO `fnbl_connector_source_type` VALUES ('email','email-ss'),('foundation','calendar-foundation'),('foundation','config-foundation'),('foundation','contact-foundation'),('foundation','fs-foundation'),('foundation','note-foundation'),('foundation','sif-fs-foundation');
/*!40000 ALTER TABLE `fnbl_connector_source_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_device`
--

DROP TABLE IF EXISTS `fnbl_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_device` (
  `id` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `description` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `client_nonce` varchar(255) default NULL,
  `server_nonce` varchar(255) default NULL,
  `server_password` varchar(255) default NULL,
  `timezone` varchar(32) default NULL,
  `convert_date` char(1) default NULL,
  `charset` varchar(16) default NULL,
  `address` varchar(50) default NULL,
  `msisdn` varchar(50) default NULL,
  `notification_builder` varchar(255) default NULL,
  `notification_sender` varchar(255) default NULL,
  `id_caps` bigint(20) default NULL,
  `sent_server_caps` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_device`
--

LOCK TABLES `fnbl_device` WRITE;
/*!40000 ALTER TABLE `fnbl_device` DISABLE KEYS */;
INSERT INTO `fnbl_device` VALUES ('fac-351602040053496',NULL,NULL,'','','fnbl',NULL,'','UTF-8',NULL,NULL,'com/funambol/server/notification/DSNotificationBuilder.xml','com/funambol/server/notification/PushSender.xml',1,1),('fac-356381040436135',NULL,NULL,'','','fnbl',NULL,'','UTF-8',NULL,NULL,'com/funambol/server/notification/DSNotificationBuilder.xml','com/funambol/server/notification/PushSender.xml',0,1);
/*!40000 ALTER TABLE `fnbl_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_device_caps`
--

DROP TABLE IF EXISTS `fnbl_device_caps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_device_caps` (
  `id` bigint(20) NOT NULL,
  `version` varchar(16) NOT NULL,
  `man` varchar(100) default NULL,
  `model` varchar(100) default NULL,
  `fwv` varchar(100) default NULL,
  `swv` varchar(100) default NULL,
  `hwv` varchar(100) default NULL,
  `utc` char(1) NOT NULL,
  `lo` char(1) NOT NULL,
  `noc` char(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_device_caps`
--

LOCK TABLES `fnbl_device_caps` WRITE;
/*!40000 ALTER TABLE `fnbl_device_caps` DISABLE KEYS */;
INSERT INTO `fnbl_device_caps` VALUES (0,'1.2','motorola','MB860','REL(8)','REL(8)','MOTO/MB860_TMGB/olympus/olympus:2.2.2/OLYEM_U4_2.2.3/5354302:user/ota-rel-keys,release-keys','Y','Y','Y'),(1,'1.2','HUAWEI','Vodafone 845','REL(7)','REL(7)','Vodafone/U8120/U8120/U8120:2.1-update1/B226/20100625:user/ota-rel-keys,release-keys','Y','Y','Y');
/*!40000 ALTER TABLE `fnbl_device_caps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_device_config`
--

DROP TABLE IF EXISTS `fnbl_device_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_device_config` (
  `username` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `principal` bigint(20) NOT NULL,
  `uri` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `value` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `last_update` bigint(20) NOT NULL,
  `status` char(1) NOT NULL,
  `encrypted` tinyint(1) default '0',
  PRIMARY KEY  (`username`,`principal`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_device_config`
--

LOCK TABLES `fnbl_device_config` WRITE;
/*!40000 ALTER TABLE `fnbl_device_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_device_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_device_datastore`
--

DROP TABLE IF EXISTS `fnbl_device_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_device_datastore` (
  `id` bigint(20) NOT NULL,
  `caps` bigint(20) default NULL,
  `sourceref` varchar(128) NOT NULL,
  `label` varchar(128) default NULL,
  `maxguidsize` int(11) default NULL,
  `dsmem` char(1) NOT NULL,
  `shs` char(1) NOT NULL,
  `synccap` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_datastore` (`caps`),
  CONSTRAINT `fk_dev_datastore` FOREIGN KEY (`caps`) REFERENCES `fnbl_device_caps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_device_datastore`
--

LOCK TABLES `fnbl_device_datastore` WRITE;
/*!40000 ALTER TABLE `fnbl_device_datastore` DISABLE KEYS */;
INSERT INTO `fnbl_device_datastore` VALUES (3,0,'config','config',0,'N','N','1,2,7'),(4,0,'contacts','contacts',2,'N','N','1,2,7'),(5,0,'calendar','calendar',2,'N','N','1,2,7'),(7,1,'config','config',0,'N','N','1,2,7'),(8,1,'contacts','contacts',2,'N','N','1,2,7');
/*!40000 ALTER TABLE `fnbl_device_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_device_ext`
--

DROP TABLE IF EXISTS `fnbl_device_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_device_ext` (
  `id` bigint(20) NOT NULL,
  `caps` bigint(20) default NULL,
  `xname` varchar(255) default NULL,
  `xvalue` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_device_ext` (`caps`),
  CONSTRAINT `fk_dev_ext` FOREIGN KEY (`caps`) REFERENCES `fnbl_device_caps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_device_ext`
--

LOCK TABLES `fnbl_device_ext` WRITE;
/*!40000 ALTER TABLE `fnbl_device_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_device_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_ctcap`
--

DROP TABLE IF EXISTS `fnbl_ds_ctcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_ctcap` (
  `id` bigint(20) NOT NULL,
  `datastore` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `version` varchar(16) NOT NULL,
  `field` char(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_ctcap` (`datastore`),
  CONSTRAINT `fk_ds_ctcap` FOREIGN KEY (`datastore`) REFERENCES `fnbl_device_datastore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_ctcap`
--

LOCK TABLES `fnbl_ds_ctcap` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_ctcap` DISABLE KEYS */;
INSERT INTO `fnbl_ds_ctcap` VALUES (1,4,'text/x-vcard','2.1','N'),(2,8,'text/x-vcard','2.1','N');
/*!40000 ALTER TABLE `fnbl_ds_ctcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_ctcap_prop`
--

DROP TABLE IF EXISTS `fnbl_ds_ctcap_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_ctcap_prop` (
  `id` bigint(20) NOT NULL,
  `ctcap` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `label` varchar(128) default NULL,
  `type` varchar(32) default NULL,
  `maxoccur` int(11) default NULL,
  `maxsize` int(11) default NULL,
  `truncated` char(1) NOT NULL,
  `valenum` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_ctcap_prop` (`ctcap`),
  CONSTRAINT `fk_ds_ctcap_prop` FOREIGN KEY (`ctcap`) REFERENCES `fnbl_ds_ctcap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_ctcap_prop`
--

LOCK TABLES `fnbl_ds_ctcap_prop` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_ctcap_prop` DISABLE KEYS */;
INSERT INTO `fnbl_ds_ctcap_prop` VALUES (21,1,'BEGIN',NULL,NULL,0,0,'N','VCARD'),(22,1,'END',NULL,NULL,0,0,'N','VCARD'),(23,1,'VERSION',NULL,NULL,0,0,'N','2.1'),(24,1,'N',NULL,NULL,0,0,'N',''),(25,1,'NICKNAME',NULL,NULL,0,0,'N',''),(26,1,'BDAY',NULL,NULL,0,0,'N',''),(27,1,'TITLE',NULL,NULL,0,0,'N',''),(28,1,'ORG',NULL,NULL,0,0,'N',''),(29,1,'NOTE',NULL,NULL,0,0,'N',''),(30,1,'X-ANNIVERSARY',NULL,NULL,0,0,'N',''),(31,1,'X-FUNAMBOL-CHILDREN',NULL,NULL,0,0,'N',''),(32,1,'X-SPOUSE',NULL,NULL,0,0,'N',''),(33,1,'UID',NULL,NULL,0,0,'N',''),(34,1,'TZ',NULL,NULL,0,0,'N',''),(35,1,'REV',NULL,NULL,0,0,'N',''),(36,1,'GEO',NULL,NULL,0,0,'N',''),(37,1,'EMAIL',NULL,NULL,0,0,'N',''),(38,1,'TEL',NULL,NULL,0,0,'N',''),(39,1,'URL',NULL,NULL,0,0,'N',''),(40,1,'ADR',NULL,NULL,0,0,'N',''),(41,1,'PHOTO',NULL,NULL,0,0,'N',''),(42,2,'BEGIN',NULL,NULL,0,0,'N','VCARD'),(43,2,'END',NULL,NULL,0,0,'N','VCARD'),(44,2,'VERSION',NULL,NULL,0,0,'N','2.1'),(45,2,'N',NULL,NULL,0,0,'N',''),(46,2,'NICKNAME',NULL,NULL,0,0,'N',''),(47,2,'BDAY',NULL,NULL,0,0,'N',''),(48,2,'TITLE',NULL,NULL,0,0,'N',''),(49,2,'ORG',NULL,NULL,0,0,'N',''),(50,2,'NOTE',NULL,NULL,0,0,'N',''),(51,2,'X-ANNIVERSARY',NULL,NULL,0,0,'N',''),(52,2,'X-FUNAMBOL-CHILDREN',NULL,NULL,0,0,'N',''),(53,2,'X-SPOUSE',NULL,NULL,0,0,'N',''),(54,2,'UID',NULL,NULL,0,0,'N',''),(55,2,'TZ',NULL,NULL,0,0,'N',''),(56,2,'REV',NULL,NULL,0,0,'N',''),(57,2,'GEO',NULL,NULL,0,0,'N',''),(58,2,'TEL',NULL,NULL,0,0,'N',''),(59,2,'EMAIL',NULL,NULL,0,0,'N',''),(60,2,'ADR',NULL,NULL,0,0,'N',''),(61,2,'URL',NULL,NULL,0,0,'N',''),(62,2,'PHOTO',NULL,NULL,0,0,'N','');
/*!40000 ALTER TABLE `fnbl_ds_ctcap_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_ctcap_prop_param`
--

DROP TABLE IF EXISTS `fnbl_ds_ctcap_prop_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_ctcap_prop_param` (
  `property` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `label` varchar(128) default NULL,
  `type` varchar(32) default NULL,
  `valenum` varchar(255) default NULL,
  KEY `ind_ctcappropparam` (`property`),
  CONSTRAINT `fk_ctcap_propparam` FOREIGN KEY (`property`) REFERENCES `fnbl_ds_ctcap_prop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_ctcap_prop_param`
--

LOCK TABLES `fnbl_ds_ctcap_prop_param` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_ctcap_prop_param` DISABLE KEYS */;
INSERT INTO `fnbl_ds_ctcap_prop_param` VALUES (37,'TYPE',NULL,NULL,'INTERNET,INTERNET,HOME,INTERNET,WORK,INTERNET,HOME,X-FUNAMBOL-INSTANTMESSENGER'),(38,'TYPE',NULL,NULL,'VOICE,HOME,VOICE,WORK,CELL,VOICE,FAX,HOME,FAX,WORK,PAGER,WORK,PREF,FAX,PREF,VOICE'),(39,'TYPE',NULL,NULL,'HOME,WORK'),(40,'TYPE',NULL,NULL,'HOME,WORK'),(41,'TYPE',NULL,NULL,'BMP,JPEG,PNG,GIF'),(41,'ENCODING',NULL,NULL,'BASE64'),(58,'TYPE',NULL,NULL,'VOICE,HOME,VOICE,WORK,CELL,VOICE,FAX,HOME,FAX,WORK,PAGER,WORK,PREF,FAX,PREF,VOICE'),(59,'TYPE',NULL,NULL,'INTERNET,INTERNET,HOME,INTERNET,WORK,INTERNET,HOME,X-FUNAMBOL-INSTANTMESSENGER'),(60,'TYPE',NULL,NULL,'HOME,WORK'),(61,'TYPE',NULL,NULL,'HOME,WORK'),(62,'TYPE',NULL,NULL,'BMP,JPEG,PNG,GIF'),(62,'ENCODING',NULL,NULL,'BASE64');
/*!40000 ALTER TABLE `fnbl_ds_ctcap_prop_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_cttype_rx`
--

DROP TABLE IF EXISTS `fnbl_ds_cttype_rx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_cttype_rx` (
  `datastore` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `version` varchar(16) NOT NULL,
  `preferred` char(1) NOT NULL,
  PRIMARY KEY  (`type`,`version`,`datastore`),
  KEY `ind_cttype_rx` (`datastore`),
  CONSTRAINT `fk_ds_cttype_rx` FOREIGN KEY (`datastore`) REFERENCES `fnbl_device_datastore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_cttype_rx`
--

LOCK TABLES `fnbl_ds_cttype_rx` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_cttype_rx` DISABLE KEYS */;
INSERT INTO `fnbl_ds_cttype_rx` VALUES (3,'application/*','-','Y'),(7,'application/*','-','Y'),(5,'text/x-vcalendar','1.0','Y'),(4,'text/x-vcard','2.1','Y'),(8,'text/x-vcard','2.1','Y');
/*!40000 ALTER TABLE `fnbl_ds_cttype_rx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_cttype_tx`
--

DROP TABLE IF EXISTS `fnbl_ds_cttype_tx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_cttype_tx` (
  `datastore` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `version` varchar(16) NOT NULL,
  `preferred` char(1) NOT NULL,
  PRIMARY KEY  (`type`,`version`,`datastore`),
  KEY `ind_cttype_tx` (`datastore`),
  CONSTRAINT `fk_ds_cttype_tx` FOREIGN KEY (`datastore`) REFERENCES `fnbl_device_datastore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_cttype_tx`
--

LOCK TABLES `fnbl_ds_cttype_tx` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_cttype_tx` DISABLE KEYS */;
INSERT INTO `fnbl_ds_cttype_tx` VALUES (3,'application/*','-','Y'),(7,'application/*','-','Y'),(5,'text/x-vcalendar','1.0','Y'),(4,'text/x-vcard','2.1','Y'),(8,'text/x-vcard','2.1','Y');
/*!40000 ALTER TABLE `fnbl_ds_cttype_tx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_filter_cap`
--

DROP TABLE IF EXISTS `fnbl_ds_filter_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_filter_cap` (
  `datastore` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `version` varchar(16) NOT NULL,
  `keywords` varchar(255) default NULL,
  `properties` varchar(255) default NULL,
  PRIMARY KEY  (`type`,`version`,`datastore`),
  KEY `ind_filter_cap` (`datastore`),
  CONSTRAINT `fk_ds_filter_cap` FOREIGN KEY (`datastore`) REFERENCES `fnbl_device_datastore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_filter_cap`
--

LOCK TABLES `fnbl_ds_filter_cap` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_filter_cap` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_ds_filter_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_filter_rx`
--

DROP TABLE IF EXISTS `fnbl_ds_filter_rx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_filter_rx` (
  `datastore` bigint(20) NOT NULL,
  `type` varchar(64) NOT NULL,
  `version` varchar(16) NOT NULL,
  PRIMARY KEY  (`type`,`version`,`datastore`),
  KEY `ind_filter_rx` (`datastore`),
  CONSTRAINT `fk_ds_filter_rx` FOREIGN KEY (`datastore`) REFERENCES `fnbl_device_datastore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_filter_rx`
--

LOCK TABLES `fnbl_ds_filter_rx` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_filter_rx` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_ds_filter_rx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_ds_mem`
--

DROP TABLE IF EXISTS `fnbl_ds_mem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_ds_mem` (
  `datastore` bigint(20) default NULL,
  `shared` char(1) NOT NULL,
  `maxmem` int(11) default NULL,
  `maxid` int(11) default NULL,
  KEY `ind_mem` (`datastore`),
  CONSTRAINT `fk_ds_mem` FOREIGN KEY (`datastore`) REFERENCES `fnbl_device_datastore` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_ds_mem`
--

LOCK TABLES `fnbl_ds_mem` WRITE;
/*!40000 ALTER TABLE `fnbl_ds_mem` DISABLE KEYS */;
INSERT INTO `fnbl_ds_mem` VALUES (3,'N',0,0),(4,'N',0,0),(7,'N',0,0);
/*!40000 ALTER TABLE `fnbl_ds_mem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_account`
--

DROP TABLE IF EXISTS `fnbl_email_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_account` (
  `account_id` bigint(20) NOT NULL,
  `username` varchar(50) character set utf8 collate utf8_bin NOT NULL,
  `ms_login` varchar(50) character set utf8 collate utf8_bin NOT NULL,
  `ms_password` varchar(50) character set utf8 collate utf8_bin NOT NULL,
  `ms_address` varchar(70) character set utf8 collate utf8_bin NOT NULL,
  `ms_mailboxname` varchar(64) character set utf8 collate utf8_bin default NULL,
  `push` char(1) default NULL,
  `soft_delete` char(1) default NULL,
  `max_num_email` int(11) default NULL,
  `max_imap_email` int(11) default NULL,
  `mailserver_id` varchar(20) character set utf8 collate utf8_bin NOT NULL,
  `server_public` char(1) default NULL,
  `server_type` varchar(20) character set utf8 collate utf8_bin default NULL,
  `description` varchar(50) character set utf8 collate utf8_bin default NULL,
  `protocol` varchar(5) character set utf8 collate utf8_bin default NULL,
  `out_server` varchar(30) character set utf8 collate utf8_bin default NULL,
  `out_port` int(11) default NULL,
  `out_auth` char(1) default NULL,
  `in_server` varchar(30) character set utf8 collate utf8_bin default NULL,
  `in_port` int(11) default NULL,
  `sslin` char(1) default NULL,
  `sslout` char(1) default NULL,
  `inbox_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `inbox_active` char(1) default NULL,
  `outbox_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `outbox_active` char(1) default NULL,
  `sent_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `sent_active` char(1) default NULL,
  `drafts_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `drafts_active` char(1) default NULL,
  `trash_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `trash_active` char(1) default NULL,
  `out_login` varchar(50) character set utf8 collate utf8_bin default NULL,
  `out_password` varchar(50) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`account_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_account`
--

LOCK TABLES `fnbl_email_account` WRITE;
/*!40000 ALTER TABLE `fnbl_email_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_cache`
--

DROP TABLE IF EXISTS `fnbl_email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_cache` (
  `guid` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `source_uri` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `principal` bigint(20) NOT NULL,
  `last_crc` bigint(20) default NULL,
  `invalid` char(1) default NULL,
  `internal` char(1) default NULL,
  `messageid` varchar(700) character set utf8 collate utf8_bin default NULL,
  `headerdate` varchar(20) character set utf8 collate utf8_bin default NULL,
  `received` varchar(20) character set utf8 collate utf8_bin default NULL,
  `subject` varchar(700) character set utf8 collate utf8_bin default NULL,
  `sender` varchar(300) character set utf8 collate utf8_bin default NULL,
  `isemail` char(1) default NULL,
  PRIMARY KEY  (`guid`,`source_uri`,`principal`),
  KEY `fk_principal_email_cache` (`principal`),
  KEY `ind_fnbl_email_cache_uri_principal` (`source_uri`,`principal`),
  CONSTRAINT `fk_principal_email_cache` FOREIGN KEY (`principal`) REFERENCES `fnbl_principal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_cache`
--

LOCK TABLES `fnbl_email_cache` WRITE;
/*!40000 ALTER TABLE `fnbl_email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_enable_account`
--

DROP TABLE IF EXISTS `fnbl_email_enable_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_enable_account` (
  `account_id` bigint(20) NOT NULL,
  `username` varchar(50) character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`account_id`,`username`),
  KEY `ind_fnbl_email_enable_account_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_enable_account`
--

LOCK TABLES `fnbl_email_enable_account` WRITE;
/*!40000 ALTER TABLE `fnbl_email_enable_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_enable_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_folder`
--

DROP TABLE IF EXISTS `fnbl_email_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_folder` (
  `guid` varchar(50) character set utf8 collate utf8_bin NOT NULL,
  `source_uri` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `principal` bigint(20) NOT NULL,
  `parentid` varchar(50) character set utf8 collate utf8_bin default NULL,
  `path` varchar(500) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`guid`,`source_uri`,`principal`),
  KEY `fk_principal_email_folder` (`principal`),
  KEY `ind_fnbl_email_folder_uri_principal` (`source_uri`,`principal`),
  CONSTRAINT `fk_principal_email_folder` FOREIGN KEY (`principal`) REFERENCES `fnbl_principal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_folder`
--

LOCK TABLES `fnbl_email_folder` WRITE;
/*!40000 ALTER TABLE `fnbl_email_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_inbox`
--

DROP TABLE IF EXISTS `fnbl_email_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_inbox` (
  `guid` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `username` varchar(50) character set utf8 collate utf8_bin NOT NULL,
  `protocol` varchar(4) character set utf8 collate utf8_bin NOT NULL,
  `last_crc` bigint(20) default NULL,
  `invalid` char(1) default NULL,
  `internal` char(1) default NULL,
  `messageid` varchar(700) character set utf8 collate utf8_bin default NULL,
  `headerdate` varchar(20) character set utf8 collate utf8_bin default NULL,
  `received` varchar(20) character set utf8 collate utf8_bin default NULL,
  `subject` varchar(700) character set utf8 collate utf8_bin default NULL,
  `sender` varchar(300) character set utf8 collate utf8_bin default NULL,
  `token` varchar(200) character set utf8 collate utf8_bin default NULL,
  `status` char(1) default NULL,
  PRIMARY KEY  (`guid`,`username`,`protocol`),
  KEY `ind_fnbl_email_inbox_user_prot` (`username`,`protocol`),
  KEY `ind_fnbl_email_inbox_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_inbox`
--

LOCK TABLES `fnbl_email_inbox` WRITE;
/*!40000 ALTER TABLE `fnbl_email_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_mailserver`
--

DROP TABLE IF EXISTS `fnbl_email_mailserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_mailserver` (
  `mailserver_id` varchar(20) character set utf8 collate utf8_bin NOT NULL,
  `server_public` char(1) default NULL,
  `server_type` varchar(20) character set utf8 collate utf8_bin default NULL,
  `description` varchar(50) character set utf8 collate utf8_bin default NULL,
  `protocol` varchar(5) character set utf8 collate utf8_bin default NULL,
  `out_server` varchar(30) character set utf8 collate utf8_bin default NULL,
  `out_port` int(11) default NULL,
  `out_auth` char(1) default NULL,
  `in_server` varchar(30) character set utf8 collate utf8_bin default NULL,
  `in_port` int(11) default NULL,
  `sslin` char(1) default NULL,
  `sslout` char(1) default NULL,
  `inbox_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `inbox_active` char(1) default NULL,
  `outbox_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `outbox_active` char(1) default NULL,
  `sent_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `sent_active` char(1) default NULL,
  `drafts_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `drafts_active` char(1) default NULL,
  `trash_name` varchar(30) character set utf8 collate utf8_bin default NULL,
  `trash_active` char(1) default NULL,
  `soft_delete` char(1) default NULL,
  PRIMARY KEY  (`mailserver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_mailserver`
--

LOCK TABLES `fnbl_email_mailserver` WRITE;
/*!40000 ALTER TABLE `fnbl_email_mailserver` DISABLE KEYS */;
INSERT INTO `fnbl_email_mailserver` VALUES ('1','y','GMail','Gmail','imap','smtp.gmail.com',465,'y','imap.gmail.com',993,'y','y','INBOX','y','Outbox','y','[Gmail]/Sent Mail','n','[Gmail]/Drafts','n','[Gmail]/Trash','n','n'),('2','y','GMail','Google Mail','imap','smtp.googlemail.com',465,'y','imap.googlemail.com',993,'y','y','INBOX','y','Outbox','y','[Google Mail]/Sent Mail','n','[Google Mail]/Drafts','n','[Google Mail]/Trash','n','n'),('3','y','Other','Yahoo','pop3','smtp.mail.yahoo.com',465,'y','pop.mail.yahoo.com',995,'y','y','Inbox','y','Outbox','y','Sent','n','Drafts','n','Trash','n','n'),('4','y','AOL','AOL','imap','smtp.aol.com',587,'y','imap.aol.com',143,'n','n','INBOX','y','Outbox','y','Sent Items','n','Drafts','n','Trash','n','n'),('5','y','Hotmail','Hotmail','pop3','smtp.live.com',587,'y','pop3.live.com',995,'y','n','Inbox','y','Outbox','y','Sent Items','n','Drafts','n','Trash','n','n');
/*!40000 ALTER TABLE `fnbl_email_mailserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_push_registry`
--

DROP TABLE IF EXISTS `fnbl_email_push_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_push_registry` (
  `id` bigint(20) NOT NULL,
  `period` bigint(20) default NULL,
  `active` char(1) default NULL,
  `last_update` bigint(20) default NULL,
  `status` varchar(1) character set utf8 collate utf8_bin default NULL,
  `task_bean_file` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_fnbl_email_push_registry_status` (`status`),
  KEY `ind_fnbl_email_push_registry_lastupdate_status` (`last_update`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_push_registry`
--

LOCK TABLES `fnbl_email_push_registry` WRITE;
/*!40000 ALTER TABLE `fnbl_email_push_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_push_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_email_sentpop`
--

DROP TABLE IF EXISTS `fnbl_email_sentpop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_email_sentpop` (
  `id` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `source_uri` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `principal` bigint(20) NOT NULL,
  `messageid` varchar(700) character set utf8 collate utf8_bin default NULL,
  `mail` mediumblob,
  PRIMARY KEY  (`id`,`source_uri`,`principal`),
  KEY `fk_principal_email_sentpop` (`principal`),
  CONSTRAINT `fk_principal_email_sentpop` FOREIGN KEY (`principal`) REFERENCES `fnbl_principal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_email_sentpop`
--

LOCK TABLES `fnbl_email_sentpop` WRITE;
/*!40000 ALTER TABLE `fnbl_email_sentpop` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_email_sentpop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_file_data_object`
--

DROP TABLE IF EXISTS `fnbl_file_data_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_file_data_object` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(255) character set utf8 collate utf8_bin default NULL,
  `source_uri` varchar(255) character set utf8 collate utf8_bin default NULL,
  `last_update` bigint(20) default NULL,
  `status` char(1) default NULL,
  `upload_status` char(1) default NULL,
  `local_name` varchar(255) character set utf8 collate utf8_bin default NULL,
  `crc` bigint(20) default NULL,
  `true_name` varchar(255) character set utf8 collate utf8_bin default NULL,
  `created` datetime default NULL,
  `modified` datetime default NULL,
  `accessed` datetime default NULL,
  `h` char(1) default NULL,
  `s` char(1) default NULL,
  `a` char(1) default NULL,
  `d` char(1) default NULL,
  `w` char(1) default NULL,
  `r` char(1) default NULL,
  `x` char(1) default NULL,
  `cttype` varchar(255) character set utf8 collate utf8_bin default NULL,
  `object_size` bigint(20) default NULL,
  `size_on_storage` bigint(20) default NULL,
  `deleted_owner` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_file_data_object` (`userid`,`source_uri`,`last_update`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_file_data_object`
--

LOCK TABLES `fnbl_file_data_object` WRITE;
/*!40000 ALTER TABLE `fnbl_file_data_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_file_data_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_file_data_object_property`
--

DROP TABLE IF EXISTS `fnbl_file_data_object_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_file_data_object_property` (
  `id` bigint(20) NOT NULL,
  `fdo_id` bigint(20) default NULL,
  `name` varchar(255) character set utf8 collate utf8_bin default NULL,
  `value` text,
  PRIMARY KEY  (`id`),
  KEY `fdo_id` (`fdo_id`),
  CONSTRAINT `fnbl_file_data_object_property_ibfk_1` FOREIGN KEY (`fdo_id`) REFERENCES `fnbl_file_data_object` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_file_data_object_property`
--

LOCK TABLES `fnbl_file_data_object_property` WRITE;
/*!40000 ALTER TABLE `fnbl_file_data_object_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_file_data_object_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_id`
--

DROP TABLE IF EXISTS `fnbl_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_id` (
  `idspace` varchar(30) character set utf8 collate utf8_bin NOT NULL,
  `counter` bigint(20) NOT NULL,
  `increment_by` int(11) default '100',
  PRIMARY KEY  (`idspace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_id`
--

LOCK TABLES `fnbl_id` WRITE;
/*!40000 ALTER TABLE `fnbl_id` DISABLE KEYS */;
INSERT INTO `fnbl_id` VALUES ('capability',100,100),('ctcap',100,100),('ctcap_property',100,100),('datastore',100,100),('device',0,100),('email.cacheid',0,100),('email.folderid',0,100),('email.mailserverid',100,100),('email.sentid',0,100),('ext',0,100),('guid',3,100),('pending.notification.id',0,100),('pim.id',200,100),('principal',100,100);
/*!40000 ALTER TABLE `fnbl_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_last_sync`
--

DROP TABLE IF EXISTS `fnbl_last_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_last_sync` (
  `principal` bigint(20) NOT NULL,
  `sync_source` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `sync_type` int(11) NOT NULL,
  `status` int(11) default NULL,
  `last_anchor_server` varchar(20) character set utf8 collate utf8_bin default NULL,
  `last_anchor_client` varchar(20) character set utf8 collate utf8_bin default NULL,
  `start_sync` bigint(20) default NULL,
  `end_sync` bigint(20) default NULL,
  PRIMARY KEY  (`principal`,`sync_source`),
  KEY `fk_source` (`sync_source`),
  CONSTRAINT `fk_principal` FOREIGN KEY (`principal`) REFERENCES `fnbl_principal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_source` FOREIGN KEY (`sync_source`) REFERENCES `fnbl_sync_source` (`uri`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_last_sync`
--

LOCK TABLES `fnbl_last_sync` WRITE;
/*!40000 ALTER TABLE `fnbl_last_sync` DISABLE KEYS */;
INSERT INTO `fnbl_last_sync` VALUES (0,'card',200,200,'1325758296927','1325758370278',1325758370214,1325758373356),(0,'event',200,200,'1325758302983','1325758374868',1325758374793,1325758376035),(1,'card',201,200,'1325854941641','1325854994757',1325854994664,1325854998544);
/*!40000 ALTER TABLE `fnbl_last_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_module`
--

DROP TABLE IF EXISTS `fnbl_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_module` (
  `id` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `name` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `description` varchar(200) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_module`
--

LOCK TABLES `fnbl_module` WRITE;
/*!40000 ALTER TABLE `fnbl_module` DISABLE KEYS */;
INSERT INTO `fnbl_module` VALUES ('email','email','email'),('foundation','foundation','Funambol Foundation Connector');
/*!40000 ALTER TABLE `fnbl_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_module_connector`
--

DROP TABLE IF EXISTS `fnbl_module_connector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_module_connector` (
  `module` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `connector` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`module`,`connector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_module_connector`
--

LOCK TABLES `fnbl_module_connector` WRITE;
/*!40000 ALTER TABLE `fnbl_module_connector` DISABLE KEYS */;
INSERT INTO `fnbl_module_connector` VALUES ('email','email'),('foundation','foundation');
/*!40000 ALTER TABLE `fnbl_module_connector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pending_notification`
--

DROP TABLE IF EXISTS `fnbl_pending_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pending_notification` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `device` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `sync_source` varchar(128) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `sync_type` int(11) NOT NULL,
  `ui_mode` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_pn_username` (`username`),
  KEY `fk_pn_device` (`device`),
  CONSTRAINT `fk_pn_device` FOREIGN KEY (`device`) REFERENCES `fnbl_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pn_username` FOREIGN KEY (`username`) REFERENCES `fnbl_user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pending_notification`
--

LOCK TABLES `fnbl_pending_notification` WRITE;
/*!40000 ALTER TABLE `fnbl_pending_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_pending_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_address`
--

DROP TABLE IF EXISTS `fnbl_pim_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_address` (
  `contact` bigint(20) NOT NULL default '0',
  `type` smallint(6) NOT NULL default '0',
  `street` varchar(128) character set utf8 collate utf8_bin default NULL,
  `city` varchar(64) character set utf8 collate utf8_bin default NULL,
  `state` varchar(64) character set utf8 collate utf8_bin default NULL,
  `postal_code` varchar(16) character set utf8 collate utf8_bin default NULL,
  `country` varchar(32) character set utf8 collate utf8_bin default NULL,
  `po_box` varchar(16) character set utf8 collate utf8_bin default NULL,
  `extended_address` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`contact`,`type`),
  CONSTRAINT `fnbl_pim_address_ibfk_1` FOREIGN KEY (`contact`) REFERENCES `fnbl_pim_contact` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_address`
--

LOCK TABLES `fnbl_pim_address` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_address` DISABLE KEYS */;
INSERT INTO `fnbl_pim_address` VALUES (6,2,'62 Tinwell Road','Stamford','Lincs','PE9 2SD','United Kingdom','',''),(11,2,'106 Chelsea Gardens, Church Langley','Harlow','Essex','CM17 9RY','United Kingdom','',''),(13,2,'Fordbrook Farm, Fordbrook Hill','Crowborough','East Sussex','TN63SB','United Kingdom','',''),(15,2,'','London House, 271-273 King Street','Hammersmith,','W6 9LZ','United Kingdom','',''),(18,2,'','mobile in isreal','00972545621707','','United Kingdom','',''),(25,2,'Queen Victoria Square','Hull','East Yorkshire','HU1 3EB','United Kingdom','',''),(27,2,'','Froncysyllte','Llangollen','LL20 7SU','United Kingdom','',''),(29,2,'','','50 kimpton road luton','','United Kingdom','',''),(32,1,'2 Orwell Drive','Didcot','Oxfordshire','OX11 7RY','','',''),(36,2,'ffynon yr eirin,, crickhowell road','gilwern','abergavenny','np7 0eh','United Kingdom','',''),(43,2,'29 goldsmiths road,, kingsheath','birmingham','','b14 7eh','United Kingdom','',''),(54,2,'Inbucon House,, Wick Road,','Egham,','Surrey,','TW20 0HR','United Kingdom','',''),(63,2,'','Market St','Llangollen Clwyd','LL20 8RA','United Kingdom','',''),(64,2,'forways','geufron','llangollen','ll20 8dy','United Kingdom','',''),(69,2,'Dr Gareh & Partners','The Health Centre, Regent St','Llangollen Clwyd','LL20 8HL','United Kingdom','',''),(74,2,'telinet limited, telinet house, 52 southwark bridge road','london','','se1 0ar','United Kingdom','',''),(83,1,'95 pengwern','','','','','',''),(115,2,'AHV Associates LLP, 42 Brook Street','London','','W1K 5DB','UnitedKingdom','',''),(133,1,'87a Victoria Road','Horley','Surrey','RH6 7QH','','',''),(134,1,'fitbug, 10 utopia village, 7 chalcot road','london','','nw18lh','','',''),(136,1,'53 lullington garth 7LU','','london','N12','','','woodside park'),(137,1,'13 Woodlands Close','Ascot','Berkshire','SL5 9HU','United Kingdom','',''),(137,2,'Unit 7 Forest Park Business Unit Horndean Road','Bracknell','Berkshire','RG12 0XQ','United Kingdom','','');
/*!40000 ALTER TABLE `fnbl_pim_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_calendar`
--

DROP TABLE IF EXISTS `fnbl_pim_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_calendar` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(255) character set utf8 collate utf8_bin default NULL,
  `last_update` bigint(20) default NULL,
  `status` char(1) default NULL,
  `type` smallint(6) default NULL,
  `all_day` char(1) default NULL,
  `body` text,
  `busy_status` smallint(6) default NULL,
  `categories` varchar(255) character set utf8 collate utf8_bin default NULL,
  `companies` varchar(255) character set utf8 collate utf8_bin default NULL,
  `birthday` varchar(16) character set utf8 collate utf8_bin default NULL,
  `duration` int(11) default NULL,
  `dstart` datetime default NULL,
  `dend` datetime default NULL,
  `folder` varchar(255) character set utf8 collate utf8_bin default NULL,
  `importance` smallint(6) default NULL,
  `location` varchar(255) character set utf8 collate utf8_bin default NULL,
  `meeting_status` smallint(6) default NULL,
  `mileage` varchar(16) character set utf8 collate utf8_bin default NULL,
  `reminder_time` datetime default NULL,
  `reminder` char(1) default NULL,
  `reminder_sound_file` varchar(255) character set utf8 collate utf8_bin default NULL,
  `reminder_options` int(11) default NULL,
  `reminder_repeat_count` int(11) default NULL,
  `sensitivity` smallint(6) default NULL,
  `subject` varchar(1000) character set utf8 collate utf8_bin default NULL,
  `rec_type` smallint(6) default NULL,
  `rec_interval` int(11) default NULL,
  `rec_month_of_year` smallint(6) default NULL,
  `rec_day_of_month` smallint(6) default NULL,
  `rec_day_of_week_mask` varchar(16) character set utf8 collate utf8_bin default NULL,
  `rec_instance` smallint(6) default NULL,
  `rec_start_date_pattern` varchar(32) character set utf8 collate utf8_bin default NULL,
  `rec_no_end_date` char(1) default NULL,
  `rec_end_date_pattern` varchar(32) character set utf8 collate utf8_bin default NULL,
  `rec_occurrences` smallint(6) default NULL,
  `dstart_tz` varchar(255) character set utf8 collate utf8_bin default NULL,
  `dend_tz` varchar(255) character set utf8 collate utf8_bin default NULL,
  `reminder_tz` varchar(255) character set utf8 collate utf8_bin default NULL,
  `reply_time` datetime default NULL,
  `completed` datetime default NULL,
  `percent_complete` smallint(6) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_pim_calendar` (`userid`,`last_update`,`status`),
  KEY `ind_pim_calendar_userid_dstart` (`userid`,`dstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_calendar`
--

LOCK TABLES `fnbl_pim_calendar` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_pim_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_calendar_exception`
--

DROP TABLE IF EXISTS `fnbl_pim_calendar_exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_calendar_exception` (
  `calendar` bigint(20) NOT NULL default '0',
  `addition` char(1) NOT NULL default '',
  `occurrence_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`calendar`,`addition`,`occurrence_date`),
  CONSTRAINT `fnbl_pim_calendar_exception_ibfk_1` FOREIGN KEY (`calendar`) REFERENCES `fnbl_pim_calendar` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_calendar_exception`
--

LOCK TABLES `fnbl_pim_calendar_exception` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_calendar_exception` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_pim_calendar_exception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_contact`
--

DROP TABLE IF EXISTS `fnbl_pim_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_contact` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(255) character set utf8 collate utf8_bin default NULL,
  `last_update` bigint(20) default NULL,
  `status` char(1) default NULL,
  `photo_type` smallint(6) default NULL,
  `importance` smallint(6) default NULL,
  `sensitivity` smallint(6) default NULL,
  `subject` varchar(255) character set utf8 collate utf8_bin default NULL,
  `folder` varchar(255) character set utf8 collate utf8_bin default NULL,
  `anniversary` varchar(16) character set utf8 collate utf8_bin default NULL,
  `first_name` varchar(64) character set utf8 collate utf8_bin default NULL,
  `middle_name` varchar(64) character set utf8 collate utf8_bin default NULL,
  `last_name` varchar(64) character set utf8 collate utf8_bin default NULL,
  `display_name` varchar(128) character set utf8 collate utf8_bin default NULL,
  `birthday` varchar(16) character set utf8 collate utf8_bin default NULL,
  `body` text,
  `categories` varchar(255) character set utf8 collate utf8_bin default NULL,
  `children` varchar(255) character set utf8 collate utf8_bin default NULL,
  `hobbies` varchar(255) character set utf8 collate utf8_bin default NULL,
  `initials` varchar(16) character set utf8 collate utf8_bin default NULL,
  `languages` varchar(255) character set utf8 collate utf8_bin default NULL,
  `nickname` varchar(64) character set utf8 collate utf8_bin default NULL,
  `spouse` varchar(128) character set utf8 collate utf8_bin default NULL,
  `suffix` varchar(32) character set utf8 collate utf8_bin default NULL,
  `title` varchar(32) character set utf8 collate utf8_bin default NULL,
  `gender` char(1) default NULL,
  `assistant` varchar(128) character set utf8 collate utf8_bin default NULL,
  `company` varchar(255) character set utf8 collate utf8_bin default NULL,
  `department` varchar(255) character set utf8 collate utf8_bin default NULL,
  `job_title` varchar(128) character set utf8 collate utf8_bin default NULL,
  `manager` varchar(128) character set utf8 collate utf8_bin default NULL,
  `mileage` varchar(16) character set utf8 collate utf8_bin default NULL,
  `office_location` varchar(64) character set utf8 collate utf8_bin default NULL,
  `profession` varchar(64) character set utf8 collate utf8_bin default NULL,
  `companies` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_pim_contact` (`userid`,`last_update`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_contact`
--

LOCK TABLES `fnbl_pim_contact` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_contact` DISABLE KEYS */;
INSERT INTO `fnbl_pim_contact` VALUES (0,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','george','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(1,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','1','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(2,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','George','','wort',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(3,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','1','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(4,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Msp/H','','Msp',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(5,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Wort','','Elaine Wort',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','Elaine',NULL,NULL,NULL,NULL,NULL),(6,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Michael','','Bullard',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(7,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','MC','','STEVE',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(8,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Michael Bullar','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(9,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','green card no 07088157','','direct line',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(10,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Crawley','','TaXi',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(11,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Anne Marie Hil','','Hilton',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'yes','Service Implementation','',NULL,NULL,NULL,NULL,NULL),(12,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Jake','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(13,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mark','','Springett',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(14,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mathias','','Hulse',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(15,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Santosh','','Pillia',NULL,'','The nearest tube is Ravenscourt Park on the District Line. London House is opposite to the King Street gate of the Park which is at the bottom of the large green patch of park land on the map below), 1/12/04 - rang recreate was told it would be paid tommorrow and that it did not have a payment terms date on the invoice so it had not been paid,',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Recreate Solutions Ltd','','',NULL,NULL,NULL,NULL,NULL),(16,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Gifin','','Internet',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Grifin','','',NULL,NULL,NULL,NULL,NULL),(17,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mother2/M','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(18,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Simon','','Hochhauser',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'02074315445','','',NULL,NULL,NULL,NULL,NULL),(19,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Maurice','','Joseph',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(20,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','DirectLine','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(21,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Richard','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Halbren Homes','','',NULL,NULL,NULL,NULL,NULL),(22,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','','','Graham.',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(23,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Widdo','','Scottish',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(24,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Dickon Wort/H','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(25,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','HULL YB/W','','YB',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(26,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Martin Burton','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(27,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Froncysyllte','CP','School',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(28,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Michelle & rob','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(29,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','John','','Connor',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(30,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mothers Mobile','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(31,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Ted','','Hatch',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(32,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Colin','','Bateman',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Yes','Implementation','',NULL,NULL,NULL,NULL,NULL),(33,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mateus Suzy/H','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(34,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mobile','','Suzy',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(35,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','contract no 06ukd3990000062','Europe No 07eda7000170','Euroassist',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(36,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Davies','','Wyn',NULL,'','A4077,',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(37,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Nicolas','','Decourt',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(38,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Crompton','','Bev',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(39,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Jones','','Suzy',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(40,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Simon Hochhaus','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(41,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Llangollen','','Taxis',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(42,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','VIsa','Car','YBank',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(43,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Ewen','','Archibald',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(44,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Les','','Harris',NULL,'','Gsc 1011,',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(45,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Joe/W','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(46,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Dickon/H','','Dickon',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(47,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Gamma','Faults','Line',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(48,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Voice Mail/H','','Voice Mail',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(49,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Alan','','Found',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(50,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','','','Jo Mobile',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(51,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','','','Mother',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(52,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Joe','','Harrison',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Data Techniques','','Small Works Manager',NULL,NULL,NULL,NULL,NULL),(53,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Bev Crompton/H','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(54,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Steve','','Ashley-Brian',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Viatel','','Indirect Product Manager',NULL,NULL,NULL,NULL,NULL),(55,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','dan','','soar',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(56,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','BRYAN','','JOAN',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(57,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','customer','se','Bt',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(58,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Les Harris/M','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(59,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','David','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(60,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','','','Elaine\'s Mothe',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(61,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Paul','','Jenkins',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Gamma','','',NULL,NULL,NULL,NULL,NULL),(62,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Richard','','Mills',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(63,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Kenrick','','Motors',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(64,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Rob','','Watkins',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(65,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','VIsa YBank/W','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(66,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Olly','','Lappage',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(67,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Dan Birchmore','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Rgt','','',NULL,NULL,NULL,NULL,NULL),(68,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Pritt','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(69,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Doctors/W','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(70,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Paul Jenkins/M','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(71,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Mike','','How',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(72,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Trevor','','Williams',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(73,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Ralph','','Mobile',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(74,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Jose','','Fernandez',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Telinet','','Operationas Director',NULL,NULL,NULL,NULL,NULL),(75,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','','','Joe',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','CONCHEIRO.',NULL,NULL,'','','Quality Manager',NULL,NULL,NULL,NULL,NULL),(76,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','MOTHER/W','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(77,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','','','Msp Home Bus',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(78,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Wort','','Family',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(79,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Howel/H','','',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(80,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','LING','HOME','Mee',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(81,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Simon','','Zimbler',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(82,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Graham','','Kedslie',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Gamma','','',NULL,NULL,NULL,NULL,NULL),(83,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','eirwen','','jones',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(84,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','zzz','test 150110','zzz',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(85,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Michael','','Glass',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(86,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','June','','Neary',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(87,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(88,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(89,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Malt','House','Office',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(90,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Hmc','Pet','Care',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(91,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','*','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(92,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(93,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(94,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(95,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','camping.la.riviere@wanadoo.fr','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(96,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','info@soleilplage.fr','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(97,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','camping-laverterive@orange.fr','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(98,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(99,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(100,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(101,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Dinas','','Bran',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(102,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Louise','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(103,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(104,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Lock','','Man',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(105,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(106,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Simon','','Peacock',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(107,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(108,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Rob','','Watkin',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(109,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Albert','','Macdonald',NULL,'',',',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(110,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(111,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(112,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(113,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(114,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Roger','','Crag',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(115,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Andrew','','Harrington',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(116,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Laura','','Swann',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(117,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','LOUISE','','FLOOD',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(118,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Vhp','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(119,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Paj','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(120,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','finn','New','311210',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(121,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','g','','wort',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(122,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(123,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Beverley','','Compton',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(124,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Ian','','Blackburn',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(125,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(126,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(127,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Ralph','','Wort',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(128,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(129,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(130,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','peter','','anscomb',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(131,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(132,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','John','','Comptom',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(133,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','bernie','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(134,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','rahil','','sakoor',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(135,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','lemonpierre@aol.com','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(136,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','mervyn','','bloch',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(137,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Hugh','Hugh','James',NULL,'','Gsc 1010, ,',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','Managing Director',NULL,NULL,NULL,NULL,NULL),(138,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Caravan','Place','Alex',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(139,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(140,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(141,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(142,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(143,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(144,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','INAM','','Orders',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(145,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(146,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(147,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','wilf','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(148,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Jade','','Yeomans',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(149,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(150,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(151,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(152,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Man','Who Bought','Almera',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(153,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Russell','','Lux',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(154,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','sandra & ewen','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(155,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(156,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Jackie','','Maelor',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(157,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Josh','','Barber',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(158,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Office Line2','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(159,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Office Line 4','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(160,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(161,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Alistair','','Cunningham',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(162,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','georgewort@live.co.uk','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(163,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Sys Admin Man','','Matt Newcombe',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(164,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','wood','','croft',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(165,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Home','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(166,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Jeff','','Green',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'Elisha Telecom','','',NULL,NULL,NULL,NULL,NULL),(167,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','john','','murphy',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(168,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(169,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Kelly','','Taylor',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(170,'rw3',1325677006458,'N',1,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(171,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(172,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Matt','','Pitt',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(173,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','Rachel','','Coman',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(174,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Morag','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(175,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(176,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(177,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,'','',NULL,'',NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(178,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','joannewort@googlemail.com','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(179,'rw3',1325677006458,'N',0,NULL,NULL,NULL,NULL,'','joanne','','wort',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(180,'rw3',1325758199414,'U',0,NULL,NULL,NULL,NULL,'','Mark Mackintosh','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(181,'rw3',1325758199414,'N',0,NULL,NULL,NULL,NULL,'','george','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(182,'rw3',1325758199414,'N',0,NULL,NULL,NULL,NULL,'','1','','',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(183,'rw3',1325758199414,'N',0,NULL,NULL,NULL,NULL,'','Aaaa','','Aaaaaa',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(184,'rw3',1325758370214,'N',0,NULL,NULL,NULL,NULL,'','Aaaab','','Aaaaab',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(185,'rw2',1325854994664,'N',0,NULL,NULL,NULL,NULL,'','Test','','One',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL),(186,'rw2',1325854994664,'N',0,NULL,NULL,NULL,NULL,'','test two','','two',NULL,'','',NULL,'',NULL,NULL,NULL,'','','','',NULL,NULL,'','','',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fnbl_pim_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_contact_item`
--

DROP TABLE IF EXISTS `fnbl_pim_contact_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_contact_item` (
  `contact` bigint(20) NOT NULL default '0',
  `type` smallint(6) NOT NULL default '0',
  `value` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`contact`,`type`),
  CONSTRAINT `fnbl_pim_contact_item_ibfk_1` FOREIGN KEY (`contact`) REFERENCES `fnbl_pim_contact` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_contact_item`
--

LOCK TABLES `fnbl_pim_contact_item` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_contact_item` DISABLE KEYS */;
INSERT INTO `fnbl_pim_contact_item` VALUES (0,30,'+447851435616'),(1,30,'3441'),(2,3,'00447510193187'),(2,30,'+447851435616'),(3,30,'3441'),(4,1,'07775803654'),(4,30,'07775803654'),(5,1,'07795121296'),(5,3,'07795121296'),(5,30,'07795121296'),(6,1,'01780481714'),(6,3,'07736354330'),(6,4,'michael@accuvista.co.uk'),(6,10,'01780481714'),(6,30,'01780481714'),(7,4,'[No email address found]'),(7,10,'+447879686421'),(8,30,'07736354330'),(9,10,'00441133905192'),(10,1,'01293537177'),(11,1,'+44 (1279) 301579'),(11,3,'+44 (07957) 246672'),(11,4,'am.hilton@ntlworld.com'),(11,30,'+44 1279301579'),(12,3,'07902625578'),(13,1,'01892611900'),(13,3,'07775803654'),(13,4,'springett@lineone.net'),(13,11,'02071316704'),(13,30,'01892667275'),(14,3,'07981605428'),(14,4,'Mathias_Hulse@Idealboilers.com'),(15,3,'07720286297'),(15,5,'http://www.recreatesolutions.com'),(15,10,'02082332916'),(15,11,'02082332917'),(15,31,'(0) 20 8233 2916'),(16,10,'01332646631'),(16,31,'01332646631'),(17,3,'+44 (7977) 360642'),(17,30,'+44 7977360642'),(18,1,'02074311333'),(18,3,'07767622234'),(18,4,'simon@shochhauser.com'),(18,5,'http://g'),(18,10,'02074311333'),(18,11,'0097255621707'),(18,22,'0097226243182'),(18,30,'02074311333'),(19,10,'08707437100'),(20,3,'DirectLine'),(21,10,'01737232100'),(22,1,'07802673919'),(23,4,'[No email address found]'),(23,10,'+441316624053'),(24,30,'01824702716'),(25,4,'[No email address found]'),(25,10,'+441482320429'),(25,30,'+44 1482320429'),(26,30,'07748965982'),(27,10,'(01691) 773310'),(28,1,'01978860948'),(28,10,'01244347661'),(29,3,'0794 4509661'),(29,30,'07944509661'),(30,4,'[No email address found]'),(30,30,'07977360642'),(31,1,'+44 (0207) 4319302'),(31,4,'ckerr@ckerr.homechoice.co.uk'),(32,1,'01235511908'),(32,3,'07855850270'),(32,4,'colinbateman@fsmail.net'),(33,30,'01502724248'),(34,4,'[No email address found]'),(34,10,'+447973735606'),(35,10,'08707375700'),(36,4,'[No email address found]'),(36,10,'01873831796'),(37,3,'07870195615'),(37,4,'office@babblecom.co.uk'),(37,5,'http://www.babblecom.co.uk'),(37,10,'01978869593'),(37,30,'01978869593'),(38,4,'[No email address found]'),(38,10,'+447810506484'),(39,1,'02084525234'),(39,4,'[No email address found]'),(39,10,'+442084525234'),(40,30,'0097255621707'),(41,3,'01978861018'),(42,4,'[No email address found]'),(42,10,'+441132424040'),(43,1,'0121 4442836'),(43,3,'077'),(44,3,'07713 160343'),(44,4,'lm.harris@blueyonder.co.uk'),(44,10,'02088929580'),(44,30,'02088929580'),(45,30,'01342840207'),(46,1,'07748966476'),(46,30,'07748966476'),(47,10,'08081788000'),(47,31,'08081788000'),(48,1,'+440527905220006'),(48,30,'+44 0527905220006'),(49,1,'01978 861860'),(50,1,'07952617605'),(51,1,'07963675420'),(52,3,'07966 428821'),(52,4,'joe.harrison@datatechniques.co.uk'),(52,5,'http://www.datatechniques.co.uk'),(52,10,'0208 858 7272'),(52,11,'0208 858 7444'),(53,30,'01482880221'),(54,3,'07760293060'),(54,4,'Steve.Ashley-Brian@viatel.com'),(54,5,'http://www.viatel.com'),(54,10,'01344543728'),(55,3,'07985054960'),(56,4,'[No email address found]'),(56,10,'+441482861940'),(57,4,'[No email address found]'),(57,10,'+44800155420'),(58,30,'07713160343'),(59,3,'07779034957'),(59,4,'david@dashjones.com'),(60,1,'01416474135'),(61,3,'07919 215543'),(61,10,'0207 101 5231'),(61,30,'02071015231'),(62,4,'rgd@millscaps.freeserve.co.uk'),(63,10,'01978 861382'),(64,1,'01978860948'),(64,3,'07904430003'),(64,4,'r.watkin@assuract.co.uk'),(65,30,'+44 1132424040'),(66,3,'07776234242'),(67,1,'01344898492'),(67,30,'01344898492'),(68,3,'07855420216'),(69,10,'01978860625'),(69,30,'01978860625'),(70,30,'07919215543'),(71,3,'07798622862'),(71,4,'mikeraffone@yahoo.com'),(71,30,'+44 2084524795'),(72,3,'07981966465'),(72,16,'01978824203'),(73,3,'07905220006'),(74,1,'02077717700'),(74,4,'jose.fernandez@telinet.co.uk'),(74,10,'02076424030'),(75,1,'01293 550157'),(75,3,'07973 506 353'),(75,4,'jconcheiro@rgt.co.uk'),(75,10,'02076424040'),(75,30,'207'),(75,31,'2353'),(76,30,'+44 7977360642'),(77,1,'01892667275'),(78,4,'[No email address found]'),(78,10,'+441824702545'),(79,30,'01978862804'),(80,3,'+447718892971'),(80,4,'[No email address found]'),(80,10,'+442084461141'),(81,4,'szimbler@mzl.com'),(81,10,'01454-878770'),(82,3,'07876652039'),(82,4,'gkedslie@gammatelecom.com'),(83,16,'01978861845'),(84,4,'zzz@rwort.co.uk'),(84,10,'01978860002'),(85,4,'Michael@natpoint.com'),(85,10,'02089510050'),(86,4,'june.neary@caranddriving.com'),(86,10,'01293774260'),(87,4,'rob.watkin@moneysupermarket.com'),(88,4,'scott@martinsofhawkhurst.co.uk'),(89,3,'01978869218'),(90,1,'01978846120'),(90,3,'07927853392'),(91,3,'*'),(92,4,'support@access21.co.uk'),(93,4,'enquiries@dordognecamping.co.uk'),(94,4,'Info@levezereperigord.com'),(95,4,'camping.la.riviere@wanadoo.fr'),(96,4,'info@soleilplage.fr'),(97,4,'camping-laverterive@orange.fr'),(98,4,'contact@domaine-cro-magnon.com'),(98,16,'courielcm@gmail.com'),(99,4,'info@labouysse.com'),(100,4,'lecapeyrou@wanadoo.fr'),(101,10,'01978860669'),(102,3,'07990607072'),(103,4,'bernie@rgcltd.co.uk'),(104,3,'07764291149'),(105,4,'louise.flood@access21.co.uk'),(106,3,'07974319230'),(106,4,'simon@simonross.biz'),(107,4,'contact@camping-la-butte.com'),(108,4,'robwatkin@googlemail.com'),(109,1,'07941710475'),(110,4,'peter@anscomb-family.co.uk'),(111,4,'info@mantrarecruitment.co.uk'),(112,4,'albert.macdonald@ntlworld.com'),(113,4,'simon.peacock@access21.co.uk'),(114,3,'07765968287'),(115,1,'020 7958 9005'),(115,3,'07768643527'),(115,4,'aharrington@ahvassociates.com'),(115,10,'020 7958 9677'),(115,11,'0 20 7958 9250'),(116,4,'Laura.Swann@c4l.co.uk'),(117,4,'lou1se246@hotmail.com'),(118,1,'02077940987'),(118,10,'02073044000'),(119,3,'07723078868'),(120,3,'+447523102777'),(121,4,'gwenjwort@gmail.com'),(122,4,'wortwork@gmail.com'),(123,4,'Beverley.Compton@nelincs.gov.uk'),(124,4,'ian-blackburn@hotmail.co.uk'),(125,4,'ralphgeorgewort@googlemail.com'),(126,4,'debihamblin@btinternet.com'),(127,3,'+447905220006'),(127,4,'ralphwort@googlemail.com'),(127,16,'ralph@rwort.co.uk'),(128,4,'debi.woodley@access21.co.uk'),(128,16,'dbwoodley85@gmail.com'),(129,4,'customer.services@travelodge.co.uk'),(130,3,'07793670565'),(130,4,'peter.anscomb@access21.co.uk'),(130,10,'01273588251'),(130,23,'peter@bravermanpaine.co.uk'),(131,4,'steve.day@access21.co.uk'),(132,3,'07831846963'),(133,3,'07725055845'),(133,23,'01293621144'),(134,3,'07507855431'),(134,4,'rahil.sakoor@fitbug.com'),(134,10,'02074494998'),(135,4,'lemonpierre@aol.com'),(136,3,'07768200986'),(136,23,'mbloch@hotmail.co.uk'),(137,3,'07970659809'),(137,4,'hugh.james@axtan.co.uk'),(137,5,'http://www.axtan.co.uk'),(137,11,'+4401344899001'),(137,30,'01344302306'),(138,3,'07870727395'),(139,4,'tees55_lq3127sc@members.ebay.co.uk'),(140,4,'sales@ingenius.com'),(141,4,'harpreet.bhogal@moneycorp.com'),(142,4,'info@mfyp.co.uk'),(143,4,'info@crossburncaravans.co.uk'),(144,4,'Orders@ineedamobile.com'),(145,4,'scott.gaylard@access21.co.uk'),(146,4,'rosettacaravan@gmail.com'),(148,4,'jade.yeomans@holidayextras.com'),(149,4,'durrani44@yahoo.com'),(150,4,'accounts@gate-aviation.com'),(151,4,'joanne.wort@nhs.net'),(152,3,'07855993310'),(153,3,'07977536676'),(153,4,'russell.lux@luxcap.co.uk'),(154,4,'sandra.ewen@btopenworld.com'),(155,4,'wyn@mackleydavies.co.uk'),(156,3,'07949651775'),(157,3,'07980063645'),(158,3,'01978869399'),(159,3,'01978861575'),(160,4,'support@ysh.co.uk'),(161,4,'acunningham@integrics.com'),(162,4,'georgewort@live.co.uk'),(163,30,'085219044428'),(164,3,'01978861580'),(165,1,'01978861580'),(165,22,'01978861580'),(166,30,'07710709905'),(167,3,'00353863899119'),(167,4,'john.murphy@asteriskconsulting.com'),(167,10,'0035312930090'),(168,4,'thomas.ferreira@asteriskconsulting.com'),(169,3,'07967 641110'),(169,4,'kelly.taylor@siriusit.co.uk'),(170,4,'mark.taylor@siriusit.co.uk'),(171,4,'james@foehn.co.uk'),(172,4,'matt@foehn.co.uk'),(173,4,'Rachel.Coman@nationaltrust.org.uk'),(174,1,'01490430615'),(174,3,'07717745206'),(174,22,'01490430615'),(175,4,'SimonHochhauser@googlemail.com'),(176,4,'peteranscomb@googlemail.com'),(177,4,'tony@deliverysolutions.uk.com'),(178,4,'joannewort@googlemail.com'),(179,4,'joannewort@gmail.com'),(180,30,'+447875028814'),(181,30,'+447851435616'),(182,30,'3441'),(183,3,'01978861580'),(184,1,'01978869399'),(185,10,'01978869218'),(186,1,'01978869399');
/*!40000 ALTER TABLE `fnbl_pim_contact_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_contact_photo`
--

DROP TABLE IF EXISTS `fnbl_pim_contact_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_contact_photo` (
  `contact` bigint(20) NOT NULL default '0',
  `type` varchar(64) character set utf8 collate utf8_bin default NULL,
  `photo` longblob,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`contact`),
  CONSTRAINT `fnbl_pim_contact_photo_ibfk_1` FOREIGN KEY (`contact`) REFERENCES `fnbl_pim_contact` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_contact_photo`
--

LOCK TABLES `fnbl_pim_contact_photo` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_contact_photo` DISABLE KEYS */;
INSERT INTO `fnbl_pim_contact_photo` VALUES (170,'image/jpeg','ˇÿˇ‡\0JFIF\0\0\0\0\0\0ˇ€\0Ñ\0											\n\Z	!\r$\"		\rˇ¿\0\0`\0`\"\0ˇƒ\0\0\0\0\0\0\0\0\0\0\0\0\0	\0ˇƒ\0F\0	\0\0\0\0\0\0\"2BRb#arÇ¢!1Qí≤¬Ú3ASqÅë°¡“‚sì	$CÉ±—ˇƒ\0\Z\0\0\0\0\0\0\0\0\0\0ˇƒ\0&\0\0\0\0\0\0\0\0\0\0!1AQ\"aÅ#2q°ˇ⁄\0\0\0?\0sÒ∞ØN O›∏JfÍ@\ZMhÃÆ)ô;W¢®pWs+)ïÕdb—Ò≈ñº±”‰9êRNc˚sió˝EQ‡⁄pFe0O)äg¥N,DÔæ|v¯ã±¸Ñ≤’e.â˘0Åzûm4”rƒ\"#õhŸRÿH&◊.òé´qz—ùD$‰M∞ëBç5÷–ó¥íäìQTLuàcæÖFÏâŸJ\'ÃÉ5k	ú0!\\ÉÜ%≠räIπÿ`∂∑’p∏HÒG–Ö¯üñp9ëÚWcy„)Ì,”EB⁄˜†‚’[™π\\N\"÷£;@•‡ñÀp√mÈ;¿\\U`@…ïNèL∏´ÕﬁŸ*®àÑàR$∞Ó™]ËÛ\"òÙ£â‚7v:ÆﬁΩ,[ v-.“¬éÍŒWfÎî‰W!‡ƒÀª{ÄYRV±qeÔG´™?Ñ[ÓÌ¬…)3#,(ë\n\n$®¨Œﬁ†Nii¢ÅÃ>≠1X∏´I)’ÑùÕ%tZÿÑªﬂlKæ∏GV»ÊQ¥∑te-¡‚0Îâ&‘$‘V‚Q/ú\'5≈6à,˙äzl»psiâ	lë\r\Z<ølW5.Böä&DFD%òãØGöm(.Ië*¢\rŸ(äf7I	®›4så/=4Sßœ®y;Káë4Ïım,ô\r¬§BY]á÷wÈ\rπ#ƒ∞µÂ÷ﬁÄÀ?fPQ{ƒ“P”qaHàE¢——ŒL÷©›H7t≤«z∞HΩ[k\\¢ì<ë2÷afˆc™~©™PCîŒ•2æW∫Ì≈Ñ]wFáSO—E:cjB¢@¶÷5{‘,ƒCÏ¡]µ©$ß%ê@áí‡KU£≥Üç:|ﬁM>xrï^‡ú3õ¥#V*.ñJÈ√á6m; %2 ‰…2ƒCñ∫¨ñå∫d,¿ÏZª≈”—2“iªjµ6É´LÊ.Ê(∆]jc“ﬁ*Tè˘B®iâï¡öç!&L¨‘»uKC|ÒÊ˝c/˛§«“^‘[?˛)Äô≠PqrqñIQ[ÎÒÛˇ\08§Æ2î‘…¯éŒ*ƒ˘jÜB8”/Ì4ΩòEŸZªìV”<ù%P˛mB’QŒo„?Ñôg\njjòí]¨√ÔBŒzQ4•Ó⁄’àÖ\\ZŸúÿŒﬁ¶ä¨<Õ£\nîTˆ\0˛M–ñ\ZËŸB¶G1ø©ãª\nÆ(€¥≠⁄xs@êF¢ÊaaãrÂ\Z#V÷¶ŸfÓîDL◊àH∑î®ò,©	ÛÑ\"Áe˙\".›€…cEƒ¢mòÌIwû™ÿZí‚úŸ&âÊ’≈Í/:æÔ˛BrõdÅÚë√ŒeÀá∞…≤π/..Ã\">Ã&™`o\nç!≠=Fã\\†·Òö\0Ì:Èàäi¥Dr¡˝±ôjd.0®õƒDE≠∆Ÿ0˜	¨π»®B·\"ÔE√‚Q*)ßZ®÷ëòU´µΩÿ´5`∏±ä!åàæ∞8∑‹O§K‰ÈŸ∂ê‘ `ÉæÆYª´M+y\"Ö‹I˜\0--ªçÎKWﬂ†¢}°ﬁ!Ÿ˚°I]K¶BD‰ƒy≤,√ª÷Ëáe>7óL\r⁄;%,Ω‚çRìPÖ1U†J4Æ‘$«[O”¶ä:)è_Ÿ\Z§:|ŒV7¬ê(¸r?qOWÆ—å$wäb %@ø≠ê∫√Ñø8÷^¥$ÑÑDçB \"$Nå‡ÿ‡Õ\Zøß\"◊ïT¥ÿç˙I™œõv©v°inÏB®I\'ÄãgH(JæõLDæOôUBˇ\0làSLzƒT·éÇ¥3∏ïZ®XñŒ7k†B[9©“:#™‘Ò‹ƒ⁄¸\"Çé\" [-wZ\n*’)·lh⁄€GY™DJU¢ìãW!Î}-WNV$DDìSÎ∏°§k_QÜ∆ìÄ!%∞úÊ‚⁄Ä	ïÆ’ÇSI%,òñej8GQi^HIÊMU”5∂n+Âù∫¡—€¢:Z°#∑è‹Î≥∂Nmy‘‰n&FlàCì‹(ÏYH«F¥y ü&Å¶/ÂÑ®´jÈi4Ò\n	àëm®NQevïÙQË˚\"^îÖŒn´hÑvãŒCó…M>àÂO≈Ω’Ò‰ã4®h9ëk‹˝@âç?}E?À{twcèΩ≠µ’›èºua≤º[â{ä∆m<©ﬂ®c∫DN¨jUƒ‚h∏p¡g\n≤#ÀVŸU4Õ€Õ¬_å.”ú$Á;]ò»]R≈F«ô¨∂©ˆ‘˚C[.•ﬁfêÂ¬ÔäkbÆÊUO˙^’0≈®\'QTFD∂øål÷tÀQOpPDv∞DBV6zuBÁ’XÒb£3à∞à‚]ÿm◊”H$.h·À{}hÔ+º√‡°4ò˚C’®yl´k’õ™ê˜∂°ﬂƒNØMJŒ≥ô!rí“âEô•2π_~4&1[V\"ƒEò¢’Ò	ój5∫õe,Ÿº&˜¢≈™\0@êÆú≤ôhªﬁˆË∆t¯Ÿé\Z{>ÔÓèºu¢¨ì1Ó˜cÇäàããàëVé%∂FäΩXÕ%≠´›n—;W¶ºgx\\ñîêò™ÍÂÔÁÊì)yï%ÃHe•ÃZ†íÉNã⁄|‘QFú‘Èè1ƒ˙a≈Øî˘BBZ≥D\\*¶Ú⁄π%Hê,:∫?HUZ\nΩ¯Ñq>¯ûA{;Umπ9\0G6AªP~ÍD¥—LD€éÂd®”ß!Ω¥óß´˚™õZ˜‘ªitB7\\]ÈUdõ.∞îFVˆû`v†˙µ™q®-!Ã-i;z +:ç2∞,˚J8€ ≈e§¥´´Ñç£34l¯˝–kk™¶ñ:º°¥ƒ5e- ËHà¢…q>ÆæOYD◊!I\Z‘Ö$H≤å¿|¡nÈ≈E˙Hh˙acb¨2ì%z∞êÀb˙¬˙¥ˆ∫iÉg\"†’”*!Õ\\$J†‹7dÉTDÑ∂®•1Ú√hÉú…w-∂ôtË£·,€Œåi¯ølTÆ\r∏‹¶(&ç}&∫ãàÏïﬁ!h‚9s§nÈÙ≤öz(£NàoŸﬁ1Jq≠¨”ïRú£:í“¬?Ú\Z?8§I⁄üˇŸ',NULL);
/*!40000 ALTER TABLE `fnbl_pim_contact_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_listener_registry`
--

DROP TABLE IF EXISTS `fnbl_pim_listener_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_listener_registry` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) character set utf8 collate utf8_bin default NULL,
  `push_contacts` char(1) default NULL,
  `push_calendars` char(1) default NULL,
  `push_notes` char(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_pim_listener_username` (`username`),
  CONSTRAINT `fnbl_pim_listener_registry_ibfk_1` FOREIGN KEY (`id`) REFERENCES `fnbl_push_listener_registry` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_listener_registry`
--

LOCK TABLES `fnbl_pim_listener_registry` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_listener_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_pim_listener_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_pim_note`
--

DROP TABLE IF EXISTS `fnbl_pim_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_pim_note` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(255) character set utf8 collate utf8_bin default NULL,
  `last_update` bigint(20) default NULL,
  `status` char(1) default NULL,
  `crc` bigint(20) default NULL,
  `subject` varchar(255) character set utf8 collate utf8_bin default NULL,
  `textdescription` mediumtext,
  `categories` varchar(255) character set utf8 collate utf8_bin default NULL,
  `folder` varchar(255) character set utf8 collate utf8_bin default NULL,
  `color` int(11) default NULL,
  `height` int(11) default NULL,
  `width` int(11) default NULL,
  `top` int(11) default NULL,
  `leftmargin` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_pim_note` (`userid`,`last_update`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_pim_note`
--

LOCK TABLES `fnbl_pim_note` WRITE;
/*!40000 ALTER TABLE `fnbl_pim_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_pim_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_principal`
--

DROP TABLE IF EXISTS `fnbl_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_principal` (
  `username` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `device` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_device` (`device`),
  KEY `ind_principal` (`username`,`device`),
  KEY `ind_principal_user` (`username`),
  CONSTRAINT `fk_device` FOREIGN KEY (`device`) REFERENCES `fnbl_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_principal`
--

LOCK TABLES `fnbl_principal` WRITE;
/*!40000 ALTER TABLE `fnbl_principal` DISABLE KEYS */;
INSERT INTO `fnbl_principal` VALUES ('rw2','fac-351602040053496',1),('rw3','fac-356381040436135',0);
/*!40000 ALTER TABLE `fnbl_principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_push_listener_registry`
--

DROP TABLE IF EXISTS `fnbl_push_listener_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_push_listener_registry` (
  `id` bigint(20) NOT NULL,
  `period` bigint(20) default NULL,
  `active` char(1) default NULL,
  `last_update` bigint(20) default NULL,
  `status` varchar(1) character set utf8 collate utf8_bin default NULL,
  `task_bean_file` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`),
  KEY `ind_push_listener_status` (`status`),
  KEY `ind_push_listener_lastupdate_status` (`last_update`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_push_listener_registry`
--

LOCK TABLES `fnbl_push_listener_registry` WRITE;
/*!40000 ALTER TABLE `fnbl_push_listener_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `fnbl_push_listener_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_role`
--

DROP TABLE IF EXISTS `fnbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_role` (
  `role` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `description` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_role`
--

LOCK TABLES `fnbl_role` WRITE;
/*!40000 ALTER TABLE `fnbl_role` DISABLE KEYS */;
INSERT INTO `fnbl_role` VALUES ('sync_administrator','Administrator'),('sync_user','User');
/*!40000 ALTER TABLE `fnbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_sync_source`
--

DROP TABLE IF EXISTS `fnbl_sync_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_sync_source` (
  `uri` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `config` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `name` varchar(200) character set utf8 collate utf8_bin NOT NULL,
  `sourcetype` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_sync_source`
--

LOCK TABLES `fnbl_sync_source` WRITE;
/*!40000 ALTER TABLE `fnbl_sync_source` DISABLE KEYS */;
INSERT INTO `fnbl_sync_source` VALUES ('briefcase','foundation/foundation/fs-foundation/BriefcaseSource.xml','briefcase','fs-foundation'),('cal','foundation/foundation/calendar-foundation/VCalendarSource.xml','cal','calendar-foundation'),('card','foundation/foundation/contact-foundation/VCardSource.xml','card','contact-foundation'),('configuration','foundation/foundation/configuration/configuration.xml','configuration','config-foundation'),('event','foundation/foundation/calendar-foundation/VEventSource.xml','event','calendar-foundation'),('mail','email/email/email-ss/mail.xml','mail','email-ss'),('note','foundation/foundation/note-foundation/PlainTextNoteSource.xml','note','note-foundation'),('scal','foundation/foundation/calendar-foundation/SIFEventSource.xml','scal','calendar-foundation'),('scard','foundation/foundation/contact-foundation/SIFContactSource.xml','scard','contact-foundation'),('snote','foundation/foundation/note-foundation/SIFNoteSource.xml','snote','note-foundation'),('stask','foundation/foundation/calendar-foundation/SIFTaskSource.xml','stask','calendar-foundation'),('task','foundation/foundation/calendar-foundation/VTodoSource.xml','task','calendar-foundation');
/*!40000 ALTER TABLE `fnbl_sync_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_sync_source_type`
--

DROP TABLE IF EXISTS `fnbl_sync_source_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_sync_source_type` (
  `id` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  `description` varchar(200) character set utf8 collate utf8_bin default NULL,
  `class` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `admin_class` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_sync_source_type`
--

LOCK TABLES `fnbl_sync_source_type` WRITE;
/*!40000 ALTER TABLE `fnbl_sync_source_type` DISABLE KEYS */;
INSERT INTO `fnbl_sync_source_type` VALUES ('calendar-foundation','PIM Calendar SyncSource','com.funambol.foundation.engine.source.PIMCalendarSyncSource','com.funambol.foundation.admin.PIMCalendarSyncSourceConfigPanel'),('config-foundation','Configuration SyncSource','com.funambol.foundation.engine.source.ConfigSyncSource',NULL),('contact-foundation','PIM Contact SyncSource','com.funambol.foundation.engine.source.PIMContactSyncSource','com.funambol.foundation.admin.PIMContactSyncSourceConfigPanel'),('email-ss','Email SyncSource','com.funambol.email.engine.source.EmailSyncSource','com.funambol.email.admin.EmailSyncSourceConfigPanel'),('fs-foundation','FileSystem SyncSource','com.funambol.foundation.engine.source.FileSystemSyncSource','com.funambol.foundation.admin.FileSystemSyncSourceConfigPanel'),('note-foundation','Notes SyncSource','com.funambol.foundation.engine.source.PIMNoteSyncSource','com.funambol.foundation.admin.PIMNoteSyncSourceConfigPanel'),('sif-fs-foundation','SIF SyncSource','com.funambol.foundation.engine.source.SIFSyncSource','com.funambol.foundation.admin.SIFSyncSourceConfigPanel');
/*!40000 ALTER TABLE `fnbl_sync_source_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_user`
--

DROP TABLE IF EXISTS `fnbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_user` (
  `username` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `password` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `email` varchar(255) character set utf8 collate utf8_bin default NULL,
  `first_name` varchar(255) character set utf8 collate utf8_bin default NULL,
  `last_name` varchar(255) character set utf8 collate utf8_bin default NULL,
  PRIMARY KEY  (`username`),
  KEY `ind_user` (`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_user`
--

LOCK TABLES `fnbl_user` WRITE;
/*!40000 ALTER TABLE `fnbl_user` DISABLE KEYS */;
INSERT INTO `fnbl_user` VALUES ('admin','lltUbBHM7oA=','admin@funambol.com','admin','admin'),('guest','65GUmi03K6o=','guest@funambol.com','guest','guest'),('rw1','vAv69+HAr2A=','rw1@rwort.co.uk','rw1','rw1'),('rw2','vAv69+HAr2A=','rw2@rwort.co.uk','rw2','rw2'),('rw3','vAv69+HAr2A=','rw3@rwort.co.uk','rw3','rw3');
/*!40000 ALTER TABLE `fnbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnbl_user_role`
--

DROP TABLE IF EXISTS `fnbl_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnbl_user_role` (
  `username` varchar(255) character set utf8 collate utf8_bin NOT NULL,
  `role` varchar(128) character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`username`,`role`),
  CONSTRAINT `fk_userrole` FOREIGN KEY (`username`) REFERENCES `fnbl_user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnbl_user_role`
--

LOCK TABLES `fnbl_user_role` WRITE;
/*!40000 ALTER TABLE `fnbl_user_role` DISABLE KEYS */;
INSERT INTO `fnbl_user_role` VALUES ('admin','sync_administrator'),('guest','sync_user'),('rw1','sync_user'),('rw2','sync_user'),('rw3','sync_user');
/*!40000 ALTER TABLE `fnbl_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL auto_increment,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rwtables`
--

DROP TABLE IF EXISTS `rwtables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwtables` (
  `id` int(11) NOT NULL auto_increment,
  `col1` varchar(255) default NULL,
  `col2` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rwtables`
--

LOCK TABLES `rwtables` WRITE;
/*!40000 ALTER TABLE `rwtables` DISABLE KEYS */;
/*!40000 ALTER TABLE `rwtables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120111174329'),('20120116090514'),('20120118141444'),('20120118161409'),('20120118164125'),('20120119102257');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-01-25  8:52:57
