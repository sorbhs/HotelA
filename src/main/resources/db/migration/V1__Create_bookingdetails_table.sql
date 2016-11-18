DROP TABLE IF EXISTS `newhotel`.`user`;
CREATE TABLE  `newhotel`.`user` (
  `UserId` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `newhotel`.`hotel`;
CREATE TABLE  `newhotel`.`hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `hotel_address` varchar(255) DEFAULT NULL,
  `hotel_city` varchar(255) DEFAULT NULL,
  `hotel_state` varchar(255) DEFAULT NULL,
  `hotel_zip` int(11) DEFAULT NULL,
  `hotel_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `newhotel`.`bookingdetails`;
CREATE TABLE  `newhotel`.`bookingdetails` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `CheckIn` date DEFAULT NULL,
  `CheckOut` date DEFAULT NULL,
  `hotelId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `FK4a03giac4gd3ifqjut4ar954r` (`hotelId`),
  KEY `FK68x1mqxry9gs6eysqi21l9ecy` (`userId`),
  CONSTRAINT FOREIGN KEY (`hotelId`) REFERENCES `hotel` (`hotel_id`),
  CONSTRAINT FOREIGN KEY (`userId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
