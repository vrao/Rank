-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2011 at 02:52 PM
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
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `photo_rate` varchar(10) NOT NULL,
  `service_tax` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`photo_rate`, `service_tax`) VALUES
('15', '10.3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pass`) VALUES
('abc', '123');

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
  `loss` float NOT NULL,
  `fees` float NOT NULL,
  `travel_exp_car` float NOT NULL,
  `travel_exp_air` float NOT NULL,
  `travel_exp_boardingplace` float NOT NULL,
  `local_conveyance` float NOT NULL,
  `bata` float NOT NULL,
  `hotel_charges` float NOT NULL,
  `photo` float NOT NULL,
  `misc` float NOT NULL,
  `total_gross` float NOT NULL,
  `tax` float NOT NULL,
  `total_net` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`ref_no`, `bill_no`, `date_bill`, `subject`, `claim_no`, `insurer`, `insured`, `policy_no`, `date_loss`, `place_survey`, `dates_survey`, `loss`, `fees`, `travel_exp_car`, `travel_exp_air`, `travel_exp_boardingplace`, `local_conveyance`, `bata`, `hotel_charges`, `photo`, `misc`, `total_gross`, `tax`, `total_net`) VALUES
('abc/21/10', '5564', '0000-00-00', '665', '262', '66', '646', '646', '0000-00-00', '646', '646', 98766.6, 5975.33, 656, 0, 0, 255.35, 646, 50, 646, 300, 17572.7, 1809.99, 19382.7),
('abc/21/10', '5564', '0000-00-00', '665', '262', '66', '646', '646', '0000-00-00', '646', '646', 98766.6, 197533, 656, 0, 0, 255.35, 646, 50, 646, 300, 209131, 21540.5, 230671),
('abc/21/10', '5564', '0000-00-00', '665', '262', '66', '646', '646', '0000-00-00', '646', '646', 98766.6, 1100, 656, 0, 0, 255.35, 646, 50, 646, 300, 12697.3, 1307.83, 14005.2);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`name`) VALUES
('arjun'),
('prasanth'),
('maha'),
('arjun');
