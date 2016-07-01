-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: schooldb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '		',
  `building_name` varchar(45) DEFAULT NULL,
  `Lng` double(200,6) DEFAULT NULL,
  `Lat` double(200,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,'Boccardo Business Complex',37.336672,-121.878569),(2,'Business Tower',37.337056,-121.878912),(3,'BK',37.336800,-121.880146),(4,'Student Union',37.336288,-121.881573),(5,'Music Building',37.335759,-121.880844),(6,'CH',37.335495,-121.880865),(7,'Art Building',37.335862,-121.879878),(8,'Event Center',37.335324,-121.879964),(9,'Health Building',37.335734,-121.879170),(10,'Boccardo Business Complex',37.336638,-121.878580),(11,'Cooling Plant',37.336075,-121.878473),(12,'Campus Village B',37.334958,-121.877325),(13,'Campus Village A',37.334377,-121.877528),(14,'Campus Village C',37.335444,-121.878204),(15,'Joe West Hall',37.334292,-121.878011),(16,'Dining Commons',37.334028,-121.878312),(17,'AS Print Shop',37.334369,-121.879642),(18,'Hoover Hall',37.334420,-121.880221),(19,'Royce Hall',37.334011,-121.879342),(20,'Washburn Hall',37.336440,-121.879342),(21,'University Police Department',37.333328,-121.880243),(22,'South Garage',37.333004,-121.881155),(23,'Duncan Hall',37.332612,-121.881959),(24,'West Garage',37.332407,-121.883032),(25,'Associated Students House',37.333294,-121.882668),(26,'MacQuarrie Hall',37.333550,-121.881766),(27,'Sweeney Hall',37.333780,-121.880854),(28,'Faculty Offices',37.334633,-121.882582),(29,'Spartan Memorial',37.334249,-121.883354),(30,'Yoshihiro Uchida hall',37.333610,-121.883826),(31,'Spartan Complex Central',37.334190,-121.882582),(32,'Spartan Complex East',37.334377,-121.881874),(33,'Student Wellness Center',37.334761,-121.881241),(34,'Central Classroom Building',37.335546,-121.881766),(35,'Dwight Bentel Hall',37.335128,-121.882335),(36,'Morris Dailey Auditorium',37.335239,-121.883193),(37,'Clark Hall',37.336186,-121.882442),(38,'Computer Center',37.335981,-121.883247),(39,'Science Building',37.334919,-121.884835),(40,'Washington Square Hall',37.334497,-121.884449),(41,'Dr Martin Luther KIng, Library',37.335521,-121.885049),(42,'University Theatre',37.336123,-121.884797),(43,'Hugh Gillis Hall',37.336041,-121.884577),(44,'Dudley Moorhead Hall',37.336639,-121.883714),(45,'Instructional Resource Center',37.336263,-121.883944),(46,'Career Center',37.336870,-121.883156),(47,'Administration',37.336681,-121.882753),(48,'Engineering Building',37.337303,-121.881520),(49,'Industrial Studies',37.337568,-121.880575);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `room_number` varchar(45) DEFAULT NULL,
  `course_number` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_courses_teachers1_idx` (`teacher_id`),
  KEY `fk_courses_buildings1_idx` (`building_id`),
  CONSTRAINT `fk_courses_buildings1` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_courses_teachers1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'CS 040','SCI 311','42257','Intro to Computer',1,39),(2,'CS 042','MH','49759','Discrete Math',2,26),(3,'CS 042','MH 223','49760','Discrete Math',2,26),(4,'CS 042','MH 223','49761','Discrete Math',2,26),(5,'CS 042','MH 223','49762','Discrete Math',2,26),(6,'CS 154','MH 223','49763','Haha',2,26),(7,'CS 042','MH 323','49764','Discrete Math',2,26),(8,'CS 046B','MH 225','48090','Intro to Data Strc',3,26),(9,'CS 042','MH 223','49767','Discrete Math',2,26),(10,'CS 042','MH 323','49768','Discrete Math',2,26),(11,'CS 042','MH 323','49769','Discrete Math',2,26),(12,'CS 042','MH 223','49770','Discrete Math',2,26),(13,'CS 042','MH 223','50251','Discrete Math',2,26),(14,'CS 046A','YUH 124','48080','Intro to Progrmng',1,30),(15,'CS 046A','MH 422','48082','Intro to Progrmng',1,26),(16,'CS 046A','MH 422','48083','Intro to Progrmng',1,26),(17,'CS 046A','MH 422','48084','Intro to Progrmng',1,26),(18,'CS 046A','MH 225','48086','Intro to Progrmng',1,26),(19,'CS 046A','SCI 311','48087','Intro to Progrmng',1,39),(20,'CS 046A','SCI 311','48088','Intro to Progrmng',1,39),(21,'CS 046B','WSQ 109','48089','Intro to Data Strc',3,40),(22,'AAS 033A','ENG 343','41844','Art Histroy',2,48),(23,'PHIL 009','BBC 205','40298','Math/Logic For GE',2,10),(24,'SOCS 137','SH 347','47882','CA Hist Soc Sci Pers',2,27);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_has_students`
