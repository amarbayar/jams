/*
SQLyog Community Edition- MySQL GUI v6.56
MySQL - 5.6.20 : Database - jhs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `recruiter` */

DROP TABLE IF EXISTS `recruiter`;

CREATE TABLE `recruiter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recruiter_address` varchar(255) DEFAULT NULL,
  `recruiter_email` varchar(255) DEFAULT NULL,
  `recuiter_firstName` varchar(255) DEFAULT NULL,
  `recuiter_lastName` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `recruiter` */

insert  into `recruiter`(`id`,`recruiter_address`,`recruiter_email`,`recuiter_firstName`,`recuiter_lastName`,`company_id`) values (1,'Khokh hot','adiyafre@gmail.com','Adtya','Bayansan',NULL),(2,'Khokh hot','adiyafre@gmail.com','Adiya','Bayansan',NULL),(3,'ub,bgd','frenzymn@gmail.com','Adiya','Bayansan',NULL),(4,'a','a','a','a',NULL),(5,'Khokh hot','adiyafre@gmail.com','Adiya','Bayansan',NULL),(6,'Khokh hot','adiyafre@gmail.com','Adiya','Bayansan',NULL),(7,'Khokh hot','adiyafre@gmail.com','Adiya','Bayansan',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
