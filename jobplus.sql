-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: jobplus
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('35bbd32bf4d7');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_detail`
--

DROP TABLE IF EXISTS `company_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_detail` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(256) NOT NULL,
  `site` varchar(128) NOT NULL,
  `location` varchar(24) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `about` varchar(1024) DEFAULT NULL,
  `tags` varchar(128) DEFAULT NULL,
  `stack` varchar(128) DEFAULT NULL,
  `team_introduction` varchar(256) DEFAULT NULL,
  `welfares` varchar(256) DEFAULT NULL,
  `field` varchar(128) DEFAULT NULL,
  `finance_stage` varchar(128) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `company_detail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_detail`
--

LOCK TABLES `company_detail` WRITE;
/*!40000 ALTER TABLE `company_detail` DISABLE KEYS */;
INSERT INTO `company_detail` VALUES ('2018-07-29 19:39:04','2018-07-29 19:39:04',1,'https://static.lagou.com/thumbnail_160x160/i/image2/M01/6B/F5/CgotOVtNuBaAfYMvAAAnAPfM0hk709.jpg','https://shiyanlou.com','深圳','狡兔三窟','快如脱兔',NULL,NULL,NULL,NULL,'移动互联网','B轮',1),('2018-07-29 19:39:04','2018-07-29 19:39:04',2,'https://static.lagou.com/thumbnail_160x160/i/image/M00/07/29/Cgp3O1bNqgmAYsxmAAAbczUqngM394.png','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网','C轮',2),('2018-07-29 19:39:04','2018-07-29 19:39:04',3,'https://static.lagou.com/thumbnail_160x160/i/image/M00/5B/FB/CgpFT1mRBnKAdv1XAAK5g-5RwUE175.png','https://shiyanlou.com','杭州',NULL,NULL,NULL,NULL,NULL,NULL,'教育','C轮',3),('2018-07-29 19:39:04','2018-07-29 19:39:04',4,'https://static.lagou.com/thumbnail_160x160/i/image3/M00/16/E6/CgpOIFp0CLuAeCL2AAAVNpisHiQ962.png','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网,教育','A轮',4),('2018-07-29 19:39:04','2018-07-29 19:39:04',5,'https://static.lagou.com/thumbnail_160x160/i/image2/M00/1A/0D/CgotOVoAFfyAQt_cAANhx0qp9w8316.jpg','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网,教育','C轮',5),('2018-07-29 19:39:04','2018-07-29 19:39:04',6,'https://static.lagou.com/thumbnail_160x160/i/image3/M00/1E/FD/CgpOIFqQ0d-AQNuEAAArjL8TaoI894.png','https://shiyanlou.com','杭州',NULL,NULL,NULL,NULL,NULL,NULL,'企业服务','B轮',6),('2018-07-29 19:39:04','2018-07-29 19:39:04',7,'https://static.lagou.com/thumbnail_160x160/i/image/M00/5A/EC/CgpFT1mNWoWAetj6AABGsLR8udo253.jpg','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,'企业服务,硬件','A轮',7),('2018-07-29 19:39:04','2018-07-29 19:39:04',8,'https://static.lagou.com/thumbnail_160x160/i/image2/M01/68/CC/CgotOVtGyAmAcQEBAACDpA6iYg8245.png','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网,社交网络','A轮',8),('2018-07-29 19:39:04','2018-07-29 19:39:04',9,'https://static.lagou.com/thumbnail_160x160/i/image/M00/30/92/CgpFT1k6PfyAKci8AAAZ6MerABc927.png','https://shiyanlou.com','深圳',NULL,NULL,NULL,NULL,NULL,NULL,'教育,企业服务','A轮',9),('2018-07-29 19:39:04','2018-07-29 19:39:04',10,'https://static.lagou.com/thumbnail_160x160/i/image/M00/4E/76/Cgp3O1erFL6ASCapAABMnZZiJFI492.png','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网,企业服务','B轮',10),('2018-07-29 19:39:04','2018-07-29 19:39:04',11,'https://static.lagou.com/thumbnail_160x160/i/image/M00/03/AF/CgqKkVbCnW-AEZ2EAABepsa6gCU286.jpg','https://shiyanlou.com','深圳',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网,游戏','A轮',11),('2018-07-29 19:39:04','2018-07-29 19:39:04',12,'https://static.lagou.com/thumbnail_160x160/i/image/M00/87/99/CgpFT1rVhX6AAzBZAAAYTxtEChQ976.png','https://shiyanlou.com','上海',NULL,NULL,NULL,NULL,NULL,NULL,'教育','B轮',12),('2018-07-29 19:39:04','2018-07-29 19:39:04',13,'https://static.lagou.com/thumbnail_160x160/i/image/M00/18/16/CgpEMlj4TmSAdFACAAHQKMB7LuA209.jpg','https://shiyanlou.com','深圳',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网,金融','C轮',13),('2018-07-29 19:39:04','2018-07-29 19:39:04',14,'https://static.lagou.com/thumbnail_160x160/i/image/M00/70/BB/CgpFT1o4wCmAQ9WKAANrOoW3eck005.png','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,'教育,移动互联网','B轮',14),('2018-07-29 19:39:04','2018-07-29 19:39:04',15,'https://static.lagou.com/thumbnail_160x160/i/image/M00/17/19/CgqKkVbw82CAAmBDAABb58-N6IM299.png','https://shiyanlou.com','北京',NULL,NULL,NULL,NULL,NULL,NULL,'移动互联网','C轮',15),('2018-07-29 19:39:04','2018-07-29 19:39:04',16,'https://static.lagou.com/thumbnail_160x160/i/image2/M00/2A/33/CgotOVooq-OAKqXDAAAsWtz2brk407.png','https://shiyanlou.com','杭州',NULL,NULL,NULL,NULL,NULL,NULL,'硬件,其他','A轮',16),('2018-07-30 20:00:19','2018-07-30 20:04:47',17,'http://adadsu.com/wp-content/uploads/2014/10/Adadsu-logo-with-website-thumbnail-160x160.png','www.nokia.com','finland','connecting people','mobile phone',NULL,NULL,NULL,NULL,'硬件','C轮',19);
/*!40000 ALTER TABLE `company_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `response` varchar(256) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE SET NULL,
  CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES ('2018-08-01 09:47:12','2018-08-01 09:47:12',1,1,17,1,NULL,NULL),('2018-08-01 12:10:13','2018-08-01 12:10:13',2,51,17,1,NULL,5),('2018-08-01 19:02:15','2018-08-01 19:03:49',3,101,17,3,NULL,19),('2018-08-01 19:23:02','2018-08-01 19:23:02',4,101,18,1,NULL,19);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_experience`
--

DROP TABLE IF EXISTS `edu_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_experience` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `school` varchar(32) NOT NULL,
  `specialty` varchar(32) NOT NULL,
  `degree` varchar(16) DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `edu_experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_experience`
--

LOCK TABLES `edu_experience` WRITE;
/*!40000 ALTER TABLE `edu_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) DEFAULT NULL,
  `salary_low` int(11) NOT NULL,
  `salary_high` int(11) NOT NULL,
  `location` varchar(24) DEFAULT NULL,
  `tags` varchar(128) DEFAULT NULL,
  `experience_requirement` varchar(32) DEFAULT NULL,
  `degree_requirement` varchar(32) DEFAULT NULL,
  `is_fulltime` tinyint(1) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `is_disable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('2018-07-29 19:49:52','2018-08-01 12:01:41',1,'一样工程师',5000,10000,NULL,'成为,行业,组织','5+','硕士',1,1,14,0,'大好前途',0),('2018-07-29 19:49:52','2018-08-01 12:01:42',2,'说明工程师',3000,18000,NULL,'正在,广告,大学','3-5','博士',1,1,5,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:43',3,'根据工程师',4000,13000,NULL,'可是,可是,我的','1','不限',1,1,12,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:43',4,'以后工程师',7000,14000,NULL,'精华,用户,环境','1','不限',1,1,11,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:44',5,'浏览工程师',6000,12000,NULL,'下载,密码,上海','5+','博士',1,1,4,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:45',6,'单位工程师',3000,15000,NULL,'生产,由于,结果','5+','博士',1,1,4,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:46',7,'当然工程师',6000,15000,NULL,'合作,会员,市场','3-5','硕士',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:47',8,'你们工程师',4000,13000,NULL,'重要,部分,网上','1-3','博士',1,1,14,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:48',9,'决定工程师',7000,11000,NULL,'一些,正在,积分','3-5','不限',1,1,16,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:49',10,'以下工程师',5000,10000,NULL,'自己,产品,制作','3-5','不限',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:50',11,'经验工程师',3000,14000,NULL,'国际,提高,出现','1-3','硕士',1,1,13,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:51',12,'到了工程师',6000,17000,NULL,'社会,公司,手机','不限','本科',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:51',13,'设计工程师',4000,19000,NULL,'资料,个人,实现','1-3','本科',1,1,16,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:52',14,'而且工程师',4000,16000,NULL,'已经,专业,一点','不限','博士',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:01:57',15,'由于工程师',7000,15000,NULL,'特别,北京,可以','3-5','本科',1,1,8,0,NULL,0),('2018-07-29 19:49:52','2018-08-01 12:00:34',16,'的话工程师',4000,16000,NULL,'电子,两个,方面','1','本科',1,1,7,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',17,'会员工程师',7000,8000,NULL,'城市,有限,查看','不限','博士',1,1,15,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',18,'网站工程师',5000,8000,NULL,'为了,电脑,处理','不限','硕士',1,1,1,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',19,'正在工程师',4000,8000,NULL,'决定,的人,法律','3-5','硕士',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',20,'教育工程师',4000,10000,NULL,'比较,可能,国家','5+','本科',1,1,4,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',21,'部门工程师',4000,8000,NULL,'怎么,公司,或者','1-3','硕士',1,1,10,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',22,'北京工程师',4000,13000,NULL,'应用,现在,项目','3-5','博士',1,1,16,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',23,'如果工程师',5000,19000,NULL,'女人,今天,今天','不限','硕士',1,1,12,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',24,'不能工程师',5000,15000,NULL,'我的,准备,得到','1','不限',1,1,7,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',25,'感觉工程师',3000,14000,NULL,'提供,一定,非常','不限','本科',1,1,4,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',26,'设备工程师',6000,19000,NULL,'更新,完全,通过','3-5','不限',1,1,4,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',27,'新闻工程师',5000,17000,NULL,'不是,文章,公司','不限','博士',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',28,'当然工程师',3000,9000,NULL,'地区,不断,不是','不限','本科',1,1,12,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',29,'城市工程师',5000,16000,NULL,'操作,还是,决定','1-3','本科',1,1,6,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',30,'作品工程师',6000,18000,NULL,'知道,日本,登录','不限','博士',1,1,3,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',31,'所以工程师',7000,18000,NULL,'实现,注册,一般','5+','本科',1,1,9,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',32,'这里工程师',7000,14000,NULL,'成功,文件,业务','3-5','本科',1,1,16,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',33,'有关工程师',4000,13000,NULL,'市场,工程,如何','不限','不限',1,1,4,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',34,'一般工程师',3000,17000,NULL,'搜索,联系,主题','5+','硕士',1,1,13,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',35,'开发工程师',3000,10000,NULL,'本站,重要,国内','1','本科',1,1,13,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',36,'到了工程师',5000,11000,NULL,'经验,本站,次数','不限','不限',1,1,7,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',37,'比较工程师',4000,15000,NULL,'不同,出现,是否','不限','本科',1,1,1,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',38,'孩子工程师',5000,16000,NULL,'系列,同时,标题','3-5','本科',1,1,12,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',39,'来自工程师',3000,12000,NULL,'今天,是一,学习','1','不限',1,1,10,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',40,'表示工程师',3000,11000,NULL,'是否,因为,你们','1-3','博士',1,1,10,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',41,'所有工程师',3000,9000,NULL,'希望,等级,包括','3-5','博士',1,1,10,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',42,'计划工程师',5000,11000,NULL,'内容,历史,手机','5+','不限',1,1,10,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',43,'朋友工程师',5000,14000,NULL,'来源,各种,重要','1','硕士',1,1,8,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',44,'人员工程师',6000,13000,NULL,'组织,这个,推荐','1-3','博士',1,1,13,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',45,'简介工程师',4000,10000,NULL,'积分,为了,中国','5+','不限',1,1,3,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',46,'等级工程师',5000,14000,NULL,'全部,简介,很多','5+','本科',1,1,14,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',47,'提供工程师',4000,17000,NULL,'可是,能够,类别','不限','不限',1,1,11,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',48,'政府工程师',4000,12000,NULL,'地址,在线,不会','3-5','不限',1,1,10,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',49,'经营工程师',4000,14000,NULL,'游戏,论坛,出来','不限','硕士',1,1,11,0,NULL,0),('2018-07-29 19:49:52','2018-07-29 19:49:52',50,'社区工程师',3000,15000,NULL,'觉得,大学,只有','1-3','硕士',1,1,5,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',51,'企业工程师',5000,12000,NULL,'网上,是否,运行','3-5','本科',1,1,5,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',52,'在线工程师',6000,10000,NULL,'您的,详细,最后','3-5','博士',1,1,15,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',53,'觉得工程师',4000,14000,NULL,'地方,继续,来源','不限','本科',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',54,'中文工程师',4000,10000,NULL,'只要,质量,一个','3-5','本科',1,1,9,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',55,'简介工程师',6000,19000,NULL,'各种,地址,对于','不限','不限',1,1,9,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',56,'国际工程师',7000,8000,NULL,'知道,用户,人员','1','硕士',1,1,7,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',57,'等级工程师',4000,12000,NULL,'项目,得到,设计','5+','本科',1,1,8,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',58,'作品工程师',3000,9000,NULL,'使用,社区,设备','5+','硕士',1,1,2,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',59,'语言工程师',7000,12000,NULL,'还有,一点,学校','3-5','硕士',1,1,7,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',60,'上海工程师',6000,10000,NULL,'起来,科技,具有','不限','博士',1,1,16,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',61,'而且工程师',5000,15000,NULL,'安全,经营,经济','5+','本科',1,1,16,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',62,'经营工程师',3000,10000,NULL,'提高,能力,论坛','不限','本科',1,1,13,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',63,'世界工程师',4000,13000,NULL,'新闻,更多,什么','3-5','博士',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',64,'信息工程师',4000,13000,NULL,'精华,是否,文件','不限','本科',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',65,'东西工程师',3000,18000,NULL,'程序,之间,欢迎','1-3','硕士',1,1,3,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',66,'经营工程师',4000,13000,NULL,'关于,经营,在线','3-5','本科',1,1,2,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',67,'主题工程师',6000,13000,NULL,'系统,作为,法律','5+','不限',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',68,'认为工程师',5000,16000,NULL,'经营,拥有,然后','1-3','硕士',1,1,16,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',69,'电影工程师',4000,17000,NULL,'可以,那么,点击','不限','本科',1,1,15,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',70,'今天工程师',3000,15000,NULL,'也是,正在,关系','3-5','不限',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',71,'公司工程师',6000,13000,NULL,'来源,的话,一切','1-3','硕士',1,1,9,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',72,'帖子工程师',5000,8000,NULL,'如此,经营,为了','1','博士',1,1,12,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',73,'报告工程师',5000,8000,NULL,'精华,简介,空间','5+','博士',1,1,15,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',74,'研究工程师',3000,16000,NULL,'如果,历史,作品','5+','硕士',1,1,5,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',75,'作为工程师',6000,19000,NULL,'今天,浏览,只是','1-3','不限',1,1,7,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',76,'密码工程师',3000,8000,NULL,'操作,工作,图片','1-3','博士',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',77,'等级工程师',5000,12000,NULL,'学习,专业,国内','1','本科',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',78,'信息工程师',6000,15000,NULL,'新闻,制作,因此','1','不限',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',79,'部门工程师',3000,8000,NULL,'重要,加入,实现','3-5','博士',1,1,8,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',80,'原因工程师',4000,8000,NULL,'合作,感觉,加入','1-3','本科',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',81,'历史工程师',3000,13000,NULL,'提供,音乐,上海','不限','博士',1,1,2,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',82,'管理工程师',4000,19000,NULL,'其实,是一,作品','不限','博士',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',83,'已经工程师',5000,16000,NULL,'他的,最新,欢迎','3-5','本科',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',84,'位置工程师',6000,11000,NULL,'原因,我的,目前','5+','博士',1,1,12,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',85,'各种工程师',7000,16000,NULL,'世界,应用,操作','5+','博士',1,1,11,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',86,'社会工程师',5000,19000,NULL,'谢谢,电影,也是','3-5','本科',1,1,12,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',87,'男人工程师',6000,10000,NULL,'帖子,其实,今年','不限','硕士',1,1,3,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',88,'位置工程师',6000,13000,NULL,'如此,为什,公司','5+','硕士',1,1,13,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',89,'精华工程师',4000,14000,NULL,'工作,一下,加入','1-3','不限',1,1,16,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',90,'社会工程师',7000,15000,NULL,'数据,知道,方法','1','硕士',1,1,6,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',91,'产品工程师',6000,13000,NULL,'程序,当然,说明','3-5','不限',1,1,3,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',92,'环境工程师',6000,12000,NULL,'东西,部门,一点','1-3','本科',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',93,'需要工程师',4000,11000,NULL,'查看,以后,世界','3-5','硕士',1,1,9,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',94,'技术工程师',3000,13000,NULL,'名称,作品,欢迎','5+','不限',1,1,1,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',95,'进行工程师',6000,18000,NULL,'作者,单位,可以','1-3','硕士',1,1,15,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',96,'得到工程师',3000,11000,NULL,'更新,一些,能力','不限','本科',1,1,14,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',97,'可能工程师',6000,17000,NULL,'出来,内容,帖子','5+','本科',1,1,4,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',98,'说明工程师',3000,12000,NULL,'因此,登录,什么','1','本科',1,1,11,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',99,'类别工程师',4000,15000,NULL,'新闻,服务,如果','5+','本科',1,1,16,0,NULL,0),('2018-07-29 19:49:53','2018-07-29 19:49:53',100,'希望工程师',5000,11000,NULL,'来自,处理,这是','不限','本科',1,1,14,0,NULL,0),('2018-08-01 19:01:00','2018-08-01 19:01:00',101,'测试工程师',3000,8000,'北京','硬件，通信，编程','3-5','本科',1,1,19,0,'手机测试',0);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_experience`