--

DROP TABLE IF EXISTS `courses_has_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_has_students` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`),
  KEY `fk_courses_has_students_students1_idx` (`student_id`),
  KEY `fk_courses_has_students_courses_idx` (`course_id`),
  CONSTRAINT `fk_courses_has_students_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_courses_has_students_students1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_has_students`
--

LOCK TABLES `courses_has_students` WRITE;
/*!40000 ALTER TABLE `courses_has_students` DISABLE KEYS */;
INSERT INTO `courses_has_students` VALUES (1,10),(3,10),(4,10),(5,10),(6,10),(12,10),(15,10),(22,10),(23,10),(1,11),(2,11),(5,11),(6,11),(7,11),(8,11),(22,11),(23,11),(24,11),(3,20),(4,20),(21,20),(1,21),(3,21),(4,21);
/*!40000 ALTER TABLE `courses_has_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_students1_idx` (`student_id`),
  KEY `fk_messages_post1_idx` (`post_id`),
  CONSTRAINT `fk_messages_post1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_messages_students1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_students1_idx` (`student_id`),
  CONSTRAINT `fk_post_students1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `school_location` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (6,'miguel','okok','casey123@gmail.com','6693630922','San Jose State','$2b$12$5MdgKbvv2VHam.RyGXZJo.yBatpit4SHS0q.STUkoIZl/8k7LC8u2','2016-06-29 12:19:07','2016-06-29 12:19:07'),(7,'hello','hello','hello@aool.com','6666666666','San Jose State','$2b$12$bCPM5vXeDABGYTdwwv25nOlSdoW8nWL6syZAtJn2bW2p3wLwQKe/2','2016-06-29 13:34:10','2016-06-29 13:34:10'),(8,'asdf','asdfasag','adsasdfasf@aol.com','6666666666','San Jose State','$2b$12$s5DHRnEewnwdQx12lGyd0ukvKw3sHZZwAaPOja8mU7DhnjVa38RFq','2016-06-29 15:00:05','2016-06-29 15:00:05'),(9,'Ish','Khan','me@gmail.com','5104619099','San Jose State','$2b$12$bsO.8jqfigTNrUziodoAIOJmnAWNg7QBZvZfLaTyDbVRL9WbxApoa','2016-06-29 16:07:22','2016-06-29 16:07:22'),(10,'Nicole','Zhou','nicole@gmail.com','4085798860','San Jose State University','$2b$12$R/sjSPb/f1aEzgx/bMCSjOf1Ld.yR9tUW2kK7OitoJXH18WUsVjkG','2016-06-30 11:47:46','2016-06-30 11:47:46'),(11,'Changtong Nicole','Zhou','changtongz@yahoo.com','4089957806','san jose state','FB User','2016-06-30 17:15:52','2016-06-30 17:15:52'),(16,'KC','Audelo','kcclown@gmail.com','6666666666','san jose','FB User','2016-07-01 00:06:18','2016-07-01 00:06:18'),(20,'Evelyn','Pan','hpp5036@psu.edu','8147776258','Penn State University','FB User','2016-07-01 01:36:41','2016-07-01 01:36:41'),(21,'Ash','Khan','leedsuk001@hotmail.co.uk','33333333333333','san jose','FB User','2016-07-01 01:39:59','2016-07-01 01:39:59'),(22,'kc','kc','kc@gmail.com','3333333333333','san jose','$2b$12$JWBDPonqiCuJ6ve/Q1ph5.9D6LTm2s0dldrSFxrpltdDEh3j/L7b.','2016-07-01 01:44:30','2016-07-01 01:44:30');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'K','O\'Brien','O\'Brien','6666666666','$2b$12$5MdgKbvv2VHam.RyGXZJo.yBatpit4SHS0q.STUkoIZl/8k7LC8u2',NULL,NULL),(2,'n/a','n/a','n/a','1234567890','$2b$12$5MdgKbvv2VHam.RyGXZJo.yBatpit4SHS0q.STUkoIZl/8k7LC8u2',NULL,NULL),(3,'P','Heller','n/a','0123456789','$2b$12$5MdgKbvv2VHam.RyGXZJo.yBatpit4SHS0q.STUkoIZl/8k7LC8u2',NULL,NULL);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_has_students`
--

DROP TABLE IF EXISTS `teachers_has_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_has_students` (
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_id`,`student_id`),
  KEY `fk_teachers_has_students_students1_idx` (`student_id`),
  KEY `fk_teachers_has_students_teachers1_idx` (`teacher_id`),
  CONSTRAINT `fk_teachers_has_students_students1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_teachers_has_students_teachers1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_has_students`
--

LOCK TABLES `teachers_has_students` WRITE;
/*!40000 ALTER TABLE `teachers_has_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers_has_students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-01  2:58:08
