-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 03:55 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psmgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Id`, `Date`, `Name`, `Address`, `Phone`, `Email`, `Description`, `Uid`) VALUES
(1, '2021-03-29', 'PK Suppliers', 'Bharatpur, Nepal', '014422506,  9841526300', 'pk.suppliers@gmail.com', 'Eggs', 2),
(4, '2021-09-07', 'K.J suppliers', 'Baneshwor', '9841526300', 'kj.suppliers@gmail.com', 'kookies', NULL),
(6, '2021-11-16', 'RK Traders', 'Bharatpur, Nepal', '1547895641', 'rk.traders@gmail.com', 'soft drinks', NULL),
(7, '2021-09-07', 'M.J company', 'Bharatpur, Nepal', '2135454132', 'mj.comp@gmail.com', 'Instant Noodles', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cid` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Gender` varchar(12) DEFAULT NULL,
  `Phone_no` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cid`, `Date`, `Name`, `Address`, `Gender`, `Phone_no`, `Email`, `Uid`) VALUES
(1, '2021-03-29', 'Arju', 'Koteshwor', 'Female', '9841526372', 'arju1234@gmail.com', 2),
(7, '2021-03-13', 'Asha', 'Koteshwor', 'Other', '9841526788', 'asha1234@gmail.com', 2),
(8, '2021-09-26', 'Raju', 'Koteshwor', 'Male', '1234567890', 'raju@gmail.com', NULL),
(10, '2021-09-21', 'Sanita', 'Anamnagar', 'Female', '1548975655', 'sanita123@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `Pid` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Rate` varchar(100) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `VAT` varchar(100) DEFAULT NULL,
  `Discount` varchar(100) DEFAULT NULL,
  `Total_amount` varchar(100) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `Uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Pid`, `Date`, `Name`, `Description`, `Rate`, `Qty`, `Amount`, `VAT`, `Discount`, `Total_amount`, `ID`, `Uid`) VALUES
(1, '2021-03-24', 'Instant Noodles', 'noodles (boxes)', '500', '100', '50000', '13', '8', '52500.00', 1, 2),
(2, '2021-09-07', 'kookies', 'Biscuits (boxes)', '600', '100', '60000', '13', '10', '61800.00', NULL, NULL),
(3, '2021-09-17', 'Eggs', 'Large size boxes', '2500', '100', '250000', '13', '10', '257500.00', NULL, NULL),
(4, '2021-06-01', 'Soft drinks', 'Rio (boxes)', '500', '100', '50000', '13', '0', '56500.00', NULL, NULL),
(5, '2021-09-10', 'Eggs', 'medium size boxes', '2200', '50', '110000', '13', '10', '113300.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Sno` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Rate` varchar(100) DEFAULT NULL,
  `Qty` varchar(100) DEFAULT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `VAT` varchar(100) DEFAULT NULL,
  `Discount` varchar(100) DEFAULT NULL,
  `Total_amount` varchar(100) DEFAULT NULL,
  `Cid` int(11) DEFAULT NULL,
  `Uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Sno`, `Date`, `Name`, `Description`, `Rate`, `Qty`, `Amount`, `VAT`, `Discount`, `Total_amount`, `Cid`, `Uid`) VALUES
(1, '2021-04-10', 'Instant Noodles', 'noodles(pkt)', '20', '20 ', '400', '13', '2', '444.00', 1, 2),
(2, '2021-09-16', 'kookies', 'Biscuits (pkt)', '500', '100', '50000', '13', '5', '54000.00', NULL, NULL),
(3, '2021-09-16', 'Eggs', 'large (pcs)', '20', '50', '1000', '13', '5', '1080.00', NULL, NULL),
(4, '2021-09-28', 'Soft drinks', 'rio(pkt)', '30', '5', '150', '13', '0', '169.50', NULL, NULL),
(5, '2021-08-04', 'Eggs', 'medium size pcs', '15', '20', '300', '13', '0', '339.00', NULL, NULL),
(6, '2021-09-15', 'Instant Noodles', 'noodles(boxes)', '535', '2', '1070', '13', '5', '1155.60', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Uid` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Gender` varchar(12) DEFAULT NULL,
  `Phone_no` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Uid`, `Date`, `Name`, `Address`, `Gender`, `Phone_no`, `Email`, `Password`, `Type`) VALUES
(1, '2021-03-01', 'Rasmi', 'Bhaktapur', 'Female', '9861487079', 'rasmi123@gmail.com', 'rasmi123', 'Manager'),
(2, '2021-03-16', 'Rabi', 'Bhaktapur', 'Male', '9861487079', 'rabi1234@gmail.com', 'rabi1234', 'Accountant'),
(3, '2021-03-30', 'Mira', 'Koteshwor', 'Female', '9841526370', 'mira1234@gmail.com', 'mira1234', 'Accountant'),
(4, '2021-03-22', 'Krishna', 'Suryabinayak', 'Male', '9841604590', 'krishna123@gmail.com', 'krishna123', 'Manager'),
(5, '2021-03-31', 'Elsa', 'Baneshwor', 'Female', '9852641236', 'elsa1234@gmail.com', 'elsa1234', 'Accountant'),
(6, '2021-03-16', 'Bisha', 'Anamnagar', 'Female', '9841527890', 'bisha123@gmail.com', 'bisha123', 'Manager'),
(7, '2021-03-16', 'Rubin', 'Koteshwor', 'Male', '9875986300', 'rubin123@gmail.com', 'rubin123', 'Accountant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Uid` (`Uid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cid`),
  ADD KEY `Uid` (`Uid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Pid`),
  ADD KEY `Uid` (`Uid`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Sno`),
  ADD KEY `Cid` (`Cid`),
  ADD KEY `Uid` (`Uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `users` (`Uid`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `users` (`Uid`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `users` (`Uid`),
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `company` (`Id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `customer` (`Cid`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`Uid`) REFERENCES `users` (`Uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
