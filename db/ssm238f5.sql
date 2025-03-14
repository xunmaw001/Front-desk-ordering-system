-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm238f5
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220320699 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-02-25 02:22:35',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-25 02:22:35',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-25 02:22:35',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-25 02:22:35',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-25 02:22:35',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-25 02:22:35',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614220320698,'2021-02-25 02:32:00',1614220268682,'广东省河源市龙川县龙母镇238国道','张三','13800000000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'meishicaipin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220509959 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-02-25 02:22:35',1,1,'提问1','回复1',1),(52,'2021-02-25 02:22:35',2,2,'提问2','回复2',2),(53,'2021-02-25 02:22:35',3,3,'提问3','回复3',3),(54,'2021-02-25 02:22:35',4,4,'提问4','回复4',4),(55,'2021-02-25 02:22:35',5,5,'提问5','回复5',5),(56,'2021-02-25 02:22:35',6,6,'提问6','回复6',6),(1614220432383,'2021-02-25 02:33:51',1614220268682,NULL,'在吗',NULL,0),(1614220509958,'2021-02-25 02:35:09',1614220268682,1,NULL,'在的 ',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm238f5/upload/1614220187570.jpg'),(2,'picture2','http://localhost:8080/ssm238f5/upload/1614220196004.jpg'),(3,'picture3','http://localhost:8080/ssm238f5/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (61,'2021-02-25 02:22:35','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/ssm238f5/upload/defaultuser_picture1.jpg','773890001@qq.com',100),(62,'2021-02-25 02:22:35','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/ssm238f5/upload/defaultuser_picture2.jpg','773890002@qq.com',100),(63,'2021-02-25 02:22:35','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/ssm238f5/upload/defaultuser_picture3.jpg','773890003@qq.com',100),(64,'2021-02-25 02:22:35','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/ssm238f5/upload/defaultuser_picture4.jpg','773890004@qq.com',100),(65,'2021-02-25 02:22:35','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/ssm238f5/upload/defaultuser_picture5.jpg','773890005@qq.com',100),(66,'2021-02-25 02:22:35','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/ssm238f5/upload/defaultuser_picture6.jpg','773890006@qq.com',100);
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishicaipin`
--

DROP TABLE IF EXISTS `discussmeishicaipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishicaipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220375535 DEFAULT CHARSET=utf8 COMMENT='美食菜品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishicaipin`
--

LOCK TABLES `discussmeishicaipin` WRITE;
/*!40000 ALTER TABLE `discussmeishicaipin` DISABLE KEYS */;
INSERT INTO `discussmeishicaipin` VALUES (121,'2021-02-25 02:22:35',1,1,'评论内容1','回复内容1'),(122,'2021-02-25 02:22:35',2,2,'评论内容2','回复内容2'),(123,'2021-02-25 02:22:35',3,3,'评论内容3','回复内容3'),(124,'2021-02-25 02:22:35',4,4,'评论内容4','回复内容4'),(125,'2021-02-25 02:22:35',5,5,'评论内容5','回复内容5'),(126,'2021-02-25 02:22:35',6,6,'评论内容6','回复内容6'),(1614220375534,'2021-02-25 02:32:54',1614220168774,1614220268682,'测试，点击次数越大 推荐排名越靠前',NULL);
/*!40000 ALTER TABLE `discussmeishicaipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishicaipin`
--

DROP TABLE IF EXISTS `meishicaipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishicaipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishi` varchar(200) DEFAULT NULL COMMENT '美食',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '分量',
  `shicai` longtext COMMENT '食材',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220168775 DEFAULT CHARSET=utf8 COMMENT='美食菜品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishicaipin`
--

LOCK TABLES `meishicaipin` WRITE;
/*!40000 ALTER TABLE `meishicaipin` DISABLE KEYS */;
INSERT INTO `meishicaipin` VALUES (31,'2021-02-25 02:22:35','美食1','川菜','http://localhost:8080/ssm238f5/upload/meishicaipin_tupian1.jpg','分量1','食材1','<p>详情1</p>',1,1,'2021-02-25 10:27:13',2,99.9,1,99),(32,'2021-02-25 02:22:35','美食2','粤菜','http://localhost:8080/ssm238f5/upload/meishicaipin_tupian2.jpg','分量2','食材2','<p>详情2</p>',2,2,'2021-02-25 10:27:19',3,99.9,2,99),(33,'2021-02-25 02:22:35','美食3','鲁菜','http://localhost:8080/ssm238f5/upload/meishicaipin_tupian3.jpg','分量3','食材3','<p>详情3</p>',3,3,'2021-02-25 10:27:26',4,99.9,3,99),(34,'2021-02-25 02:22:35','美食4','浙菜','http://localhost:8080/ssm238f5/upload/meishicaipin_tupian4.jpg','分量4','食材4','<p>详情4</p>',4,4,'2021-02-25 10:27:33',5,99.9,4,99),(35,'2021-02-25 02:22:35','美食5','徽菜','http://localhost:8080/ssm238f5/upload/meishicaipin_tupian5.jpg','分量5','食材5','<p>详情5</p>',5,5,'2021-02-25 10:27:43',6,99.9,5,99),(36,'2021-02-25 02:22:35','美食6','湘菜','http://localhost:8080/ssm238f5/upload/meishicaipin_tupian6.jpg','分量6','食材6','<p>详情6</p>',6,6,'2021-02-25 10:27:53',7,99.9,6,99),(1614220168774,'2021-02-25 02:29:28','山东大虾','湘菜','http://localhost:8080/ssm238f5/upload/1614220117609.jpeg','30kg','大虾，虾仁，辣椒，大蒜','<p>编辑器可上传文字/图片<img src=\"http://localhost:8080/ssm238f5/upload/1614220166706.jpg\"></p>',1,0,'2021-02-25 10:33:22',7,188,1,49);
/*!40000 ALTER TABLE `meishicaipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishicaixi`
--

DROP TABLE IF EXISTS `meishicaixi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishicaixi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220027849 DEFAULT CHARSET=utf8 COMMENT='美食菜系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishicaixi`
--

LOCK TABLES `meishicaixi` WRITE;
/*!40000 ALTER TABLE `meishicaixi` DISABLE KEYS */;
INSERT INTO `meishicaixi` VALUES (1614219901814,'2021-02-25 02:25:01','川菜'),(1614219906878,'2021-02-25 02:25:06','粤菜'),(1614219914364,'2021-02-25 02:25:13','鲁菜'),(1614219962490,'2021-02-25 02:26:01','苏菜'),(1614219969933,'2021-02-25 02:26:09','浙菜'),(1614219980654,'2021-02-25 02:26:19','徽菜'),(1614220027848,'2021-02-25 02:27:07','湘菜');
/*!40000 ALTER TABLE `meishicaixi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishipingfen`
--

DROP TABLE IF EXISTS `meishipingfen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishipingfen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `peisongfen` varchar(200) DEFAULT NULL COMMENT '配送分',
  `baozhuangfen` varchar(200) DEFAULT NULL COMMENT '包装分',
  `caipinfen` varchar(200) DEFAULT NULL COMMENT '菜品分',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `jianyi` longtext COMMENT '建议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220459852 DEFAULT CHARSET=utf8 COMMENT='美食评分';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishipingfen`
--

LOCK TABLES `meishipingfen` WRITE;
/*!40000 ALTER TABLE `meishipingfen` DISABLE KEYS */;
INSERT INTO `meishipingfen` VALUES (41,'2021-02-25 02:22:35','账号1','姓名1','订单号1','1分','1分','1分','2021-02-25 10:22:35','建议1'),(42,'2021-02-25 02:22:35','账号2','姓名2','订单号2','1分','1分','1分','2021-02-25 10:22:35','建议2'),(43,'2021-02-25 02:22:35','账号3','姓名3','订单号3','1分','1分','1分','2021-02-25 10:22:35','建议3'),(44,'2021-02-25 02:22:35','账号4','姓名4','订单号4','1分','1分','1分','2021-02-25 10:22:35','建议4'),(45,'2021-02-25 02:22:35','账号5','姓名5','订单号5','1分','1分','1分','2021-02-25 10:22:35','建议5'),(46,'2021-02-25 02:22:35','账号6','姓名6','订单号6','1分','1分','1分','2021-02-25 10:22:35','建议6'),(1614220459851,'2021-02-25 02:34:18','001','张三','20212251033317875717','4分','5分','3分','2021-02-25 10:34:11','<p>测试</p>');
/*!40000 ALTER TABLE `meishipingfen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220231280 DEFAULT CHARSET=utf8 COMMENT='美食资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-02-25 02:22:35','标题1','简介1','http://localhost:8080/ssm238f5/upload/news_picture1.jpg','内容1'),(112,'2021-02-25 02:22:35','标题2','简介2','http://localhost:8080/ssm238f5/upload/news_picture2.jpg','内容2'),(113,'2021-02-25 02:22:35','标题3','简介3','http://localhost:8080/ssm238f5/upload/news_picture3.jpg','内容3'),(114,'2021-02-25 02:22:35','标题4','简介4','http://localhost:8080/ssm238f5/upload/news_picture4.jpg','内容4'),(115,'2021-02-25 02:22:35','标题5','简介5','http://localhost:8080/ssm238f5/upload/news_picture5.jpg','内容5'),(116,'2021-02-25 02:22:35','标题6','简介6','http://localhost:8080/ssm238f5/upload/news_picture6.jpg','内容6'),(1614220231279,'2021-02-25 02:30:30','美食资讯测试','资讯简介测试','http://localhost:8080/ssm238f5/upload/1614220217767.png','<p>资讯简介测试资讯简介测试资讯简介测试资讯简介测试<img src=\"http://localhost:8080/ssm238f5/upload/1614220229706.png\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'meishicaipin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220388821 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614220388820,'2021-02-25 02:33:08','20212251033317875717','meishicaipin',1614220268682,1614220168774,'山东大虾','http://localhost:8080/ssm238f5/upload/1614220117609.jpeg',1,188,188,188,188,1,'已完成','广东省河源市龙川县龙母镇238国道');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220353375 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614220353374,'2021-02-25 02:32:32',1614220268682,1614220168774,'meishicaipin','山东大虾','http://localhost:8080/ssm238f5/upload/1614220117609.jpeg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','837w34h5wh1m7qwt99zcrhhmc17mu9rk','2021-02-25 02:24:48','2021-02-25 03:34:32'),(2,1614220268682,'001','yonghu','用户','s2y5liiqog5kq1fxj95jnyk2dz5f2jie','2021-02-25 02:31:15','2021-02-25 03:35:34');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-25 02:22:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614220268683 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-02-25 02:22:35','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm238f5/upload/yonghu_zhaopian1.jpg',100),(12,'2021-02-25 02:22:35','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm238f5/upload/yonghu_zhaopian2.jpg',100),(13,'2021-02-25 02:22:35','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm238f5/upload/yonghu_zhaopian3.jpg',100),(14,'2021-02-25 02:22:35','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm238f5/upload/yonghu_zhaopian4.jpg',100),(15,'2021-02-25 02:22:35','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm238f5/upload/yonghu_zhaopian5.jpg',100),(16,'2021-02-25 02:22:35','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm238f5/upload/yonghu_zhaopian6.jpg',100),(1614220268682,'2021-02-25 02:31:08','001','001','张三','男',23,'13800000000','123@qq.com','http://localhost:8080/ssm238f5/upload/1614220287267.jpg',9811);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-01 10:37:32