--

DROP TABLE IF EXISTS `job_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_experience` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `company` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `job_experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_experience`
--

LOCK TABLES `job_experience` WRITE;
/*!40000 ALTER TABLE `job_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preject_experience`
--

DROP TABLE IF EXISTS `preject_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preject_experience` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `role` varchar(32) DEFAULT NULL,
  `technologys` varchar(64) DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`),
  CONSTRAINT `preject_experience_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `resume` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preject_experience`
--

LOCK TABLES `preject_experience` WRITE;
/*!40000 ALTER TABLE `preject_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `preject_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `work_years` smallint(6) DEFAULT NULL,
  `role` smallint(6) DEFAULT NULL,
  `resume_url` varchar(64) DEFAULT NULL,
  `is_disable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_user_email` (`email`),
  UNIQUE KEY `ix_user_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2018-07-29 19:39:04','2018-07-29 19:39:04',1,'兔展RabbitPre','zhaojing@hotmail.com','pbkdf2:sha256:50000$zqAoWtov$c291baa136b676d96309dc2aac2b8c9b6f4a9ecc689a64602755076505ab2e92',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',2,'APUS Group','chaoyuan@gmail.com','pbkdf2:sha256:50000$RZFCJv5E$489c176a576168474601bc79dda48840cde140bf31f7bc290ce57df503b49f49',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',3,'abc360','baiming@xiang.com','pbkdf2:sha256:50000$lx2K8RNO$677a4423a7ca8ac6d39d41ff21c3525debeb6a3b7871458b2be1f61a86fbc537',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',4,'在行','juanduan@liu.cn','pbkdf2:sha256:50000$skJJx2Nb$723a28398aa64787e5afe2ebeea95fffcb491db9983c348ac6abd61b05d734a4',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',5,'洋葱数学','wenxiulan@yahoo.com','pbkdf2:sha256:50000$ttOKat8X$010e53432e1b78ce7bfe9d1f8574709f88efa6bf9d18ddf242d87e2158d065ad',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',6,'云霁科技','yan49@tian.cn','pbkdf2:sha256:50000$D68GDaEj$c22aea9a2be2b7116c74becda8b7699ef09c3ace23dc2df50e161bbc1ec050ac',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',7,'梅卡曼德','yexiulan@he.com','pbkdf2:sha256:50000$ITCIxfW2$132dc7ad24c0aaebcd04afc5e48eab6c32ff25d9fdcc98de401e5be1e4febfbc',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',8,'么么直播','jing60@yahoo.com','pbkdf2:sha256:50000$EBvgRAbk$18ba9648b76c6eb2086b04a492bec940765f2a6f8db25c88f312b173cbdc5094',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',9,'耀京科技','minggao@gmail.com','pbkdf2:sha256:50000$cN5Jky1l$84596f5ac554b7ff6d248315bf02deda0c1b65db0eb810a806db19c998d62fd6',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',10,'再惠网络','chao10@kang.net','pbkdf2:sha256:50000$tWdNgg0x$f0cb0f56dc74d08c79664d885554979180145a1e752f59c441840dc6cbe6e7c6',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',11,'游戏科学','mgu@yahoo.com','pbkdf2:sha256:50000$xDx22o4l$d7be65cc09b9e85295018e2bcfeb691bf5653a20623144fabc87f8b5665aaa1d',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',12,'CareerFrog职业蛙','kanglei@hotmail.com','pbkdf2:sha256:50000$AK2OIzKe$3be9a5ad7ec1b704124b3fc96d8d9f55180b40e832be7bce411b8afe26dadc63',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',13,'随手科技','naqin@hotmail.com','pbkdf2:sha256:50000$xaNGiopY$7d846e141a8dab1ffe65f27acda1ce7e73004854a6d0d2e4f7326637a718264b',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',14,'考拉阅读','yongliang@hotmail.com','pbkdf2:sha256:50000$DlqtrS0c$e22a04915cdea8aefbc716dd75ceb422d6db57fa808b1406d89f9fc4c0d20dc6',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',15,'航班管家','minwan@tao.com','pbkdf2:sha256:50000$FbEpLGu8$d1eb8ec69d51b0bb0eae99533e8ff3d8092f13ccef634b1fb3ee4351a4874a43',NULL,NULL,NULL,20,NULL,NULL),('2018-07-29 19:39:04','2018-07-29 19:39:04',16,'若联科技','huping@hotmail.com','pbkdf2:sha256:50000$OR7o8dYv$979bc7846a3acb933f51de863ccae7e5ce35bbf35fed343655e88e365374e4cb',NULL,NULL,NULL,20,NULL,NULL),('2018-07-30 08:39:09','2018-08-01 20:01:52',17,'fywest','fywest2109@hotmail.com','pbkdf2:sha256:50000$uQfPpTiH$94b61a2d13fbb862464aa3120913fc39539007c66808487314e283767e63bb9b','Li Li','13501234088',20,30,'/static/resumes/fywest.pdf',NULL),('2018-07-30 19:57:15','2018-08-01 22:14:14',18,'lauri','lauri@lauri.com','pbkdf2:sha256:50000$bgHZ8mYu$9d524e3f5536071ccdafe36fdc65231b019889003874c8ec8990748583c08d80','LauriLee','13501234000',12,10,'/static/resumes\\LauriLee.pdf',0),('2018-07-30 19:57:44','2018-07-30 20:04:47',19,'诺基亚','nokia@nokia.com','pbkdf2:sha256:50000$McyBsmRb$468fc41c10b625dae6d776793914b31b40a429b4154b15a835130d4f02ce1e43',NULL,NULL,NULL,20,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_job`
--

DROP TABLE IF EXISTS `user_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_job` (
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  KEY `job_id` (`job_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_job_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_job_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_job`
--

LOCK TABLES `user_job` WRITE;
/*!40000 ALTER TABLE `user_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-02 15:03:26
