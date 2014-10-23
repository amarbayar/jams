-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2014 at 08:05 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`company_id` bigint(20) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_information` varchar(1000) DEFAULT NULL,
  `company_url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_information`, `company_url`) VALUES
(7, 'Microsoft', 'Microsoft Corporation is a company that makes computer software and video games for users around the world. Bill Gates and Paul Allen started the company in 1975.[3] Microsoft makes Windows, Microsoft Office (including Microsoft Word), Internet Explorer, MSN, Xbox 360, and the Xbox One, among others. Most Microsoft programs cannot be downloaded for free - people have to buy them in a shop or online. Some products (like the Windows operating system) are often already installed when people buy a new computer.', 'http://www.microsoft.com'),
(8, 'Google', 'Google is one of the largest search engines on the World Wide Web (WWW). Search engines also do other things than searching. Other search engines (for example, AOL) use its software and information (database) too. That makes it the most-used search engine on the web. Every day, 200 million (200,000,000) people use it. Google''s main office ("Googleplex") is in Mountain View, California, USA.', 'http://www.google.com'),
(9, 'Amazon', 'Amazon.com is an online store that sells books, movies, games, DVDs, music CDs, computer software and other items (like Amazon Kindle). It is the largest online store right now. It was started by Jeff Bezos in 1995 and the headquarters is in Seattle. The original name was Cadabra.com but was changed to Amazon later on because it sounded like the word "cadaver".[1] The store is named after the world''s second longest river.', 'http://www.amazon.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL,
  `AGE1` int(11) DEFAULT NULL,
  `EYECOLOR1` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`event_id` bigint(20) NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `event_title` varchar(50) DEFAULT NULL,
  `event_desc` varchar(200) DEFAULT NULL,
  `event_appid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_date`, `event_time`, `event_title`, `event_desc`, `event_appid`) VALUES
(11, '2014-10-25', '12:00:00', 'Send Resume & Cover Letter', 'Send Resume & Cover Letter to Bill Gates by 10/25/14', 1),
(12, '2014-10-27', '16:00:00', 'Skype Interview', 'With Bethany Anderson @ Microsoft. Talk about Mongolia!', 3),
(13, '2014-11-01', '10:00:00', 'Technical Interview', 'Study some Algortihm and Data Structures before the interview', 3);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
`history_id` bigint(20) NOT NULL,
  `phase_id` bigint(20) DEFAULT NULL,
  `phase_changed_date` datetime DEFAULT NULL,
  `app_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `phase_id`, `phase_changed_date`, `app_id`) VALUES
(1, 1, '2014-10-23 00:17:34', 2),
(2, 3, '2014-10-23 00:19:05', 3),
(3, 5, '2014-10-23 00:19:54', 4),
(4, 1, '2014-10-23 00:20:15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jobapplication`
--

CREATE TABLE IF NOT EXISTS `jobapplication` (
`id` int(10) unsigned NOT NULL,
  `companyId` int(11) NOT NULL,
  `jobTitile` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `phaseId` int(11) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `recruiterId` int(11) NOT NULL,
  `historyId` int(11) NOT NULL,
  `applicationDate` datetime DEFAULT NULL,
  `refer` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jobapplication`
--

INSERT INTO `jobapplication` (`id`, `companyId`, `jobTitile`, `status`, `phaseId`, `priority`, `recruiterId`, `historyId`, `applicationDate`, `refer`) VALUES
(2, 7, 'Software Development Engineer II - 896119', 'Active', 1, 'Medium', 9, 0, '2014-10-23 00:17:34', 'Bing continues to grow its market share and improve the quality of the Image Search Experience'),
(3, 8, 'Software Engineer', 'Active', 3, 'Medium', 14, 0, '2014-10-23 00:19:05', 'C/C++, Java, Python, 5+ years experience. Technical interview!'),
(4, 9, 'Java Developer', 'Active', 5, 'High', 15, 0, '2014-10-23 00:19:54', 'J2EE, Spring & Hibernate, JSP, 3+ years of experience');

-- --------------------------------------------------------

--
-- Table structure for table `phase`
--

CREATE TABLE IF NOT EXISTS `phase` (
  `phase_id` bigint(20) NOT NULL,
  `phase_type` varchar(20) DEFAULT NULL,
  `phase_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phase`
--

INSERT INTO `phase` (`phase_id`, `phase_type`, `phase_date`) VALUES
(1, 'Resume & Cover Lette', NULL),
(2, 'Phone interview', NULL),
(3, 'Technical interview', NULL),
(5, 'Onsite interview', NULL),
(6, 'HR', NULL),
(7, 'Offer', NULL),
(8, 'Hired', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE IF NOT EXISTS `recruiter` (
`id` int(11) NOT NULL,
  `recruiter_address` varchar(255) DEFAULT NULL,
  `recruiter_email` varchar(255) DEFAULT NULL,
  `recuiter_firstName` varchar(255) DEFAULT NULL,
  `recuiter_lastName` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`id`, `recruiter_address`, `recruiter_email`, `recuiter_firstName`, `recuiter_lastName`, `company_id`) VALUES
(9, '1000 N 4th Fairfield, IA', 'magic.johnson@gmail.com', 'Magic', 'Johnson', 7),
(12, 'Chicago, IL', 'mjordan@gmail.com', 'Michael', 'Jordan', 7),
(13, 'San Francisco, CA', 'btyler@google.com', 'Bethany', 'Tyler', 8),
(14, 'Redmond, WA', 'eschmidt@amazon.com', 'Eric', 'Schmidt', 8),
(15, 'Fairfield, IA', 'bgates@microsoft.com', 'Bill', 'Gates', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` bigint(20) NOT NULL,
  `user_fName` varchar(20) DEFAULT NULL,
  `user_lName` varchar(20) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `user_password` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fName`, `user_lName`, `user_email`, `user_password`) VALUES
(28, 'Amarbayar', 'Amarsanaa', 'amar@yahoo.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
 ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `jobapplication`
--
ALTER TABLE `jobapplication`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase`
--
ALTER TABLE `phase`
 ADD PRIMARY KEY (`phase_id`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `company_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
MODIFY `history_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jobapplication`
--
ALTER TABLE `jobapplication`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
