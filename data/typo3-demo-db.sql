-- MySQL dump 10.13  Distrib 5.5.49, for Win32 (AMD64)
--
-- Host: localhost    Database: typo3-demo-db
-- ------------------------------------------------------
-- Server version	5.5.49-log

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
INSERT INTO `backend_layout` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1484952484,1484952404,1,0,1,1000000000,'Default Layout','','backend_layout {\r\n	colCount = 2\r\n	rowCount = 2\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Content\r\n					colspan = 2\r\n					rowspan = 2\r\n					colPos = 0\r\n				}\r\n			}\r\n		}\r\n		2 {\r\n			columns {\r\n			}\r\n		}\r\n	}\r\n}\r\n',''),(2,1,0,0,0,'',0,0,0,0,0,0,1484952521,1484952521,1,0,0,256,'Default Layout','','backend_layout {\r\n	colCount = 1\r\n	rowCount = 1\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Content\r\n					colPos = 0\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n','');
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci,
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci,
  `tables_modify` text COLLATE utf8_unicode_ci,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `groupMods` text COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `subgroup` text COLLATE utf8_unicode_ci,
  `hide_in_lists` smallint(6) NOT NULL DEFAULT '0',
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext COLLATE utf8_unicode_ci,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('cc15c6525774f11b0cec4835f780f33e','be_typo_user','192.168.7.160',231164848,1,1485273324,'a:4:{s:26:\"formProtectionSessionToken\";s:64:\"f22dbdea41d935c15a27feb5865c902365050ad99c9e66c3ed30f322f3879abe\";s:27:\"core.template.flashMessages\";N;s:80:\"extbase.flashmessages.tx_extensionmanager_tools_extensionmanagerextensionmanager\";N;s:31:\"TYPO3\\CMS\\Recordlist\\RecordList\";a:1:{s:12:\"search_field\";N;}}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumtext COLLATE utf8_unicode_ci,
  `file_mountpoints` text COLLATE utf8_unicode_ci,
  `file_permissions` text COLLATE utf8_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1484950026,'typo3-admin','',0,'$P$CiErD/BaD2gsVXTMG55oZ4B9.fliSl1',1,'',0,0,0,'','',NULL,0,1484940495,0,'',NULL,'','a:20:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:9:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:8:\"web_info\";a:2:{s:8:\"function\";s:72:\"TYPO3\\CMS\\InfoPagetsconfig\\Controller\\InfoPageTyposcriptConfigController\";s:12:\"tsconf_parts\";s:1:\"0\";}s:8:\"web_list\";a:0:{}s:13:\"system_config\";a:2:{s:8:\"function\";s:1:\"0\";s:6:\"node_0\";a:1:{s:2:\"FE\";i:1;}}s:9:\"tx_beuser\";s:530:\"O:40:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\ModuleData\":2:{s:9:\"\0*\0demand\";O:36:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\Demand\":12:{s:11:\"\0*\0userName\";s:0:\"\";s:11:\"\0*\0userType\";i:0;s:9:\"\0*\0status\";i:0;s:9:\"\0*\0logins\";i:0;s:19:\"\0*\0backendUserGroup\";N;s:6:\"\0*\0uid\";N;s:16:\"\0*\0_localizedUid\";N;s:15:\"\0*\0_languageUid\";N;s:16:\"\0*\0_versionedUid\";N;s:6:\"\0*\0pid\";N;s:61:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_isClone\";b:0;s:69:\"\0TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\0_cleanProperties\";a:0:{}}s:18:\"\0*\0compareUserList\";a:0:{}}\";s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"41e1503a912c8d1b703842bb19e74f1b\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:5:{s:32:\"41e1503a912c8d1b703842bb19e74f1b\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9b209de23811ef89bec385c059f31cd5\";a:4:{i:0;s:16:\"Default Template\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:82:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ad477ce4b504f4072f3db87aa90c5428\";a:4:{i:0;s:14:\"Default Layout\";i:1;a:6:{s:4:\"edit\";a:1:{s:14:\"backend_layout\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:84:\"&edit[backend_layout][2]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:14:\"backend_layout\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c35634cd8ae4894e643ebb892e589515\";a:4:{i:0;s:10:\"Typo3 Demo\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:75:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"30e6429bac1adf342bb5148d4b52864b\";a:4:{i:0;s:11:\"typo3-admin\";i:1;a:6:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:78:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:6:\"web_ts\";a:2:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"internal notes\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:7:\"tx_form\";a:1:{s:19:\"showWizardByDefault\";s:1:\"1\";}s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1484940618;s:15:\"moduleSessionID\";a:9:{s:10:\"web_layout\";s:32:\"3a70ca5cb67d952bdb41b838f504f666\";s:8:\"web_info\";s:32:\"873f77fbd5a6ac04bbabbbece87e7b77\";s:8:\"web_list\";s:32:\"873f77fbd5a6ac04bbabbbece87e7b77\";s:13:\"system_config\";s:32:\"3a70ca5cb67d952bdb41b838f504f666\";s:9:\"tx_beuser\";s:32:\"3a70ca5cb67d952bdb41b838f504f666\";s:10:\"FormEngine\";s:32:\"cc15c6525774f11b0cec4835f780f33e\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"cc15c6525774f11b0cec4835f780f33e\";s:16:\"opendocs::recent\";s:32:\"cc15c6525774f11b0cec4835f780f33e\";s:6:\"web_ts\";s:32:\"3a70ca5cb67d952bdb41b838f504f666\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:2:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":4:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p2\";}}s:17:\"typo3-module-menu\";O:8:\"stdClass\":1:{s:9:\"collapsed\";b:0;}}}s:10:\"modulemenu\";s:2:\"{}\";s:18:\"disablePMKTextarea\";i:1;s:10:\"inlineView\";s:394:\"a:2:{i:0;b:0;s:10:\"tt_content\";a:4:{s:25:\"NEW5882a43415165895368558\";a:1:{s:35:\"tx_typo3demo_news_domain_model_item\";a:1:{i:0;s:1:\"1\";}}i:1;a:1:{s:35:\"tx_typo3demo_news_domain_model_item\";a:1:{i:2;s:1:\"1\";}}s:25:\"NEW588769b522607074655625\";a:1:{s:20:\"tx_news_article_item\";a:1:{i:0;s:1:\"1\";}}s:25:\"NEW58876bf4433f4026823118\";a:1:{s:35:\"tx_typo3demo_news_domain_model_item\";a:1:{i:0;s:1:\"1\";}}}}\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1485272735}}\";}',NULL,NULL,1,'',0,0,'options {\r\n  pageTree.showPageIdWithTitle = 1\r\n}',1485267698,0,NULL,0,1,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'5dd65d773867ed97e068e58eeb11fa80',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:2:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";s:19:\"showPageIdWithTitle\";s:1:\"1\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:2:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:8:\"iconName\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:8:\"iconName\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:8:\"iconName\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:8:\"iconName\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:22:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 1\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:8:\"iconName\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:8:\"iconName\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:8:\"iconName\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}i:1100;s:7:\"DIVIDER\";i:1200;s:4:\"ITEM\";s:5:\"1200.\";a:4:{s:4:\"name\";s:10:\"clearCache\";s:5:\"label\";s:50:\"LLL:EXT:lang/locallang_core.xlf:labels.clear_cache\";s:8:\"iconName\";s:26:\"actions-system-cache-clear\";s:14:\"callbackAction\";s:16:\"clearCacheOfPage\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:8:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:8:\"iconName\";s:26:\"actions-pagetree-mountroot\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:8:\"iconName\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:8:\"iconName\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}}}}}}s:14:\"disableDelete.\";a:2:{s:17:\"sys_file_metadata\";s:1:\"1\";s:8:\"sys_file\";s:1:\"1\";}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"ef83368457b01188dcdedff3bb6c3522\";}'),(2,'df224d539ff70f54de49be147ebf4ba3',2145909600,'a:3:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:5:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:55:\"EXT:lang/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.0\";i:1;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.1\";i:2;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.2\";i:3;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.3\";i:4;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:2:{s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:1:{s:13:\"news_article.\";a:4:{s:4:\"icon\";s:34:\"../typo3conf/ext/news/ext_icon.png\";s:5:\"title\";s:12:\"News article\";s:11:\"description\";s:33:\"Renders one or more news articles\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:12:\"news_article\";s:9:\"list_type\";s:0:\"\";}}}s:4:\"show\";s:12:\"news_article\";}s:8:\"special.\";a:1:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";}s:6:\"forms.\";a:1:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}s:10:\"renderMode\";s:4:\"tabs\";}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:22:{s:5:\"proc.\";a:12:{s:12:\"overruleMode\";s:18:\"ts_css,txdam_media\";s:21:\"dontConvBRtoParagraph\";s:4:\"true\";s:16:\"allowTagsOutside\";s:74:\"address, article, aside, blockquote, footer, header, hr, nav, section, div\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:75:\"class, align, id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:1:{s:5:\"unset\";s:1:\"1\";}}s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:5:\"class\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}}s:10:\"removeTags\";s:50:\"font, meta, o:p, sdfield, strike, style, title, h1\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:8:\"track-me\";}s:3:\"FE.\";a:17:{s:5:\"proc.\";a:12:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:16:\"allowTagsOutside\";s:74:\"address, article, aside, blockquote, footer, header, hr, nav, section, div\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:75:\"class, align, id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:1:{s:5:\"unset\";s:1:\"1\";}}s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:5:\"class\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:0:\"\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:140:\"bold, italic, underline, orderedlist, unorderedlist, left, center, right, insertcharacter, link, undo, redo, chMode, removeformat, textstyle\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:8:\"track-me\";}}}s:5:\"link.\";a:6:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:8:\"track-me\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"track-me\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"track-me\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}s:8:\"options.\";a:1:{s:11:\"removeItems\";s:21:\"file,mail,spec,folder\";}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:12:\"toolbarOrder\";s:180:\"bold, italic, underline, bar, orderedlist, unorderedlist, bar, left, center, right, bar, textstyle, bar, insertcharacter, bar, link, bar, undo, redo, bar, chMode, bar, removeformat\";s:23:\"ignoreMainStyleOverride\";s:1:\"1\";s:6:\"useCSS\";s:1:\"1\";s:18:\"showTagFreeClasses\";s:1:\"1\";s:10:\"contentCSS\";s:46:\"fileadmin/Resources/Public/StyleSheets/rte.css\";}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:83:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:82:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:86:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:78:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:98:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:94:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:4:{s:10:\"be_groups.\";a:2:{s:14:\"tables_select.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}s:14:\"tables_modify.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}s:15:\"sys_collection.\";a:1:{s:11:\"table_name.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}s:13:\"index_config.\";a:1:{s:12:\"table2index.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}s:11:\"sys_action.\";a:1:{s:10:\"t3_tables.\";a:1:{s:11:\"removeItems\";s:59:\"tx_realurl_uniqalias,tx_realurl_urldata,tx_realurl_pathdata\";}}}}'),(3,'7014a0758217c85c32288fddbc90d570',2145909600,'a:14:{s:7:\"config.\";a:22:{s:11:\"tx_extbase.\";a:3:{s:12:\"persistence.\";a:4:{s:8:\"classes.\";a:15:{s:45:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:10:\"tt_content\";s:10:\"recordType\";s:0:\"\";}}s:41:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileMount.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:14:\"sys_filemounts\";s:8:\"columns.\";a:3:{s:6:\"title.\";a:1:{s:13:\"mapOnProperty\";s:5:\"title\";}s:5:\"path.\";a:1:{s:13:\"mapOnProperty\";s:4:\"path\";}s:5:\"base.\";a:1:{s:13:\"mapOnProperty\";s:14:\"isAbsolutePath\";}}}}s:45:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:18:\"sys_file_reference\";}}s:36:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\File.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:8:\"sys_file\";}}s:43:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:8:{s:9:\"username.\";a:1:{s:13:\"mapOnProperty\";s:8:\"userName\";}s:6:\"admin.\";a:1:{s:13:\"mapOnProperty\";s:15:\"isAdministrator\";}s:8:\"disable.\";a:1:{s:13:\"mapOnProperty\";s:10:\"isDisabled\";}s:9:\"realName.\";a:1:{s:13:\"mapOnProperty\";s:8:\"realName\";}s:10:\"starttime.\";a:1:{s:13:\"mapOnProperty\";s:16:\"startDateAndTime\";}s:8:\"endtime.\";a:1:{s:13:\"mapOnProperty\";s:14:\"endDateAndTime\";}s:14:\"disableIPlock.\";a:1:{s:13:\"mapOnProperty\";s:16:\"ipLockIsDisabled\";}s:10:\"lastlogin.\";a:1:{s:13:\"mapOnProperty\";s:20:\"lastLoginDateAndTime\";}}}}s:48:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:14:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}s:10:\"groupMods.\";a:1:{s:13:\"mapOnProperty\";s:7:\"modules\";}s:14:\"tables_select.\";a:1:{s:13:\"mapOnProperty\";s:15:\"tablesListening\";}s:14:\"tables_modify.\";a:1:{s:13:\"mapOnProperty\";s:12:\"tablesModify\";}s:17:\"pagetypes_select.\";a:1:{s:13:\"mapOnProperty\";s:9:\"pageTypes\";}s:19:\"non_exclude_fields.\";a:1:{s:13:\"mapOnProperty\";s:20:\"allowedExcludeFields\";}s:19:\"explicit_allowdeny.\";a:1:{s:13:\"mapOnProperty\";s:22:\"explicitlyAllowAndDeny\";}s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:16:\"workspace_perms.\";a:1:{s:13:\"mapOnProperty\";s:19:\"workspacePermission\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:14:\"databaseMounts\";}s:17:\"file_permissions.\";a:1:{s:13:\"mapOnProperty\";s:24:\"fileOperationPermissions\";}s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}s:14:\"hide_in_lists.\";a:1:{s:13:\"mapOnProperty\";s:10:\"hideInList\";}s:9:\"TSconfig.\";a:1:{s:13:\"mapOnProperty\";s:8:\"tsConfig\";}}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:49:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"fe_groups\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:40:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\Category.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:12:\"sys_category\";}}s:42:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:4:{s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:17:\"file_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:15:\"fileMountPoints\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:13:\"dbMountPoints\";}s:10:\"usergroup.\";a:1:{s:13:\"mapOnProperty\";s:17:\"backendUserGroups\";}}}}s:47:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:1:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}}}}s:39:\"TYPO3\\CMS\\SysNote\\Domain\\Model\\SysNote.\";a:1:{s:8:\"mapping.\";a:3:{s:9:\"tableName\";s:8:\"sys_note\";s:10:\"recordType\";s:0:\"\";s:8:\"columns.\";a:3:{s:7:\"crdate.\";a:1:{s:13:\"mapOnProperty\";s:12:\"creationDate\";}s:7:\"tstamp.\";a:1:{s:13:\"mapOnProperty\";s:16:\"modificationDate\";}s:7:\"cruser.\";a:1:{s:13:\"mapOnProperty\";s:6:\"author\";}}}}s:41:\"DmitryDulepov\\Realurl\\Domain\\Model\\Alias.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:20:\"tx_realurl_uniqalias\";}}s:49:\"DmitryDulepov\\Realurl\\Domain\\Model\\UrlCacheEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:18:\"tx_realurl_urldata\";s:8:\"columns.\";a:1:{s:12:\"rootpage_id.\";a:1:{s:13:\"mapOnProperty\";s:10:\"rootPageId\";}}}}s:50:\"DmitryDulepov\\Realurl\\Domain\\Model\\PathCacheEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:19:\"tx_realurl_pathdata\";s:8:\"columns.\";a:3:{s:6:\"mpvar.\";a:1:{s:13:\"mapOnProperty\";s:5:\"mpVar\";}s:9:\"pagepath.\";a:1:{s:13:\"mapOnProperty\";s:8:\"pagePath\";}s:12:\"rootpage_id.\";a:1:{s:13:\"mapOnProperty\";s:10:\"rootPageId\";}}}}}s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";s:13:\"useQueryCache\";s:1:\"1\";}s:4:\"mvc.\";a:2:{s:16:\"requestHandlers.\";a:4:{s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";}s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:9:\"features.\";a:2:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}}s:8:\"admPanel\";s:1:\"0\";s:9:\"admPanel.\";a:2:{s:7:\"enable.\";a:1:{s:7:\"preview\";s:1:\"0\";}s:4:\"hide\";s:1:\"0\";}s:7:\"baseURL\";s:32:\"http://typo3-demo.nb160a.emp.nb/\";s:10:\"compressJs\";s:1:\"1\";s:11:\"compressCss\";s:1:\"1\";s:20:\"disableImgBorderAttr\";s:1:\"1\";s:20:\"disablePrefixComment\";s:1:\"1\";s:9:\"extTarget\";s:6:\"_blank\";s:12:\"index_enable\";s:1:\"1\";s:15:\"index_externals\";s:1:\"0\";s:14:\"index_metatags\";s:1:\"0\";s:8:\"linkVars\";s:1:\"L\";s:8:\"no_cache\";s:1:\"0\";s:11:\"noPageTitle\";s:1:\"2\";s:16:\"removeDefaultCss\";s:1:\"1\";s:15:\"removeDefaultJS\";s:1:\"1\";s:14:\"uniqueLinkVars\";s:1:\"1\";s:17:\"tx_realurl_enable\";s:1:\"1\";s:8:\"language\";s:2:\"de\";s:15:\"htmlTag_langKey\";s:2:\"de\";s:10:\"locale_all\";s:5:\"de_DE\";}s:4:\"lib.\";a:4:{s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";s:6:\"target\";s:0:\"\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";s:6:\"target\";s:0:\"\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:3:\"img\";s:4:\"TEXT\";s:4:\"img.\";a:2:{s:7:\"current\";s:1:\"1\";s:11:\"preUserFunc\";s:80:\"TYPO3\\CMS\\Rtehtmlarea\\Controller\\ImageRenderingController->renderImageAttributes\";}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:3:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";s:5:\"tags.\";a:1:{s:4:\"img.\";a:1:{s:10:\"fixAttrib.\";a:3:{s:10:\"allparams.\";a:1:{s:5:\"unset\";s:1:\"1\";}s:23:\"data-htmlarea-file-uid.\";a:1:{s:5:\"unset\";s:1:\"1\";}s:25:\"data-htmlarea-file-table.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:14:\"externalBlocks\";s:89:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul, pre\";s:15:\"externalBlocks.\";a:13:{s:11:\"blockquote.\";a:3:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";s:14:\"callRecursive.\";a:1:{s:11:\"tagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:1:{s:5:\"tags.\";a:1:{s:11:\"blockquote.\";a:1:{s:15:\"overrideAttribs\";s:37:\"style=\"margin-bottom:0;margin-top:0;\"\";}}}}}}s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:3:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";s:4:\"list\";s:12:\"contenttable\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:1:{s:13:\"nonWrappedTag\";s:0:\"\";}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:12:\"fluidContent\";s:13:\"FLUIDTEMPLATE\";s:13:\"fluidContent.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:2:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:1:{s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}}}}}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:8:\"colPos=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:27:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:7:\"bullets\";s:18:\"< lib.fluidContent\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:18:\"< lib.fluidContent\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:18:\"< lib.fluidContent\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:18:\"< lib.fluidContent\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:4:\"list\";s:18:\"< lib.fluidContent\";s:5:\"list.\";a:3:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:84:\"tt_content: header [header_layout], list_type, layout, select_key, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}s:3:\"20.\";a:2:{s:9:\"form_form\";s:4:\"USER\";s:10:\"form_form.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"Form\";s:10:\"pluginName\";s:4:\"Form\";s:10:\"vendorName\";s:9:\"TYPO3\\CMS\";}}}s:4:\"menu\";s:18:\"< lib.fluidContent\";s:5:\"menu.\";a:3:{s:12:\"templateName\";s:4:\"Menu\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:9:\"fieldName\";s:5:\"pages\";s:9:\"delimiter\";s:1:\",\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:14:\"filterIntegers\";s:1:\"1\";s:12:\"filterUnique\";s:1:\"1\";s:2:\"as\";s:8:\"pageUids\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"20.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}}s:9:\"fieldName\";s:19:\"selected_categories\";s:9:\"delimiter\";s:1:\",\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:14:\"filterIntegers\";s:1:\"1\";s:12:\"filterUnique\";s:1:\"1\";s:2:\"as\";s:12:\"categoryUids\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:52:\"tt_content: header [header_layout], menu_type, pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:8:\"shortcut\";s:18:\"< lib.fluidContent\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:18:\"< lib.fluidContent\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:9:\"textmedia\";s:18:\"< lib.fluidContent\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"uploads\";s:18:\"< lib.fluidContent\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:7:\"default\";s:18:\"< lib.fluidContent\";s:5:\"login\";s:3:\"COA\";s:6:\"login.\";a:2:{i:10;s:15:\"< lib.stdheader\";i:20;s:23:\"< plugin.tx_felogin_pi1\";}s:12:\"news_article\";s:3:\"COA\";s:13:\"news_article.\";a:3:{i:10;s:15:\"< lib.stdheader\";i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"News\";s:10:\"pluginName\";s:7:\"Article\";s:10:\"vendorName\";s:18:\"BStrauss\\Typo3Demo\";}}}s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:17:\"additionalHeaders\";s:24:\"Content-Type: text/plain\";s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:7:\"module.\";a:4:{s:20:\"tx_extensionmanager.\";a:2:{s:9:\"settings.\";a:1:{s:13:\"repositoryUid\";s:1:\"1\";}s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}s:9:\"tx_belog.\";a:2:{s:12:\"persistence.\";a:1:{s:8:\"classes.\";a:3:{s:38:\"TYPO3\\CMS\\Belog\\Domain\\Model\\LogEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:7:\"sys_log\";s:8:\"columns.\";a:8:{s:7:\"userid.\";a:1:{s:13:\"mapOnProperty\";s:14:\"backendUserUid\";}s:7:\"recuid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordUid\";}s:10:\"tablename.\";a:1:{s:13:\"mapOnProperty\";s:9:\"tableName\";}s:7:\"recpid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordPid\";}s:11:\"details_nr.\";a:1:{s:13:\"mapOnProperty\";s:13:\"detailsNumber\";}s:3:\"IP.\";a:1:{s:13:\"mapOnProperty\";s:2:\"ip\";}s:10:\"workspace.\";a:1:{s:13:\"mapOnProperty\";s:12:\"workspaceUid\";}s:6:\"NEWid.\";a:1:{s:13:\"mapOnProperty\";s:5:\"newId\";}}}}s:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Workspace.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:13:\"sys_workspace\";}}s:42:\"TYPO3\\CMS\\Belog\\Domain\\Model\\HistoryEntry.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:11:\"sys_history\";}}}}s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:11:\"tx_sysnote.\";a:1:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:39:\"EXT:sys_note/Resources/Private/Layouts/\";s:16:\"templateRootPath\";s:41:\"EXT:sys_note/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:40:\"EXT:sys_note/Resources/Private/Partials/\";}}}s:7:\"plugin.\";a:2:{s:14:\"tx_felogin_pi1\";s:8:\"USER_INT\";s:15:\"tx_felogin_pi1.\";a:46:{s:8:\"userFunc\";s:58:\"TYPO3\\CMS\\Felogin\\Controller\\FrontendLoginController->main\";s:10:\"storagePid\";s:0:\"\";s:9:\"recursive\";s:0:\"\";s:12:\"templateFile\";s:58:\"EXT:felogin/Resources/Private/Templates/FrontendLogin.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:22:\"wrapContentInBaseClass\";s:1:\"1\";s:11:\"linkConfig.\";a:2:{s:6:\"target\";s:0:\"\";s:10:\"ATagParams\";s:14:\"rel=\"nofollow\"\";}s:15:\"preserveGETvars\";s:3:\"all\";s:22:\"showForgotPasswordLink\";s:0:\"\";s:14:\"showPermaLogin\";s:0:\"\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:22:\"welcomeHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"welcomeMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"successHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"successMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"logoutHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"logoutMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:20:\"errorHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"errorMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"forgotHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"forgotMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:27:\"forgotErrorMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:43:\"forgotResetMessageEmailSentMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotValidMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordTooShortMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotEqualMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:29:\"changePasswordHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:30:\"changePasswordMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:34:\"changePasswordDoneMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"cookieWarning_stdWrap.\";a:2:{s:4:\"wrap\";s:45:\"<p style=\"color:red; font-weight:bold;\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:11:\"userfields.\";a:1:{s:9:\"username.\";a:2:{s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:18:\"<strong>|</strong>\";}}s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:0:\"\";s:17:\"redirectPageLogin\";s:0:\"\";s:22:\"redirectPageLoginError\";s:0:\"\";s:18:\"redirectPageLogout\";s:0:\"\";s:15:\"redirectDisable\";s:0:\"\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:7:\"replyTo\";s:0:\"\";s:7:\"domains\";s:0:\"\";s:24:\"showLogoutFormAfterLogin\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:18:\"_CSS_DEFAULT_STYLE\";s:51:\"		.tx-felogin-pi1 label {\r\n			display: block;\r\n		}\r\";}}s:4:\"mod.\";a:1:{s:7:\"SHARED.\";a:2:{s:19:\"defaultLanguageFlag\";s:2:\"de\";s:20:\"defaultLanguageLabel\";s:6:\"German\";}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:8:{s:14:\"bodyTagCObject\";s:4:\"TEXT\";s:15:\"bodyTagCObject.\";a:4:{s:5:\"field\";s:3:\"uid\";s:4:\"wrap\";s:18:\"<body id=\"page-|\">\";s:6:\"append\";s:4:\"TEXT\";s:7:\"append.\";a:1:{s:5:\"value\";s:0:\"\";}}s:11:\"headerData.\";a:18:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:5:\"field\";s:5:\"title\";s:4:\"wrap\";s:16:\"<title>|</title>\";}i:20;s:3:\"COA\";s:3:\"20.\";a:2:{i:1;s:4:\"TEXT\";s:2:\"1.\";a:3:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:8:\"keywords\";}}s:5:\"field\";s:8:\"keywords\";s:4:\"wrap\";s:34:\"<meta name=\"keywords\" content=\"|\">\";}}i:30;s:3:\"COA\";s:3:\"30.\";a:2:{i:1;s:4:\"TEXT\";s:2:\"1.\";a:3:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:11:\"description\";}}s:5:\"field\";s:11:\"description\";s:4:\"wrap\";s:37:\"<meta name=\"description\" content=\"|\">\";}}i:40;s:3:\"COA\";s:3:\"40.\";a:2:{i:1;s:4:\"TEXT\";s:2:\"1.\";a:3:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:6:\"author\";}}s:5:\"field\";s:6:\"author\";s:4:\"wrap\";s:32:\"<meta name=\"author\" content=\"|\">\";}}i:50;s:4:\"TEXT\";s:3:\"50.\";a:1:{s:5:\"value\";s:314:\"      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1\">\r\n      <meta name=\"msapplication-tap-highlight\" content=\"no\">\r\n      <style>\r\n        @-ms-viewport {\r\n          width: device-width;\r\n        }\r\n      </style>\r\";}i:60;s:4:\"TEXT\";s:3:\"60.\";a:1:{s:5:\"value\";s:244:\"      <link rel=\"manifest\" href=\"fileadmin/Resources/Public/AppConfig/manifest.json\">\r\n      <meta name=\"msapplication-config\" content=\"fileadmin/Resources/Public/AppConfig/browserconfig.xml\">\r\n      <meta name=\"theme-color\" content=\"#ff8700\">\r\";}i:70;s:4:\"TEXT\";s:3:\"70.\";a:1:{s:5:\"value\";s:580:\"      <link rel=\"shortcut icon\" href=\"fileadmin/Resources/Public/Images/Favicon/favicon.ico\">\r\n      <link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"fileadmin/Resources/Public/Images/Favicon/apple-touch-icon.png\">\r\n      <link rel=\"icon\" type=\"image/png\" href=\"fileadmin/Resources/Public/Images/Favicon/favicon-32x32.png\" sizes=\"32x32\">\r\n      <link rel=\"icon\" type=\"image/png\" href=\"fileadmin/Resources/Public/Images/Favicon/favicon-16x16.png\" sizes=\"16x16\">\r\n      <link rel=\"mask-icon\" href=\"fileadmin/Resources/Public/Images/Favicon/safari-pinned-tab.svg\" color=\"#ff8700\">\r\";}i:80;s:4:\"TEXT\";s:3:\"80.\";a:1:{s:5:\"value\";s:313:\"      <script>\r\n        var __isPolyfillLoaded = false;\r\n        function __onPolyfillLoaded () {\r\n          __isPolyfillLoaded = true;\r\n        };\r\n      </script>\r\n      <script src=\"https://cdn.polyfill.io/v2/polyfill.min.js?callback=__onPolyfillLoaded&features=default-3.6,HTMLPictureElement\" defer></script>\r\";}i:90;s:4:\"TEXT\";s:3:\"90.\";a:1:{s:5:\"value\";s:473:\"      <script>\r\n        var $buoop = {vs: {i: 10, f: -4, o: -4, s: 8, c: -4}, c: 4};\r\n        function $buo_f() {\r\n          var el = document.createElement(\'script\');\r\n          el.src = \'https://browser-update.org/update.min.js\';\r\n          document.body.appendChild(el);\r\n        }\r\n        try {\r\n          document.addEventListener(\'DOMContentLoaded\', $buo_f, false);\r\n        } catch (e) {\r\n          window.attachEvent(\'onload\', $buo_f);\r\n        }\r\n      </script>\r\";}}s:11:\"includeCSS.\";a:4:{s:6:\"swiper\";s:82:\"fileadmin/Resources/Public/JavaScripts/node_modules/swiper/dist/css/swiper.min.css\";s:7:\"swiper.\";a:1:{s:5:\"media\";s:6:\"screen\";}s:3:\"app\";s:46:\"fileadmin/Resources/Public/StyleSheets/app.css\";s:4:\"app.\";a:1:{s:5:\"media\";s:6:\"screen\";}}s:16:\"includeJSFooter.\";a:1:{s:8:\"systemjs\";s:75:\"fileadmin/Resources/Public/JavaScripts/node_modules/systemjs/dist/system.js\";}i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:5:{s:16:\"templateRootPath\";s:37:\"fileadmin/Resources/Private/Templates\";s:14:\"layoutRootPath\";s:35:\"fileadmin/Resources/Private/Layouts\";s:15:\"partialRootPath\";s:36:\"fileadmin/Resources/Private/Partials\";s:4:\"file\";s:50:\"fileadmin/Resources/Private/Templates/Default.html\";s:10:\"variables.\";a:2:{s:11:\"contentMain\";s:7:\"CONTENT\";s:12:\"contentMain.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 0\";}}}}s:11:\"footerData.\";a:2:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:1:{s:5:\"value\";s:288:\"        <script src=\"fileadmin/Resources/Public/JavaScripts/node_modules/google-closure-library/closure/goog/base.js\"></script>\r\n        <script src=\"fileadmin/Resources/Public/JavaScripts/app-deps.js\"></script>\r\n        <script>\r\n          goog.require(\'t3demo.App\');\r\n        </script>\r\";}}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:2:{i:7076;s:23:\"fluidAjaxWidgetResponse\";i:0;s:4:\"page\";}}'),(4,'3419b99e32b24e74ddfc3bd807960be8',2145909600,'a:2:{s:32:\"bda496bca03246a2cfe01bea2c18e731\";s:20:\"[globalVar = GP:L=1]\";s:32:\"c4cd68c83cecbd195cfa9dcf499e0992\";s:74:\"[applicationContext = Development] && [globalVar = GP:prod = 0, GP:prod =]\";}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'5dd65d773867ed97e068e58eeb11fa80','ident_userTS_TSconfig'),(2,'df224d539ff70f54de49be147ebf4ba3','ident_PAGES_TSconfig'),(3,'7014a0758217c85c32288fddbc90d570','ident_TS_TEMPLATE'),(4,'3419b99e32b24e74ddfc3bd807960be8','ident_TMPL_CONDITIONS_ALL');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
