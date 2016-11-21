CREATE TABLE  `newhotel`.`user` (
  `UserId` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
);


CREATE TABLE  `newhotel`.`hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `hotel_address` varchar(255) DEFAULT NULL,
  `hotel_city` varchar(255) DEFAULT NULL,
  `hotel_state` varchar(255) DEFAULT NULL,
  `hotel_zip` int(11) DEFAULT NULL,
  `hotel_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ;


CREATE TABLE  `newhotel`.`bookingdetails` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `CheckIn` date DEFAULT NULL,
  `CheckOut` date DEFAULT NULL,
  `hotelId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  CONSTRAINT FOREIGN KEY (`hotelId`) REFERENCES `hotel` (`hotel_id`),
  CONSTRAINT FOREIGN KEY (`userId`) REFERENCES `user` (`UserId`)
);
