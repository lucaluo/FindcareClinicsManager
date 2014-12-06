# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: dev.db.affordcare.org (MySQL 5.1.56-log)
# Database: affordcare_clinicsapprove
# Generation Time: 2014-12-06 01:21:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ClinicInsert
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ClinicInsert`;

CREATE TABLE `ClinicInsert` (
  `transc_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `approve` enum('Y','N') NOT NULL DEFAULT 'N',
  `update_status` enum('ADD','DELETE','UPDATE') NOT NULL DEFAULT 'ADD',
  `other_comment` text,
  `clinic_id` bigint(20) unsigned DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `clinic_name` varchar(255) NOT NULL DEFAULT '',
  `alternative_name` varchar(255) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `primary_source` text,
  `street_addr1` varchar(255) NOT NULL DEFAULT '',
  `street_addr2` varchar(255) DEFAULT NULL,
  `city` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(20) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `primary_phone` varchar(255) DEFAULT NULL,
  `appointment_phone` varchar(255) DEFAULT NULL,
  `donation_phone` varchar(255) DEFAULT NULL,
  `phone_comments` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `clinic_type` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `primary_contact` varchar(255) DEFAULT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `other_email` varchar(255) DEFAULT NULL,
  `fqhc` enum('Y','N') DEFAULT NULL,
  `other_languages` varchar(255) DEFAULT NULL,
  `pat_population_served` text,
  `area_served` varchar(255) DEFAULT NULL,
  `comments` text,
  `other_service` text,
  `low_cost_amount` int(10) unsigned DEFAULT NULL,
  `sliding_scale_low` int(10) unsigned DEFAULT NULL,
  `sliding_scale_high` int(10) unsigned DEFAULT NULL,
  `no_cost` enum('Y','N') DEFAULT NULL,
  `low_cost` enum('Y','N') DEFAULT NULL,
  `sliding_scale` enum('Y','N') DEFAULT NULL,
  `uninsured_only` enum('Y','N') DEFAULT NULL,
  `medicare` enum('Y','N') DEFAULT NULL,
  `medicaid` enum('Y','N') DEFAULT NULL,
  `CHIP` enum('Y','N') DEFAULT NULL,
  `private` enum('Y','N') DEFAULT NULL,
  `payment_call_clinic` enum('Y','N') DEFAULT NULL,
  `payment_comments` text,
  PRIMARY KEY (`transc_id`),
  UNIQUE KEY `transc_id` (`transc_id`),
  KEY `clinic_id` (`clinic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=latin1;

LOCK TABLES `ClinicInsert` WRITE;
/*!40000 ALTER TABLE `ClinicInsert` DISABLE KEYS */;

INSERT INTO `ClinicInsert` (`transc_id`, `user_id`, `approve`, `update_status`, `other_comment`, `clinic_id`, `last_updated`, `clinic_name`, `alternative_name`, `lat`, `lng`, `primary_source`, `street_addr1`, `street_addr2`, `city`, `state`, `zipcode`, `primary_phone`, `appointment_phone`, `donation_phone`, `phone_comments`, `fax`, `clinic_type`, `website`, `primary_contact`, `primary_email`, `other_email`, `fqhc`, `other_languages`, `pat_population_served`, `area_served`, `comments`, `other_service`, `low_cost_amount`, `sliding_scale_low`, `sliding_scale_high`, `no_cost`, `low_cost`, `sliding_scale`, `uninsured_only`, `medicare`, `medicaid`, `CHIP`, `private`, `payment_call_clinic`, `payment_comments`)
VALUES
	(547,25,'Y','UPDATE','',1261,'2014-05-12 20:18:00','Cass  Clinic','Cass Community United Methodist Church Clinic',42.347428,-83.062130,'newFCform','3745 Cass Ave.','','Detroit','MI','48201','313-883-2277','','','','','','http://cassclinic.med.wayne.edu/index.php','Chris','chris.a.sy@gmail.com','','N','','','','','',NULL,NULL,NULL,'Y','N','N','Y','N','N','N','N','N',''),
	(548,27,'Y','ADD','Heartland Health Center, Douglas County Dental Clinic, Douglas County Health Department, Prompt Care, First Med Family',NULL,'2014-09-03 15:27:55','Health Care Access','HCA',38.977741,-95.247231,'newFCform','330 Maine Street','','Lawrence','KS','66044','785-841-5760','785-841-5760','785-856-1673','','785-841-5779','','http://www.healthcareaccess.org/','Shelly Wakeman - director@healthcareaccess.org','info@healthcareaccess.org','johnsone@healthcareaccess.org','N','Spanish','Uninsured: All Ages','Douglas County','Offer a range of services and referrals to nearby specialists from our Nurse Practitioners and staff. ','',10,NULL,NULL,'N','Y','N','N','N','N','N','N','N','Only patients with no insurance and income less than 150% of the federal poverty level of their household '),
	(549,28,'Y','ADD','',NULL,'2014-09-03 15:37:21','Heartland Community Health Center','Heartland',38.973386,-95.233230,'newFCform','1 Riverfront Plaza, Suite 100','','Lawrence','KS','66044','785-841-7297','','','','','','http://www.heartlandhealth.org/','','info@heartlandhealth.org','','N','Spanish','Anyone in our service area','Douglas County and surrounding area','Heartland offers quality, affordable, integrated physical and mental/behavioral health care. ','',NULL,15,60,'N','N','Y','Y','Y','Y','Y','Y','N','Uninsured patients at 200% and below of the Federal Poverty Level qualify for the sliding fee scale. '),
	(550,30,'Y','ADD','',NULL,'2014-05-24 22:02:16','Ottawa County Department of Public Health  ','',42.813824,-86.082927,'newFCform','12251 James St','','Holland ','MI','49424','616.396.5266','','','','616.393.5643','','http://www.miottawa.org/Health/OCHD/','Helen Ash','','','N','Spanish','','Ottawa County','','',NULL,NULL,NULL,'N','N','Y','Y','N','Y','N','Y','N',''),
	(551,30,'Y','ADD','',NULL,'2014-05-24 22:02:20','Ottawa County Department of Public Health  ','',42.813824,-86.082927,'newFCform','12251 James St','','Holland ','MI','49424','616.396.5266','','','','616.393.5643','','http://www.miottawa.org/Health/OCHD/','Helen Ash','','','N','Spanish','','Ottawa County','','',NULL,NULL,NULL,'N','N','Y','Y','N','Y','N','Y','N',''),
	(552,30,'Y','ADD','',NULL,'2014-05-24 22:07:36','Ottawa County Department of Public Health','',42.886892,-85.858948,'newFCform','3100 Port Sheldon','','Hudsonville ','MI','49426','616.699.0040','','','','','','http://www.miottawa.org/Health/OCHD/','Helen Ash','','','N','Spanish','','Ottawa County','','',NULL,NULL,NULL,'N','N','Y','Y','N','Y','N','Y','N',''),
	(553,30,'Y','ADD','',NULL,'2014-05-24 22:12:29','Ottawa County Department of Public Health','',43.050519,-86.206193,'newFCform','1207 S. Beechtree St','','Grand Haven ','MI','49417','616.846.8360','','','','','','http://www.miottawa.org/Health/OCHD/','Helen Ash','','','N','Spanish','','Ottawa County','','',NULL,NULL,NULL,'N','N','N','Y','N','Y','N','Y','N',''),
	(554,31,'Y','UPDATE','',1230,'2014-05-24 21:57:43','The Corner Health Center','Corner Health Center',42.241839,-83.613443,'newFCform','47. N. Huron Street','','Ypsilanti','MI','48197','734-484-3600','734-484-3600','734-714-2236','','734-484-3100','','http://www.cornerhealth.org/','','','','N','','Ages 12 - 21 and their children','','','',NULL,NULL,NULL,'N','N','N','Y','N','Y','N','Y','N','Accepts most insurances and can help you apply if you\'re uninsured.'),
	(555,32,'Y','ADD','Mattew 25 Clinic in Fort Wayne   http://www.matthew25online.org/\r\n\r\nPanos Free Clinic in Bluffton',NULL,'2014-09-03 15:56:43','The Hope Clinic','',40.658964,-84.951063,'newFCform','165 W Water St.','','Berne','IN','46711','260-589-3561','','','','','','http://hopeandanswers.com/','Teri','info@hopeandanwers.com','','N','Spanish ','Any woman who might be pregnant.','Adams County, Indiana','All services are free and confidential. Free material assistance program available for items needed to parent a baby. We offer free educational programs including parenting classes.','',NULL,NULL,NULL,'Y','N','N','N','N','N','N','N','N','We offer free lab quality pregnancy tests and limited ultrasound verification. '),
	(556,32,'Y','ADD','Mathew 25 Clinic in Fort Wayne',NULL,'2014-09-03 16:00:56','The Hope Clinic','',40.839709,-84.930756,'newFCform','958 Dierkes St.','','Decatur','IN','46733','260/728/4191','','','','','','http://hopeandanswers.com/','Teri','info@hopeandanwers.com','','N','Spanish','Women who might be pregnant or who already have a baby.','Adams County, Indiana','We offer free pregnancy tests and free limited ultrasound verification. We also offer a free material assistance program for parents to earn items needed to parent a baby. We provide prenatal, childbirth, child development and parenting education, including parenting classes.','',NULL,NULL,NULL,'Y','N','N','N','N','N','N','N','N','All services are free and confidential.'),
	(557,31,'Y','UPDATE','',1230,'2014-09-03 15:13:20','The Corner Health Center','Corner Health Center',42.241839,-83.613443,'newFCform','47. N. Huron Street','','Ypsilanti','MI','48197','734-484-3600','734-484-3600','734-714-2236','','734-484-3100','','http://www.cornerhealth.org/','','','','N','','Ages 12 - 21 and their children','','','',NULL,6,300,'N','N','Y','Y','N','Y','N','Y','N','Accepts most insurances and can help you apply if you\'re uninsured.'),
	(558,35,'Y','ADD','',NULL,'2014-09-03 15:17:03','Michelle Beaulieu, LMSW, PLLC','',42.260656,-83.715093,'newFCform','2311 E. Stadium Blvd., Suite 109','','Ann Arbor','MI',' 48104','734-219-4058','734-219-4058','','','','','http://www.ypsitherapy.com/','Michelle Beaulieu','michellebeaulieulmsw@gmail.com','','N','','uninsured: ages 19-65','Washtenaw','','',35,40,110,'N','Y','Y','Y','N','N','N','N','N',''),
	(559,37,'Y','UPDATE','',1239,'2014-11-09 13:07:56','Shelter Association Health Clinic','',42.281772,-83.751656,'newFCform','312 W. Huron St.','','Ann Arbor','MI','48103','734-662-2829','734-662-2829','','','','','http://annarborshelter.org/','','shelterassociation@ewashtenaw.org','deloniscoordinators@umich.edu','N','','Homeless individuals or individuals precariously housed','Washtenaw','','',NULL,NULL,NULL,'Y','N','N','Y','N','N','N','N','N',''),
	(560,38,'Y','UPDATE','',1235,'2014-11-09 13:10:44','Ypsilanti Health Center - Family Medicine','',42.237068,-83.600051,'newFCform','200 Arnet St., Suite 200','','Ypsilanti','MI','48198','734-482-6221','','','','','','http://www2.med.umich.edu/healthcenters/healthcentermain.cfm?hc_id=YFP','','','','N','Spanish\r\nFrench\r\n','','','','',NULL,NULL,NULL,'N','N','N','N','N','N','N','N','N',''),
	(561,39,'Y','ADD','',NULL,'2014-11-09 13:16:21','Delonis Shelter Monday Night Clinic','',42.280826,-83.743038,'newFCform','312 West Huron Street, second floor','','Ann Arbor','MI','48103','(734) 662-2829','(734) 662-2829','','','','','','','deloniscoordinators@umich.edu','','N','','All comers','Washtenaw','','',NULL,NULL,NULL,'Y','N','N','Y','N','N','N','N','N','');

/*!40000 ALTER TABLE `ClinicInsert` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ClinicInsertHour
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ClinicInsertHour`;

CREATE TABLE `ClinicInsertHour` (
  `transc_id` bigint(20) unsigned NOT NULL,
  `hour_type` varchar(127) NOT NULL,
  `update_status` enum('ADD','DELETE','UPDATE') NOT NULL DEFAULT 'ADD',
  `hours_call_clinic` enum('Y','N') DEFAULT NULL,
  `mon` varchar(255) DEFAULT NULL,
  `tue` varchar(255) DEFAULT NULL,
  `wed` varchar(255) DEFAULT NULL,
  `thr` varchar(255) DEFAULT NULL,
  `fri` varchar(255) DEFAULT NULL,
  `sat` varchar(255) DEFAULT NULL,
  `sun` varchar(255) DEFAULT NULL,
  `comment` text,
  `appointment_only` enum('Y','N') DEFAULT NULL,
  `walkin_only` enum('Y','N') DEFAULT NULL,
  `complicated` enum('Y','N') DEFAULT NULL,
  `dummy_insert_hour_pk` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dummy_insert_hour_pk`),
  UNIQUE KEY `dummy_insert_hour_pk` (`dummy_insert_hour_pk`),
  KEY `transc_id` (`transc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

LOCK TABLES `ClinicInsertHour` WRITE;
/*!40000 ALTER TABLE `ClinicInsertHour` DISABLE KEYS */;

INSERT INTO `ClinicInsertHour` (`transc_id`, `hour_type`, `update_status`, `hours_call_clinic`, `mon`, `tue`, `wed`, `thr`, `fri`, `sat`, `sun`, `comment`, `appointment_only`, `walkin_only`, `complicated`, `dummy_insert_hour_pk`)
VALUES
	(547,'General','UPDATE','N','','','','','','9:00AM - 12:00PM','','','N','Y','N',1),
	(548,'General Hours','ADD','N','8:00AM-4:30Pm','8:30AM-7:30PM','8:00AM-4:30Pm','8:00AM-7:30PM','8:00AM-4:30Pm','Closed','Closed','Call for an appointment, walk-ins welcome too','N','N','N',2),
	(549,'Clinic Hours','ADD','N','9:00AM-5:00PM','9:00AM-5:00PM','9:00AM-7:00PM','9:00AM-5:00PM','9:00AM-5:00PM','Closed','Closed','Call 785-841-7297 for an appointment','Y','N','N',3),
	(550,'','ADD','N','8-5','8-6','8-5','8-5','8-5','Closed','closed','','Y','N','N',4),
	(551,'','ADD','N','8-5','8-6','8-5','8-5','8-5','Closed','closed','','Y','N','N',5),
	(553,'','ADD','N','8-6','closed','8-5','closed','8-5','closed','closed','','Y','N','N',6),
	(554,'General','UPDATE','N','9:30AM - 6:00PM','9:00AM - 6:00PM','9:00AM - 6:00PM','9:00AM - 6:00PM','9:00AM - 5:00PM','Closed','Closed','Call to set up an appointment, same-day appointments often available.','N','N','N',7),
	(554,'','UPDATE','N','','','','','','','','','N','N','N',8),
	(555,'General','ADD','N','','10:00AM - 5:00PM','','10:00AM - 5:00PM','','','','We take appointments as well as walk-ins.','N','N','N',9),
	(556,'','ADD','','','','','','','','','','','','',10),
	(556,'','ADD','','','','','','','','','','','','',11),
	(556,'','ADD','','','','','','','','','','','','',12),
	(556,'','ADD','','','','','','','','','','','','',13),
	(556,'','ADD','','','','','','','','','','','','',14),
	(557,'General','UPDATE','N','9:00AM - 6:00PM','9:00AM - 6:00PM','9:00AM - 6:00PM','9:00AM - 6:00PM','9:00AM - 5:00PM','Closed','Closed','','N','N','N',15),
	(558,'','ADD','Y','10:00 a.m.-8 p.m.','','','noon-8 p.m.','','1-5','','','N','N','N',16),
	(560,'General','UPDATE','N','8:00AM - 7:00PM','8:00AM - 7:00PM','8:00AM - 7:00PM','8:00AM - 5:00PM','8:00AM - 5:00PM','Closed','Closed','','Y','N','N',17),
	(560,'Urgent Care','UPDATE','N','Closed','Closed','Closed','Closed','Closed','8:00AM - 12:00PM','Closed','','Y','N','N',18),
	(561,'','ADD','N','7 PM - 9:30 PM','','','','','','','','N','N','Y',19);

/*!40000 ALTER TABLE `ClinicInsertHour` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ClinicInsertService
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ClinicInsertService`;

CREATE TABLE `ClinicInsertService` (
  `transc_id` bigint(20) unsigned NOT NULL,
  `service_abbr` char(4) NOT NULL,
  `update_status` enum('ADD','DELETE') NOT NULL DEFAULT 'ADD',
  `dummy_insert_service_pk` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dummy_insert_service_pk`),
  UNIQUE KEY `transc_id` (`transc_id`,`service_abbr`),
  UNIQUE KEY `dummy_insert_service_pk` (`dummy_insert_service_pk`),
  KEY `service_abbr` (`service_abbr`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

LOCK TABLES `ClinicInsertService` WRITE;
/*!40000 ALTER TABLE `ClinicInsertService` DISABLE KEYS */;

INSERT INTO `ClinicInsertService` (`transc_id`, `service_abbr`, `update_status`, `dummy_insert_service_pk`)
VALUES
	(547,'CHRD','ADD',1),
	(547,'EDUC','ADD',2),
	(547,'IMMU','ADD',3),
	(547,'PEDS','ADD',4),
	(547,'SPCR','ADD',5),
	(547,'VISI','ADD',6),
	(547,'LABS','DELETE',7),
	(548,'CHRD','ADD',8),
	(548,'EDUC','ADD',9),
	(548,'IMAG','ADD',10),
	(548,'IMMU','ADD',11),
	(548,'LABS','ADD',12),
	(548,'MEDS','ADD',13),
	(548,'MENT','ADD',14),
	(548,'PEDS','ADD',15),
	(548,'PREN','ADD',16),
	(548,'SOCS','ADD',17),
	(548,'SPCR','ADD',18),
	(548,'STDS','ADD',19),
	(549,'CHRD','ADD',20),
	(549,'EDUC','ADD',21),
	(549,'IMMU','ADD',22),
	(549,'LABS','ADD',23),
	(549,'MEDS','ADD',24),
	(549,'MENT','ADD',25),
	(549,'OBGY','ADD',26),
	(549,'PEDS','ADD',27),
	(549,'PRIM','ADD',28),
	(549,'SOCS','ADD',29),
	(549,'SPCR','ADD',30),
	(549,'STDS','ADD',31),
	(550,'EDUC','ADD',32),
	(550,'IMMU','ADD',33),
	(550,'PREN','ADD',34),
	(550,'STDS','ADD',35),
	(550,'XABO','ADD',36),
	(550,'XPRX','ADD',37),
	(551,'EDUC','ADD',38),
	(551,'IMMU','ADD',39),
	(551,'PREN','ADD',40),
	(551,'STDS','ADD',41),
	(551,'XABO','ADD',42),
	(551,'XPRX','ADD',43),
	(552,'EDUC','ADD',44),
	(552,'IMMU','ADD',45),
	(552,'PREN','ADD',46),
	(552,'STDS','ADD',47),
	(552,'XABO','ADD',48),
	(552,'XPRX','ADD',49),
	(553,'EDUC','ADD',50),
	(553,'IMMU','ADD',51),
	(553,'PREN','ADD',52),
	(553,'STDS','ADD',53),
	(553,'XABO','ADD',54),
	(553,'XPRX','ADD',55),
	(554,'LABS','ADD',56),
	(554,'OBGY','ADD',57),
	(554,'SPCR','ADD',58),
	(554,'STDS','ADD',59),
	(555,'EDUC','ADD',60),
	(555,'PREN','ADD',61),
	(555,'XABO','ADD',62),
	(555,'XBCT','ADD',63),
	(555,'XPRX','ADD',64),
	(556,'EDUC','ADD',65),
	(556,'PREN','ADD',66),
	(556,'XABO','ADD',67),
	(556,'XBCT','ADD',68),
	(556,'XPRX','ADD',69),
	(558,'MENT','ADD',70),
	(559,'XPRX','ADD',71),
	(560,'CHRD','ADD',72),
	(560,'EDUC','ADD',73),
	(560,'LABS','ADD',74),
	(560,'MEDS','ADD',75),
	(560,'MENT','ADD',76),
	(560,'PREN','ADD',77),
	(560,'SOCS','ADD',78),
	(560,'SPCR','ADD',79),
	(560,'STDS','ADD',80),
	(561,'CHRD','ADD',81),
	(561,'IMMU','ADD',82),
	(561,'MEDS','ADD',83),
	(561,'PRIM','ADD',84),
	(561,'SPCR','ADD',85);

/*!40000 ALTER TABLE `ClinicInsertService` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
