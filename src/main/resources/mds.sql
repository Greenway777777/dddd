CREATE DATABASE  IF NOT EXISTS `mds` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mds`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mds
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `date` varchar(20) DEFAULT '',
  `press` varchar(255) DEFAULT '',
  `abs` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_book_category_on_cid` (`cid`),
  CONSTRAINT `fk_book_category_on_cid` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'https://easyreadfs.nosdn.127.net/rP-sJR7F_pxdxHqpK2mNFg==/8796093024778130420','月亮和六便士','【英】威廉·萨默塞特·毛姆','2015-05','崩坏出版社','书中的主人公“我”是伦敦怀才不遇的作家，偶然间认识了一位证券经纪人，对方在人届中年后突然响应内心的呼唤，离经叛道舍弃一切，先是奔赴巴黎，后又到南太平洋的塔希提岛与土著人一起生活，全身心投入绘画，并在死后声名大噪。',1),(2,'https://easyreadfs.nosdn.127.net/3Q77bwMfbZjkzBtFyxQAkA==/8796093024821838615','傲慢与偏见','【英】简·奥斯丁','2016-03','崩坏出版社','本书被列为经久不衰的世界十大小说名著之一，作者的创作风格历经两百年，至今仍影响着世界文坛上的一些作家。',1),(3,'https://easyreadfs.nosdn.127.net/gtpRSmAtZgyPqyS4G7CP_w==/8796093024794988778','复活','【俄】列夫·托尔斯泰','2016-07','崩坏出版社','《复活》由列夫·尼古拉耶维奇·托尔斯泰历经10年创作而成。',1),(4,'http://localhost:8443/api/file/f2f08r.jpg','猫城记','老舍','2009-07','崩坏出版社','飞机坠毁在火星，“我”误入火星上最古的国“猫城”，结识了形形色色的猫人：身兼大地主、政客、诗人、军官的大蝎，世事洞明而敷衍的小蝎，只抢迷叶与妇女的猫兵，守着八个小妾的公使太太，杀人不犯法的外国人，打老师的学生，卖文物的学者，起哄为业的党棍，抢着投降的军阀……一声炮响，繁华落尽。',2),(5,'https://easyreadfs.nosdn.127.net/LaSuXDNCOiNQHifzCjmP7g==/8796093024784995553','废都','贾平凹','2012-09','崩坏出版社','小说以历史文化悠久的古都西安当代生活为背景，记叙“闲散文人”作家庄之蝶、书法家龚靖元、画家汪希眠及艺术家阮知非“四大名人”的起居生活，展现了浓缩的西京城形形色色“废都”景观。',2),(6,'https://easyreadfs.nosdn.127.net/5iextEbR1CucVLBS4Z7uLw==/8796093023953383863','你要去相信，没有到不了的明天','卢思浩','2017-03','崩坏出版社','人人网主页红人，治愈系作家卢思浩首部主题随笔作品。',2),(7,'https://easyreadfs.nosdn.127.net/ob380h41kftQvWmR_C9iOQ==/8796093024810099796','梦的解析：最佳译本','【奥地利】西格蒙德·弗洛伊德','2014-06','崩坏出版社','《梦的解析》，又译《解梦》，不是周公解梦那种，它是“科学”解梦。人的意识只有不到1/3的部分可以被准确感知。读懂了梦，我们就读懂了自己另外的2/3。',3),(8,'https://easyreadfs.nosdn.127.net/_toJ5NkHHomszhXKaQcz-g==/8796093024041686409','茶馆','老舍','2007-04','崩坏出版社','《茶馆》是老舍的话剧名作，剧中故事全部发生在北京城一个茶馆里，茶馆里人来人往，会聚了各色人物、三教九流，一个大茶馆就是一个小社会。老舍先生抓住了这个场景的特点，将半个世纪的时间跨度，五十七个主、次人物形象高度浓缩在茶馆之中，展现了清末戊戌变法失败后、民国初年北洋军阀割据时期、国民党政权覆灭前夕三个时代的生活场景，概括了中国社会各阶层、数个势力的尖锐对立和冲突，揭示了半封建、半殖民地中国的历史命运。',3),(9,'https://easyreadfs.nosdn.127.net/8jA7AekDK7ISeQTaVflHAw==/8796093024736465934','极简生活：简而美地活','【日】有川真由美,曹逸冰','2018-02','崩坏出版社','人生要懂得取舍。只有把生活变得简单一点，才会有精力去发现人生中真正重要的东西。如何在有限的时间里享受只此一回的人生，创造出精彩的价值和属于自己的幸福？你有这方面的知识与技能吗？本书教给你！',4),(10,'https://easyreadfs.nosdn.127.net/lFUdivaVhckwkfouRYtWYg==/6597109349075673940','世界上最成功的销售方法','霍金斯（美）','2019-01','崩坏出版社','这是一种可以创造销售奇迹的方法。',5),(11,'https://easyreadfs.nosdn.127.net/f8W7hb36piMaOTJj1WmUkw==/8796093024733001533','什么是科学','吴国盛','1012-04','崩坏出版社','中国古代没有科学？是偶然的错失，还是一种命定？北大备受欢迎的科学史课主讲教授，《科学的历程》作者吴国盛重磅新作，为你解析东西方文化基因的差异，揭晓科学的本质。',6),(12,'https://easyreadfs.nosdn.127.net/hOnx1KThUktozHFL_hvHjw==/8796093024523617217','奇点临近','【美】雷·库兹韦尔','2018-02','崩坏出版社','《奇点临近》是一本有思维方法论启示的书；是一本站在历史的高度，正面思考科技力量的书；是一本充满想象与预言，但又不失科学论证的书。',6);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'文学'),(2,'流行'),(3,'文化'),(4,'生活'),(5,'经营'),(6,'科技');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','35b9529f89cfb9b848060ca576237e17','8O+vDNr2sI3N82BI31fu1A==','管理员','12312312312','evan_nightly@163.com',1),(2,'test','85087738b6c1e1d212683bfafc163853','JBba3j5qRykIPJQYTNNH9A==','测试','12312312312','123@123.com',1),(3,'editor','8583a2d965d6159edbf65c82d871fa3e','MZTe7Qwf9QgXBXrZzTIqJQ==','编辑',NULL,NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-20 14:53:09
