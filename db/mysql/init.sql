/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.17 : Database - mvc_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `NAME` varchar(50) NOT NULL COMMENT '姓名',
  `BIRTHDAY` timestamp NULL DEFAULT '1990-01-01 00:00:00' COMMENT '生日',
  `GENDER` enum('F','M') NOT NULL DEFAULT 'M' COMMENT '性别',
  `CLAZZ_ID` bigint(11) NOT NULL COMMENT '班级编号',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`ID`,`NAME`,`BIRTHDAY`,`GENDER`,`CLAZZ_ID`) values (1,'Demo','1990-01-01 00:00:00','F',10001),(2,'d11','1990-01-01 00:00:00','M',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
