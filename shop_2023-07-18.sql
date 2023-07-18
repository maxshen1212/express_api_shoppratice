# ************************************************************
# Sequel Ace SQL dump
# 版本號： 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# 主機: 127.0.0.1 (MySQL 5.5.5-10.10.2-MariaDB)
# 數據庫: shop
# 生成時間: 2023-07-18 04:55:44 +0000
# ************************************************************

-- 傾印 temps 的資料庫結構
CREATE DATABASE IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shop`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# 轉儲表 login
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `isboss` text DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;

INSERT INTO `login` (`id`, `email`, `username`, `password`, `isboss`, `session_id`)
VALUES
	(1,'user','user','123','使用者',NULL);

/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;


# 轉儲表 product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`id`, `name`, `picture`, `price`, `number`)
VALUES
	(0,'ASUS ExpertBook B6 (B6602F, 12th Gen Intel)','images/product/筆電1.jpg',85909,2234),
	(1,'ExpertBook B9 OLED (B9403, 13th Gen Intel)','images/product/筆電2.jpg',67400,209),
	(3,'ROG G22CH G22CH-71370F039W','images/product/主機1.jpg',122200,9),
	(7,'ROG G22CH G22CH-713700011W','images/product/主機2.jpg',47990,12),
	(8,'ASUS MW203 多重裝置無線靜音滑鼠','images/product/滑鼠1.jpg',6990,25),
	(9,'ASUS Marshmallow 無線鍵盤 KW100','images/product/鍵盤1.jpg',5490,31);

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
