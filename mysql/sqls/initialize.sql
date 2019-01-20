CREATE DATABASE multilanguage;

use multilanguage;

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `languages` (
  `code` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `field_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `languageCode` varchar(45) NOT NULL,
  `value` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `languageCode_idx` (`languageCode`),
  KEY `fieldId` (`fieldId`),
  CONSTRAINT `fieldId` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `languageCode` FOREIGN KEY (`languageCode`) REFERENCES `languages` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;