-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2011 at 11:11 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rank`
--

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `ref_no` varchar(50) NOT NULL,
  `bill_no` varchar(50) NOT NULL,
  `date_bill` date NOT NULL,
  `subject` varchar(50) NOT NULL,
  `claim_no` varchar(50) NOT NULL,
  `insurer` varchar(100) NOT NULL,
  `insured` varchar(100) NOT NULL,
  `policy_no` varchar(50) NOT NULL,
  `date_loss` date NOT NULL,
  `place_survey` varchar(50) NOT NULL,
  `dates_survey` varchar(100) NOT NULL,
  `loss` decimal(10,0) NOT NULL,
  `fees` decimal(10,0) NOT NULL,
  `travel_exp_car` decimal(10,0) NOT NULL,
  `travel_exp_air` decimal(10,0) NOT NULL,
  `travel_exp_boardingplace` decimal(10,0) NOT NULL,
  `local_conveyance` decimal(10,0) NOT NULL,
  `bata` decimal(10,0) NOT NULL,
  `hotel_charges` decimal(10,0) NOT NULL,
  `photo` decimal(10,0) NOT NULL,
  `misc` decimal(10,0) NOT NULL,
  `total_gross` decimal(10,0) NOT NULL,
  `tax` decimal(10,0) NOT NULL,
  `total_net` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`ref_no`, `bill_no`, `date_bill`, `subject`, `claim_no`, `insurer`, `insured`, `policy_no`, `date_loss`, `place_survey`, `dates_survey`, `loss`, `fees`, `travel_exp_car`, `travel_exp_air`, `travel_exp_boardingplace`, `local_conveyance`, `bata`, `hotel_charges`, `photo`, `misc`, `total_gross`, `tax`, `total_net`) VALUES
('hiuh', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('arjun', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '564', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('arjun', 'opjp', '0000-00-00', 'opjpo', 'poj', 'poj', 'poj', 'pj', '0000-00-00', 'poj', 'poj', '56565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('123', 'oijio', '0000-00-00', 'oij', 'pj', 'p', 'poj', 'oj', '0000-00-00', 'poj', 'p', '59494', '5190', '7979', '0', '0', '255', '989', '50', '797', '300', '0', '0', '0'),
('345', 'yuuy', '0000-00-00', 'yfu', 'fu', 'fuy', 'fuyf', 'fuy', '0000-00-00', 'uyf', 'uy', '7887', '4500', '88', '0', '0', '255', '787', '50', '78', '300', '6058', '624', '6682'),
('234', 'jiop', '0000-00-00', 'adasd', 'popok', 'pokpo', 'pokp', 'pkpo', '0000-00-00', 'oiio', 'oijio', '89498', '5790', '984984', '0', '0', '255', '98494', '50', '948', '300', '1090821', '112355', '1203176'),
('2323', 'oiioj', '0000-00-00', 'iojoij', 'oi', 'jo', 'oj', 'ij', '0000-00-00', 'o', 'ioj', '84984', '5700', '498', '0', '0', '255', '5', '50', '615', '300', '7423', '765', '8188');
