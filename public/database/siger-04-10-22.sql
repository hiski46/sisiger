

DROP TABLE IF EXISTS `archive_article`;

CREATE TABLE `archive_article` (
  `aaCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `articleCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`aaCode`),
  KEY `userCode` (`userCode`),
  KEY `articleCode` (`articleCode`),
  CONSTRAINT `archive_article_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `archive_article_ibfk_2` FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `archive_article` */

/*Table structure for table `archive_tour` */

DROP TABLE IF EXISTS `archive_tour`;

CREATE TABLE `archive_tour` (
  `atCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`atCode`),
  KEY `userCode` (`userCode`),
  KEY `tourCode` (`tourCode`),
  CONSTRAINT `archive_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `archive_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `archive_tour` */

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `articleCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`articleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `article` */

/*Table structure for table `comment_article` */

DROP TABLE IF EXISTS `comment_article`;

CREATE TABLE `comment_article` (
  `caCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `articleCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`caCode`),
  KEY `userCode` (`userCode`),
  KEY `articleCode` (`articleCode`),
  CONSTRAINT `comment_article_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `comment_article_ibfk_2` FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment_article` */

/*Table structure for table `comment_hotel` */

DROP TABLE IF EXISTS `comment_hotel`;

CREATE TABLE `comment_hotel` (
  `chCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`chCode`),
  KEY `userCode` (`userCode`),
  KEY `hotelCode` (`hotelCode`),
  CONSTRAINT `comment_hotel_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `comment_hotel_ibfk_2` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment_hotel` */

/*Table structure for table `comment_medical_facility` */

DROP TABLE IF EXISTS `comment_medical_facility`;

CREATE TABLE `comment_medical_facility` (
  `cmfCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`cmfCode`),
  KEY `userCode` (`userCode`),
  KEY `mfCode` (`mfCode`),
  CONSTRAINT `comment_medical_facility_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `comment_medical_facility_ibfk_2` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment_medical_facility` */

/*Table structure for table `comment_police` */

DROP TABLE IF EXISTS `comment_police`;

CREATE TABLE `comment_police` (
  `cpCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`cpCode`),
  KEY `userCode` (`userCode`),
  KEY `policeCode` (`policeCode`),
  CONSTRAINT `comment_police_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `comment_police_ibfk_2` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment_police` */

/*Table structure for table `comment_restaurant` */

DROP TABLE IF EXISTS `comment_restaurant`;

CREATE TABLE `comment_restaurant` (
  `crCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`crCode`),
  KEY `userCode` (`userCode`),
  KEY `restaurantCode` (`restaurantCode`),
  CONSTRAINT `comment_restaurant_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `comment_restaurant_ibfk_2` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment_restaurant` */

/*Table structure for table `comment_tour` */

DROP TABLE IF EXISTS `comment_tour`;

CREATE TABLE `comment_tour` (
  `ctCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`ctCode`),
  KEY `userCode` (`userCode`),
  KEY `tourCode` (`tourCode`),
  CONSTRAINT `comment_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `comment_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment_tour` */

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `hotelCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`hotelCode`),
  KEY `stateCode` (`stateCode`),
  CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hotel` */

/*Table structure for table `hotel_image` */

DROP TABLE IF EXISTS `hotel_image`;

CREATE TABLE `hotel_image` (
  `hiCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotelCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`hiCode`),
  KEY `hotelCode` (`hotelCode`),
  CONSTRAINT `hotel_image_ibfk_1` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hotel_image` */

/*Table structure for table `like_article` */

DROP TABLE IF EXISTS `like_article`;

CREATE TABLE `like_article` (
  `laCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `articleCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`laCode`),
  KEY `userCode` (`userCode`),
  KEY `articleCode` (`articleCode`),
  CONSTRAINT `like_article_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `like_article_ibfk_2` FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `like_article` */

/*Table structure for table `like_hotel` */

DROP TABLE IF EXISTS `like_hotel`;

CREATE TABLE `like_hotel` (
  `lhCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`lhCode`),
  KEY `userCode` (`userCode`),
  KEY `hotelCode` (`hotelCode`),
  CONSTRAINT `like_hotel_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `like_hotel_ibfk_2` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `like_hotel` */

/*Table structure for table `like_medical_facility` */

DROP TABLE IF EXISTS `like_medical_facility`;

CREATE TABLE `like_medical_facility` (
  `lmfCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`lmfCode`),
  KEY `userCode` (`userCode`),
  KEY `mfCode` (`mfCode`),
  CONSTRAINT `like_medical_facility_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `like_medical_facility_ibfk_2` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `like_medical_facility` */

/*Table structure for table `like_police` */

DROP TABLE IF EXISTS `like_police`;

CREATE TABLE `like_police` (
  `lpCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`lpCode`),
  KEY `userCode` (`userCode`),
  KEY `policeCode` (`policeCode`),
  CONSTRAINT `like_police_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `like_police_ibfk_2` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `like_police` */

/*Table structure for table `like_restaurant` */

DROP TABLE IF EXISTS `like_restaurant`;

CREATE TABLE `like_restaurant` (
  `lrCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`lrCode`),
  KEY `userCode` (`userCode`),
  KEY `restaurantCode` (`restaurantCode`),
  CONSTRAINT `like_restaurant_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `like_restaurant_ibfk_2` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `like_restaurant` */

/*Table structure for table `like_tour` */

DROP TABLE IF EXISTS `like_tour`;

CREATE TABLE `like_tour` (
  `ltCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`ltCode`),
  KEY `userCode` (`userCode`),
  KEY `tourCode` (`tourCode`),
  CONSTRAINT `like_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `like_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `like_tour` */