INSERT INTO `cf_cache_pages` VALUES (2,'7e4fb2e3499a12217322a6d0baa6e523',1485359730,'x��:ko�8���\0�8��i�_��y�N2�٤�6��{�\0-Q6\'��!)\'�A���CR��:���pۢ�M�<x��Ht4��F�֨�C�jq&k�j�{�Z�u�����pH۞����G{akJi�u=��G���؄��}>��J R\r�p���{���w\'�7�wuJ�:�����\0?IL��a-d5��h��-a��`N�b����>0\'����7�u3�ܳ�����{&YH�K>��Nx�2.y:#ŸD>�ݷ\0o %�d����D�\\��-�䒦p���I��{!�\0+ל���QmI����Ir}G���_MC�\n��4���j�xuѨ�D��|6פ=�^��#\"z��AN��E\n�JV��zθ$�H��nr�2���y\Z	�P\r��#T����.hЂ�Ԩ���L�\r!g�o��׭��T12�,:���T=d�h��v�E,��k�f \n�� ��ڌTY#�k����� ���֔^�L��5�\0�f�(Us\\X�\Zh6��P�@$�D�T�$�HxZ����~�\"�2:\rh:�:������l����\ZIX�)�E��v���YVx���o��)����^�7�{C����)�h�cvt��Ԋ��4�\n1��QGu�k�����:�����4f\r���pf�\nlU���>RW���P�C�\0S��{���U@cv��# t��I��y�@$���f�9p�F\\���\n�QA�����U/�$��61��H�����c���p��+u\'4�S�Pn�c�Cp��Gf��j^�S�@�8� >D|�,�\Z�(��r���U�����I�xH�ͤ $H�k>��Q4�Z�\rwVs�c�k���?O ��] @3��\r����\n=^�յȃy�RP�L�ڃ��{=ŧY:�Hڒ�n�GO~�\r���{�Xq��G�n�ڽ5�fe#鄪����RшJ^�x���s�Pc�`Ll��t�5T�Ʉ�+/�j|!h��D4V��Q�&�L&\"}r���N���y��~ŷ׹r\\%��0�!X���ࢹ��Ox�!��S\Z�~���$�B<�Ĉ汮����O7�W<����T5�D�G+�^ܟ������\Z�����[{$\Z�zg���=��G��y�$UD5��\n���\"ȑ���\\�o�X����_�bqDPo\n�@Tϳ�M��ZѽY�/�ME�l��4�y�e���3�.�9/q�0<]���4Voߜ|�te��͛=w�=ktk$�`N޲��4�\r�5\r���7\"�a�n#�c;h���\0�Ixxh*�:��o\\9���?���Y<H(OͦI�Y5\"���N~0��nX0(�.�3 �q�@i��p�j�>�iu�\n�H5�I�َ#a��Ws�2��\n��c��!YBx���a�&�x�&�8\0Q4�3��,�Z���Bq��T�y�$P�&\"$X7�.x�C}\ri(�S B����RBc�k�XOV�-D�g:�\rr�ɂIA�PM� Wx^�_r5����3\n�r�\'\rr\rL��8��;�B2˧L�$K��[�D��w�a_Qp���&�ˢ����T��A����H�l\r~eGߧS��43(ȳ���~�}�v���>Ԛ�U!\\��\\m~�9��hz4.;\'���ƸX�^Q6�5K���a�\n���+�滻W�Vg�+n������ro������>�[�K{^�[Ѵ��Bg��h�\Z�B\0v�D�_��.�%T�d���_(~��j�\"d0�:��L�TcA,$�z̧��e��6�M�!��5�+}���B��-8��!iH�$s1���Z�[���m`�!N/�ި�ʙ��騵o�%d6�\0[ۧ#�(=3��JV�������TbdRE�и*���a\0�c9Sf����NwT{w�%͕��A�9��ܾg���D���^���[�-�C��� ޘ5׆����=xd��F���d��!3g`�������L?������:g��K����Ψ&?A�H\\�*�Y��FUΦ^�o�����J\n�^\"h���h��[@:�TQ��y䚫�&5����FRݝ$�+��6I��QZ���&��au��v��:�z���T�A9\r��\'(_gpf�&9�m2���}쁷�h`OZ܏�|L�٦ٮ�,�/�3-t!W��68UU\'�lh`��W4~���I��N�4�\n�\'P���\rwH\0)�cs�)<.���_�\"�ہ�]���u9�m ��X̶��sg/��:G������ȳ����7Yc��T>��c�x{�G��	�\0�jp�l\".bxU�b�Fv�i{�6Tp�x\0=����x��Ks�\"q�ّ����,�.+PC������x�P�B�y�,<�pg���p��Ĝ\nY��~�����Vw��$8��9Uv�sQ�Xd���$\r��\'[Q\r+W\0�>#��@��tbh&8d�\\���K�v�2Mn�J�[�б 2�D\0`Ś�	P5n�����z���9���$�z��=���A���MU�a�Ʈ�sѦ�=�JSI}Yڋ�O{%��O��\Z�W]�ˢf�R����im����L��w�\\dy��	�+|�*�w����=��������Wċ�1���@|a���34-[��I���ԮJ��BK����w����^/�{����[|�s��J>���ͭ>ݗf���UͰ�?�lF�}��&[��3U���*�@�k^��{��`,�֓�k�<��)�ۏP\\�2^�q̩z]���\Z|i�M��J�Ý�~���	��~!Dm���elG�\\P�B�w6vȝx�\nN���,����_j�v)lɟ�U1H��f]<�?TE\0\na������*��_���3���8�_����1��T�\0:����[�Y�y\Z�w�USp���L.\r��G3�H�J��`8\ZcJ�D�0��F�����\\�gӲ*��nf\'_\n�	����V@�q�o���5)��9o�B�ۿ�Z#���\\���Rܣ�A28���m�0t�G�fD=��~�p�\Z/�/,��j����B����N���c93��T��<��R`\Z�Sc̶�:O߱\n	;x�arESW1W�+���3V����d�\n�\Z�X[�۩ݧ��kl[�br^ZL�VU��n�3V�_Ӑd�(��Z�g�\\I�H�b��ΘU�P	\nv�k2���H��}b���[��{�8\n���cF�f��t��*�W �n9��BZ�R�&vcG�f�+���.�3�\'bB.���^�.1k��b��vQ�U2��2�k����{Ts�E�\'�\r��2��l���2���*c���<9-��S�������33�䣶���?�6U�{7_�XaΜ���Y��V!:��I�3��W�ڀ�LN�ꄙ˛�{UYm�PJiV,����<% �����U%eu�����@n�$��VYꡈ�\"���񻐥�°2�,��嬱X�:�\nv44�4���4��I�#wV�|Ա8���h�xp�~|���t���z����f�^�<���_��6>e�|�k����Lh�\r�qG��)Kj�S3V�����_CE�WiZ�IE�h-��D��o$b��8w+%�u��fbE?IAF��-�\0��\nJ�QpeW2�0�7��G�n=)��a���za�r%��g(����0b��ƙW$��<|��5���.�z����%ڟ�D��������w�`���^7��Fǆ\rg8&�6�yVT!�!����t���;K�Mp���}�/�_�.��-�Cc���1!S�<��������');
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pages_tags` VALUES (2,'7e4fb2e3499a12217322a6d0baa6e523','pageId_2'),(3,'7e4fb2e3499a12217322a6d0baa6e523','pageId_2');
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection` VALUES (1,'2_222419149',1487865330,'x��W�n�6�C�ԍ4}q�E�`�nѢX�D;D(Q �$�\"��!u	����������37\Z�~�Y���(��Q�饗Zy��$���^!�Xc��1|�1���u.R�I��7������b��mzs�~R{�Fe�_�\"/�$,�()�u�$�IO��`5\r%���VK�,��%~Ĕ5��ٻw�]O\rg%|9߽.��H����R��J$u��w��6��ΕL��n��*I-�?b����3��!u��H�A��H��^q�m�7����\"J�P߰iuk���J�NV�$�E�Eі�r��{R��`�p)I5���KS�q��m�.X���-ۼA,%{��F�:�e��5�(�X�������˫l���O�����*�	��_X�o��5����;�m���G��V<-N\Z	2�}&����Υ�\\e�.h[b�?\"2A$V17Y����j�3����׌P�!uV�rdʃ(�x\0R�����2�S;O-��qD�6�S�\\F���cDa\'k��x��ݼ_<9��5#B��	9�\r *����qb0��0�-	wR�)Jb�RT`\"���$ܷ%1�8<}��-}{���}ѱ��i�V��Gc��>��\n�%^����\nW\r�s�S�A�^�{�X�:�DfM���R\\j,��^�P�\\�*�mِ֒�@O�]��J�����b�;��0y&��N��1\nSI��O��_cf���y~�z�*TC�sˠ�K{��p�o�{c�����<��V�:�z��k���`Ð�:�؊�I�nA�\r�^)�Q�s�pdHz�y}l@	C\r_����A������B�R�\nޗ�*��6��O\'Qm�~�\Z?��I\"l8M��BM�!Ӄ؍Bgw��P\\�;�\r�((7�s�@�,\r8��j8�7���φ��_c��p�I�J`�6��LX�Q|l��j2KΦ$?k�C[S�:�����S��?U�/:��h�	�B������:�B=<��ZI��Jg�j�	^=[���%��E�G�ü�`���sRo�z�B���:�ƺ��A��>a�=��Sԍ�cp�5��H�΀������Grh�_���@H��F2m��S 銪�j?�����@�vKIx|��d�c?�?�cxϿ�G]\'�');
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_pagesection_tags` VALUES (1,'2_222419149','pageId_2'),(2,'2_222419149','mpvarHash_222419149');
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline` VALUES (1,'1__0_0_0',1487865330,'a:1:{i:0;a:30:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Typo3 Demo\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:4;s:8:\"TSconfig\";s:83:\"<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/Page.ts\">\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:1:\"2\";s:8:\"nav_hide\";i:0;s:3:\"url\";s:0:\"\";s:7:\"urltype\";i:1;s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}'),(2,'2__0_0_0',1487865330,'a:2:{i:1;a:30:{s:3:\"pid\";i:1;s:3:\"uid\";i:2;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Startseite\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:0;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:8:\"nav_hide\";i:0;s:3:\"url\";s:0:\"\";s:7:\"urltype\";i:1;s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}i:0;a:30:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:10:\"Typo3 Demo\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:4;s:8:\"TSconfig\";s:83:\"<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/Page.ts\">\";s:17:\"tsconfig_includes\";s:0:\"\";s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:1:\"2\";s:8:\"nav_hide\";i:0;s:3:\"url\";s:0:\"\";s:7:\"urltype\";i:1;s:22:\"tx_realurl_pathsegment\";s:0:\"\";s:18:\"tx_realurl_exclude\";i:0;s:23:\"tx_realurl_pathoverride\";i:0;s:10:\"categories\";s:0:\"\";}}');
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline_tags` VALUES (1,'1__0_0_0','pageId_1'),(2,'2__0_0_0','pageId_2'),(3,'2__0_0_0','pageId_1');
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
INSERT INTO `cf_extbase_datamapfactory_datamap` VALUES (1,'BStrauss%Typo3Demo%News%Domain%Model%Content',1485276930,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";s:12:\"\0*\0tableName\";s:10:\"tt_content\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:58:{s:5:\"ctype\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"ctype\";s:13:\"\0*\0columnName\";s:5:\"CType\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"editlock\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"editlock\";s:13:\"\0*\0columnName\";s:8:\"editlock\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"starttime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"starttime\";s:13:\"\0*\0columnName\";s:9:\"starttime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"endtime\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"endtime\";s:13:\"\0*\0columnName\";s:7:\"endtime\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"feGroup\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"feGroup\";s:13:\"\0*\0columnName\";s:8:\"fe_group\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l18nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l18nParent\";s:13:\"\0*\0columnName\";s:11:\"l18n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"layout\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"layout\";s:13:\"\0*\0columnName\";s:6:\"layout\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"colpos\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"colpos\";s:13:\"\0*\0columnName\";s:6:\"colPos\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"date\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"date\";s:13:\"\0*\0columnName\";s:4:\"date\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"header\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"header\";s:13:\"\0*\0columnName\";s:6:\"header\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"rowdescription\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"rowdescription\";s:13:\"\0*\0columnName\";s:14:\"rowDescription\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"headerLink\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"headerLink\";s:13:\"\0*\0columnName\";s:11:\"header_link\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"headerLayout\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"headerLayout\";s:13:\"\0*\0columnName\";s:13:\"header_layout\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"subheader\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"subheader\";s:13:\"\0*\0columnName\";s:9:\"subheader\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"bodytext\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"bodytext\";s:13:\"\0*\0columnName\";s:8:\"bodytext\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"image\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"image\";s:13:\"\0*\0columnName\";s:5:\"image\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"INLINE\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"imagewidth\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"imagewidth\";s:13:\"\0*\0columnName\";s:10:\"imagewidth\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"imageheight\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"imageheight\";s:13:\"\0*\0columnName\";s:11:\"imageheight\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"imageorient\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"imageorient\";s:13:\"\0*\0columnName\";s:11:\"imageorient\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"imageborder\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"imageborder\";s:13:\"\0*\0columnName\";s:11:\"imageborder\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"imageZoom\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"imageZoom\";s:13:\"\0*\0columnName\";s:10:\"image_zoom\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"imagecols\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"imagecols\";s:13:\"\0*\0columnName\";s:9:\"imagecols\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"cols\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"cols\";s:13:\"\0*\0columnName\";s:4:\"cols\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"pages\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"pages\";s:13:\"\0*\0columnName\";s:5:\"pages\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:9:\"recursive\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"recursive\";s:13:\"\0*\0columnName\";s:9:\"recursive\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"menuType\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"menuType\";s:13:\"\0*\0columnName\";s:9:\"menu_type\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"listType\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"listType\";s:13:\"\0*\0columnName\";s:9:\"list_type\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"selectKey\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"selectKey\";s:13:\"\0*\0columnName\";s:10:\"select_key\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"fileCollections\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"fileCollections\";s:13:\"\0*\0columnName\";s:16:\"file_collections\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:5:\"media\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"media\";s:13:\"\0*\0columnName\";s:5:\"media\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"INLINE\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"filelinkSize\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"filelinkSize\";s:13:\"\0*\0columnName\";s:13:\"filelink_size\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"filelinkSorting\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"filelinkSorting\";s:13:\"\0*\0columnName\";s:16:\"filelink_sorting\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"target\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"target\";s:13:\"\0*\0columnName\";s:6:\"target\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:7:\"records\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:7:\"records\";s:13:\"\0*\0columnName\";s:7:\"records\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:12:\"sectionindex\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"sectionindex\";s:13:\"\0*\0columnName\";s:12:\"sectionIndex\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"linktotop\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"linktotop\";s:13:\"\0*\0columnName\";s:9:\"linkToTop\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"piFlexform\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"piFlexform\";s:13:\"\0*\0columnName\";s:11:\"pi_flexform\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"FLEX\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:18:\"accessibilityTitle\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:18:\"accessibilityTitle\";s:13:\"\0*\0columnName\";s:19:\"accessibility_title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:19:\"accessibilityBypass\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:19:\"accessibilityBypass\";s:13:\"\0*\0columnName\";s:20:\"accessibility_bypass\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:23:\"accessibilityBypassText\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:23:\"accessibilityBypassText\";s:13:\"\0*\0columnName\";s:25:\"accessibility_bypass_text\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l18nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l18nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l18n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:18:\"selectedCategories\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:18:\"selectedCategories\";s:13:\"\0*\0columnName\";s:19:\"selected_categories\";s:17:\"\0*\0typeOfRelation\";s:17:\"RELATION_HAS_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:13:\"categoryField\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:13:\"categoryField\";s:13:\"\0*\0columnName\";s:14:\"category_field\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:12:\"tableCaption\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:12:\"tableCaption\";s:13:\"\0*\0columnName\";s:13:\"table_caption\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"tableDelimiter\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"tableDelimiter\";s:13:\"\0*\0columnName\";s:15:\"table_delimiter\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"tableEnclosure\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"tableEnclosure\";s:13:\"\0*\0columnName\";s:15:\"table_enclosure\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:19:\"tableHeaderPosition\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:19:\"tableHeaderPosition\";s:13:\"\0*\0columnName\";s:21:\"table_header_position\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"tableTfoot\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"tableTfoot\";s:13:\"\0*\0columnName\";s:11:\"table_tfoot\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"categories\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"categories\";s:13:\"\0*\0columnName\";s:10:\"categories\";s:17:\"\0*\0typeOfRelation\";s:32:\"RELATION_HAS_AND_BELONGS_TO_MANY\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:12:\"sys_category\";s:27:\"\0*\0childTableWhereStatement\";s:79:\" AND sys_category.sys_language_uid IN (-1, 0) ORDER BY sys_category.sorting ASC\";s:23:\"\0*\0childSortByFieldName\";s:15:\"sorting_foreign\";s:20:\"\0*\0relationTableName\";s:22:\"sys_category_record_mm\";s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";a:2:{s:10:\"tablenames\";s:10:\"tt_content\";s:9:\"fieldname\";s:10:\"categories\";}s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";s:11:\"uid_foreign\";s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";s:9:\"uid_local\";s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"bulletsType\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"bulletsType\";s:13:\"\0*\0columnName\";s:12:\"bullets_type\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:18:\"uploadsDescription\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:18:\"uploadsDescription\";s:13:\"\0*\0columnName\";s:19:\"uploads_description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"uploadsType\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"uploadsType\";s:13:\"\0*\0columnName\";s:12:\"uploads_type\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"assets\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"assets\";s:13:\"\0*\0columnName\";s:6:\"assets\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"INLINE\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:20:\"txFormPredefinedform\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:20:\"txFormPredefinedform\";s:13:\"\0*\0columnName\";s:22:\"tx_form_predefinedform\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:15:\"txImpexpOriguid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:15:\"txImpexpOriguid\";s:13:\"\0*\0columnName\";s:17:\"tx_impexp_origuid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l18n_parent\";s:34:\"\0*\0translationOriginDiffSourceName\";s:15:\"l18n_diffsource\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";s:9:\"starttime\";s:20:\"\0*\0endTimeColumnName\";s:7:\"endtime\";s:30:\"\0*\0frontendUserGroupColumnName\";s:8:\"fe_group\";s:23:\"\0*\0recordTypeColumnName\";s:5:\"CType\";s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:0;}'),(2,'BStrauss%Typo3Demo%News%Domain%Model%Item',1485276930,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";s:12:\"\0*\0tableName\";s:35:\"tx_typo3demo_news_domain_model_item\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:7:{s:9:\"ttContent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"ttContent\";s:13:\"\0*\0columnName\";s:10:\"tt_content\";s:17:\"\0*\0typeOfRelation\";s:16:\"RELATION_HAS_ONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"title\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"title\";s:13:\"\0*\0columnName\";s:5:\"title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"text\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"text\";s:13:\"\0*\0columnName\";s:4:\"text\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"inverted\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"inverted\";s:13:\"\0*\0columnName\";s:8:\"inverted\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"size\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"size\";s:13:\"\0*\0columnName\";s:4:\"size\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"RADIO\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"color\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"color\";s:13:\"\0*\0columnName\";s:5:\"color\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"image\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"image\";s:13:\"\0*\0columnName\";s:5:\"image\";s:17:\"\0*\0typeOfRelation\";s:16:\"RELATION_HAS_ONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";s:18:\"sys_file_reference\";s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";s:15:\"sorting_foreign\";s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";a:1:{s:9:\"fieldname\";s:41:\"tx_typo3demo_news_domain_model_item.image\";}s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";s:11:\"uid_foreign\";s:23:\"\0*\0parentTableFieldName\";s:10:\"tablenames\";s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"INLINE\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";N;s:30:\"\0*\0translationOriginColumnName\";N;s:34:\"\0*\0translationOriginDiffSourceName\";N;s:29:\"\0*\0modificationDateColumnName\";s:11:\"modified_at\";s:25:\"\0*\0creationDateColumnName\";s:10:\"created_at\";s:20:\"\0*\0creatorColumnName\";s:10:\"created_by\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";N;s:22:\"\0*\0startTimeColumnName\";N;s:20:\"\0*\0endTimeColumnName\";N;s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";N;s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";b:0;}'),(3,'TYPO3%CMS%Extbase%Domain%Model%FileReference',1485276930,'O:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\":20:{s:12:\"\0*\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";s:12:\"\0*\0tableName\";s:18:\"sys_file_reference\";s:13:\"\0*\0recordType\";N;s:13:\"\0*\0subclasses\";a:0:{}s:13:\"\0*\0columnMaps\";a:17:{s:10:\"t3verLabel\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"t3verLabel\";s:13:\"\0*\0columnName\";s:11:\"t3ver_label\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"sysLanguageUid\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sysLanguageUid\";s:13:\"\0*\0columnName\";s:16:\"sys_language_uid\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"l10nParent\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"l10nParent\";s:13:\"\0*\0columnName\";s:11:\"l10n_parent\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:6:\"SELECT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"l10nDiffsource\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"l10nDiffsource\";s:13:\"\0*\0columnName\";s:15:\"l10n_diffsource\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:11:\"PASSTHROUGH\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:6:\"hidden\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:6:\"hidden\";s:13:\"\0*\0columnName\";s:6:\"hidden\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"uidLocal\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"uidLocal\";s:13:\"\0*\0columnName\";s:9:\"uid_local\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"GROUP\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:2:\"DB\";}}s:10:\"uidForeign\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"uidForeign\";s:13:\"\0*\0columnName\";s:11:\"uid_foreign\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"tablenames\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"tablenames\";s:13:\"\0*\0columnName\";s:10:\"tablenames\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:9:\"fieldname\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:9:\"fieldname\";s:13:\"\0*\0columnName\";s:9:\"fieldname\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:14:\"sortingForeign\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:14:\"sortingForeign\";s:13:\"\0*\0columnName\";s:15:\"sorting_foreign\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:10:\"tableLocal\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:10:\"tableLocal\";s:13:\"\0*\0columnName\";s:11:\"table_local\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:5:\"title\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:5:\"title\";s:13:\"\0*\0columnName\";s:5:\"title\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"link\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"link\";s:13:\"\0*\0columnName\";s:4:\"link\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"description\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"description\";s:13:\"\0*\0columnName\";s:11:\"description\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:4:\"TEXT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:11:\"alternative\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:11:\"alternative\";s:13:\"\0*\0columnName\";s:11:\"alternative\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"INPUT\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:4:\"crop\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:4:\"crop\";s:13:\"\0*\0columnName\";s:4:\"crop\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:17:\"IMAGEMANIPULATION\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}s:8:\"autoplay\";O:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\":18:{s:15:\"\0*\0propertyName\";s:8:\"autoplay\";s:13:\"\0*\0columnName\";s:8:\"autoplay\";s:17:\"\0*\0typeOfRelation\";s:13:\"RELATION_NONE\";s:17:\"\0*\0childClassName\";N;s:17:\"\0*\0childTableName\";N;s:27:\"\0*\0childTableWhereStatement\";N;s:23:\"\0*\0childSortByFieldName\";N;s:20:\"\0*\0relationTableName\";N;s:32:\"\0*\0relationTablePageIdColumnName\";N;s:27:\"\0*\0relationTableMatchFields\";N;s:28:\"\0*\0relationTableInsertFields\";N;s:30:\"\0*\0relationTableWhereStatement\";N;s:21:\"\0*\0parentKeyFieldName\";N;s:23:\"\0*\0parentTableFieldName\";N;s:20:\"\0*\0childKeyFieldName\";N;s:24:\"\0*\0dateTimeStorageFormat\";N;s:7:\"\0*\0type\";O:43:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnType\":1:{s:8:\"\0*\0value\";s:5:\"CHECK\";}s:15:\"\0*\0internalType\";O:46:\"TYPO3\\CMS\\Core\\DataHandling\\TableColumnSubType\":1:{s:8:\"\0*\0value\";s:0:\"\";}}}s:19:\"\0*\0pageIdColumnName\";s:3:\"pid\";s:23:\"\0*\0languageIdColumnName\";s:16:\"sys_language_uid\";s:30:\"\0*\0translationOriginColumnName\";s:11:\"l10n_parent\";s:34:\"\0*\0translationOriginDiffSourceName\";s:15:\"l10n_diffsource\";s:29:\"\0*\0modificationDateColumnName\";s:6:\"tstamp\";s:25:\"\0*\0creationDateColumnName\";s:6:\"crdate\";s:20:\"\0*\0creatorColumnName\";s:9:\"cruser_id\";s:24:\"\0*\0deletedFlagColumnName\";s:7:\"deleted\";s:25:\"\0*\0disabledFlagColumnName\";s:6:\"hidden\";s:22:\"\0*\0startTimeColumnName\";N;s:20:\"\0*\0endTimeColumnName\";N;s:30:\"\0*\0frontendUserGroupColumnName\";N;s:23:\"\0*\0recordTypeColumnName\";s:14:\"uid_local:type\";s:11:\"\0*\0isStatic\";b:0;s:12:\"\0*\0rootLevel\";i:-1;}');
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (1,'3bcc835c5d8d7866a0ce2dc41464b9a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(2,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(3,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(4,'a6993d6ce1dd11daab5560826404f359',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Configuration\\FrontendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:21:\"injectFlexFormService\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(5,'7e27373c7241e8ff24a8f03a1b8705d9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(6,'d9a9ae73d3607000daec9828154ef861',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(7,'ffab3d90bc879cb5f9bc7dad6eeca0fe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(8,'b50521e5e180c67942dcfb9564f33b28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(9,'4162aee1fc2f8a1059d3c19ec4daa1c7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(10,'161ec4a31f0f6bbc932fcc1ae6d48887',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(11,'6c06740645171b100a0605c1774e691c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:25:\"injectFlashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(12,'fcd3672a290f64f6875bb8d84ef8362b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(13,'e8d805b35474fd740277e82b2633dfdc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:4:\"view\";s:10:\"dependency\";s:35:\"TYPO3Fluid\\Fluid\\View\\ViewInterface\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:33:\"injectViewHelperVariableContainer\";s:60:\"TYPO3Fluid\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(14,'371048d41cb7b30445109b634ee18f29',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Fluid\\View\\TemplatePaths\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:18:\"packageNameOrArray\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(15,'260641975c15b4431e7c2e054aa47a43',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(16,'2f3412020fd44a4207532a873303335f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\Variables\\CmsVariableProvider\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:9:\"variables\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(17,'dbdda0e7f48585dbbb433d68651c566c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:75:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\PreProcessor\\XmlnsNamespaceTemplatePreProcessor\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(18,'90c4d1fca9b8b368d86a01496d8b1d91',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3Fluid\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(19,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(20,'1c4ccf3b1c0e8b02b14c2468bd494521',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\PersistenceManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:13:\"injectBackend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(21,'a0b1e155c87dc5e77879a87871025d81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(22,'07a1866183ac6e1ac9234808c4928fb3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:20:\"injectDataMapFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(23,'7b6eafa37459ae90810443b105992a61',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(24,'b2d13edc404dad53fde6e8ed67946954',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(25,'2c1c56e551397ae5c80783e1cf2c3eda',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(26,'f4161c7b5ff989cc5937476177f76d76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(27,'993ae131d5bac2569b6e9d01b5777ed7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Backend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:20:\"configurationManager\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:13:\"injectSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:20:\"injectStorageBackend\";s:62:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\BackendInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(28,'01ab75a69565e18f3f821b42318e0ff1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbBackend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(29,'d3b9a967a6af09d391d44dc0c1d5c4ff',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(30,'81de039aca085362d0579722eb57e000',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\RequestHandlerResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(31,'1a281c1a4f3a0a8df38130ed92e539a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(32,'3ed752e7ea60eee5026a21c8b9990a63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(33,'97da3abbad45298c6665a64c93a84160',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(34,'a4a0eb9689419bdf7e2be55e876763a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(35,'8b1d5067ef201f9397a919b581c2febb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(36,'a85a0e954caaa9232e9c899c517e8c23',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"injectCommandManager\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(37,'73785a4df7cf6265f746a280a022f98d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(38,'02602cfbe105200536e162488f3b34d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:26:\"injectWidgetRequestBuilder\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(39,'17dd4738af3c1aa88da935f7c7461a76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(40,'38da5993ff181e4a0878ed613360749b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(41,'65aa369e3ef7755812afb4329fd61d4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Response\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(42,'f1b4d1539742ed286d2c1e159e5c4af7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"BStrauss\\Typo3Demo\\News\\Controller\\ArticleController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:3:{s:17:\"contentRepository\";s:59:\"BStrauss\\Typo3Demo\\News\\Domain\\Repository\\ContentRepository\";s:14:\"itemRepository\";s:56:\"BStrauss\\Typo3Demo\\News\\Domain\\Repository\\ItemRepository\";s:20:\"configurationManager\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(43,'71dc71d2ae1928473ef30d8028432258',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(44,'c3680131daaff065daf3097af71f1980',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(45,'52b735058f3ab10579fbc382b26f85ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Arguments\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(46,'011874dc01f31d4715f811608a4c2c47',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"BStrauss\\Typo3Demo\\News\\Domain\\Repository\\ContentRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(47,'1b2037e54d7a144f1f236b55fdb55cba',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"BStrauss\\Typo3Demo\\News\\Domain\\Repository\\ItemRepository\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(48,'ee36b5aa7e756497c1be0353ea554c27',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Typo3QuerySettings\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(49,'b7435caf112d881773a587972170ccea',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:7:\"context\";s:10:\"dependency\";s:57:\"TYPO3Fluid\\Fluid\\Core\\Rendering\\RenderingContextInterface\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(50,'0c9864d50540c5c98ef6e9b2dd7e2762',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Query\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"type\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(51,'48f018e2873c2af1edd116918ebb6f2c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:4:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}i:1;a:1:{s:4:\"name\";s:9:\"tableName\";}i:2;a:2:{s:4:\"name\";s:10:\"recordType\";s:12:\"defaultValue\";N;}i:3;a:2:{s:4:\"name\";s:10:\"subclasses\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(52,'9d8fa21d3f4c3a4f8c86686a248c4e46',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\ColumnMap\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:10:\"columnName\";}i:1;a:1:{s:4:\"name\";s:12:\"propertyName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(53,'513918375379c108c2e5ced6ccfaff81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:9:\"className\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(54,'eaa726cb847b952868ce51ad1debc96a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Selector\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"selectorName\";}i:1;a:1:{s:4:\"name\";s:12:\"nodeTypeName\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(55,'7c21c2d2a455b835f75713bb67fdb586',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\PropertyValue\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:1:{s:4:\"name\";s:12:\"propertyName\";}i:1;a:2:{s:4:\"name\";s:12:\"selectorName\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(56,'22e28d47dccc46a73e42571e1c148930',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\Comparison\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:3:{i:0;a:2:{s:4:\"name\";s:8:\"operand1\";s:10:\"dependency\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\PropertyValueInterface\";}i:1;a:1:{s:4:\"name\";s:8:\"operator\";}i:2;a:1:{s:4:\"name\";s:8:\"operand2\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(57,'6a53dafc39e8ae9870a1dc56f0f3f129',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryResult\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:5:\"query\";s:10:\"dependency\";s:44:\"TYPO3\\CMS\\Extbase\\Persistence\\QueryInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectPersistenceManager\";s:57:\"TYPO3\\CMS\\Extbase\\Persistence\\PersistenceManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(58,'29afe09069975b1208d85be2e28fe9e7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(59,'b5b6da0eff9f6e9d620703fe25e372ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:15:\"flexFormService\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(60,'39c6b5b4fd0c110926d6fc9d5179f78f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(61,'21e1b7ee5cdfd52fbcb55075eeef9d25',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"BStrauss\\Engine\\ViewHelpers\\RenderViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(62,'54980cab2cef84a6ee225e7158f8686a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"BStrauss\\Engine\\ViewHelpers\\SlotViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(63,'78de4f2314417100829d7d86edf1a268',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(64,'54672acf56e913fcba34f51662cf8320',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\LogicalAnd\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:11:\"constraint1\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\ConstraintInterface\";}i:1;a:2:{s:4:\"name\";s:11:\"constraint2\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\ConstraintInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(65,'cd7e14bd73a25f7b94dcb6e381aeb127',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:35:\"TYPO3\\CMS\\Fluid\\View\\StandaloneView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:13:\"contentObject\";s:10:\"dependency\";s:54:\"TYPO3\\CMS\\Frontend\\ContentObject\\ContentObjectRenderer\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(66,'477cd9b03533ff97e582ee65e00d080d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(67,'b91d7d1131833fa9be06d228a776ff64',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3Fluid\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
INSERT INTO `cf_extbase_reflection` VALUES (1,'ReflectionData_News',2145909600,'a:8:{s:19:\"reflectedClassNames\";a:3:{s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";i:1485273339;s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";i:1485273339;s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";i:1485273340;}s:18:\"classPropertyNames\";a:3:{s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";a:7:{i:0;s:15:\"flexFormService\";i:1;s:10:\"piFlexform\";i:2;s:3:\"uid\";i:3;s:13:\"_localizedUid\";i:4;s:12:\"_languageUid\";i:5;s:13:\"_versionedUid\";i:6;s:3:\"pid\";}s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";a:12:{i:0;s:9:\"ttContent\";i:1;s:5:\"title\";i:2;s:4:\"text\";i:3;s:5:\"image\";i:4;s:8:\"inverted\";i:5;s:4:\"size\";i:6;s:6:\"hidden\";i:7;s:3:\"uid\";i:8;s:13:\"_localizedUid\";i:9;s:12:\"_languageUid\";i:10;s:13:\"_versionedUid\";i:11;s:3:\"pid\";}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";a:7:{i:0;s:8:\"uidLocal\";i:1;s:16:\"originalResource\";i:2;s:3:\"uid\";i:3;s:13:\"_localizedUid\";i:4;s:12:\"_languageUid\";i:5;s:13:\"_versionedUid\";i:6;s:3:\"pid\";}}s:15:\"classTagsValues\";a:1:{s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";a:1:{s:3:\"api\";a:1:{i:0;s:63:\"experimental! This class is experimental and subject to change!\";}}}s:16:\"methodTagsValues\";a:5:{s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";a:19:{s:11:\"getFlexform\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:39:\"bool TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:51:\"TYPO3\\CMS\\Extbase\\DomainObject\\AbstractDomainObject\";a:10:{s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}}s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";a:32:{s:12:\"getTtContent\";a:1:{s:6:\"return\";a:1:{i:0;s:45:\"\\BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";}}s:12:\"setTtContent\";a:1:{s:5:\"param\";a:1:{i:0;s:56:\"\\BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content $ttContent\";}}s:8:\"getTitle\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:8:\"setTitle\";a:1:{s:5:\"param\";a:1:{i:0;s:13:\"string $title\";}}s:7:\"getText\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:7:\"setText\";a:1:{s:5:\"param\";a:1:{i:0;s:12:\"string $text\";}}s:8:\"getImage\";a:1:{s:6:\"return\";a:1:{i:0;s:45:\"\\TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";}}s:8:\"setImage\";a:1:{s:5:\"param\";a:1:{i:0;s:52:\"\\TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference $image\";}}s:10:\"isInverted\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:11:\"setInverted\";a:1:{s:5:\"param\";a:1:{i:0;s:17:\"boolean $inverted\";}}s:7:\"getSize\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}s:7:\"setSize\";a:1:{s:5:\"param\";a:1:{i:0;s:12:\"string $size\";}}s:9:\"getHidden\";a:1:{s:6:\"return\";a:1:{i:0;s:7:\"boolean\";}}s:9:\"setHidden\";a:1:{s:5:\"param\";a:1:{i:0;s:15:\"boolean $hidden\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:39:\"bool TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}s:41:\"BStrauss\\Engine\\Domain\\Model\\AbstractItem\";a:1:{s:9:\"setHidden\";a:1:{s:5:\"param\";a:1:{i:0;s:15:\"boolean $hidden\";}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";a:20:{s:19:\"setOriginalResource\";a:1:{s:5:\"param\";a:1:{i:0;s:60:\"\\TYPO3\\CMS\\Core\\Resource\\ResourceInterface $originalResource\";}}s:19:\"getOriginalResource\";a:1:{s:6:\"return\";a:1:{i:0;s:38:\"\\TYPO3\\CMS\\Core\\Resource\\FileReference\";}}s:6:\"getUid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int the uid or NULL if none set yet.\";}}s:6:\"setPid\";a:2:{s:5:\"param\";a:1:{i:0;s:13:\"int|NULL $pid\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:6:\"getPid\";a:1:{s:6:\"return\";a:1:{i:0;s:36:\"int The pid or NULL if none set yet.\";}}s:12:\"_setProperty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"string $propertyName\";i:1;s:20:\"mixed $propertyValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:12:\"_getProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:23:\"mixed The propertyValue\";}}s:14:\"_getProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:20:\"array The properties\";}}s:12:\"_hasProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:20:\"string $propertyName\";}s:6:\"return\";a:1:{i:0;s:98:\"bool TRUE bool true if the property exists, FALSE if it doesn\'t exist or NULL in case of an error.\";}}s:6:\"_isNew\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:19:\"_memorizeCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omitted all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:27:\"_memorizePropertyCleanState\";a:2:{s:5:\"param\";a:1:{i:0;s:115:\"string $propertyName The name of the property to be memorized. If omittet all persistable properties are memorized.\";}s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:19:\"_getCleanProperties\";a:1:{s:6:\"return\";a:1:{i:0;s:5:\"array\";}}s:17:\"_getCleanProperty\";a:2:{s:5:\"param\";a:1:{i:0;s:62:\"string $propertyName The name of the property to be memorized.\";}s:6:\"return\";a:1:{i:0;s:38:\"mixed The clean property value or NULL\";}}s:8:\"_isDirty\";a:3:{s:5:\"param\";a:1:{i:0;s:87:\"string $propertyName An optional name of a property to be checked if its value is dirty\";}s:6:\"throws\";a:1:{i:0;s:66:\"\\TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Exception\\TooDirtyException\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:15:\"isPropertyDirty\";a:2:{s:5:\"param\";a:2:{i:0;s:20:\"mixed $previousValue\";i:1;s:19:\"mixed $currentValue\";}s:6:\"return\";a:1:{i:0;s:4:\"bool\";}}s:8:\"_isClone\";a:1:{s:6:\"return\";a:1:{i:0;s:39:\"bool TRUE if the object has been cloned\";}}s:9:\"_setClone\";a:1:{s:5:\"param\";a:1:{i:0;s:11:\"bool $clone\";}}s:7:\"__clone\";a:1:{s:6:\"return\";a:1:{i:0;s:4:\"void\";}}s:10:\"__toString\";a:1:{s:6:\"return\";a:1:{i:0;s:6:\"string\";}}}}s:16:\"methodParameters\";a:6:{s:52:\"BStrauss\\Typo3Demo\\News\\Controller\\ArticleController\";a:3:{s:11:\"indexAction\";a:0:{}s:16:\"initializeAction\";a:0:{}s:11:\"errorAction\";a:0:{}}s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";a:10:{s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:8:\"int|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";a:17:{s:12:\"setTtContent\";a:1:{s:9:\"ttContent\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";}}s:8:\"setTitle\";a:1:{s:5:\"title\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:7:\"setText\";a:1:{s:4:\"text\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"setImage\";a:1:{s:5:\"image\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";}}s:11:\"setInverted\";a:1:{s:8:\"inverted\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}s:7:\"setSize\";a:1:{s:4:\"size\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:9:\"setHidden\";a:1:{s:6:\"hidden\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:8:\"int|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:42:\"BStrauss\\Engine\\ViewHelpers\\SlotViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";a:11:{s:19:\"setOriginalResource\";a:1:{s:16:\"originalResource\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:0;s:5:\"class\";s:41:\"TYPO3\\CMS\\Core\\Resource\\ResourceInterface\";s:4:\"type\";s:41:\"TYPO3\\CMS\\Core\\Resource\\ResourceInterface\";}}s:6:\"setPid\";a:1:{s:3:\"pid\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:8:\"int|NULL\";}}s:12:\"_setProperty\";a:2:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}s:13:\"propertyValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:12:\"_getProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:12:\"_hasProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:19:\"_memorizeCleanState\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:27:\"_memorizePropertyCleanState\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:17:\"_getCleanProperty\";a:1:{s:12:\"propertyName\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:6:\"string\";}}s:8:\"_isDirty\";a:1:{s:12:\"propertyName\";a:8:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:1;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:12:\"defaultValue\";N;s:4:\"type\";s:6:\"string\";}}s:15:\"isPropertyDirty\";a:2:{s:13:\"previousValue\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}s:12:\"currentValue\";a:7:{s:8:\"position\";i:1;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:5:\"mixed\";}}s:9:\"_setClone\";a:1:{s:5:\"clone\";a:7:{s:8:\"position\";i:0;s:11:\"byReference\";b:0;s:5:\"array\";b:0;s:8:\"optional\";b:0;s:10:\"allowsNull\";b:1;s:5:\"class\";N;s:4:\"type\";s:7:\"boolean\";}}}s:49:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlViewHelper\";a:1:{s:6:\"render\";a:0:{}}}s:18:\"propertyTagsValues\";a:3:{s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";a:7:{s:15:\"flexFormService\";a:2:{s:3:\"var\";a:1:{i:0;s:42:\"\\TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";}s:6:\"inject\";a:1:{i:0;s:0:\"\";}}s:10:\"piFlexform\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"\\string\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";a:12:{s:9:\"ttContent\";a:1:{s:3:\"var\";a:1:{i:0;s:45:\"\\BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";}}s:5:\"title\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:4:\"text\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:5:\"image\";a:1:{s:3:\"var\";a:1:{i:0;s:45:\"\\TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";}}s:8:\"inverted\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"boolean\";}}s:4:\"size\";a:1:{s:3:\"var\";a:1:{i:0;s:6:\"string\";}}s:6:\"hidden\";a:1:{s:3:\"var\";a:1:{i:0;s:7:\"boolean\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";a:7:{s:8:\"uidLocal\";a:1:{s:3:\"var\";a:1:{i:0;s:3:\"int\";}}s:16:\"originalResource\";a:1:{s:3:\"var\";a:1:{i:0;s:151:\"\\TYPO3\\CMS\\Core\\Resource\\ResourceInterface|\\TYPO3\\CMS\\Core\\Resource\\AbstractFile|\\TYPO3\\CMS\\Core\\Resource\\Folder|\\TYPO3\\CMS\\Core\\Resource\\FileReference\";}}s:3:\"uid\";a:1:{s:3:\"var\";a:1:{i:0;s:87:\"int The uid of the record. The uid is only unique in the context of the database table.\";}}s:13:\"_localizedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:142:\"int The uid of the localized record. In TYPO3 v4.x the property \"uid\" holds the uid of the record in default language (the translationOrigin).\";}}s:12:\"_languageUid\";a:1:{s:3:\"var\";a:1:{i:0;s:122:\"int The uid of the language of the object. In TYPO3 v4.x this is the uid of the language record in the table sys_language.\";}}s:13:\"_versionedUid\";a:1:{s:3:\"var\";a:1:{i:0;s:36:\"int The uid of the versioned record.\";}}s:3:\"pid\";a:1:{s:3:\"var\";a:1:{i:0;s:46:\"int The id of the page the record is \"stored\".\";}}}}s:13:\"taggedClasses\";a:1:{s:3:\"api\";a:1:{i:0;s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";}}s:13:\"classSchemata\";a:3:{s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":6:{s:12:\"\0*\0className\";s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:7:{s:15:\"flexFormService\";a:4:{s:4:\"type\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:10:\"piFlexform\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}}s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":6:{s:12:\"\0*\0className\";s:41:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Item\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:1;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:12:{s:9:\"ttContent\";a:4:{s:4:\"type\";s:44:\"BStrauss\\Typo3Demo\\News\\Domain\\Model\\Content\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:5:\"title\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:4:\"text\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:5:\"image\";a:4:{s:4:\"type\";s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:8:\"inverted\";a:4:{s:4:\"type\";s:7:\"boolean\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:4:\"size\";a:4:{s:4:\"type\";s:6:\"string\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:6:\"hidden\";a:4:{s:4:\"type\";s:7:\"boolean\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";O:40:\"TYPO3\\CMS\\Extbase\\Reflection\\ClassSchema\":6:{s:12:\"\0*\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference\";s:12:\"\0*\0modelType\";i:1;s:16:\"\0*\0aggregateRoot\";b:0;s:19:\"\0*\0uuidPropertyName\";N;s:13:\"\0*\0properties\";a:7:{s:8:\"uidLocal\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:16:\"originalResource\";a:4:{s:4:\"type\";s:41:\"TYPO3\\CMS\\Core\\Resource\\ResourceInterface\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"uid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_localizedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:12:\"_languageUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:13:\"_versionedUid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}s:3:\"pid\";a:4:{s:4:\"type\";s:7:\"integer\";s:11:\"elementType\";N;s:4:\"lazy\";b:0;s:7:\"cascade\";N;}}s:21:\"\0*\0identityProperties\";a:0:{}}}}');
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main`
--

