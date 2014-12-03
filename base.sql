/*
SQLyog Ultimate v8.61 
MySQL - 5.6.16 : Database - phpstormpreguntas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`phpstormpreguntas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `phpstormpreguntas`;

/*Table structure for table `calificacion` */

DROP TABLE IF EXISTS `calificacion`;

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `calificacion` varchar(100) DEFAULT NULL,
  `respuestas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calificacion` */

/*Table structure for table `cuestionario` */

DROP TABLE IF EXISTS `cuestionario`;

CREATE TABLE `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) DEFAULT NULL,
  `respuesta` varchar(200) DEFAULT NULL,
  `respuesta2` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `cuestionario` */

insert  into `cuestionario`(`id`,`pregunta`,`respuesta`,`respuesta2`) values (1,'Tienes Intenet en casa?','si',1),(2,'Tienes Teléfono?','si',1),(3,'Te Gusta Viajar?','si',1),(4,'Haces Ejercicio?','si',1),(5,'Te gusta Escuchar música?','si',1),(6,'Tienes Hermanos?','si',1),(7,'Te gustan los perros?','si',0),(8,'Tienes laptop?','si',1),(9,'Te gusta programar?','si',1),(10,'Tienes USB?','si',1),(11,'Tines mascota en casa?','si',0),(12,'Practicas algún deporte?','si',1),(13,'Te gusta leer?','si',1),(14,'Sabes cantar?','si',1),(15,'Sabes bailar?','si',1),(16,'Te gustan las mujeres?','si',1),(17,'Tienes novi(o/a)?','si',1),(18,'Te gusta ir a la escuela?','si',1),(19,'Te gusta la universidad?','si',1),(20,'Haces tareas?','si',1),(21,'Trabajas antes de ir a la escuela?','si',1),(22,'Tienes whatsapp?','si',1);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(200) DEFAULT NULL,
  `Contrasena` varchar(200) DEFAULT NULL,
  `Calificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`Id`,`User`,`Contrasena`,`Calificacion`) values (1,'froy','123','9');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
