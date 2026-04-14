/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.5-10.4.17-MariaDB : Database - khushwant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`khushwant` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `khushwant`;

/*Table structure for table `admindata` */

DROP TABLE IF EXISTS `admindata`;

CREATE TABLE `admindata` (
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admindata` */

insert  into `admindata`(`name`,`address`,`contact`,`email`) values ('Akshat ','34 Talwandi','9876543211','a@gmail.com'),('AA','45 Kota','8908908900','aa12@gmail.com'),('admin host','kota','7410258963','admin@gmail.com'),('khushwant singh','keshavpura','8078643614','khushwant@gmail.com'),('mukesh','9414885171','353 keshavpura','mukesh@gmail.com'),('rahul','patan','7894561237','rahul@gmail.com'),('vikramsingh','35 dadabari,kota','7568056946','vikram@gmail.com');

/*Table structure for table `doctordata` */

DROP TABLE IF EXISTS `doctordata`;

CREATE TABLE `doctordata` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(100) DEFAULT NULL,
  `dcontact` varchar(100) DEFAULT NULL,
  `daddress` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `specialisation` varchar(100) DEFAULT NULL,
  `demail` varchar(100) NOT NULL,
  `timings` varchar(100) DEFAULT NULL,
  `monday` varchar(100) DEFAULT NULL,
  `tuesday` varchar(100) DEFAULT NULL,
  `wednesday` varchar(100) DEFAULT NULL,
  `thrusday` varchar(100) DEFAULT NULL,
  `friday` varchar(100) DEFAULT NULL,
  `saturday` varchar(100) DEFAULT NULL,
  `sunday` varchar(100) DEFAULT NULL,
  `email_hospital` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`,`demail`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `doctordata` */

insert  into `doctordata`(`doctor_id`,`dname`,`dcontact`,`daddress`,`qualification`,`specialisation`,`demail`,`timings`,`monday`,`tuesday`,`wednesday`,`thrusday`,`friday`,`saturday`,`sunday`,`email_hospital`) values (1,'kushwant','8078643613','patan','MBBS','Cardiologist','khush@gmail.com','8am to 1pm','no','yes','no','yes','no','no','yes','rajasthani@gmail.com'),(2,'vikram','8078643613','kota','MD','Dermatologist','vgtkota@gmail.com','8am to 1pm','yes','yes','yes','no','no','no','no','kush@gmail.com'),(3,'Rahul Sharma','7410852369','bharatpur','Master of Surgery','Orthogolist','rahul@gmail.com','10am to 4pm','yes','no','no','no','no','yes','yes','rajasthani@gmail.com'),(4,'Raj Kumar','7568056946','new delhi','MBBS','Dermatology','raj2002@gmail.com','8am to 1 pm','yes','yes','yes','yes','yes','yes','no','kush@gmail.com');

/*Table structure for table `hospital_data` */

DROP TABLE IF EXISTS `hospital_data`;

CREATE TABLE `hospital_data` (
  `hname` varchar(100) DEFAULT NULL,
  `lno` varchar(100) DEFAULT NULL,
  `haddress` varchar(100) DEFAULT NULL,
  `hcontact` varchar(100) DEFAULT NULL,
  `emergency` varchar(100) DEFAULT NULL,
  `gbeds` varchar(100) DEFAULT NULL,
  `acbeds` varchar(100) DEFAULT NULL,
  `hemail` varchar(100) NOT NULL,
  PRIMARY KEY (`hemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `hospital_data` */

insert  into `hospital_data`(`hname`,`lno`,`haddress`,`hcontact`,`emergency`,`gbeds`,`acbeds`,`hemail`) values ('kota heart','1001','Dadabari','8078643613','yes','100','90','a@gmail.com'),('bharat vikas','45','vigyan nagar','7845129632','yes','1000','504','kush@gmail.com'),('new rajasthan','7044','vigyan nagar,jhalawar road','9413300204','yes','4000','1000','rajasthani@gmail.com');

/*Table structure for table `logindata` */

DROP TABLE IF EXISTS `logindata`;

CREATE TABLE `logindata` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `logindata` */

insert  into `logindata`(`email`,`password`,`usertype`) values ('a@gmail.com','aa','hospital'),('aa12@gmail.com','a','admin'),('admin@gmail.com','aa','admin'),('khushwant@gmail.com','pass','admin'),('kush@gmail.com','11','hospital'),('mukesh@gmail.com','m','MedicalShop'),('rahul@gmail.com','123','admin'),('rajasthani@gmail.com','rajathan','hospital'),('rajawat12@gmail.com','44','MedicalShop'),('rajawat@gmail.com','rr','MedicalShop'),('Sunil@gmail.com','sunil','MedicalShop'),('vikas@gmail.com','vv','MedicalShop'),('vikram@gmail.com','vv','admin'),('yash@gmail.com','yy','MedicalShop');

/*Table structure for table `medicines_data` */

DROP TABLE IF EXISTS `medicines_data`;

CREATE TABLE `medicines_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `med_name` varchar(200) DEFAULT NULL,
  `gen_name` varchar(200) DEFAULT NULL,
  `manufacture` varchar(200) DEFAULT NULL,
  `batch_no` varchar(50) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `ctg` varchar(50) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `med_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `medicines_data` */

insert  into `medicines_data`(`id`,`med_name`,`gen_name`,`manufacture`,`batch_no`,`exp_date`,`price`,`qty`,`unit`,`ctg`,`des`,`email`) values (1,'Paracetamol','Acetaminophen','GlaxoSmithKline','BAT001','2024-08-10','10.00',100,'tablet','pain reliever','used to relieve headache and fever','vikas@gmail.com'),(5,'Amoxicillin','Amoxicillin','Pfizer','Batch456','2025-07-25','16.00',50,'capsules','Antibiotic','Pain reliever and fever reducer','yash@gmail.com');

/*Table structure for table `shopdata` */

DROP TABLE IF EXISTS `shopdata`;

CREATE TABLE `shopdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `lic_no` varchar(100) DEFAULT NULL,
  `lic_type` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `shopdata` */

insert  into `shopdata`(`id`,`shop_name`,`address`,`phone`,`lic_no`,`lic_type`,`name`,`contact`,`email`) values (2,'Mukesh Medical','kota','7421789456','777','distrubutor','Mukesh kumar','98878645171','mukesh25@gmail.com'),(3,'Sharma Medical Shop','Talwandi','7500-987450','421','Medical Gas','Yash Sharma','7568056946','yash@gmail.com'),(4,'vikas medical','Basant Vihar,kota','7410852369','7894','distributor','vikas meena','8952074969','vikas@gmail.com');

/*Table structure for table `doctor_with_hospital` */

DROP TABLE IF EXISTS `doctor_with_hospital`;

/*!50001 DROP VIEW IF EXISTS `doctor_with_hospital` */;
/*!50001 DROP TABLE IF EXISTS `doctor_with_hospital` */;

/*!50001 CREATE TABLE `doctor_with_hospital` (
  `doctor_id` int(11) NOT NULL,
  `dname` varchar(100) DEFAULT NULL,
  `dcontact` varchar(100) DEFAULT NULL,
  `daddress` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `specialisation` varchar(100) DEFAULT NULL,
  `demail` varchar(100) NOT NULL,
  `timings` varchar(100) DEFAULT NULL,
  `monday` varchar(100) DEFAULT NULL,
  `tuesday` varchar(100) DEFAULT NULL,
  `wednesday` varchar(100) DEFAULT NULL,
  `thrusday` varchar(100) DEFAULT NULL,
  `friday` varchar(100) DEFAULT NULL,
  `saturday` varchar(100) DEFAULT NULL,
  `sunday` varchar(100) DEFAULT NULL,
  `email_hospital` varchar(100) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `lno` varchar(100) DEFAULT NULL,
  `haddress` varchar(100) DEFAULT NULL,
  `hcontact` varchar(100) DEFAULT NULL,
  `emergency` varchar(100) DEFAULT NULL,
  `gbeds` varchar(100) DEFAULT NULL,
  `acbeds` varchar(100) DEFAULT NULL,
  `hemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 */;

/*View structure for view doctor_with_hospital */

/*!50001 DROP TABLE IF EXISTS `doctor_with_hospital` */;
/*!50001 DROP VIEW IF EXISTS `doctor_with_hospital` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `doctor_with_hospital` AS (select `doctordata`.`doctor_id` AS `doctor_id`,`doctordata`.`dname` AS `dname`,`doctordata`.`dcontact` AS `dcontact`,`doctordata`.`daddress` AS `daddress`,`doctordata`.`qualification` AS `qualification`,`doctordata`.`specialisation` AS `specialisation`,`doctordata`.`demail` AS `demail`,`doctordata`.`timings` AS `timings`,`doctordata`.`monday` AS `monday`,`doctordata`.`tuesday` AS `tuesday`,`doctordata`.`wednesday` AS `wednesday`,`doctordata`.`thrusday` AS `thrusday`,`doctordata`.`friday` AS `friday`,`doctordata`.`saturday` AS `saturday`,`doctordata`.`sunday` AS `sunday`,`doctordata`.`email_hospital` AS `email_hospital`,`hospital_data`.`hname` AS `hname`,`hospital_data`.`lno` AS `lno`,`hospital_data`.`haddress` AS `haddress`,`hospital_data`.`hcontact` AS `hcontact`,`hospital_data`.`emergency` AS `emergency`,`hospital_data`.`gbeds` AS `gbeds`,`hospital_data`.`acbeds` AS `acbeds`,`hospital_data`.`hemail` AS `hemail` from (`doctordata` join `hospital_data` on(`doctordata`.`email_hospital` = `hospital_data`.`hemail`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