DROP TABLE IF EXISTS `cf_vhs_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main`
--

LOCK TABLES `cf_vhs_main` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_main_tags`
--

DROP TABLE IF EXISTS `cf_vhs_main_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_main_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_main_tags`
--

LOCK TABLES `cf_vhs_main_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_main_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_main_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown`
--

DROP TABLE IF EXISTS `cf_vhs_markdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown`
--

LOCK TABLES `cf_vhs_markdown` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_vhs_markdown_tags`
--

DROP TABLE IF EXISTS `cf_vhs_markdown_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_vhs_markdown_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_vhs_markdown_tags`
--

LOCK TABLES `cf_vhs_markdown_tags` WRITE;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_vhs_markdown_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `subgroup` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci,
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci,
  `TSconfig` text COLLATE utf8_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `url_scheme` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8_unicode_ci,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_realurl_pathoverride` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_exclude` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_nocache` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1484952610,256,0,1,0,31,27,0,0,1484951850,1,0,'Typo3 Demo',4,'<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/Page.ts\">',1,0,'',0,0,1,0,1,0,'','',0,0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'2','2','',0,0,'',0,0,0),(2,1,0,0,0,'',0,0,0,0,0,0,1484952997,256,0,1,0,31,27,0,0,1484952997,1,0,'Startseite',1,'',0,0,'',0,0,1,0,0,0,'','',0,0,'',0,0,'',0,'',0,'',0,1485270030,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `abstract` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urltype` smallint(5) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_realurl_pathsegment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectTo` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(10) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(11) NOT NULL DEFAULT '0',
  `forced` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci,
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `alternative` text COLLATE utf8_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `alternative` tinytext COLLATE utf8_unicode_ci,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `driver` tinytext COLLATE utf8_unicode_ci,
  `configuration` text COLLATE utf8_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1484940907,1484940907,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext COLLATE utf8_unicode_ci,
  `fieldlist` text COLLATE utf8_unicode_ci,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext COLLATE utf8_unicode_ci,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,0,7,'a:2:{s:9:\"oldRecord\";a:1:{s:8:\"TSconfig\";N;}s:9:\"newRecord\";a:1:{s:8:\"TSconfig\";s:48:\"options {\r\n  pageTree.showPageIdWithTitle = 1\r\n}\";}}','TSconfig',1,'be_users',1484950026,NULL,0),(2,0,10,'a:2:{s:9:\"oldRecord\";a:3:{s:13:\"shortcut_mode\";i:0;s:11:\"is_siteroot\";i:0;s:8:\"TSconfig\";s:0:\"\";}s:9:\"newRecord\";a:3:{s:13:\"shortcut_mode\";s:1:\"1\";s:11:\"is_siteroot\";s:1:\"1\";s:8:\"TSconfig\";s:83:\"<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/Page.ts\">\";}}','shortcut_mode,is_siteroot,TSconfig',1,'pages',1484951952,NULL,0),(3,0,11,'a:2:{s:9:\"oldRecord\";a:1:{s:6:\"hidden\";i:1;}s:9:\"newRecord\";a:1:{s:6:\"hidden\";s:1:\"0\";}}','hidden',1,'pages',1484952022,NULL,0),(4,0,14,'a:2:{s:9:\"oldRecord\";a:4:{s:5:\"title\";s:8:\"NEW SITE\";s:9:\"constants\";N;s:6:\"config\";s:80:\"\n# Default PAGE object:\npage = PAGE\npage.10 = TEXT\npage.10.value = HELLO WORLD!\n\";s:19:\"include_static_file\";N;}s:9:\"newRecord\";a:4:{s:5:\"title\";s:16:\"Default Template\";s:9:\"constants\";s:96:\"<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/TemplateConstants.ts\">\";s:6:\"config\";s:92:\"<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/TemplateSetup.ts\">\";s:19:\"include_static_file\";s:30:\"EXT:css_styled_content/static/\";}}','title,constants,config,include_static_file',1,'sys_template',1484952169,NULL,0),(5,0,16,'a:2:{s:9:\"oldRecord\";a:1:{s:6:\"config\";s:283:\"backend_layout {\r\n	colCount = 2\r\n	rowCount = 2\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Content\r\n					colPos = NaN\r\n				}\r\n				2 {\r\n					name = 1x0\r\n				}\r\n			}\r\n		}\r\n		2 {\r\n			columns {\r\n				1 {\r\n					name = 0x1\r\n				}\r\n				2 {\r\n					name = 1x1\r\n				}\r\n			}\r\n		}\r\n	}\r\n}\r\n\";}s:9:\"newRecord\";a:1:{s:6:\"config\";s:218:\"backend_layout {\r\n	colCount = 2\r\n	rowCount = 2\r\n	rows {\r\n		1 {\r\n			columns {\r\n				1 {\r\n					name = Content\r\n					colspan = 2\r\n					rowspan = 2\r\n					colPos = 0\r\n				}\r\n			}\r\n		}\r\n		2 {\r\n			columns {\r\n			}\r\n		}\r\n	}\r\n}\r\n\";}}','config',1,'backend_layout',1484952438,NULL,0),(6,0,22,'a:2:{s:9:\"oldRecord\";a:2:{s:14:\"backend_layout\";s:0:\"\";s:25:\"backend_layout_next_level\";s:0:\"\";}s:9:\"newRecord\";a:2:{s:14:\"backend_layout\";s:1:\"2\";s:25:\"backend_layout_next_level\";s:1:\"2\";}}','backend_layout,backend_layout_next_level',1,'pages',1484952604,NULL,0),(7,0,205,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:30:\"EXT:css_styled_content/static/\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:0:\"\";}}','include_static_file',1,'sys_template',1485129268,NULL,0),(8,0,206,'a:2:{s:9:\"oldRecord\";a:1:{s:19:\"include_static_file\";s:0:\"\";}s:9:\"newRecord\";a:1:{s:19:\"include_static_file\";s:57:\"EXT:fluid_styled_content/Configuration/TypoScript/Static/\";}}','include_static_file',1,'sys_template',1485129322,NULL,0);
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1484952740,0,'English','gb','en',0,256);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(10) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1484940619,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484941297,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(3,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484941299,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(4,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484941469,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(5,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484941470,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(6,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1484948978,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(7,0,1,2,1,'be_users',0,0,'Record \'%s\' (%s) was updated. (Online).',1484950027,1,10,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:10:\"be_users:1\";}',0,0,'','',0,'',0,NULL,NULL),(8,0,1,1,1,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484951851,1,10,'127.0.0.1','a:4:{i:0;s:10:\"Typo3 Demo\";i:1;s:7:\"pages:1\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW588291120fb65714857558','',0,'',0,NULL,NULL),(9,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1484951851,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Typo3 Demo\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(10,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1484951953,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Typo3 Demo\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(11,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952023,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Typo3 Demo\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(12,0,1,1,1,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484952073,1,10,'127.0.0.1','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";i:2;s:10:\"Typo3 Demo\";i:3;i:1;}',1,0,'NEW','',0,'',0,NULL,NULL),(13,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484952073,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(14,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952170,1,10,'127.0.0.1','a:2:{i:0;s:16:\"Default Template\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(15,0,1,1,1,'backend_layout',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484952405,1,10,'127.0.0.1','a:4:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:1\";i:2;s:10:\"Typo3 Demo\";i:3;i:1;}',1,0,'NEW58829295d3319568733348','',0,'',0,NULL,NULL),(16,0,1,2,1,'backend_layout',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952440,1,10,'127.0.0.1','a:2:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:1\";}',1,0,'','',0,'',0,NULL,NULL),(17,0,1,2,1,'backend_layout',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952456,1,10,'127.0.0.1','a:2:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:1\";}',1,0,'','',0,'',0,NULL,NULL),(18,0,1,3,1,'backend_layout',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1484952485,1,0,'127.0.0.1','a:4:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:1\";i:2;s:10:\"Typo3 Demo\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(19,0,1,1,2,'backend_layout',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484952523,1,10,'127.0.0.1','a:4:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:2\";i:2;s:10:\"Typo3 Demo\";i:3;i:1;}',1,0,'NEW588293af1c90d508347597','',0,'',0,NULL,NULL),(20,0,1,2,2,'backend_layout',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952538,1,10,'127.0.0.1','a:2:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:2\";}',1,0,'','',0,'',0,NULL,NULL),(21,0,1,2,2,'backend_layout',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952572,1,10,'127.0.0.1','a:2:{i:0;s:14:\"Default Layout\";i:1;s:16:\"backend_layout:2\";}',1,0,'','',0,'',0,NULL,NULL),(22,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952605,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Typo3 Demo\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(23,0,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952612,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Typo3 Demo\";i:1;s:7:\"pages:1\";}',1,0,'','',0,'',0,NULL,NULL),(24,0,1,1,1,'sys_language',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484952741,1,10,'127.0.0.1','a:4:{i:0;s:7:\"English\";i:1;s:14:\"sys_language:1\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW5882947837d6e701970166','',0,'',0,NULL,NULL),(25,0,1,1,2,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484952999,1,10,'127.0.0.1','a:4:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:2\";i:2;s:10:\"Typo3 Demo\";i:3;i:1;}',1,0,'NEW58829599ce9fb150388153','',0,'',0,NULL,NULL),(26,0,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1484952999,1,10,'127.0.0.1','a:2:{i:0;s:10:\"Startseite\";i:1;s:7:\"pages:2\";}',2,0,'','',0,'',0,NULL,NULL),(27,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484953149,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(28,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484953201,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(29,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484953204,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(30,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484953205,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(31,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484953438,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(32,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484953439,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(33,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484953470,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(34,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484953471,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(35,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484953515,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(36,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484953517,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(37,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484953517,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(38,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1484953836,1,10,'127.0.0.1','a:2:{i:0;s:16:\"Default Template\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(39,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484954449,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(40,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484954521,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(41,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #30: There is no column with name \'`uid`\' on table \'tx_typo3demo_news_domain_model_item\'. | Doctrine\\DBAL\\Schema\\SchemaException thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Schema\\SchemaException.php in line 86. Requested URL: http://typo3-demo.b-strauss.local/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=b7b724825a23f568081b1579a1d4a68fade872f2&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5BextensionKey%%5D=news&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=toggleExtensionInstallationState&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Action',1484954749,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(42,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #30: There is no column with name \'`uid`\' on table \'tx_typo3demo_news_domain_model_item\'. | Doctrine\\DBAL\\Schema\\SchemaException thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Schema\\SchemaException.php in line 86. Requested URL: http://typo3-demo.b-strauss.local/typo3/sysext/install/Start/Install.php?install[redirectCount]=5&install[context]=backend&install[controller]=tool',1484954803,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(43,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/typo3/sysext/documentation/composer.json): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Package\\PackageManager.php line 852 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/typo3/sysext/install/Start/Install.php?install[redirectCount]=4&install[context]=backend&install[controller]=tool&install[controller]=ajax&install[action]=environmentStatus&_=1484954973844',1484954973,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(44,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #30: There is no column with name \'`uid`\' on table \'tx_typo3demo_news_domain_model_item\'. | Doctrine\\DBAL\\Schema\\SchemaException thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Schema\\SchemaException.php in line 86. Requested URL: http://typo3-demo.b-strauss.local/typo3/index.php?M=tools_ExtensionmanagerExtensionmanager&moduleToken=b7b724825a23f568081b1579a1d4a68fade872f2&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5BextensionKey%%5D=news&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Baction%%5D=toggleExtensionInstallationState&tx_extensionmanager_tools_extensionmanagerextensionmanager%%5Bcontroller%%5D=Action',1484955053,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(45,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484955780,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(46,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484955782,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(47,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484955961,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(48,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484955963,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(49,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956219,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(50,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956220,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(51,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956318,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(52,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956320,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(53,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956523,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(54,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956524,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(55,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956562,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(56,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484956563,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(57,0,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484956763,1,10,'127.0.0.1','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'NEW5882a43415165895368558','',0,'',0,NULL,NULL),(58,0,1,1,1,'tx_typo3demo_news_domain_model_item',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1484956763,1,10,'127.0.0.1','a:4:{i:0;s:8:\"IPhone 6\";i:1;s:37:\"tx_typo3demo_news_domain_model_item:1\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'NEW5882a4464f36f042594144','',0,'',0,NULL,NULL),(59,0,1,2,1,'tx_typo3demo_news_domain_model_item',0,0,'Record \'%s\' (%s) was updated. (Online).',1484956763,1,10,'127.0.0.1','a:2:{i:0;s:8:\"IPhone 6\";i:1;s:37:\"tx_typo3demo_news_domain_model_item:1\";}',2,0,'','',0,'',0,NULL,NULL),(60,0,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1484956763,1,10,'127.0.0.1','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";}',2,0,'','',0,'',0,NULL,NULL),(61,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484956869,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(62,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484957215,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(63,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484957339,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(64,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957428,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(65,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957430,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(66,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957457,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(67,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957458,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(68,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957476,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(69,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957478,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(70,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957498,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(71,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957500,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(72,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957509,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(73,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957510,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(74,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957542,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(75,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957543,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(76,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: file_get_contents(D:/workspace/b-strauss/typo3-demo/public/): failed to open stream: No such file or directory in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 600 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484957544,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(77,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957590,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(78,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957592,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(79,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957615,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(80,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957616,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(81,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957649,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(82,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957651,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(83,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957669,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(84,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957670,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(85,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957691,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(86,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957693,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(87,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957744,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(88,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957745,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(89,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957847,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(90,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957849,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(91,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957973,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(92,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484957975,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(93,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Call to a member function getMethodParameters() on null | Error thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\fluid\\Classes\\Core\\ViewHelper\\AbstractViewHelper.php in line 121. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484958056,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(94,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958429,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(95,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958430,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(96,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958476,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(97,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958499,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(98,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958809,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(99,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958827,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(100,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: filemtime(): stat failed for D:/workspace/b-strauss/typo3-demo/public/FILE:fileadmin/Resources/Public/Components/Article/Article.html in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 614 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484958828,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(101,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: filemtime(): stat failed for D:/workspace/b-strauss/typo3-demo/public/FILE:fileadmin/Resources/Public/Components/Article/Article.html in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\View\\TemplatePaths.php line 614 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1484958833,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(102,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958904,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(103,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484958905,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(104,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959796,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(105,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959797,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(106,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959842,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(107,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959844,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(108,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959861,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(109,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959862,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(110,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959977,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(111,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959978,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(112,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959995,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(113,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484959997,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(114,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960022,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(115,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960023,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(116,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960550,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(117,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960551,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(118,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960567,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(119,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960568,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(120,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960595,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(121,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484960597,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(122,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484961548,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(123,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484961549,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(124,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484963152,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(125,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1484963154,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(126,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485045664,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(127,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485048672,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(128,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485048674,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(129,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049365,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(130,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049367,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(131,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Cannot instantiate interface TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface | Error thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Utility\\GeneralUtility.php in line 3891. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1485049368,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(132,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049391,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(133,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049393,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(134,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049623,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(135,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049625,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(136,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049964,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(137,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485049966,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(138,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050079,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(139,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050081,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(140,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: call_user_func() expects parameter 1 to be a valid callback, class \'BStrauss\\Engine\\ViewHelpers\\RenderViewHelper\' does not have a method \'render\' in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3fluid\\fluid\\src\\Core\\ViewHelper\\AbstractViewHelper.php line 256 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/startseite.html',1485050081,5,0,'127.0.0.1','',-1,0,'','',0,'',0,NULL,NULL),(141,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050122,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(142,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050124,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(143,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050683,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(144,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050684,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(145,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050726,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(146,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050727,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(147,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050834,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(148,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050835,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(149,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050941,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(150,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050943,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(151,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050961,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(152,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485050963,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(153,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485051073,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(154,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485051075,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(155,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485051124,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(156,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485051126,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(157,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485051791,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(158,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485051793,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(159,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485102645,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(160,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485107602,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(161,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485114243,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(162,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114250,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(163,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114252,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(164,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114321,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(165,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114322,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(166,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114454,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(167,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114468,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(168,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114469,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(169,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114491,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(170,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114493,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(171,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114519,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(172,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114521,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(173,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114558,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(174,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114560,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(175,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114607,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(176,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114609,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(177,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114629,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(178,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114631,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(179,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114716,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(180,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114718,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(181,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114963,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(182,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114964,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(183,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114996,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(184,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485114998,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(185,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485115718,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(186,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485115719,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(187,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: rename(D:/workspace/b-strauss/typo3-demo/public/typo3temp/var/Cache/Code/fluid_template/5885437285cea531412534.temp,D:/workspace/b-strauss/typo3-demo/public/typo3temp/var/Cache/Code/fluid_template/partial_LoginNews_bf786a6c6c0f555a925b3ba2842c4d42584ffed0.php): Zugriff verweigert (code: 5) in D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Cache\\Backend\\FileBackend.php line 158 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.b-strauss.local/typo3/',1485128560,5,0,'127.0.0.1','',-1,-99,'','',0,'',0,NULL,NULL),(188,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485128569,255,1,'127.0.0.1','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:9:\"127.0.0.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(189,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485128606,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(190,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485128608,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(191,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485128854,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(192,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485128856,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(193,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129038,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(194,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129040,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(195,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129058,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(196,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129060,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(197,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129074,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(198,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129075,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(199,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129089,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(200,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129091,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(201,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129168,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(202,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129170,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(203,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129180,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(204,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129182,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(205,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1485129269,1,10,'127.0.0.1','a:2:{i:0;s:16:\"Default Template\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(206,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1485129324,1,10,'127.0.0.1','a:2:{i:0;s:16:\"Default Template\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(207,0,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1485129335,1,10,'127.0.0.1','a:2:{i:0;s:16:\"Default Template\";i:1;s:14:\"sys_template:1\";}',1,0,'','',0,'',0,NULL,NULL),(208,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129477,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(209,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129478,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(210,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129496,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(211,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129498,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(212,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129587,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(213,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485129589,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(214,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130304,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(215,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130306,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(216,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130323,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(217,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130325,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(218,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130355,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(219,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130357,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(220,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130375,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(221,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485130377,3,0,'127.0.0.1','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(222,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485165266,255,1,'192.168.7.160','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:13:\"192.168.7.160\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(223,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485165278,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(224,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485165281,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(225,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485165476,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(226,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485165478,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(227,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485181719,255,1,'192.168.7.160','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:13:\"192.168.7.160\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(228,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485187647,255,1,'192.168.7.160','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:13:\"192.168.7.160\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(229,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485187665,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(230,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485187667,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(231,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: rename(D:/workspace/_b-strauss/typo3-demo/public/typo3temp/var/Cache/Code/cache_core/58862a56caf75091980025.temp,D:/workspace/_b-strauss/typo3-demo/public/typo3temp/var/Cache/Code/cache_core/ext_tables_d0bd39eff30544b182f672b9a44c91ae986463ce.php): Zugriff verweigert (code: 5) in D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Cache\\Backend\\SimpleFileBackend.php line 240 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?M=web_layout&moduleToken=555a5c93e2bacd0dcc89e54c8bf57d6a060575b0',1485187670,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(232,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485187708,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(233,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485187713,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(234,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485248784,255,1,'192.168.7.160','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:13:\"192.168.7.160\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(235,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485249249,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(236,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485249254,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(237,0,0,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1476107295: PHP Warning: rename(D:/workspace/_b-strauss/typo3-demo/public/typo3temp/var/Cache/Code/cache_core/58871aeb5c529796881752.temp,D:/workspace/_b-strauss/typo3-demo/public/typo3temp/var/Cache/Code/cache_core/ext_tables_d0bd39eff30544b182f672b9a44c91ae986463ce.php): Zugriff verweigert (code: 5) in D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Cache\\Backend\\SimpleFileBackend.php line 240 | TYPO3\\CMS\\Core\\Error\\Exception thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\core\\Classes\\Error\\ErrorHandler.php in line 113. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?ajaxID=%%2Fajax%%2Frecord%%2Finline%%2Fcreate&ajaxToken=7a9bea330bbc4d6a306d779a1175b2e1060dcdf9',1485249257,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(238,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250140,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(239,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250143,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(240,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250516,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(241,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250635,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(242,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250638,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(243,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250710,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(244,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485250713,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(245,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485256124,255,1,'192.168.7.160','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:13:\"192.168.7.160\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(246,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257121,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(247,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257124,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(248,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257160,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(249,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257162,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(250,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257183,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(251,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257186,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(252,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257234,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(253,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257236,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(254,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257283,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(255,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257285,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(256,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257287,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(257,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257289,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(258,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257464,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(259,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485257466,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(260,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1485267699,255,1,'192.168.7.160','a:3:{i:0;s:11:\"typo3-admin\";i:1;s:13:\"192.168.7.160\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(261,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485267721,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(262,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485267724,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(263,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1437914223: TCA for table tx_typo3demo_news_domain_model_item not found | UnexpectedValueException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\backend\\Classes\\Form\\FormDataProvider\\InitializeProcessedTca.php in line 37. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?route=%%2Frecord%%2Fedit&token=a717a86da470c8f91b19934780f6111195f6ddad&edit%%5Btt_content%%5D%%5B1%%2C%%5D=edit&returnUrl=%%2Ftypo3%%2Findex.php%%3FM%%3Dweb_layout%%26moduleToken%%3D5655515755ff45f100f5760549d74eec13bbf932%%26id%%3D2%%26%%23element-tt_content-1',1485267741,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(264,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1437914223: TCA for table tx_typo3demo_news_domain_model_item not found | UnexpectedValueException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\backend\\Classes\\Form\\FormDataProvider\\InitializeProcessedTca.php in line 37. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?route=%%2Frecord%%2Fedit&token=a717a86da470c8f91b19934780f6111195f6ddad&edit%%5Btt_content%%5D%%5B1%%2C%%5D=edit&returnUrl=%%2Ftypo3%%2Findex.php%%3FM%%3Dweb_layout%%26moduleToken%%3D5655515755ff45f100f5760549d74eec13bbf932%%26id%%3D2%%26%%23element-tt_content-1',1485267849,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(265,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1437914223: TCA for table tx_typo3demo_news_domain_model_item not found | UnexpectedValueException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\backend\\Classes\\Form\\FormDataProvider\\InitializeProcessedTca.php in line 37. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?ajaxID=%%2Fajax%%2Frecord%%2Finline%%2Fcreate&ajaxToken=7a9bea330bbc4d6a306d779a1175b2e1060dcdf9',1485267887,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(266,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1437914223: TCA for table tx_typo3demo_news_domain_model_item not found | UnexpectedValueException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\backend\\Classes\\Form\\FormDataProvider\\InitializeProcessedTca.php in line 37. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?ajaxID=%%2Fajax%%2Frecord%%2Finline%%2Fcreate&ajaxToken=7a9bea330bbc4d6a306d779a1175b2e1060dcdf9',1485267891,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(267,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1437914223: TCA for table tx_typo3demo_news_domain_model_item not found | UnexpectedValueException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\backend\\Classes\\Form\\FormDataProvider\\InitializeProcessedTca.php in line 37. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?ajaxID=%%2Fajax%%2Frecord%%2Finline%%2Fcreate&ajaxToken=7a9bea330bbc4d6a306d779a1175b2e1060dcdf9',1485268090,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(268,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485268148,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(269,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485268151,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(270,0,1,3,1,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1485268312,1,0,'192.168.7.160','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'','',0,'',0,NULL,NULL),(271,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485268580,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(272,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485268582,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(273,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269367,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(274,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269369,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(275,0,1,1,2,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1485269467,1,10,'192.168.7.160','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'NEW588769b522607074655625','',0,'',0,NULL,NULL),(276,0,1,1,1,'tx_news_article_item',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1485269467,1,10,'192.168.7.160','a:4:{i:0;s:8:\"iPhone 8\";i:1;s:22:\"tx_news_article_item:1\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'NEW588769b9036a8431991373','',0,'',0,NULL,NULL),(277,0,1,2,1,'tx_news_article_item',0,0,'Record \'%s\' (%s) was updated. (Online).',1485269467,1,10,'192.168.7.160','a:2:{i:0;s:8:\"iPhone 8\";i:1;s:22:\"tx_news_article_item:1\";}',2,0,'','',0,'',0,NULL,NULL),(278,0,1,2,2,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1485269468,1,10,'192.168.7.160','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";}',2,0,'','',0,'',0,NULL,NULL),(279,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1472074485: Table \'typo3-demo-db.tx_typo3demo_news_domain_model_item\' doesn\'t exist | TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Exception\\SqlErrorException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\extbase\\Classes\\Persistence\\Generic\\Storage\\Typo3DbBackend.php in line 344. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?M=web_layout&moduleToken=5655515755ff45f100f5760549d74eec13bbf932&id=2&',1485269468,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(280,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269487,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(281,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269489,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(282,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1472074485: Table \'typo3-demo-db.tx_typo3demo_news_domain_model_item\' doesn\'t exist | TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Exception\\SqlErrorException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\extbase\\Classes\\Persistence\\Generic\\Storage\\Typo3DbBackend.php in line 344. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?M=web_layout&moduleToken=5655515755ff45f100f5760549d74eec13bbf932&id=2',1485269492,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(283,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1472074485: Table \'typo3-demo-db.tx_typo3demo_news_domain_model_item\' doesn\'t exist | TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Exception\\SqlErrorException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\extbase\\Classes\\Persistence\\Generic\\Storage\\Typo3DbBackend.php in line 344. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?M=web_layout&moduleToken=5655515755ff45f100f5760549d74eec13bbf932&id=2',1485269551,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(284,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269557,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(285,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269561,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(286,0,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: #1472074485: Table \'typo3-demo-db.tx_typo3demo_news_domain_model_item\' doesn\'t exist | TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Exception\\SqlErrorException thrown in file D:\\workspace\\_b-strauss\\typo3-demo\\vendor\\typo3\\cms\\typo3\\sysext\\extbase\\Classes\\Persistence\\Generic\\Storage\\Typo3DbBackend.php in line 344. Requested URL: http://typo3-demo.nb160a.emp.nb/typo3/index.php?M=web_layout&moduleToken=5655515755ff45f100f5760549d74eec13bbf932&id=2',1485269563,5,0,'192.168.7.160','',-1,0,'','',0,'',0,NULL,NULL),(287,0,1,3,2,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1485269847,1,0,'192.168.7.160','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:2\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'','',0,'',0,NULL,NULL),(288,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269926,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(289,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485269928,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(290,0,1,1,3,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1485270031,1,10,'192.168.7.160','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:3\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'NEW58876bf4433f4026823118','',0,'',0,NULL,NULL),(291,0,1,1,1,'tx_typo3demo_news_domain_model_item',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1485270031,1,10,'192.168.7.160','a:4:{i:0;s:9:\"iPhone 10\";i:1;s:37:\"tx_typo3demo_news_domain_model_item:1\";i:2;s:10:\"Startseite\";i:3;i:2;}',2,0,'NEW58876bf87c2bf183393447','',0,'',0,NULL,NULL),(292,0,1,2,1,'tx_typo3demo_news_domain_model_item',0,0,'Record \'%s\' (%s) was updated. (Online).',1485270032,1,10,'192.168.7.160','a:2:{i:0;s:9:\"iPhone 10\";i:1;s:37:\"tx_typo3demo_news_domain_model_item:1\";}',2,0,'','',0,'',0,NULL,NULL),(293,0,1,2,3,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1485270032,1,10,'192.168.7.160','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:3\";}',2,0,'','',0,'',0,NULL,NULL),(294,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485270086,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(295,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485270088,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(296,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485272673,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(297,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485272676,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(298,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485272710,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(299,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485272713,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(300,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485273213,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(301,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485273261,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(302,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485273264,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(303,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485273326,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(304,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1485273328,3,0,'192.168.7.160','a:2:{i:0;s:11:\"typo3-admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('9ccb7d36dd3157c22b23e87046dd0ee2','tt_content',3,'pi_flexform','sDEF/lDEF/items/vDEF/','','',0,0,0,'tx_typo3demo_news_domain_model_item',1,''),('f8969fa287ae6bd127074bd402fecb67','tt_content',1,'pi_flexform','sDEF/lDEF/items/vDEF/','','',0,1,0,'tx_typo3demo_news_domain_model_item',1,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Rtehtmlarea\\Hook\\Install\\DeprecatedRteProperties','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Rtehtmlarea\\Hook\\Install\\RteAcronymButtonRenamedToAbbreviation','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ContentTypesToTextMediaUpdate','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MediaceExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DbalAndAdodbExtractionUpdate','i:1;'),(22,'core','formProtectionSessionToken:1','s:64:\"f22dbdea41d935c15a27feb5865c902365050ad99c9e66c3ed30f322f3879abe\";'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseCharsetUpdate','i:1;'),(24,'extensionDataImport','typo3/sysext/css_styled_content/ext_tables_static+adt.sql','i:1;'),(25,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','i:1;'),(26,'extensionDataImport','typo3conf/ext/realurl/ext_tables_static+adt.sql','i:1;'),(27,'extensionDataImport','typo3conf/ext/vhs/ext_tables_static+adt.sql','i:1;'),(28,'extensionDataImport','typo3conf/ext/engine/ext_tables_static+adt.sql','i:1;'),(29,'tx_realurl','updateLevel','i:2;'),(30,'extensionDataImport','typo3conf/ext/news/ext_tables_static+adt.sql','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8_unicode_ci,
  `constants` text COLLATE utf8_unicode_ci,
  `config` text COLLATE utf8_unicode_ci,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `basedOn` tinytext COLLATE utf8_unicode_ci,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1485129322,256,1484952072,1,'Default Template','',0,0,0,1,3,'EXT:fluid_styled_content/Configuration/TypoScript/Static/','<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/TemplateConstants.ts\">','<INCLUDE_TYPOSCRIPT: source=\"FILE:fileadmin/Resources/Private/TypoScripts/TemplateSetup.ts\">','',NULL,'',0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_form_predefinedform` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rowDescription` text COLLATE utf8_unicode_ci,
  `bodytext` mediumtext COLLATE utf8_unicode_ci,
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `records` text COLLATE utf8_unicode_ci,
  `pages` text COLLATE utf8_unicode_ci,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `colPos` int(10) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `menu_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `select_key` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text COLLATE utf8_unicode_ci,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,0,0,0,0,'',2,0,0,0,'',0,0,0,0,0,0,1485268311,1484956762,1,0,0,1000000000,'news_article','',NULL,NULL,0,0,0,2,0,0,0,1,0,NULL,NULL,0,0,0,'','0','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"category\">\n                    <value index=\"vDEF\">Tech</value>\n                </field>\n                <field index=\"items\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,0),(2,0,0,0,0,'',2,0,0,0,'',0,0,0,0,0,0,1485269845,1485269465,1,0,0,1000000000,'news_article','',NULL,NULL,0,0,0,2,0,0,0,1,0,NULL,NULL,0,0,0,'','0','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"category\">\n                    <value index=\"vDEF\">Tech</value>\n                </field>\n                <field index=\"items\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,0),(3,0,0,0,0,'',2,0,0,0,'',0,0,0,0,0,0,1485270030,1485270030,1,0,0,256,'news_article','',NULL,NULL,0,0,0,2,0,0,0,0,0,NULL,NULL,0,0,0,'','0','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"category\">\n                    <value index=\"vDEF\">Tech</value>\n                </field>\n                <field index=\"items\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'',NULL,'',NULL,124,0,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `review_state` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_pathdata`
