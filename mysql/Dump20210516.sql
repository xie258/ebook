-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ebook
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `bbs_comment`
--

DROP TABLE IF EXISTS `bbs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs_comment` (
  `commentId` int NOT NULL AUTO_INCREMENT,
  `bbsId` int NOT NULL,
  `author` varchar(45) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`commentId`),
  UNIQUE KEY `commentId_UNIQUE` (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_comment`
--

LOCK TABLES `bbs_comment` WRITE;
/*!40000 ALTER TABLE `bbs_comment` DISABLE KEYS */;
INSERT INTO `bbs_comment` VALUES (12,14,'teacher1','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','只会写代码的是码农；学好数据库，基本能混口饭吃；在此基础上再学好操作系统和计算机网络，就能当一个不错的程序员。如果能再把组成原理、数据结构/算法、编译原理学通透，再加上丰富的实践经验，就能算是一个优秀的程序员工程师了。','2021-05-09 21:48:52'),(13,14,'student1','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','想成为一名优秀的程序员，至少还需要学：数据库、操作系统、计算机网络、组成原理、数据结构与算法、编译原理等知识。','2021-05-09 21:50:02'),(14,14,'student3','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','作为一个写代码的程序员，最终都是要处理数据，因此数据库算是必备的技能之一，如果是初学者的话，推荐《MySQL必知必会》这本书，更深入一点的话可以去看《MySQL技术内幕——InnoDB存储引擎》。','2021-05-09 21:51:06'),(15,17,'student3','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','都在贬低超算的能力，我想说，超算挖矿绝对可行。我自己就在挖矿，真正挖过矿的人告诉你，所谓矿机，就是老显卡组装而成的N显卡电脑主机，其实与电脑挖矿差不多。只是性价比高，因为越老显卡，性价比越高，回本周期从330天变180天，我研究过了，越老显卡，回本越快，这种矿机，用甚至是用超老的二手显卡组装而成。。。不信你去查查，用10张rx3090组装而成的专业矿机，能超10张rx3090电脑，50%挖矿效率吗？不能！所以矿机并没你想象的赚。专业矿机，你真以为他们自己做芯片?！无非是芯片焊接改装显卡罢了。自己买显卡挖矿其实与买矿机差异不大。（但关键是你没有货源，比不过矿机性价比高。但如果矿机没有质保（保险服务），就别买，因为是二手显卡改装而成，容易坏。）','2021-05-09 21:53:22'),(16,17,'student1','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','别说什么算力不断增长。算力增长了，币价不也增长了吗？！你如果算过eth，会发现，算力成本没变。也就是算力增长了价格也增长，算力÷价格，发现与一年前比无变化。比特币也是，但比特币4年前比低了七八倍。只是近两年不变。算力增加价格也增加，这就是这些矿币的核心意义。明白为什么矿币会不断增值了吗？！因为算力增加会导致币价也增加！！这就是比特币等矿币的核心奥秘。（至于为什么.. 因为币量恒定不变，算力多了，挖得就少(故意设计成这样的，很精妙)，但币价不可能低于挖矿成本，所以币价势必上涨，还不明白就自己去看论文。精妙之处在于算力价值不变，也就是算力÷价格，不变。算力与价格成比例关系。但实际会受很多因素影响，所以还是变了。基本都是算力单价降低，但实际降低不多，具体还得自行去查，我看过eth与比特币的，算力单价近年差异不大。也就是当天总算力与当天币价近2年来成正比例关系）','2021-05-09 21:54:28'),(17,18,'student1','https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png','CUDA内存模型CUDA中每个线程Thread都有自己的私有的本地内存(Local Memory)和寄存器(Register)，用来保存在核函数内不加修饰的声明的局部变量；线程块BLOCK有自己的共享内存(Shared Memory)，对BLOCK内所有的线程可见；GRID中所有线程都能访问读取常量内存(Constant Memory)和纹理内存(Texture Memory)，但是不能写，他们是只读的；全局内存(Global Memory)是GPU内最常见的内存，也就是我们常说的显存，对每个线程都可读写，容量最大、速度最慢。','2021-05-09 21:55:55');
/*!40000 ALTER TABLE `bbs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_topic`
--

DROP TABLE IF EXISTS `bbs_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs_topic` (
  `idbbs` int NOT NULL AUTO_INCREMENT,
  `author` varchar(45) NOT NULL,
  `topicName` varchar(100) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`idbbs`),
  UNIQUE KEY `idbbs_UNIQUE` (`idbbs`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_topic`
--

LOCK TABLES `bbs_topic` WRITE;
/*!40000 ALTER TABLE `bbs_topic` DISABLE KEYS */;
INSERT INTO `bbs_topic` VALUES (14,'teacher1','编程除了学语言还要学什么？','2021-05-09 21:44:59'),(17,'student3','如果超级计算机用来挖矿会怎么样？','2021-05-09 21:51:51'),(18,'student1','CUDA程序优化','2021-05-09 21:55:24');
/*!40000 ALTER TABLE `bbs_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_notification`
--

DROP TABLE IF EXISTS `class_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_notification` (
  `notificationId` int NOT NULL AUTO_INCREMENT,
  `className` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(200) NOT NULL,
  `noticeTime` datetime NOT NULL,
  PRIMARY KEY (`notificationId`),
  UNIQUE KEY `notificationId_UNIQUE` (`notificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='发布通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_notification`
--

LOCK TABLES `class_notification` WRITE;
/*!40000 ALTER TABLE `class_notification` DISABLE KEYS */;
INSERT INTO `class_notification` VALUES (5,'计科181','2021元旦放假','2021.1.1 ~ 2021.1.3 放假','2021-05-08 23:18:37'),(6,'网络182','2021元旦放假','2021.1.1 ~ 2021.1.3 放假','2021-05-09 12:04:04'),(7,'数学1','2021元旦放假','2021.1.1 ~ 2021.1.3 放假','2021-05-09 20:07:36'),(8,'语文1','2021元旦放假','2021.1.1 ~ 2021.1.3 放假','2021-05-09 20:29:49');
/*!40000 ALTER TABLE `class_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_student`
--

DROP TABLE IF EXISTS `class_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_student` (
  `studentName` varchar(20) NOT NULL,
  `className` varchar(20) NOT NULL,
  `status` int NOT NULL COMMENT '0 (未加入)\\n1 (已加入）',
  PRIMARY KEY (`studentName`,`className`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_student`
--

LOCK TABLES `class_student` WRITE;
/*!40000 ALTER TABLE `class_student` DISABLE KEYS */;
INSERT INTO `class_student` VALUES ('student1','数学1',1),('student1','数学2',1),('student1','数学3',1),('student1','英语1',1),('student1','计科181',1),('student1','语文2',1),('student1','软件183',1),('student2','数学1',1),('student2','数学2',1),('student2','网络182',1),('student2','计科181',1),('student2','语文2',1),('student2','软件183',1),('student3','数学1',1),('student3','数学2',1),('student3','网络182',1),('student3','英语2',1),('student3','语文1',1),('student3','语文2',1),('student3','软件183',1),('student4','数学1',1),('student4','数学2',1),('student4','网络182',1),('student4','英语2',1),('student4','语文1',1),('student4','语文2',1),('student5','数学1',1),('student5','数学2',1),('student5','数学3',1),('student5','网络182',1),('student5','英语2',1),('student5','计科181',1),('student5','语文2',1),('student5','软件183',1);
/*!40000 ALTER TABLE `class_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teacher`
--

DROP TABLE IF EXISTS `class_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teacher` (
  `className` varchar(45) NOT NULL,
  `teacherName` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`className`),
  UNIQUE KEY `className_UNIQUE` (`className`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='教师班级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teacher`
--

LOCK TABLES `class_teacher` WRITE;
/*!40000 ALTER TABLE `class_teacher` DISABLE KEYS */;
INSERT INTO `class_teacher` VALUES ('数学1','teacher1','动态几何'),('数学2','teacher1','常微分方程'),('数学3','teacher1','偏微分方程'),('网络182','admin','网络编程'),('英语1','teacher3','听力'),('英语2','teacher3','完形填空'),('计科181','admin','计算机科学与技术'),('语文1','teacher2','阅读理解'),('语文2','teacher2','写作技巧'),('软件183','admin','软件工程');
/*!40000 ALTER TABLE `class_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebook`
--

DROP TABLE IF EXISTS `ebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebook` (
  `ebookId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `author` varchar(20) NOT NULL,
  `createTime` datetime NOT NULL,
  `contentHtml` text NOT NULL,
  PRIMARY KEY (`ebookId`),
  UNIQUE KEY `ebookId_UNIQUE` (`ebookId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebook`
--

LOCK TABLES `ebook` WRITE;
/*!40000 ALTER TABLE `ebook` DISABLE KEYS */;
INSERT INTO `ebook` VALUES (1,'test','admin','2021-05-09 22:00:17','<h1>echart</h1><p>饼图echart 图表</p><div style=\"width:500px;height:400px\" class=\"md-echarts\">{\"width\":500,\"height\":400,\"series\":[{\"name\":\"访问来源\",\"type\":\"pie\",\"radius\":\"55%\",\"data\":[{\"value\":235,\"name\":\"视频广告\"},{\"value\":274,\"name\":\"联盟广告\"},{\"value\":310,\"name\":\"邮件营销\"},{\"value\":335,\"name\":\"直接访问\"},{\"value\":400,\"name\":\"搜索引擎\"}]}]}</div>');
/*!40000 ALTER TABLE `ebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebook_note`
--

DROP TABLE IF EXISTS `ebook_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebook_note` (
  `noteId` int unsigned NOT NULL AUTO_INCREMENT,
  `ebookId` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `contentHtml` text NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebook_note`
--

LOCK TABLES `ebook_note` WRITE;
/*!40000 ALTER TABLE `ebook_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebook_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper_question`
--

DROP TABLE IF EXISTS `paper_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper_question` (
  `questionId` int unsigned NOT NULL AUTO_INCREMENT,
  `questionName` varchar(500) NOT NULL,
  `questionContent` text NOT NULL,
  `creator` varchar(45) NOT NULL,
  `createTime` timestamp NOT NULL,
  `questionType` varchar(2) NOT NULL COMMENT '1 choice;\n2 askcontent',
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `question_id_UNIQUE` (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper_question`
--

LOCK TABLES `paper_question` WRITE;
/*!40000 ALTER TABLE `paper_question` DISABLE KEYS */;
INSERT INTO `paper_question` VALUES (16,'为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。','{\'title\': \'为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\', \'answerA\': \'栈\', \'answerB\': \'队列\', \'answerC\': \'树\', \'answerD\': \'图\', \'answerTrue\': \'\'}','admin','2021-05-09 10:30:21','1'),(17,'设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。','{\'title\': \'设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。\', \'answerA\': \'1\', \'answerB\': \'2\', \'answerC\': \'3\', \'answerD\': \'4\', \'answerTrue\': \'\'}','admin','2021-05-09 10:31:11','1'),(18,'微机硬件系统中最核心的部件是 ____ 。','{\'title\': \'微机硬件系统中最核心的部件是 ____ 。\', \'answerA\': \'内存储器\', \'answerB\': \'输入输出设备 \', \'answerC\': \'CPU\', \'answerD\': \'硬盘\', \'answerTrue\': \'\'}','admin','2021-05-09 10:34:08','1'),(19,'根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象','{\'title\': \'根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\', \'answerA\': \'字符数字量\', \'answerB\': \'物理量\', \'answerC\': \'数字量\', \'answerD\': \'数字、字符和物理量\', \'answerTrue\': \'\'}','admin','2021-05-09 10:34:36','1'),(20,'用MIPS来衡量的计算机性能指标是 ____ 。','{\'title\': \'用MIPS来衡量的计算机性能指标是 ____ 。\', \'answerA\': \'传输速率\', \'answerB\': \'存储容量\', \'answerC\': \'字长 \', \'answerD\': \'运算速度\', \'answerTrue\': \'\'}','admin','2021-05-09 10:35:04','1'),(21,'交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。','{\'title\': \'交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。\', \'answerA\': \'Windows系统\', \'answerB\': \'DOS系统\', \'answerC\': \'分时系统\', \'answerD\': \'批处理系统\', \'answerTrue\': \'\'}','admin','2021-05-09 10:35:30','1'),(22,'请列出计算机的输入设备和输出设备','请列出计算机的输入设备和输出设备','admin','2021-05-09 10:36:16','2'),(23,'CPU的组成','CPU的组成','admin','2021-05-09 10:36:54','2'),(24,'进程和线程的区别','进程和线程的区别','admin','2021-05-09 10:37:12','2'),(25,'请简述一下数据库的三个范式','请简述一下数据库的三个范式','admin','2021-05-11 05:20:04','2');
/*!40000 ALTER TABLE `paper_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_paper`
--

DROP TABLE IF EXISTS `student_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_paper` (
  `stuPaperId` int NOT NULL AUTO_INCREMENT,
  `studentName` varchar(45) NOT NULL,
  `paperId` int NOT NULL,
  `askContent` text,
  `selectContent` text,
  `createTime` datetime NOT NULL,
  `score` float DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL COMMENT '0 ： 创建试卷\n1： 完成试卷\n2：批改试卷',
  PRIMARY KEY (`studentName`,`paperId`),
  UNIQUE KEY `stuPaperId_UNIQUE` (`stuPaperId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_paper`
--

LOCK TABLES `student_paper` WRITE;
/*!40000 ALTER TABLE `student_paper` DISABLE KEYS */;
INSERT INTO `student_paper` VALUES (13,'student1',19,'[{\"title\":\"CPU的组成\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','2021-05-09 22:00:17',NULL,NULL,'0'),(17,'student1',20,'[{\"title\":\"请列出计算机的输入设备和输出设备\",\"answer\":\"键盘、鼠标\",\"score\":1},{\"title\":\"进程和线程的区别\",\"answer\":\"进程粒度更大\"}]','[{\"title\":\"设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。\",\"answerA\":\"1\",\"answerB\":\"2\",\"answerC\":\"3\",\"answerD\":\"4\",\"answerTrue\":1},{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":3,\"score\":1}]','2021-05-11 13:21:59',2,NULL,'2'),(9,'student2',14,'[{\"title\":\"进程和线程的区别\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"微机硬件系统中最核心的部件是 ____ 。\",\"answerA\":\"内存储器\",\"answerB\":\"输入输出设备 \",\"answerC\":\"CPU\",\"answerD\":\"硬盘\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','2021-05-09 20:10:35',NULL,NULL,'0'),(18,'student2',20,'[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','[{\"title\":\"设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。\",\"answerA\":\"1\",\"answerB\":\"2\",\"answerC\":\"3\",\"answerD\":\"4\",\"answerTrue\":\"\"},{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"}]','2021-05-11 13:21:59',NULL,NULL,'0'),(10,'student3',14,'[{\"title\":\"进程和线程的区别\",\"answer\":\"进程包括了线程\",\"score\":30},{\"title\":\"请列出计算机的输入设备和输出设备\",\"answer\":\"显示器、键盘、鼠标\",\"score\":30}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":4,\"score\":10},{\"title\":\"微机硬件系统中最核心的部件是 ____ 。\",\"answerA\":\"内存储器\",\"answerB\":\"输入输出设备 \",\"answerC\":\"CPU\",\"answerD\":\"硬盘\",\"answerTrue\":2,\"score\":10},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":3,\"score\":10},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":2,\"score\":10}]','2021-05-09 20:10:35',100,NULL,'2'),(14,'student3',18,'[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','2021-05-09 22:00:22',NULL,NULL,'0'),(12,'student3',19,'[{\"title\":\"CPU的组成\",\"answer\":\"控制器、运算器\",\"score\":20},{\"title\":\"请列出计算机的输入设备和输出设备\",\"answer\":\"键盘、鼠标、显示器\",\"score\":20}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\",\"score\":0},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\",\"score\":0},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\",\"score\":0}]','2021-05-09 21:22:50',40,NULL,'2'),(8,'student4',15,'[{\"title\":\"CPU的组成\"}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。\",\"answerA\":\"Windows系统\",\"answerB\":\"DOS系统\",\"answerC\":\"分时系统\",\"answerD\":\"批处理系统\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"}]','2021-05-09 20:10:29',NULL,NULL,'0'),(15,'student4',18,'[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','2021-05-09 22:00:22',NULL,NULL,'0'),(16,'student5',18,'[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','2021-05-09 22:00:22',NULL,NULL,'0'),(19,'student5',20,'[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','[{\"title\":\"设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。\",\"answerA\":\"1\",\"answerB\":\"2\",\"answerC\":\"3\",\"answerD\":\"4\",\"answerTrue\":\"\"},{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"}]','2021-05-11 13:21:59',NULL,NULL,'0');
/*!40000 ALTER TABLE `student_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_paper`
--

DROP TABLE IF EXISTS `teacher_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_paper` (
  `paperId` int NOT NULL AUTO_INCREMENT,
  `paperName` varchar(45) NOT NULL,
  `paperDescription` varchar(200) NOT NULL,
  `selectContent` text,
  `askContent` text,
  `createTime` datetime NOT NULL,
  `creator` varchar(45) NOT NULL,
  PRIMARY KEY (`paperId`),
  UNIQUE KEY `paperId_UNIQUE` (`paperId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='试卷';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_paper`
--

LOCK TABLES `teacher_paper` WRITE;
/*!40000 ALTER TABLE `teacher_paper` DISABLE KEYS */;
INSERT INTO `teacher_paper` VALUES (10,'数据结构','考察队列、栈','[{\"title\":\"在数据结构中，从逻辑上可以把数据结构分成（）\",\"answerA\":\"动态结构和静态结构\",\"answerB\":\"紧凑结构和非紧凑结构\",\"answerC\":\"线性结构和非线性结构\",\"answerD\":\"内部结构和外部结构\",\"answerTrue\":\"\"},{\"title\":\"顺序表是线性表的（ ）\",\"answerA\":\"链式存储结构\",\"answerB\":\"顺序存储结构\",\"answerC\":\"索引存储结构\",\"answerD\":\"散列存储结构\",\"answerTrue\":\"\"},{\"title\":\"某二叉树的前序和后序序列正好相同，则该二叉树一定是（ ）的二叉树。\",\"answerA\":\"空或只有一个结点\",\"answerB\":\"高度等于其结点数\",\"answerC\":\"任一结点无左孩子\",\"answerD\":\"任一结点无右孩子\",\"answerTrue\":\"\"},{\"title\":\"以下说法错误的是（ ）\",\"answerA\":\"每个存储结点只能存放一个数据元素\",\"answerB\":\"数据元素之间的关联方式可由存储结点之间的关联方式直接表达\",\"answerC\":\"一种存储结构可以在两个级别上讨论。其一是机器级，其二是语言级\",\"answerD\":\"语言级描述可经编译自动转换成机器级，因此也可以看成是一种机内表示\",\"answerTrue\":\"\"}]','[{\"title\":\"设将整数a、b、c、d依次进栈，而只要栈非空，就可以将出栈操作夹入其中。请问能否得到出栈序列adbc和dcba？为什么？\"},{\"title\":\"简述链队的类型定义。\"}]','2021-05-09 00:02:03','admin'),(12,'计算机试题一','考察学生基础能力','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"微机硬件系统中最核心的部件是 ____ 。\",\"answerA\":\"内存储器\",\"answerB\":\"输入输出设备 \",\"answerC\":\"CPU\",\"answerD\":\"硬盘\",\"answerTrue\":\"\"},{\"title\":\"交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。\",\"answerA\":\"Windows系统\",\"answerB\":\"DOS系统\",\"answerC\":\"分时系统\",\"answerD\":\"批处理系统\",\"answerTrue\":\"\"}]','[{\"title\":\"进程和线程的区别\"}]','2021-05-09 18:38:07','admin'),(13,'计算机试题二','考察学生基础能力','[{\"title\":\"交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。\",\"answerA\":\"Windows系统\",\"answerB\":\"DOS系统\",\"answerC\":\"分时系统\",\"answerD\":\"批处理系统\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"},{\"title\":\"设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。\",\"answerA\":\"1\",\"answerB\":\"2\",\"answerC\":\"3\",\"answerD\":\"4\",\"answerTrue\":\"\"}]','[{\"title\":\"CPU的组成\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','2021-05-09 18:38:47','admin'),(14,'计算机3','基础知识','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"微机硬件系统中最核心的部件是 ____ 。\",\"answerA\":\"内存储器\",\"answerB\":\"输入输出设备 \",\"answerC\":\"CPU\",\"answerD\":\"硬盘\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','[{\"title\":\"进程和线程的区别\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','2021-05-09 20:02:12','teacher1'),(15,'计算机4','基础知识','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。\",\"answerA\":\"Windows系统\",\"answerB\":\"DOS系统\",\"answerC\":\"分时系统\",\"answerD\":\"批处理系统\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"}]','[{\"title\":\"CPU的组成\"}]','2021-05-09 20:02:32','teacher1'),(16,'计算机8','基础考核','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"微机硬件系统中最核心的部件是 ____ 。\",\"answerA\":\"内存储器\",\"answerB\":\"输入输出设备 \",\"answerC\":\"CPU\",\"answerD\":\"硬盘\",\"answerTrue\":\"\"}]','[{\"title\":\"CPU的组成\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','2021-05-09 20:04:05','teacher2'),(17,'计算机测试','测验','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"交互式操作系统允许用户频繁地与计算机对话，下列不属于交互式操作系统的是____。\",\"answerA\":\"Windows系统\",\"answerB\":\"DOS系统\",\"answerC\":\"分时系统\",\"answerD\":\"批处理系统\",\"answerTrue\":\"\"}]','[{\"title\":\"进程和线程的区别\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','2021-05-09 20:04:30','teacher2'),(18,'计算机综合1','综合能力','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','2021-05-09 20:05:35','teacher3'),(19,'计算机综合2','综合能力','[{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"},{\"title\":\"根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象\",\"answerA\":\"字符数字量\",\"answerB\":\"物理量\",\"answerC\":\"数字量\",\"answerD\":\"数字、字符和物理量\",\"answerTrue\":\"\"},{\"title\":\"用MIPS来衡量的计算机性能指标是 ____ 。\",\"answerA\":\"传输速率\",\"answerB\":\"存储容量\",\"answerC\":\"字长 \",\"answerD\":\"运算速度\",\"answerTrue\":\"\"}]','[{\"title\":\"CPU的组成\"},{\"title\":\"请列出计算机的输入设备和输出设备\"}]','2021-05-09 20:05:56','teacher3'),(20,'计算机基础6','基础知识','[{\"title\":\"设栈 S 和队列 Q 的初始状态均为空，元素 a,b,c,d,e,f,g 依次进入栈 S。若每个元素出栈后立即进入队列 Q， 且 7 个元素出队的顺序b,d,c,f,e,a,g，则栈 S 的容量至少是 。\",\"answerA\":\"1\",\"answerB\":\"2\",\"answerC\":\"3\",\"answerD\":\"4\",\"answerTrue\":\"\"},{\"title\":\"为解决计算机主机与打印机之间速度不匹配问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是 。\",\"answerA\":\"栈\",\"answerB\":\"队列\",\"answerC\":\"树\",\"answerD\":\"图\",\"answerTrue\":\"\"}]','[{\"title\":\"请列出计算机的输入设备和输出设备\"},{\"title\":\"进程和线程的区别\"}]','2021-05-11 13:21:50','admin');
/*!40000 ALTER TABLE `teacher_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `types` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3 COMMENT='user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (61,'admin','e10adc3949ba59abbe56e057f20f883e',1),(65,'student1','e10adc3949ba59abbe56e057f20f883e',2),(66,'student2','e10adc3949ba59abbe56e057f20f883e',2),(67,'student3','e10adc3949ba59abbe56e057f20f883e',2),(68,'student4','e10adc3949ba59abbe56e057f20f883e',2),(69,'student5','e10adc3949ba59abbe56e057f20f883e',2),(70,'teacher1','e10adc3949ba59abbe56e057f20f883e',1),(71,'teacher2','e10adc3949ba59abbe56e057f20f883e',1),(72,'teacher3','e10adc3949ba59abbe56e057f20f883e',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_token` (
  `userId` int NOT NULL,
  `token` varchar(64) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 22:43:18
