-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2014 at 08:27 AM
-- Server version: 5.5.35
-- PHP Version: 5.3.10-1ubuntu3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add proveedor', 8, 'add_proveedor'),
(23, 'Can change proveedor', 8, 'change_proveedor'),
(24, 'Can delete proveedor', 8, 'delete_proveedor'),
(25, 'Can add producto', 9, 'add_producto'),
(26, 'Can change producto', 9, 'change_producto'),
(27, 'Can delete producto', 9, 'delete_producto'),
(28, 'Can add venta', 10, 'add_venta'),
(29, 'Can change venta', 10, 'change_venta'),
(30, 'Can delete venta', 10, 'delete_venta'),
(31, 'Can add venta descripcion', 11, 'add_ventadescripcion'),
(32, 'Can change venta descripcion', 11, 'change_ventadescripcion'),
(33, 'Can delete venta descripcion', 11, 'delete_ventadescripcion');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$GrLfmLvqLhCx$ZyJR08MMN82E3WzUNkFzexplRUBu2FS+Y1+ErqwP6DY=', '2014-04-14 05:02:57', 1, 'admin', '', '', 'susana.carrillo@ventamovil.com.mx', 1, 1, '2014-04-08 15:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-04-08 16:06:49', 1, 8, '1', 'Prooveedor 1', 1, ''),
(2, '2014-04-08 16:06:57', 1, 8, '2', 'Proveedor 2', 1, ''),
(3, '2014-04-08 16:07:03', 1, 8, '3', 'Proveedor 3', 1, ''),
(4, '2014-04-08 16:07:12', 1, 8, '4', 'Proveedor 4', 1, ''),
(5, '2014-04-08 16:07:19', 1, 8, '5', 'Prooveedor 5', 1, ''),
(6, '2014-04-08 16:07:49', 1, 9, '1', 'Cuaderno', 1, ''),
(7, '2014-04-08 16:07:57', 1, 9, '2', 'lapiz', 1, ''),
(8, '2014-04-08 16:08:14', 1, 8, '1', 'Proveedor 1', 2, 'Changed nombre.'),
(9, '2014-04-08 16:08:23', 1, 8, '5', 'Proveedor 5', 2, 'Changed nombre.'),
(10, '2014-04-08 16:08:51', 1, 9, '3', 'escritorio', 1, ''),
(11, '2014-04-08 16:09:02', 1, 9, '4', 'silla', 1, ''),
(12, '2014-04-08 16:09:32', 1, 9, '5', 'cafe mocca gde', 1, ''),
(13, '2014-04-08 16:09:40', 1, 9, '6', 'galletas', 1, ''),
(14, '2014-04-08 16:09:47', 1, 9, '6', 'galletas', 2, 'Changed proveedores.'),
(15, '2014-04-08 16:10:05', 1, 9, '7', 'chicles', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'proveedor', 'main', 'proveedor'),
(9, 'producto', 'main', 'producto'),
(10, 'venta', 'main', 'venta'),
(11, 'venta descripcion', 'main', 'ventadescripcion');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('w51m8f11wygh9sui6hbqzb63wqzujzgu', 'ZjZkM2FkMzA3Y2M2ODAyYzU1OGYyNzk4OWJmOGU5ZjIwMTg0MzI3NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-04-22 15:27:30'),
('wdl55592pxen1uamx4gz6cwlhbvlgi5x', 'ZjZkM2FkMzA3Y2M2ODAyYzU1OGYyNzk4OWJmOGU5ZjIwMTg0MzI3NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-04-28 05:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `main_producto`
--

CREATE TABLE IF NOT EXISTS `main_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `proveedores_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `main_producto_550efbe2` (`proveedores_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `main_producto`
--

INSERT INTO `main_producto` (`id`, `nombre`, `precio`, `proveedores_id`) VALUES
(1, 'Cuaderno', 12.50, 2),
(2, 'lapiz', 3.20, 2),
(3, 'escritorio', 999.50, 1),
(4, 'silla', 321.20, 1),
(5, 'cafe mocca gde', 21.50, 3),
(6, 'galletas', 8.00, 4),
(7, 'chicles', 12.40, 5),
(8, 'Cuaderno de 100 hojas infantil', 13.50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `main_proveedor`
--

CREATE TABLE IF NOT EXISTS `main_proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `main_proveedor`
--

INSERT INTO `main_proveedor` (`id`, `nombre`) VALUES
(1, 'Proveedor 1'),
(2, 'Proveedor 2'),
(3, 'Proveedor 3'),
(4, 'Proveedor 4'),
(5, 'Proveedor 5');

-- --------------------------------------------------------

--
-- Table structure for table `main_venta`
--

CREATE TABLE IF NOT EXISTS `main_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `cliente` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `main_venta`
--

INSERT INTO `main_venta` (`id`, `fecha`, `cliente`) VALUES
(1, '2014-04-14 05:37:19', 'Susana Lizeth Carrillo Alarcon');

-- --------------------------------------------------------

--
-- Table structure for table `main_ventadescripcion`
--

CREATE TABLE IF NOT EXISTS `main_ventadescripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `venta_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_ventadescripcion_f1401f25` (`venta_id`),
  KEY `main_ventadescripcion_1635d9bd` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `main_ventadescripcion`
--

INSERT INTO `main_ventadescripcion` (`id`, `venta_id`, `producto_id`, `cantidad`, `total`) VALUES
(1, 1, 1, 1, 0.00),
(2, 1, 2, 2, 0.00);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_producto`
--
ALTER TABLE `main_producto`
  ADD CONSTRAINT `proveedores_id_refs_id_674614ef` FOREIGN KEY (`proveedores_id`) REFERENCES `main_proveedor` (`id`);

--
-- Constraints for table `main_ventadescripcion`
--
ALTER TABLE `main_ventadescripcion`
  ADD CONSTRAINT `producto_id_refs_id_ab7090d8` FOREIGN KEY (`producto_id`) REFERENCES `main_producto` (`id`),
  ADD CONSTRAINT `venta_id_refs_id_141ae2ac` FOREIGN KEY (`venta_id`) REFERENCES `main_venta` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
