-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 09:30 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `miniprojet`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `from_d` varchar(30) NOT NULL,
  `to_d` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `msg` longtext NOT NULL,
  `seen` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`from_d`, `to_d`, `date`, `msg`, `seen`) VALUES
('Eq.manager@isga.ma', 'Tech1@isga.ma', '2018-01-03', 'Rapport Reçu , merci.', 0),
('Eq.manager@isga.ma', 'Admin@isga.ma', '2017-12-12', 'Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test Test test ', 1),
('Admin@isga.ma', 'Tech2@isga.ma', '2018-01-16', 'test simulation ', 1),
('Admin@isga.ma', 'Tech@isga.ma', '2018-01-08', 'blaablaablaablaablaablaablaabla\nablaablaablaablaablaablaablaablaablaab\nlaablaablaablaablaablaa', 0),
('Admin@isga.ma', 'Eq.manager2@isga.ma', '2018-01-15', 'test 11111\ntest 11111\ntest 11111\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rapports`
--

CREATE TABLE IF NOT EXISTS `rapports` (
  `id_rapport` int(11) NOT NULL AUTO_INCREMENT,
  `from_d` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  `rapp` longtext NOT NULL,
  `etage` varchar(30) NOT NULL,
  `classe` varchar(30) NOT NULL,
  `equipement` varchar(50) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rapport`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rapports`
--

INSERT INTO `rapports` (`id_rapport`, `from_d`, `date`, `rapp`, `etage`, `classe`, `equipement`, `seen`) VALUES
(1, 'Tech1@isga.ma', '2018-01-03', 'Data show broken dude to high voltage surcharge.', 'Floor 1', 'A', 'Datashow', 1),
(2, 'Tech1@isga.ma', '2018-01-03', 'need a new hdd and ram.', 'Floor 1', 'C', 'Computer', 1),
(3, 'Tech1@isga.ma', '2018-01-03', 'Need two serial  and one fastethernet interfaces.', 'Floor 4', 'B', 'Router', 1),
(4, 'Tech@isga.ma', '2018-01-08', 'Not working anymore .', 'Floor 3', 'B', 'datashow', 1),
(5, 'Tech@isga.ma', '2018-01-08', 'need reformatting.', 'Floor 2', 'A', 'computer', 0),
(6, 'Tech2@isga.ma', '2018-01-16', 'testest', 'Floor 3', '3A', 'pc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `pwd`, `role`) VALUES
(1, 'Admin@isga.ma', 'Admin', 'Administrator'),
(2, 'Tech2@isga.ma', 'tech2', 'Technicien'),
(3, 'Tech3@isga.ma', 'tech3', 'Technicien'),
(4, 'Eq.manager@isga.ma', 'eqmanager', 'Eq.Manager'),
(5, 'Tech@isga.ma', 'tech', 'Technicien'),
(7, 'Eq.manager2@isga.ma', 'eqmanager2', 'Eq.Manager'),
(8, 'simulation', 'xxx', 'Technicien');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
