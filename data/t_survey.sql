-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2011 at 07:00 AM
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

DROP TABLE IF EXISTS `survey`;
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
  `professional_fees` decimal(10,0) NOT NULL,
  `travel_exp_car` decimal(10,0) NOT NULL,
  `travel_exp_air` decimal(10,0) NOT NULL,
  `travel_exp_boardingplace` decimal(10,0) NOT NULL,
  `local_conveyance` decimal(10,0) NOT NULL,
  `no_days_bata` int(11) NOT NULL,
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

