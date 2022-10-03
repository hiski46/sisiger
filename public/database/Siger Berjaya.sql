CREATE TABLE `user` (
  `userCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isActive` varchar(1) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `tour` (
  `tourCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `stateCode` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `protocol` varchar(255) NOT NULL,
  `track` varchar(255) NOT NULL,
  `ticket` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `numberOfTourists` varchar(10) NOT NULL,
  `quotaOfTourists` varchar(10) NOT NULL,
  `isOpen` ENUM ('0', '1') NOT NULL,
  `isSafety` ENUM ('0', '1') NOT NULL,
  `traffic` ENUM ('1', '2', '3', '4') NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `tour_image` (
  `tiCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tourCode` bigint NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `comment_tour` (
  `ctCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint NOT NULL,
  `tourCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `state` (
  `stateCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `state` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `article` (
  `articleCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `comment_article` (
  `caCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint NOT NULL,
  `articleCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `archive_article` (
  `aaCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `articleCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `archive_tour` (
  `atCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `tourCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `like_article` (
  `laCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `articleCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `like_tour` (
  `ltCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `tourCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `like_medical_facility` (
  `lmfCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `mfCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `medical_facility` (
  `mfCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `stateCode` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `medical_facility_image` (
  `mfiCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `mfCode` bigint NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `comment_medical_facility` (
  `cmfCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint NOT NULL,
  `mfCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `like_hotel` (
  `lhCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `hotelCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `hotel` (
  `hotelCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `stateCode` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `hotel_image` (
  `hiCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `hotelCode` bigint NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `comment_hotel` (
  `chCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint NOT NULL,
  `hotelCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `like_restaurant` (
  `lrCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `restaurantCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `restaurant` (
  `restaurantCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `stateCode` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `restaurant_image` (
  `riCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `restaurantCode` bigint NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `comment_restaurant` (
  `crCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint NOT NULL,
  `restaurantCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `like_police` (
  `lpCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `userCode` bigint NOT NULL,
  `policeCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `police` (
  `policeCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `stateCode` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `locationName` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `phoneCall` varchar(255) NOT NULL,
  `phoneSMS` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `police_image` (
  `piCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `policeCode` bigint NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `comment_police` (
  `cpCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `userCode` bigint NOT NULL,
  `policeCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `review_police` (
  `rpCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint NOT NULL,
  `policeCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `review_restaurant` (
  `rrCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint NOT NULL,
  `restaurantCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `review_hotel` (
  `rhCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint NOT NULL,
  `hotelCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `review_medical_facility` (
  `rmfCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint NOT NULL,
  `mfCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

CREATE TABLE `review_tour` (
  `rtCode` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `star` varchar(1) NOT NULL,
  `userCode` bigint NOT NULL,
  `tourCode` bigint NOT NULL,
  `createAt` datetime NOT NULL DEFAULT NOW(),
  `updateAt` datetime,
  `deleteAt` datetime
);

ALTER TABLE `tour` ADD FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

ALTER TABLE `tour_image` ADD FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

ALTER TABLE `comment_tour` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `comment_tour` ADD FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

ALTER TABLE `comment_article` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `comment_article` ADD FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`);

ALTER TABLE `archive_article` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `archive_article` ADD FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`);

ALTER TABLE `archive_tour` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `archive_tour` ADD FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

ALTER TABLE `like_article` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `like_article` ADD FOREIGN KEY (`articleCode`) REFERENCES `article` (`articleCode`);

ALTER TABLE `like_tour` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `like_tour` ADD FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);

ALTER TABLE `like_medical_facility` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `like_medical_facility` ADD FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

ALTER TABLE `medical_facility` ADD FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

ALTER TABLE `medical_facility_image` ADD FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

ALTER TABLE `comment_medical_facility` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `comment_medical_facility` ADD FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

ALTER TABLE `like_hotel` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `like_hotel` ADD FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

ALTER TABLE `hotel` ADD FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

ALTER TABLE `hotel_image` ADD FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

ALTER TABLE `comment_hotel` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `comment_hotel` ADD FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

ALTER TABLE `like_restaurant` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `like_restaurant` ADD FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

ALTER TABLE `restaurant` ADD FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

ALTER TABLE `restaurant_image` ADD FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

ALTER TABLE `comment_restaurant` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `comment_restaurant` ADD FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

ALTER TABLE `like_police` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `like_police` ADD FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

ALTER TABLE `police` ADD FOREIGN KEY (`stateCode`) REFERENCES `state` (`stateCode`);

ALTER TABLE `police_image` ADD FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

ALTER TABLE `comment_police` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `comment_police` ADD FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

ALTER TABLE `review_police` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `review_police` ADD FOREIGN KEY (`policeCode`) REFERENCES `police` (`policeCode`);

ALTER TABLE `review_restaurant` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `review_restaurant` ADD FOREIGN KEY (`restaurantCode`) REFERENCES `restaurant` (`restaurantCode`);

ALTER TABLE `review_hotel` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `review_hotel` ADD FOREIGN KEY (`hotelCode`) REFERENCES `hotel` (`hotelCode`);

ALTER TABLE `review_medical_facility` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `review_medical_facility` ADD FOREIGN KEY (`mfCode`) REFERENCES `medical_facility` (`mfCode`);

ALTER TABLE `review_tour` ADD FOREIGN KEY (`userCode`) REFERENCES `user` (`userCode`);

ALTER TABLE `review_tour` ADD FOREIGN KEY (`tourCode`) REFERENCES `tour` (`tourCode`);
