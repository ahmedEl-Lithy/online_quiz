CREATE DATABASE  IF NOT EXISTS `online_quiz`;
USE `online_quiz`;

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `answer1` varchar(45) DEFAULT NULL,
  `answer2` varchar(45) DEFAULT NULL,
  `answer3` varchar(45) DEFAULT NULL,
  `answer4` varchar(45) DEFAULT NULL,
  `correctAnswer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f3_idx` (`quiz_id`),
  CONSTRAINT `f3` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

LOCK TABLES `question` WRITE;
INSERT INTO `question` VALUES (1,'ana asmy a ?',6,'adel','marwan','essam','ibrahim','btngan'),(11,'ahmed 7omar ?',6,'ah','la2','ah','la2','la2'),(12,'fdf?',6,'sd','f','sdf','sfa','sdf'),(13,'dsadsad ?',6,'22','Test','dsad','dsad','2'),(14,'dsadsad ?',7,'dsadsa','hsuien','dsadsa','dsadsad','dsadsa'),(15,'dsadasd ?',6,'ddsadsa','dasdas','ibrahim','dsadas','3'),(16,'dsadsa ?',6,'dsadsa','Adel','Mohmed','dsad','Mohmed');
UNLOCK TABLES;


DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `visible` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f2_idx` (`subject_id`),
  CONSTRAINT `f2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `quiz` WRITE;
INSERT INTO `quiz` VALUES (1,'A',1,'0'),(3,'B',2,'1'),(6,'C',2,'1'),(7,'D',7,'0');
UNLOCK TABLES;

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


LOCK TABLES `subject` WRITE;
INSERT INTO `subject` VALUES (1,'internetOfThings'),(2,'BigData'),(3,'Oracle');
UNLOCK TABLES;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `f1_idx` (`usertype`),
  CONSTRAINT `f1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'aaa','ahmed@email.com','Ahmed',3,'aaa'),(2,'aaa','adel@email.com','Adel',2,'aaa');
UNLOCK TABLES;


DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `usertype` WRITE;
INSERT INTO `usertype` VALUES (1,'admin'),(2,'teacher'),(3,'student');
UNLOCK TABLES;
