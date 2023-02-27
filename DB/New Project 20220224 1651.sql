-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bc04
--

CREATE DATABASE IF NOT EXISTS bc04;
USE bc04;

--
-- Definition of table `manageract`
--

DROP TABLE IF EXISTS `manageract`;
CREATE TABLE `manageract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `tlmail` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  `tkey` varchar(45) DEFAULT NULL,
  `sfemail` varchar(45) DEFAULT NULL,
  `mkey` varchar(45) DEFAULT NULL,
  `phash` varchar(200) DEFAULT NULL,
  `ahash` varchar(200) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manageract`
--

/*!40000 ALTER TABLE `manageract` DISABLE KEYS */;
INSERT INTO `manageract` (`id`,`task`,`filename`,`tlmail`,`team`,`tkey`,`sfemail`,`mkey`,`phash`,`ahash`,`mail`,`status`) VALUES 
 (25,'Nw','sample.pdf','russia@gmail.com','TeamD','F2536','ukraine@gmail.com','744AH','','ea9b59abd6642a0247e9de38bf906eaf1c28576d44ce2843e6a22ad49bfd9f5f','ukraine@gmail.com','sended'),
 (26,'Project','sample.pdf','russia@gmail.com','TeamD','66E4F','ukraine@gmail.com','6D56G','ea9b59abd6642a0247e9de38bf906eaf1c28576d44ce2843e6a22ad49bfd9f5f','824d38d456e059101539cf45b01dbe70c11d05c4bb5ad8ba191cefd9a9c0d3de','ukraine@gmail.com','sended');
/*!40000 ALTER TABLE `manageract` ENABLE KEYS */;


--
-- Definition of table `staffreg`
--

DROP TABLE IF EXISTS `staffreg`;
CREATE TABLE `staffreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffreg`
--

/*!40000 ALTER TABLE `staffreg` DISABLE KEYS */;
INSERT INTO `staffreg` (`id`,`name`,`email`,`mobile`,`password`,`cpassword`,`image`,`team`) VALUES 
 (3,'paul','paul@gmail.com','9966558877','123','123','7.jpg','TeamA'),
 (4,'ramu','ramu@gmail.com','5566998877','12345','12345','Penguins.jpg','TeamC'),
 (5,'naveen','naveen@gmail.com','8899885566','12345','12345','18.jpg','TeamD'),
 (8,'aaa','aaa@gmail.com','9988556622','123','123','buyer.jpeg','TeamA'),
 (9,'ccc','ccc@gmail.com','9988556622','123','123','landbuy.jpg','TeamA'),
 (10,'ccc','ccc@gmail.com','9988556622','123','123','dm11-5.png','TeamA'),
 (11,'ccc','ccc@gmail.com','9988556622','123','123','landbuy.jpg','TeamC'),
 (12,'ddd','ddd@gmail.com','9988775544','123','123','landbuy.jpg','TeamD'),
 (13,'bbb','bbb@gmail.com','9966558877','123','123','buyer.jpeg','TeamB'),
 (14,'mani','mani@gmail.com','99556688','111','111','dm11-6.jpg','TeamC'),
 (15,'vignesh','vig@GMAIL.COM','9890890890','123','123','3.jpg','TeamD'),
 (16,'ukraine','ukraine@gmail.com','8877445566','12345','12345','7.png','TeamD');
/*!40000 ALTER TABLE `staffreg` ENABLE KEYS */;


--
-- Definition of table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `idtask` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `tlemail` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  `tlfilekey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `staffemail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtask`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` (`idtask`,`task`,`description`,`filename`,`tlemail`,`team`,`tlfilekey`,`status`,`staffemail`) VALUES 
 (28,'Project','Nothing','sample.pdf','russia@gmail.com','TeamD','45675','Accepted','ukraine@gmail.com'),
 (29,'Nw','java work','sample.pdf','russia@gmail.com','TeamD','F2536','Accepted','ukraine@gmail.com'),
 (30,'Project','Nothing','sample.pdf','russia@gmail.com','TeamD','66E4F','Accepted','ukraine@gmail.com');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;


--
-- Definition of table `tlfileadd`
--

DROP TABLE IF EXISTS `tlfileadd`;
CREATE TABLE `tlfileadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` longtext,
  `filename` varchar(45) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filesize` varchar(45) DEFAULT NULL,
  `filecontent` longtext,
  `encrypt` longtext,
  `decrypt` longtext,
  `tlmail` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlfileadd`
--

