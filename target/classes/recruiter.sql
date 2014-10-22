-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2014 at 05:18 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobschedule`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`id`, `recruiter_address`, `recruiter_email`, `recuiter_firstName`, `recuiter_lastName`, `company_id`) VALUES
(1, 'Khokh hot', 'adiyafre3333@gmail.com', 'Adtya1', 'Bayansan', 1),
(2, 'Khokh hot', 'adiyafre222@gmail.com', 'Adiya2', 'Bayansan', 1),
(3, 'ub,bgd', 'frenzymn111@gmail.com', 'Adiya3', 'Bayansan', 1),
(4, 'aaa', 'aadiyafre3333@gmail.com', 'Adtya4', 'Bayansan', 2),
(5, 'bbb', 'badiyafre222@gmail.com', 'Adiya5', 'Bayansan5', 2),
(6, 'ccc', 'cfrenzymn111@gmail.com', 'Adiya6', 'Bayansan6', 2),
(7, 'ddd', 'dadiyafre3333@gmail.com', 'Adtya7', 'Bayansan', 3),
(8, 'eee', 'eadiyafre222@gmail.com', 'Adiya8', 'Bayansan', 3),
(9, 'fff', 'ffrenzymn111@gmail.com', 'Adiya9', 'Bayansan', 3),
(10, 'ggg', 'gadiyafre3333@gmail.com', 'Adtya10', 'Bayansan', 1),
(11, 'hhh', 'hadiyafre222@gmail.com', 'Adiya11', 'Bayansan', 2),
(12, 'iii', 'ifrenzymn111@gmail.com', 'Adiya12', 'Bayansan', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
