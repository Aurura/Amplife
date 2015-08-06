-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2015 at 03:36 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amplife_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `amplife_author`
--

CREATE TABLE IF NOT EXISTS `amplife_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_first` text,
  `author_last` text,
  `author_sign` text,
  `author_login` text,
  `edit_pass` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `amplife_data`
--

CREATE TABLE IF NOT EXISTS `amplife_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_title` text,
  `article_author_id` time DEFAULT NULL,
  `article_content` text,
  `article_date` int(11) DEFAULT NULL,
  `article_bglocate` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `amplife_data`
--

INSERT INTO `amplife_data` (`id`, `article_title`, `article_author_id`, `article_content`, `article_date`, `article_bglocate`) VALUES
(1, 'Altoria in Wonderland', NULL, 'Once, there was a maiden whose name is Altoria. <br/>\nShe likes to go out in the forest, and read some book. <br/>\nOne day, She was reading a book called <strong> Programming in Limestone </strong> \nand write the code on a piece of paper.\nShe writes: <br/>\n<code>\nif condition is not true, then go home;\n</code> <br/>\nBut It does not make any sense. <br/>\nSo lonely Altoria decided to stand up and see something. <br/>\nShe then saw a rabbit holding a Todo list. <br/>\nWhy can a rabbit have a Todo list? <br/>\nIt writes: <br/>\n<li> Go buy some carrot. </li>\n<li> Put the watch down and think what can I do. </li>\n<li> Go to humen''s world to cheat Altoria in the wonderland. </li>\n<br/>\nBut wait.. The 3rd line! <br/>\nAltoria began to kill the rabbit. <br/>\nShe suddenly took out a terminal and type: <br/>\n<code>killall Rabbit</code><br/>\nThen there are no rabbits in the world anymore. <br/>\nEND.', 0, 'images/orz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `amplife_info`
--

CREATE TABLE IF NOT EXISTS `amplife_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `info_key` text,
  `info_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `amplife_info`
--

INSERT INTO `amplife_info` (`id`, `info_key`, `info_value`) VALUES
(1, 'site_title', 'Amplife'),
(2, 'site_subtitle', 'Ampersand Secrets.'),
(3, 'site_author', 'Altoria'),
(4, 'article_amount', '0'),
(5, 'site_preview_length', '50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