--

DROP TABLE IF EXISTS `tx_realurl_pathdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_pathdata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `mpvar` tinytext COLLATE utf8_unicode_ci,
  `pagepath` text COLLATE utf8_unicode_ci,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`pagepath`(32),`expire`),
  KEY `pathq2` (`page_id`,`language_id`,`rootpage_id`,`expire`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_pathdata`
--

LOCK TABLES `tx_realurl_pathdata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_pathdata` DISABLE KEYS */;
INSERT INTO `tx_realurl_pathdata` VALUES (1,0,2,0,1,'','startseite',0);
/*!40000 ALTER TABLE `tx_realurl_pathdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value_id` int(11) NOT NULL DEFAULT '0',
  `lang` int(11) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `tablename` (`tablename`),
  KEY `bk_realurl01` (`field_alias`(20),`field_id`,`value_id`,`lang`,`expire`),
  KEY `bk_realurl02` (`tablename`(32),`field_alias`(20),`field_id`,`value_alias`(20),`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias`
--

LOCK TABLES `tx_realurl_uniqalias` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_uniqalias_cache_map`
--

DROP TABLE IF EXISTS `tx_realurl_uniqalias_cache_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_uniqalias_cache_map` (
  `alias_uid` int(11) NOT NULL DEFAULT '0',
  `url_cache_id` int(11) NOT NULL DEFAULT '0',
  KEY `check_existence` (`alias_uid`,`url_cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_uniqalias_cache_map`
--

LOCK TABLES `tx_realurl_uniqalias_cache_map` WRITE;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_realurl_uniqalias_cache_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_realurl_urldata`
--

DROP TABLE IF EXISTS `tx_realurl_urldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_realurl_urldata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `rootpage_id` int(11) NOT NULL DEFAULT '0',
  `original_url` text COLLATE utf8_unicode_ci,
  `speaking_url` text COLLATE utf8_unicode_ci,
  `request_variables` text COLLATE utf8_unicode_ci,
  `expire` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `pathq1` (`rootpage_id`,`original_url`(32),`expire`),
  KEY `pathq2` (`rootpage_id`,`speaking_url`(32)),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_realurl_urldata`
--

LOCK TABLES `tx_realurl_urldata` WRITE;
/*!40000 ALTER TABLE `tx_realurl_urldata` DISABLE KEYS */;
INSERT INTO `tx_realurl_urldata` VALUES (1,0,1484953149,2,1,'id=2','startseite.html','{\"id\":\"2\"}',0);
/*!40000 ALTER TABLE `tx_realurl_urldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `acronym` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text COLLATE utf8_unicode_ci,
  `lastexecution_context` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` blob,
  `serialized_executions` blob,
  `task_group` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_typo3demo_news_domain_model_item`
--

DROP TABLE IF EXISTS `tx_typo3demo_news_domain_model_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_typo3demo_news_domain_model_item` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_at` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `tt_content` int(11) DEFAULT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `inverted` smallint(6) NOT NULL DEFAULT '0',
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_typo3demo_news_domain_model_item`
--

LOCK TABLES `tx_typo3demo_news_domain_model_item` WRITE;
/*!40000 ALTER TABLE `tx_typo3demo_news_domain_model_item` DISABLE KEYS */;
INSERT INTO `tx_typo3demo_news_domain_model_item` VALUES (1,2,1485270030,1,1485270030,0,3,1,0,0,'','iPhone 10','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',1,'l','blue',0);
/*!40000 ALTER TABLE `tx_typo3demo_news_domain_model_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-24 17:00:26
