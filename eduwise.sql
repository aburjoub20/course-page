-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 04:58 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogid` int(11) NOT NULL,
  `blogTitle` varchar(255) NOT NULL,
  `blogImage` varchar(255) NOT NULL,
  `blogDescription` text NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogid`, `blogTitle`, `blogImage`, `blogDescription`, `created_at`) VALUES
(1, 'Tanya', 'bootloader.PNG', 'Quas quia sunt sapie', '2021-02-26'),
(2, 'Murphy', 'Embedded-System-Block-Diagram.png', 'Accusamus et occaecabhjgfgfvghcghvgtvghvgh', '2021-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `commentDate` date NOT NULL DEFAULT current_timestamp(),
  `commentUser` int(11) NOT NULL,
  `bogId` int(11) NOT NULL,
  `commentContent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentId`, `commentDate`, `commentUser`, `bogId`, `commentContent`) VALUES
(1, '2021-03-08', 23, 2, 'hthrgnhtrhty'),
(2, '2021-03-08', 23, 2, 'jyghntdy'),
(3, '2021-03-08', 26, 1, 'helloooo tinaaaaaaaaaa'),
(4, '2021-03-08', 26, 1, 'gooooooooooooooooooog');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseId` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseImage` varchar(255) NOT NULL,
  `coursePrice` int(11) NOT NULL,
  `courseDescription` text NOT NULL,
  `courseDays` int(11) NOT NULL,
  `courseCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseId`, `courseName`, `courseImage`, `coursePrice`, `courseDescription`, `courseDays`, `courseCapacity`) VALUES
(3, 'Kimberly', 'part1.PNG', 986, ' Nisi et rerum in sin', 981, 783),
(4, 'Rama', '', 230, ' Lorem deserunt quas ', 291, 278);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userPhone` varchar(255) NOT NULL,
  `userStatus` int(11) NOT NULL DEFAULT 1,
  `userImage` varchar(255) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `userName`, `userEmail`, `userPassword`, `userPhone`, `userStatus`, `userImage`, `DOB`) VALUES
(15, '', '', '', '', 2, '603fbe67a96fd.', '0000-00-00'),
(21, '', '', '', '', 2, '603fca60a0113.', '0000-00-00'),
(23, 'areen anwr ', 'areen.anwr.1999@gmail.com', '413234', '0568372816', 2, '603fcc6ae1b74.PNG', '0004-04-05'),
(24, '', '', '', '', 2, '603fccb4c9c4c.', '0000-00-00'),
(25, 'areen', 'areen.anwr.1999@gmail.com', '5787', '0568372816', 2, '603fd4add0e22.', '1999-01-01'),
(26, 'gjgh', 'tezute@mailinator.com', '', '2757', 1, '603fd826225ac.', '0008-07-05'),
(27, 'bohucifim', 'zozinimuv@mailinator.com', 'Pa$$w0rd!', '842', 1, '60461dbda5adb.', '2004-02-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `commentUser` (`commentUser`),
  ADD KEY `bogId` (`bogId`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`bogId`) REFERENCES `blog` (`blogid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`commentUser`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
