-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `regno` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `regno`, `contact`, `doctor`,  `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela', '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela','2020-02-28', '10:00:00', 0, 1),
(4, 3, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela','2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Lee ', 'Jay', 'Male', 'SCCJ/10255/2020', '9768946252', 'Wekesa', '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela','2020-02-28', '12:00:00', 1, 1),
(4, 6, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela','2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alica', 'Bahati', 'Female', 'SSCI/4567/2021', '8976897689', 'Kiptoo','2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Fred', 'Jarapogi', 'Male', 'SSCG/9087/2022', '9070897653', 'Otis', '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela', '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'John', 'stones', 'Male', 'SCCI/00124/2020', '8838489464', 'mandela',  '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'Rene', 'Reigns', 'Male', 'SCCJ/01250/2020', '8683619153', 'Angel', '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'Rene', 'Reigns', 'Male', 'SCCJ/01250/2020', '8683619153', 'Angel', '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `regno` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `regno`, `contact`, `message`) VALUES
('Rene', 'reneley@gmail.com', '7896677554', 'Hey Admin'),
(' John', 'johnj@gmail.com', '9899778865', 'Good Job, Pal'),
('Fred', 'fred12@gmail.com', '9997888879', 'great services?'),
('Martin', 'amartin54h@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Good services'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abon', 'abbon@gmail.com', '8979776868', 'Love your service'),
('elizabeth', 'eliza@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`) VALUES
('Mwangi', 'mwangi123', 'mwangi@gmail.com'),
('Ochieng', 'ochieng123', 'ochieng@gmail.com'),
('Wanjiku', 'wanjiku123', 'wanjiku@gmail.com'),
('Kamau', 'kamau123', 'kamau@gmail.com'),
('Akinyi', 'akinyi123', 'akinyi@gmail.com'),
('Otieno', 'otieno123', 'otieno@gmail.com'),
('Ndungu', 'ndungu123', 'ndungu@gmail.com'),
('Kiptoo', 'kiptoo123', 'kiptoo@gmail.com'),
('Muthoni', 'muthoni123', 'muthoni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `regno` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `regno`, `contact`, `password`, `cpassword`) VALUES
(1, 'John', 'Mwangi', 'Male', 'SCCJ/01234/2021', '0723456789', 'john123', 'john123'),
(2, 'Grace', 'Njeri', 'Female', 'SCII/05678/2022', '0712345678', 'grace123', 'grace123'),
(3, 'Peter', 'Omondi', 'Male', 'SCCG/07891/2020', '0734567890', 'peter123', 'peter123'),
(4, 'Mary', 'Wanjiru', 'Female', 'SCCJ/09876/2021', '0709876543', 'mary123', 'mary123'),
(5, 'David', 'Kariuki', 'Male', 'SCII/03456/2023', '0720987654', 'david123', 'david123'),
(6, 'Alice', 'Mutheu', 'Female', 'SCCG/01234/2022', '0712987654', 'alice123', 'alice123'),
(7, 'James', 'Otieno', 'Male', 'SCCJ/05678/2023', '0732987654', 'james123', 'james123'),
(8, 'Catherine', 'Nakuru', 'Female', 'SCII/07891/2021', '0708765432', 'catherine123', 'catherine123'),
(9, 'Brian', 'Mutua', 'Male', 'SCCG/03456/2020', '0721987654', 'brian123', 'brian123'),
(10, 'Lucy', 'Kamau', 'Female', 'SCCJ/09876/2022', '0718765432', 'lucy123', 'lucy123'),
(11, 'Daniel', 'Mwaura', 'Male', 'SCII/05678/2021', '0731987654', 'daniel123', 'daniel123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dr. Njoroge', 4, 11, 'Mwangi', 'Kimani', '2020-03-27', '15:00:00', 'Cough', 'None', 'Take a teaspoon of Benadryl every night'),
('Dr. Achieng', 2, 8, 'Amina', 'Abdallah', '2020-03-21', '10:00:00', 'Severe Fever', 'None', 'Take bed rest'),
('Dr. Kipchumba', 9, 12, 'Kiptoo', 'Koech', '2020-03-26', '12:00:00', 'Severe fever', 'None', 'Paracetamol - 1 every morning and night'),
('Dr. Muthoni', 9, 13, 'Kiptoo', 'Koech', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
