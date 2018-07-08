CREATE DATABASE IF NOT EXISTS app_db;
GRANT ALL PRIVILEGES on app_db.*
TO 'yuvalherziger'@'%' IDENTIFIED BY 'rootp'
WITH GRANT OPTION;

CREATE TABLE IF NOT EXISTS `app_db`.`productLines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `displayName` varchar(256) NOT NULL,
  `longName` varchar(256) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `app_db`.`products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productLineId` int(10) unsigned NOT NULL,
  `displayName` varchar(256) NOT NULL,
  `longName` varchar(256) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;