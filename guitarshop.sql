-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.0.19-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 guitarshop 的数据库结构
CREATE DATABASE IF NOT EXISTS `guitarshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `guitarshop`;


-- 导出  表 guitarshop.guitar 结构
CREATE TABLE IF NOT EXISTS `guitar` (
  `builder` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `serialNumber` int(11) DEFAULT NULL,
  `backwood` varchar(50) DEFAULT NULL,
  `topwood` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  guitarshop.guitar 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `guitar` DISABLE KEYS */;
REPLACE INTO `guitar` (`builder`, `model`, `type`, `serialNumber`, `backwood`, `topwood`, `price`) VALUES
	('Fender', 'SS', 'acoustic', 5, 'Indian Rosewood', 'Maple', 450),
	('Martin', 'axe', 'acoustic', 6, 'Maple', 'Adirondack', 1024),
	('Gibson', 'mor', 'unspecified', 4, 'Cocobolo', 'Indian Rosewood', 875),
	('Collings', 'BH', 'acoustic', 6, 'Cedar', 'Cocobolo', 430),
	('Olson', 'AM', 'unspecified', 6, 'Brazilian Rosewood', 'Cedar', 600),
	('Ryan', 'DR', 'electric', 6, 'Mahogany', 'Brazilian Rosewood', 778),
	('PRS', NULL, 'electric', 6, 'Adirondack', 'Mahogany', 820);
/*!40000 ALTER TABLE `guitar` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