insert  into `like_tour`(`ltCode`,`userCode`,`tourCode`,`createAt`,`updateAt`,`deleteAt`) values 
(1,1,2,'2022-10-02 21:11:48',NULL,NULL),
(2,2,2,'2022-10-02 21:12:05',NULL,NULL),
(3,3,2,'2022-10-02 21:12:20',NULL,NULL),
(4,4,1,'2022-10-02 21:12:31',NULL,NULL);

/*Table structure for table `medical_facility` */

DROP TABLE IF EXISTS `medical_facility`;

CREATE TABLE `medical_facility` (
  `mfCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`mfCode`),
  KEY `stateCode` (`stateCode`),
  CONSTRAINT `medical_facility_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medical_facility` */

/*Table structure for table `medical_facility_image` */

DROP TABLE IF EXISTS `medical_facility_image`;

CREATE TABLE `medical_facility_image` (
  `mfiCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `mfCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`mfiCode`),
  KEY `mfCode` (`mfCode`),
  CONSTRAINT `medical_facility_image_ibfk_1` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medical_facility_image` */

/*Table structure for table `police` */

DROP TABLE IF EXISTS `police`;

CREATE TABLE `police` (
  `policeCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`policeCode`),
  KEY `stateCode` (`stateCode`),
  CONSTRAINT `police_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `police` */

/*Table structure for table `police_image` */

DROP TABLE IF EXISTS `police_image`;

CREATE TABLE `police_image` (
  `piCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `policeCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`piCode`),
  KEY `policeCode` (`policeCode`),
  CONSTRAINT `police_image_ibfk_1` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `police_image` */

/*Table structure for table `restaurant` */

DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant` (
  `restaurantCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`restaurantCode`),
  KEY `stateCode` (`stateCode`),
  CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `restaurant` */

/*Table structure for table `restaurant_image` */

DROP TABLE IF EXISTS `restaurant_image`;

CREATE TABLE `restaurant_image` (
  `riCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `restaurantCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`riCode`),
  KEY `restaurantCode` (`restaurantCode`),
  CONSTRAINT `restaurant_image_ibfk_1` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `restaurant_image` */

/*Table structure for table `review_hotel` */

DROP TABLE IF EXISTS `review_hotel`;

CREATE TABLE `review_hotel` (
  `rhCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `hotelCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`rhCode`),
  KEY `userCode` (`userCode`),
  KEY `hotelCode` (`hotelCode`),
  CONSTRAINT `review_hotel_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `review_hotel_ibfk_2` FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `review_hotel` */

/*Table structure for table `review_medical_facility` */

DROP TABLE IF EXISTS `review_medical_facility`;

CREATE TABLE `review_medical_facility` (
  `rmfCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `mfCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`rmfCode`),
  KEY `userCode` (`userCode`),
  KEY `mfCode` (`mfCode`),
  CONSTRAINT `review_medical_facility_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `review_medical_facility_ibfk_2` FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `review_medical_facility` */

/*Table structure for table `review_police` */

DROP TABLE IF EXISTS `review_police`;

CREATE TABLE `review_police` (
  `rpCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `policeCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`rpCode`),
  KEY `userCode` (`userCode`),
  KEY `policeCode` (`policeCode`),
  CONSTRAINT `review_police_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `review_police_ibfk_2` FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `review_police` */

/*Table structure for table `review_restaurant` */

DROP TABLE IF EXISTS `review_restaurant`;

CREATE TABLE `review_restaurant` (
  `rrCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `restaurantCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`rrCode`),
  KEY `userCode` (`userCode`),
  KEY `restaurantCode` (`restaurantCode`),
  CONSTRAINT `review_restaurant_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `review_restaurant_ibfk_2` FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `review_restaurant` */

/*Table structure for table `review_tour` */

DROP TABLE IF EXISTS `review_tour`;

CREATE TABLE `review_tour` (
  `rtCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint(20) NOT NULL,
  `tourCode` bigint(20) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`rtCode`),
  KEY `userCode` (`userCode`),
  KEY `tourCode` (`tourCode`),
  CONSTRAINT `review_tour_ibfk_1` FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`),
  CONSTRAINT `review_tour_ibfk_2` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `review_tour` */

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `stateCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`stateCode`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `state` */

insert  into `state`(`stateCode`,`state`,`image`,`createAt`,`updateAt`,`deleteAt`) values 
(1,'Bandar Lampung','','2022-09-19 18:31:02','2022-09-19 18:31:02',NULL),
(2,'Lampung Barat','','2022-09-19 16:34:15','2022-09-19 16:34:15',NULL),
(3,'Lampung Selatan','','2022-09-19 16:34:42','2022-09-19 16:34:42',NULL),
(4,'Lampung Tengah','','2022-09-19 16:35:27','2022-09-19 16:35:27',NULL),
(5,'Lampung Timur','','2022-09-19 16:35:35','2022-09-19 16:35:35',NULL),
(6,'Lampung Utara','','2022-09-19 16:35:42','2022-09-19 16:35:42',NULL),
(7,'Mesuji','','2022-09-19 16:35:51','2022-09-19 16:35:51',NULL),
(8,'Pesawaran','','2022-09-19 16:35:59','2022-09-19 16:35:59',NULL),
(9,'Pesisir Barat','','2022-09-19 16:36:09','2022-09-19 16:38:59',NULL),
(10,'Pringsewu','','2022-09-19 16:40:20','2022-09-19 16:40:20',NULL),
(11,'Tanggamus','','2022-09-19 16:40:49','2022-09-19 16:40:49',NULL),
(12,'Tulang Bawang','','2022-09-19 16:41:03','2022-09-19 16:41:03',NULL),
(13,'Tulang Bawang Barat','','2022-09-19 16:41:07','2022-09-19 16:41:07',NULL),
(14,'Way Kanan','','2022-09-19 16:44:18','2022-09-19 16:46:55',NULL),
(15,'Metro','','2022-09-19 16:45:45','2022-09-19 16:49:13','2022-09-19 16:49:13');

/*Table structure for table `tour` */

DROP TABLE IF EXISTS `tour`;

CREATE TABLE `tour` (
  `tourCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `stateCode` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locationName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `track` varchar(255) DEFAULT NULL,
  `ticket` varchar(255) DEFAULT NULL,
  `description` longtext,
  `numberOfTourists` varchar(10) DEFAULT NULL,
  `quotaOfTourists` varchar(10) DEFAULT NULL,
  `isOpen` enum('0','1') DEFAULT NULL,
  `isSafety` enum('0','1') DEFAULT NULL,
  `traffic` enum('1','2','3','4') DEFAULT NULL,
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`tourCode`),
  KEY `stateCode` (`stateCode`),
  CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tour` */

insert  into `tour`(`tourCode`,`stateCode`,`name`,`locationName`,`latitude`,`longitude`,`condition`,`protocol`,`track`,`ticket`,`description`,`numberOfTourists`,`quotaOfTourists`,`isOpen`,`isSafety`,`traffic`,`createAt`,`updateAt`,`deleteAt`) values 
(1,1,'WIra Garden','Kemiling','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-02 21:05:25',NULL,NULL),
(2,3,'Pantai Arang','Kalianda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-02 21:06:14',NULL,NULL),
(3,1,'Lembah Hijau',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-02 22:09:41',NULL,NULL);

/*Table structure for table `tour_image` */

DROP TABLE IF EXISTS `tour_image`;

CREATE TABLE `tour_image` (
  `tiCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `tourCode` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`tiCode`),
  KEY `tourCode` (`tourCode`),
  CONSTRAINT `tour_image_ibfk_1` FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tour_image` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userCode` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isActive` varchar(1) DEFAULT NULL,
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  PRIMARY KEY (`userCode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userCode`,`uid`,`name`,`image`,`email`,`password`,`isActive`,`createAt`,`updateAt`,`deleteAt`) values 
(1,'1','User 1',NULL,NULL,NULL,NULL,'2022-10-02 21:09:30',NULL,NULL),
(2,'2','User 2',NULL,NULL,NULL,NULL,'2022-10-02 21:09:50',NULL,NULL),
(3,'3','User 2',NULL,NULL,NULL,NULL,'2022-10-02 21:10:08',NULL,NULL),
(4,'4','User 4',NULL,NULL,NULL,NULL,'2022-10-02 21:10:20',NULL,NULL);