/*!40000 ALTER TABLE `tlfileadd` DISABLE KEYS */;
INSERT INTO `tlfileadd` (`id`,`title`,`description`,`filename`,`filetype`,`filesize`,`filecontent`,`encrypt`,`decrypt`,`tlmail`,`team`) VALUES 
 (17,'Project','Nothing','sample.pdf','application/pdf','3028',' A Simple PDF File \n This is a small demonstration .pdf file - \n just for use in the Virtual Mechanics tutorials. More text. And more \n text. And more text. And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. Boring, zzzzz. And more text. And more text. And \n more text. And more text. And more text. And more text. And more text. \n And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. And more text. Even more. Continued on page 2 ...','2AqLtV7fqNZpEDvbJvMc08NZ55YG21CRKjPprEUcTwB9WWe7D0+MdwAOTCOC9k/5EzzMAAfGwr5Y\r\nDa0d/LghnDU4C6gWmeqL1kDIWQIo1a6mK6hBIs/OUlhQ1vDga2AGAFUCyZgGv1ZXWgEuXVf6y8/I\r\nlVgXHfDs7qMHqMtGh07TnWO4K9chrsMm2EouP51oFiHg0Id4uDnaNhSJS7Gx+EGBk5EO81nCeCrY\r\nSPv/v09NNSAbPqsIS065n2DKp5eeQYGTkQ7zWcJ4KthI+/+/T/AoDcHFZvSEWO9rWWQNp21/6Oev\r\nEk+/WHzudhMzgm3i3BgKlqxVZm+HMZsdXlDXq71Cq3Z3C4XBoibFUZd3zxdItERvv61wCtiAvpXi\r\noIhZWTPLloX+FvdbE2fL8KDCXMky2/+p1fU0pryi/qUvrLdLdhPzxHmafHUb95dnpI6UyTLb/6nV\r\n9TSmvKL+pS+stzdaCaYvFsTupbUHtOtjXlF3JyaUNq8VxnHNTgIBpgEA+GQ5cFmQINyNe1BW8OMA\r\nzyy94KkQqYFwPHrKsT8Js2L4ZDlwWZAg3I17UFbw4wDPLL3gqRCpgXA8esqxPwmzYvhkOXBZkCDc\r\njXtQVvDjAM+wZWfMkiYCL0YLLzrSTi+ZMy7OpGX+MYZQOItytuoLhT7mai69SWCUqtpJv4E8yeQz\r\nLs6kZf4xhlA4i3K26guF5VkFBw0YpVuy0J+Zm4knZo6jp5CjVwk0AB0jnVkTKrOkH3EqL34JGpxa\r\n+jwSt45qDSm9O+AGV0yntgny24xZMA==',' A Simple PDF File \n This is a small demonstration .pdf file - \n just for use in the Virtual Mechanics tutorials. More text. And more \n text. And more text. And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. Boring, zzzzz. And more text. And more text. And \n more text. And more text. And more text. And more text. And more text. \n And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. And more text. Even more. Continued on page 2 ...','russia@gmail.com','TeamD'),
 (18,'Nw','java work','sample.pdf','application/pdf','3028',' A Simple PDF File \n This is a small demonstration .pdf file - \n just for use in the Virtual Mechanics tutorials. More text. And more \n text. And more text. And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. Boring, zzzzz. And more text. And more text. And \n more text. And more text. And more text. And more text. And more text. \n And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. And more text. Even more. Continued on page 2 ...','2AqLtV7fqNZpEDvbJvMc08NZ55YG21CRKjPprEUcTwB9WWe7D0+MdwAOTCOC9k/5EzzMAAfGwr5Y\r\nDa0d/LghnDU4C6gWmeqL1kDIWQIo1a6mK6hBIs/OUlhQ1vDga2AGAFUCyZgGv1ZXWgEuXVf6y8/I\r\nlVgXHfDs7qMHqMtGh07TnWO4K9chrsMm2EouP51oFiHg0Id4uDnaNhSJS7Gx+EGBk5EO81nCeCrY\r\nSPv/v09NNSAbPqsIS065n2DKp5eeQYGTkQ7zWcJ4KthI+/+/T/AoDcHFZvSEWO9rWWQNp21/6Oev\r\nEk+/WHzudhMzgm3i3BgKlqxVZm+HMZsdXlDXq71Cq3Z3C4XBoibFUZd3zxdItERvv61wCtiAvpXi\r\noIhZWTPLloX+FvdbE2fL8KDCXMky2/+p1fU0pryi/qUvrLdLdhPzxHmafHUb95dnpI6UyTLb/6nV\r\n9TSmvKL+pS+stzdaCaYvFsTupbUHtOtjXlF3JyaUNq8VxnHNTgIBpgEA+GQ5cFmQINyNe1BW8OMA\r\nzyy94KkQqYFwPHrKsT8Js2L4ZDlwWZAg3I17UFbw4wDPLL3gqRCpgXA8esqxPwmzYvhkOXBZkCDc\r\njXtQVvDjAM+wZWfMkiYCL0YLLzrSTi+ZMy7OpGX+MYZQOItytuoLhT7mai69SWCUqtpJv4E8yeQz\r\nLs6kZf4xhlA4i3K26guF5VkFBw0YpVuy0J+Zm4knZo6jp5CjVwk0AB0jnVkTKrOkH3EqL34JGpxa\r\n+jwSt45qDSm9O+AGV0yntgny24xZMA==',' A Simple PDF File \n This is a small demonstration .pdf file - \n just for use in the Virtual Mechanics tutorials. More text. And more \n text. And more text. And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. Boring, zzzzz. And more text. And more text. And \n more text. And more text. And more text. And more text. And more text. \n And more text. And more text. \n And more text. And more text. And more text. And more text. And more \n text. And more text. And more text. Even more. Continued on page 2 ...','russia@gmail.com','TeamD');
/*!40000 ALTER TABLE `tlfileadd` ENABLE KEYS */;


--
-- Definition of table `tlregister`
--

DROP TABLE IF EXISTS `tlregister`;
CREATE TABLE `tlregister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlregister`
--

/*!40000 ALTER TABLE `tlregister` DISABLE KEYS */;
INSERT INTO `tlregister` (`id`,`name`,`email`,`mobile`,`password`,`cpassword`,`image`,`team`) VALUES 
 (13,'aaa','aaa@gmail.com','9966558877','123','123','Jellyfish.jpg','TeamA'),
 (14,'bbb','bbb@gmail.com','99556688','123','123','Hydrangeas.jpg','TeamB'),
 (15,'ccc','ccc@gmail.com','9988556622','123','123','Koala.jpg','TeamC'),
 (16,'ddd','ddd@gmail.com','5566998877','123','123','Lighthouse.jpg','TeamD'),
 (17,'saran','saran@gmail.com','9988556622','111','111','land-1.jpg','TeamC'),
 (18,'Russia','russia@gmail.com','9966332255','123','123','1.jpg','TeamD');
/*!40000 ALTER TABLE `tlregister` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
