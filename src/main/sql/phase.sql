/*
SQLyog Community Edition- MySQL GUI v6.56
MySQL - 5.6.20 : Database - jhs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `phase` */

DROP TABLE IF EXISTS `phase`;

CREATE TABLE `phase` (
  `phase_id` int(20) NOT NULL,
  `phase_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`phase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `phase` */

insert  into `phase`(`phase_id`,`phase_type`) values (1,'Letter'),(2,'Phone call'),(3,'Technical interview');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
