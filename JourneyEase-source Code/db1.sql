-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 11:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings_entire_bus`
--

CREATE TABLE `bookings_entire_bus` (
  `booking_id` int(11) NOT NULL,
  `bus_id_fk` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `booking_start_date` date DEFAULT NULL,
  `booking_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings_entire_bus`
--

INSERT INTO `bookings_entire_bus` (`booking_id`, `bus_id_fk`, `user_id`, `booking_start_date`, `booking_end_date`) VALUES
(2, 1, 2, '2023-11-18', '2023-11-20'),
(3, 2, 3, '2023-11-20', '2023-11-25'),
(4, 3, 1, '2023-11-16', '2023-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Bus_ID` varchar(50) NOT NULL,
  `Type_of_Bus` varchar(20) NOT NULL,
  `Bus_Registration_Number` varchar(15) NOT NULL,
  `Colour` varchar(15) NOT NULL,
  `No_Of_Seats` int(3) NOT NULL,
  `Latitude` varchar(30) NOT NULL,
  `Longitude` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus_ID`, `Type_of_Bus`, `Bus_Registration_Number`, `Colour`, `No_Of_Seats`, `Latitude`, `Longitude`) VALUES
('BUS0001', 'SemiLuxuary', 'NP2334', 'Blue', 56, '', ''),
('BUS0002', 'SemiLuxuary', 'UV2312', 'Red', 56, '', ''),
('BUS0003', 'SemiLuxuary', 'CC5678', 'Green', 56, '', ''),
('BUS0004', 'SemiLuxuary', 'SP4678', 'Green', 56, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bus_company`
--

CREATE TABLE `bus_company` (
  `Company_ID` varchar(50) NOT NULL,
  `Manager_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_tracking`
--

CREATE TABLE `bus_tracking` (
  `Track_ID` varchar(50) NOT NULL,
  `Bus_ID` varchar(50) NOT NULL,
  `Current_Location_Of_Bus` varchar(100) NOT NULL,
  `Ticket_ID` varchar(50) NOT NULL,
  `Destination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conductor`
--

CREATE TABLE `conductor` (
  `Conductor_ID` varchar(50) NOT NULL,
  `Bus_ID` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conductor`
--

INSERT INTO `conductor` (`Conductor_ID`, `Bus_ID`, `Name`) VALUES
('CON0001', 'BUS0001', 'CON0001'),
('CON0002', 'BUS0002', 'CON0002'),
('CON0003', 'BUS0003', 'CON0003'),
('CON0004', 'BUS0004', 'CON0004');

-- --------------------------------------------------------

--
-- Table structure for table `contac_us`
--

CREATE TABLE `contac_us` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `entire_booking_buses`
--

CREATE TABLE `entire_booking_buses` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `total_seats` int(11) NOT NULL,
  `bus_reg_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entire_booking_buses`
--

INSERT INTO `entire_booking_buses` (`bus_id`, `bus_name`, `total_seats`, `bus_reg_no`) VALUES
(1, 'Luxury Mini Coach', 14, 'NC-7329'),
(2, '29 – Seater Luxury Coach', 29, 'ND-5883'),
(3, '35 – Seater Luxury Coach', 35, 'NC-5993'),
(4, '37 – Seater Luxury Coach', 37, 'NC-2667'),
(5, '45 – Seater Luxury Coach', 45, 'NG-2767');

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

CREATE TABLE `expences` (
  `EX_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Item` varchar(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Bus_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expences`
--

INSERT INTO `expences` (`EX_ID`, `Date`, `Item`, `Price`, `Bus_ID`) VALUES
(1, '2023-11-29', 'tire', 6000, 'BUS0003'),
(2, '2023-10-31', 'tire', 6000, 'BUS0001'),
(3, '2023-11-23', 'tire', 6000, 'BUS0003'),
(4, '2023-11-14', 'tire', 6000, 'BUS0001'),
(5, '2023-11-14', 'tire', 6000, 'BUS0001'),
(6, '2023-11-16', 'tire', 6000, 'BUS0001'),
(7, '2023-11-12', 'Seat', 564564, 'BUS0001'),
(8, '2023-11-12', 'Seat', 564564, 'BUS0001'),
(9, '2023-11-24', 'SEAT', 4000, 'BUS0001'),
(10, '2023-11-23', 'SEAT', 1200, 'BUS0001');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_ID` int(255) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `Feedback` text NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback_ID`, `User_ID`, `Feedback`, `Email`) VALUES
(22, 'USER0009', 'good service', 'janith@gmail.com'),
(23, 'USER0011', 'excellent service', 'bhagya@gmail.com'),
(24, 'USER0013', 'motta niwandi', 'tharu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `Fuel_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Distance` int(100) NOT NULL,
  `Fuel_Quantity` int(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Bus_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`Fuel_ID`, `Date`, `Distance`, `Fuel_Quantity`, `Price`, `Bus_ID`) VALUES
(1, '2023-11-15', 10, 6, 230, 'BUS0001'),
(2, '2023-11-06', 10, 6, 2000, 'BUS0001'),
(3, '2023-11-21', 10, 6, 1200, 'BUS0001'),
(4, '2023-11-16', 10, 6, 2000, 'BUS0001'),
(5, '2023-11-01', 10, 6, 2000, 'BUS0001'),
(6, '2023-11-22', 10, 6, 1200, 'BUS0001'),
(7, '2023-11-10', 69, 8, 1000, 'BUS0001'),
(8, '2023-11-23', 69, 1231, 1231231, 'BUS0001'),
(9, '2023-11-17', 100, 20, 30000, 'BUS0001'),
(10, '2023-11-23', 100, 20, 30000, 'BUS0001');

-- --------------------------------------------------------

--
-- Table structure for table `income_payment`
--

CREATE TABLE `income_payment` (
  `Payment_ID` varchar(50) NOT NULL,
  `Ticket_ID` varchar(50) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `CardName` varchar(150) NOT NULL,
  `CardNumber` varchar(50) NOT NULL,
  `ExpMonth` varchar(15) NOT NULL,
  `ExpYear` varchar(6) NOT NULL,
  `CVV` int(5) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `OTP` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income_payment`
--

INSERT INTO `income_payment` (`Payment_ID`, `Ticket_ID`, `User_ID`, `Email`, `CardName`, `CardNumber`, `ExpMonth`, `ExpYear`, `CVV`, `Amount`, `OTP`, `Status`) VALUES
('PAY0001', 'TKT0005', 'USER0007', 'maheng907@gmail.com', 'hasan', '1234123412341234', 'january', '2023', 111, '24000', '524110', 'UnPaid'),
('PAY0002', 'TKT0005', 'USER0007', 'maheng907@gmail.com', 'hasan', '1234123412341234', 'january', '2023', 111, '24000', '727906', 'Paid'),
('PAY0003', 'TKT0006', 'USER0007', 'maheng907@gmail.com', 'Hasan', '1234123412341234', 'january', '2023', 111, '26000', '223491', 'Paid'),
('PAY0004', 'TKT0007', 'USER0007', 'maheng907@gmail.com', 'hasan', '1234123412341234', 'january', '2023', 111, '24000', '646517', 'UnPaid');

-- --------------------------------------------------------

--
-- Table structure for table `income_payment_entirebus_booking`
--

CREATE TABLE `income_payment_entirebus_booking` (
  `Payment_ID` varchar(50) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `CardName` varchar(150) NOT NULL,
  `CardNumber` int(30) NOT NULL,
  `ExpMonth` varchar(5) NOT NULL,
  `ExpYear` varchar(6) NOT NULL,
  `CVV` int(5) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `OTP` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income_payment_entirebus_booking`
--

INSERT INTO `income_payment_entirebus_booking` (`Payment_ID`, `User_ID`, `Email`, `CardName`, `CardNumber`, `ExpMonth`, `ExpYear`, `CVV`, `Amount`, `OTP`, `Status`) VALUES
('PAYEB0004', 'USER0007', 'maheng907@gmail.com', 'hasasn', 2147483647, '11111', '111111', 111, '48000', '294528', 'Paid'),
('PAYEB0004', 'USER0007', 'maheng907@gmail.com', '111111111111', 11111111, '11111', '111111', 11111, '8000', '277076', 'UnPaid'),
('PAYEB0004', 'USER0007', 'maheng907@gmail.com', 'hasan', 1111111, '1111', '111', 111, '21600', '866066', 'UnPaid'),
('PAYEB0003', 'USER0010', 'maheng907@gmail.com', '1234567891234567', 1111111, 'janua', '2023', 111, '21600', '908792', 'UnPaid');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_ID` int(255) NOT NULL,
  `User_ID` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_ID`, `User_ID`, `message`, `Status`) VALUES
(1, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 37 for a child passenger  on 2023-11-19 ', 'Seen'),
(2, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 8 for a child passenger  on 2023-11-19 ', 'Seen'),
(3, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 37 for a child passenger  on 2023-11-19 ', 'Seen'),
(4, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 29 for a child passenger  on 2023-11-19 ', 'Seen'),
(5, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 2 for a woman passenger  on 2023-11-19 ', 'Seen'),
(6, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 1 for a child passenger  on 2023-11-20 ', 'Seen'),
(7, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 16 for a child passenger  on 2023-11-20 ', 'Seen'),
(8, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 27 for a child passenger  on 2023-11-20 ', 'Seen'),
(9, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 22 for a child passenger  on 2023-11-20 ', 'Seen'),
(10, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 7 for a child passenger on 2023-11-20', 'Seen'),
(11, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 6 for a child passenger on 2023-11-20', 'Seen'),
(12, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 2 for a child passenger on 2023-11-21', 'Seen'),
(13, 'USER0007', 'You Booked a Bus.', 'Seen'),
(14, 'USER0007', 'You Booked a Bus.', 'Seen'),
(15, 'USER0007', 'You Booked a Bus.', 'Seen'),
(16, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 7 for a child passenger on 2023-11-21', 'Seen'),
(17, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 39 for a child passenger on 2023-11-21', 'Seen'),
(18, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 2 for a child passenger on 2023-11-21', 'Seen'),
(19, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 37 for a child passenger on 2023-11-22', 'Seen'),
(20, 'USER0013', 'Your Booked a seat through Journey Ease your seat no is 29 for a man passenger on 2023-11-22', 'Unseen'),
(21, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 2 for a child passenger on 2023-11-23', 'Seen'),
(22, 'USER0021', 'Your Booked a seat through Journey Ease your seat no is 6 for a man passenger on 2023-11-23', 'Unseen'),
(23, 'USER0021', 'Your Booked a seat through Journey Ease your seat no is 6 for a man passenger on 2023-11-23', 'Unseen'),
(24, 'USER0022', 'Your Booked a seat through Journey Ease your seat no is 29 for a child passenger on 2023-11-23', 'Unseen'),
(25, 'USER0023', 'Your Booked a seat through Journey Ease your seat no is 39 for a man passenger on 2023-11-23', 'Unseen'),
(26, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 2 for a child passenger on 2023-11-27', 'Seen'),
(27, 'USER0007', 'Your Booked a seat through Journey Ease your seat no is 8 for a man passenger on 2023-11-27', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `package_services`
--

CREATE TABLE `package_services` (
  `Package_ID` int(11) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `receiver_name` varchar(200) NOT NULL,
  `parcel_type` varchar(20) NOT NULL,
  `receiver_address` varchar(200) NOT NULL,
  `telephone_num` varchar(20) NOT NULL,
  `weight` int(5) NOT NULL,
  `payment_method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_services`
--

INSERT INTO `package_services` (`Package_ID`, `sender_name`, `receiver_name`, `parcel_type`, `receiver_address`, `telephone_num`, `weight`, `payment_method`) VALUES
(1, 'abcd', 'test', 'Electronic Items', 'fgh', '1234', 50, 'on'),
(2, 'abcd', 'test', 'Electronic Items', 'fgh', '07875', 50, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `Passenger_ID` varchar(50) NOT NULL,
  `Ticket_ID` varchar(50) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact_No` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `randomuser`
--

CREATE TABLE `randomuser` (
  `RUserID` varchar(150) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `ContactNO` int(12) NOT NULL,
  `Owner` varchar(150) NOT NULL,
  `CVV` int(5) NOT NULL,
  `CardNumber` int(30) NOT NULL,
  `ExpiryMonth` varchar(8) NOT NULL,
  `Expiryyear` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `randomuser`
--

INSERT INTO `randomuser` (`RUserID`, `Name`, `Email`, `ContactNO`, `Owner`, `CVV`, `CardNumber`, `ExpiryMonth`, `Expiryyear`) VALUES
('RU00001', '', '', 0, '', 0, 0, '', 0),
('RU00002', 'Mahthy Hasan', 'maheng907@gmail.com', 769074027, 'Hasan', 123, 2147483647, 'Jan', 2020),
('RU00003', '', '', 0, '', 0, 0, '', 0),
('RU00004', '', '', 0, '', 0, 0, '', 0),
('RU00005', 'Mahthy Hasan', 'maheng907@gmail.com', 769074027, 'Hasan', 3765, 2147483647, 'Jan', 2020),
('RU00006', '', '', 0, '', 0, 0, '', 0),
('RU00007', '', '', 0, '', 0, 0, '', 0),
('RU00008', '', '', 0, '', 0, 0, '', 0),
('RU00009', '', '', 0, '', 0, 0, '', 0),
('RU00010', '', '', 0, '', 0, 0, '', 0),
('RU00011', '', '', 0, '', 0, 0, '', 0),
('RU00012', '', '', 0, '', 0, 0, '', 0),
('RU00013', '', '', 0, '', 0, 0, '', 0),
('RU00014', '', '', 0, '', 0, 0, '', 0),
('RU00015', '', '', 0, '', 0, 0, '', 0),
('RU00016', '', '', 0, '', 0, 0, '', 0),
('RU00017', '', '', 0, '', 0, 0, '', 0),
('RU00018', '', '', 0, '', 0, 0, '', 0),
('RU00019', '', '', 0, '', 0, 0, '', 0),
('RU00020', '', '', 0, '', 0, 0, '', 0),
('RU00021', '', '', 0, '', 0, 0, '', 0),
('RU00022', '', '', 0, '', 0, 0, '', 0),
('RU00023', '', '', 0, '', 0, 0, '', 0),
('RU00024', '', '', 0, '', 0, 0, '', 0),
('RU00025', '', '', 0, '', 0, 0, '', 0),
('RU00026', '', '', 0, '', 0, 0, '', 0),
('RU00027', '', '', 0, '', 0, 0, '', 0),
('RU00028', '', '', 0, '', 0, 0, '', 0),
('RU00029', '', '', 0, '', 0, 0, '', 0),
('RU00030', '', '', 0, '', 0, 0, '', 0),
('RU00031', '', '', 0, '', 0, 0, '', 0),
('RU00032', '', '', 0, '', 0, 0, '', 0),
('RU00033', '', '', 0, '', 0, 0, '', 0),
('RU00034', '', '', 0, '', 0, 0, '', 0),
('RU00035', '', '', 0, '', 0, 0, '', 0),
('RU00036', '', '', 0, '', 0, 0, '', 0),
('RU00037', '', '', 0, '', 0, 0, '', 0),
('RU00038', '', '', 0, '', 0, 0, '', 0),
('RU00039', '', '', 0, '', 0, 0, '', 0),
('RU00040', '', '', 0, '', 0, 0, '', 0),
('RU00041', '', '', 0, '', 0, 0, '', 0),
('RU00042', '', '', 0, '', 0, 0, '', 0),
('RU00043', '', '', 0, '', 0, 0, '', 0),
('RU00044', '', '', 0, '', 0, 0, '', 0),
('RU00045', '', '', 0, '', 0, 0, '', 0),
('RU00046', '', '', 0, '', 0, 0, '', 0),
('RU00047', '', '', 0, '', 0, 0, '', 0),
('RU00048', '', '', 0, '', 0, 0, '', 0),
('RU00049', '', '', 0, '', 0, 0, '', 0),
('RU00050', '', '', 0, '', 0, 0, '', 0),
('RU00051', '', '', 0, '', 0, 0, '', 0),
('RU00052', '', '', 0, '', 0, 0, '', 0),
('RU00053', '', '', 0, '', 0, 0, '', 0),
('RU00054', '', '', 0, '', 0, 0, '', 0),
('RU00055', '', '', 0, '', 0, 0, '', 0),
('RU00056', '', '', 0, '', 0, 0, '', 0),
('RU00057', '', '', 0, '', 0, 0, '', 0),
('RU00058', '', '', 0, '', 0, 0, 'Jan', 2020),
('RU00059', '', '', 0, '', 0, 0, '', 0),
('RU00060', '', '', 0, '', 0, 0, '', 0),
('RU00061', '', '', 0, '', 0, 0, 'Jan', 2020),
('RU00062', '', '', 0, '', 0, 0, '', 0),
('RU00063', '', '', 0, '', 0, 0, '', 0),
('RU00064', '', '', 0, '', 0, 0, '', 0),
('RU00065', '', '', 0, '', 0, 0, '', 0),
('RU00066', '', '', 0, '', 0, 0, '', 0),
('RU00067', '', '', 0, '', 0, 0, '', 0),
('RU00068', '', '', 0, '', 0, 0, '', 0),
('RU00069', '', '', 0, '', 0, 0, '', 0),
('RU00070', '', '', 0, '', 0, 0, '', 0),
('RU00071', '', '', 0, '', 0, 0, '', 0),
('RU00072', '', '', 0, '', 0, 0, '', 0),
('RU00073', '', '', 0, '', 0, 0, '', 0),
('RU00074', '', '', 0, '', 0, 0, '', 0),
('RU00075', '', '', 0, '', 0, 0, '', 0),
('RU00076', '', '', 0, '', 0, 0, '', 0),
('RU00077', '', '', 0, '', 0, 0, '', 0),
('RU00078', '', '', 0, '', 0, 0, '', 0),
('RU00079', '', '', 0, '', 0, 0, '', 0),
('RU00080', '', '', 0, '', 0, 0, '', 0),
('RU00081', '', '', 0, '', 0, 0, '', 0),
('RU00082', '', '', 0, '', 0, 0, '', 0),
('RU00083', '', '', 0, '', 0, 0, '', 0),
('RU00084', '', '', 0, '', 0, 0, '', 0),
('RU00085', '', '', 0, '', 0, 0, '', 0),
('RU00086', '', '', 0, '', 0, 0, '', 0),
('RU00087', '', '', 0, '', 0, 0, '', 0),
('RU00088', '', '', 0, '', 0, 0, '', 0),
('RU00089', '', '', 0, '', 0, 0, '', 0),
('RU00090', '', '', 0, '', 0, 0, '', 0),
('RU00091', '', '', 0, '', 0, 0, '', 0),
('RU00092', '', '', 0, '', 0, 0, '', 0),
('RU00093', '', '', 0, '', 0, 0, '', 0),
('RU00094', '', '', 0, '', 0, 0, '', 0),
('RU00095', '', '', 0, '', 0, 0, '', 0),
('RU00096', '', '', 0, '', 0, 0, '', 0),
('RU00097', '', '', 0, '', 0, 0, '', 0),
('RU00098', '', '', 0, '', 0, 0, '', 0),
('RU00099', '', '', 0, '', 0, 0, '', 0),
('RU00100', '', '', 0, '', 0, 0, '', 0),
('RU00101', '', '', 0, '', 0, 0, '', 0),
('RU00102', '', '', 0, '', 0, 0, '', 0),
('RU00103', '', '', 0, '', 0, 0, '', 0),
('RU00104', '', '', 0, '', 0, 0, '', 0),
('RU00105', '', '', 0, '', 0, 0, '', 0),
('RU00106', '', '', 0, '', 0, 0, '', 0),
('RU00107', '', '', 0, '', 0, 0, '', 0),
('RU00108', '', '', 0, '', 0, 0, '', 0),
('RU00109', '', '', 0, '', 0, 0, '', 0),
('RU00110', '', '', 0, '', 0, 0, '', 0),
('RU00111', '', '', 0, '', 0, 0, '', 0),
('RU00112', '', '', 0, '', 0, 0, '', 0),
('RU00113', '', '', 0, '', 0, 0, '', 0),
('RU00114', '', '', 0, '', 0, 0, '', 0),
('RU00115', '', '', 0, '', 0, 0, '', 0),
('RU00116', '', '', 0, '', 0, 0, '', 0),
('RU00117', '', '', 0, '', 0, 0, '', 0),
('RU00118', '', '', 0, '', 0, 0, '', 0),
('RU00119', '', '', 0, '', 0, 0, '', 0),
('RU00120', '', '', 0, '', 0, 0, '', 0),
('RU00121', '', '', 0, '', 0, 0, '', 0),
('RU00122', '', '', 0, '', 0, 0, '', 0),
('RU00123', '', '', 0, '', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `random_user`
--

CREATE TABLE `random_user` (
  `Random_User_ID` varchar(50) NOT NULL,
  `Ticket_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Route_ID` varchar(50) NOT NULL,
  `Destination_Of_Location` varchar(100) NOT NULL,
  `Start_Location` varchar(100) NOT NULL,
  `Distance(km)` int(100) NOT NULL,
  `Duration` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`Route_ID`, `Destination_Of_Location`, `Start_Location`, `Distance(km)`, `Duration`) VALUES
('RU0001', 'Colombo', 'Badulla', 328, 2),
('RU0002', 'Badulla', 'Colombo', 257, 6),
('RU0003', 'Colombo', 'Badulla', 220, 4),
('RU0004', 'Badulla', 'Colombo', 328, 6);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Schedule_ID` varchar(10) NOT NULL,
  `Bus_ID` varchar(50) NOT NULL,
  `Route_ID` varchar(50) NOT NULL,
  `Conductor_ID` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Arrival_Time` time(6) NOT NULL,
  `Departure_Time` time(6) NOT NULL,
  `Latitude` varchar(30) NOT NULL,
  `Longitude` varchar(30) NOT NULL,
  `Space` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_ID`, `Bus_ID`, `Route_ID`, `Conductor_ID`, `Date`, `Arrival_Time`, `Departure_Time`, `Latitude`, `Longitude`, `Space`) VALUES
('SH0001', 'BUS0001', 'RU0001', 'USER0010', '2023-11-26', '12:27:02.000000', '18:27:02.298000', '0', '0', 50),
('SH0002', 'BUS0002', 'RU0002', 'USER0010', '2023-11-26', '12:27:02.000000', '18:27:02.298000', '', '', 0),
('SH0003', 'BUS0003', 'RU0003', 'USER0010', '2023-11-30', '12:27:02.000000', '18:27:02.298000', '', '', 0),
('SH0004', 'BUS0004', 'RU0004', 'USER0010', '2023-11-25', '12:27:02.000000', '18:27:02.298000', '6.9809338', '81.0774317', 0),
('SH0005', 'BUS0001', 'RU0001', 'USER0010', '2023-11-30', '17:02:05.000000', '13:02:05.000000', '', '', 0),
('SH0006', 'BUS0002', 'RU0002', 'USER0018', '2023-11-21', '17:02:05.000000', '13:02:05.000000', '', '', 0),
('SH0007', 'BUS0001', 'RU0001', 'USER0016', '2023-11-28', '17:02:05.000000', '13:02:05.000000', '', '', 0),
('SH0008', 'BUS0002', 'RU0002', 'USER0017', '2023-11-28', '17:02:05.000000', '13:02:05.000000', '', '', 0),
('SH0009', 'BUS0005', 'RU0001', 'USER0010', '2023-11-27', '05:30:54.994000', '10:30:54.057000', '', '', 0),
('SH0010', 'BUS0006', 'RU0001', 'USER0011', '2023-11-27', '06:00:21.267000', '11:30:21.635000', '', '', 0),
('SH0011', 'BUS0007', 'RU0001', 'USER0010', '2023-11-27', '06:30:00.081000', '12:30:32.001000', '', '', 0),
('SH0012', 'BUS0008', 'RU0001', 'USER0012', '2023-11-27', '07:00:50.179000', '13:00:50.003000', '', '', 0),
('SH0013', 'BUS0009', 'RU0001', 'USER0013', '2023-11-27', '08:00:00.227000', '14:00:00.563000', '', '', 0),
('SH0014', 'BUS0010', 'RU0002', 'USER0014', '2023-11-27', '05:30:00.818000', '11:30:06.353000', '', '', 0),
('SH0015', 'BUS0011', 'RU0002', 'USER0015', '2023-11-27', '06:30:36.058000', '12:30:36.226000', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `Ticket_ID` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `QRcode` varchar(350) NOT NULL,
  `Bus_ID` varchar(50) NOT NULL,
  `Route_ID` varchar(50) NOT NULL,
  `Ticket_Status` varchar(20) NOT NULL,
  `Ticket_Cat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_cancellation`
--

CREATE TABLE `ticket_cancellation` (
  `Shedule_ID` varchar(10) NOT NULL,
  `SeatNO` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Ticket_ID` varchar(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `RefrenceNO` varchar(150) NOT NULL,
  `UserID` varchar(10) NOT NULL,
  `Payment_ID` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_cancellation`
--

INSERT INTO `ticket_cancellation` (`Shedule_ID`, `SeatNO`, `Gender`, `Ticket_ID`, `Price`, `Date`, `Time`, `RefrenceNO`, `UserID`, `Payment_ID`, `Status`) VALUES
('SH0001', '1', 'child', 'TKT0001', 2000, '2023-11-20', '15:24:21', 'TKT0001SH0001-1-child-USER00072023-11-20child15:24:21', 'USER0007', '', 'Canceled'),
('SH0001', '2', 'child', 'TKT0001', 2000, '2023-11-20', '15:24:21', 'TKT0001SH0001-2-child-USER00072023-11-20child15:24:21', 'USER0007', '', 'Canceled'),
('SH0001', '6', 'child', 'TKT0001', 2000, '2023-11-20', '15:24:21', 'TKT0001SH0001-6-child-USER00072023-11-20child15:24:21', 'USER0007', '', 'Canceled'),
('SH0001', '7', 'child', 'TKT0001', 2000, '2023-11-20', '15:24:21', 'TKT0001SH0001-7-child-USER00072023-11-20child15:24:21', 'USER0007', '', 'Canceled'),
('SH0004', '7', 'child', 'TKT0003', 2000, '2023-11-21', '19:38:27', 'TKT0003SH0004-7-child-USER00072023-11-21child19:38:27', 'USER0007', '', 'Canceled'),
('SH0004', '6', 'child', 'TKT0003', 2000, '2023-11-21', '19:38:27', 'TKT0003SH0004-6-child-USER00072023-11-21child19:38:27', 'USER0007', '', 'Canceled'),
('SH0004', '2', 'child', 'TKT0003', 2000, '2023-11-21', '19:38:27', 'TKT0003SH0004-2-child-USER00072023-11-21child19:38:27', 'USER0007', '', 'Canceled'),
('SH0004', '1', 'child', 'TKT0003', 2000, '2023-11-21', '19:38:27', 'TKT0003SH0004-1-child-USER00072023-11-21child19:38:27', 'USER0007', '', 'Canceled'),
('SH0003', '2', 'child', 'TKT0002', 2000, '2023-11-21', '16:37:49', 'TKT0002SH0003-2-child-USER00072023-11-21child16:37:49', 'USER0007', '', 'Canceled'),
('SH0003', '1', 'child', 'TKT0002', 2000, '2023-11-21', '16:37:49', 'TKT0002SH0003-1-child-USER00072023-11-21child16:37:49', 'USER0007', '', 'Canceled'),
('SH0001', '6', 'child', 'TKT0001', 2000, '2023-11-20', '15:41:46', 'TKT0001SH0001-6-child-USER00072023-11-20child15:41:46', 'USER0007', '', 'Canceled'),
('SH0001', '2', 'child', 'TKT0001', 2000, '2023-11-20', '15:41:46', 'TKT0001SH0001-2-child-USER00072023-11-20child15:41:46', 'USER0007', '', 'Canceled'),
('SH0001', '1', 'child', 'TKT0001', 2000, '2023-11-20', '15:41:46', 'TKT0001SH0001-1-child-USER00072023-11-20child15:41:46', 'USER0007', '', 'Canceled'),
('SH0005', '14', 'child', 'TKT0002', 2000, '2023-11-21', '21:48:37', 'TKT0002SH0005-14-child-USER00072023-11-21child21:48:37', 'USER0007', '', 'Canceled'),
('SH0001', '39', 'man', 'TKT0001', 2000, '2023-11-23', '08:54:11', 'TKT0001SH0001-39-man-USER00232023-11-23man08:54:11', 'USER0023', '', 'Canceled'),
('SH0001', '1', 'child', 'TKT0001', 2000, '2023-11-23', '08:54:11', 'TKT0001SH0001-1-child-USER00232023-11-23child08:54:11', 'USER0023', '', 'Canceled'),
('SH0001', '8', 'man', 'TKT0011', 2000, '2023-11-27', '18:02:24', 'TKT0011SH0001-8-man-USER00072023-11-27man18:02:24', 'USER0007', '', 'Canceled');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reservation`
--

CREATE TABLE `ticket_reservation` (
  `Shedule_ID` varchar(10) NOT NULL,
  `SeatNO` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Ticket_ID` varchar(10) NOT NULL,
  `Price` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `RefrenceNO` varchar(150) NOT NULL,
  `UserID` varchar(10) NOT NULL,
  `Payment_ID` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_reservation`
--

INSERT INTO `ticket_reservation` (`Shedule_ID`, `SeatNO`, `Gender`, `Ticket_ID`, `Price`, `Date`, `Time`, `RefrenceNO`, `UserID`, `Payment_ID`, `Status`) VALUES
('SH0001', '7', 'woman', 'TKT0001', 2000, '2023-11-23', '08:54:11', 'TKT0001SH0001-7-woman-USER00232023-11-23woman08:54:11', 'USER0023', '', 'Paid'),
('SH0001', '11', 'man', 'TKT0001', 2000, '2023-11-23', '08:54:11', 'TKT0001SH0001-11-man-USER00232023-11-23man08:54:11', 'USER0023', '', 'Paid'),
('SH0004', '1', 'child', 'TKT0002', 2000, '2023-11-23', '09:56:19', 'TKT0002SH0004-1-child-USER00242023-11-23child09:56:19', 'USER0024', '', 'Unpaid'),
('SH0004', '2', 'woman', 'TKT0002', 2000, '2023-11-23', '09:56:19', 'TKT0002SH0004-2-woman-USER00242023-11-23woman09:56:19', 'USER0024', '', 'Unpaid'),
('SH0004', '6', 'man', 'TKT0002', 2000, '2023-11-23', '09:56:19', 'TKT0002SH0004-6-man-USER00242023-11-23man09:56:19', 'USER0024', '', 'Unpaid'),
('SH0001', '12', 'child', 'TKT0003', 2000, '2023-11-23', '10:16:28', 'TKT0003SH0001-12-child-USER00232023-11-23child10:16:28', 'USER0023', '', 'Unpaid'),
('SH0001', '17', 'child', 'TKT0003', 2000, '2023-11-23', '10:16:28', 'TKT0003SH0001-17-child-USER00232023-11-23child10:16:28', 'USER0023', '', 'Unpaid'),
('SH0001', '22', 'child', 'TKT0003', 2000, '2023-11-23', '10:16:28', 'TKT0003SH0001-22-child-USER00232023-11-23child10:16:28', 'USER0023', '', 'Unpaid'),
('SH0001', '13', 'child', 'TKT0004', 2000, '2023-11-23', '10:16:49', 'TKT0004SH0001-13-child-USER00232023-11-23child10:16:49', 'USER0023', '', 'Unpaid'),
('SH0001', '14', 'child', 'TKT0004', 2000, '2023-11-23', '10:16:49', 'TKT0004SH0001-14-child-USER00232023-11-23child10:16:49', 'USER0023', '', 'Unpaid'),
('SH0001', '18', 'child', 'TKT0004', 2000, '2023-11-23', '10:16:49', 'TKT0004SH0001-18-child-USER00232023-11-23child10:16:49', 'USER0023', '', 'Unpaid'),
('SH0001', '19', 'child', 'TKT0004', 2000, '2023-11-23', '10:16:49', 'TKT0004SH0001-19-child-USER00232023-11-23child10:16:49', 'USER0023', '', 'Unpaid'),
('SH0001', '23', 'child', 'TKT0004', 2000, '2023-11-23', '10:16:49', 'TKT0004SH0001-23-child-USER00232023-11-23child10:16:49', 'USER0023', '', 'Unpaid'),
('SH0001', '32', 'child', 'TKT0005', 2000, '2023-11-27', '17:39:24', 'TKT0005SH0001-32-child-USER00072023-11-27child17:39:24', 'USER0007', '', 'Paid'),
('SH0001', '37', 'child', 'TKT0005', 2000, '2023-11-27', '17:39:24', 'TKT0005SH0001-37-child-USER00072023-11-27child17:39:24', 'USER0007', '', 'Paid'),
('SH0003', '1', 'child', 'TKT0006', 2000, '2023-11-27', '17:48:12', 'TKT0006SH0003-1-child-USER00072023-11-27child17:48:12', 'USER0007', '', 'Paid'),
('SH0003', '2', 'child', 'TKT0006', 2000, '2023-11-27', '17:48:12', 'TKT0006SH0003-2-child-USER00072023-11-27child17:48:12', 'USER0007', '', 'Paid'),
('SH0003', '18', 'child', 'TKT0007', 2000, '2023-11-27', '17:50:00', 'TKT0007SH0003-18-child-USER00072023-11-27child17:50:00', 'USER0007', '', 'Unpaid'),
('SH0003', '19', 'child', 'TKT0007', 2000, '2023-11-27', '17:50:00', 'TKT0007SH0003-19-child-USER00072023-11-27child17:50:00', 'USER0007', '', 'Unpaid'),
('SH0003', '21', 'child', 'TKT0008', 2000, '2023-11-27', '17:51:16', 'TKT0008SH0003-21-child-USER00072023-11-27child17:51:16', 'USER0007', '', 'Unpaid'),
('SH0003', '22', 'child', 'TKT0008', 2000, '2023-11-27', '17:51:16', 'TKT0008SH0003-22-child-USER00072023-11-27child17:51:16', 'USER0007', '', 'Unpaid'),
('SH0001', '26', 'child', 'TKT0009', 2000, '2023-11-27', '17:54:18', 'TKT0009SH0001-26-child-USER00072023-11-27child17:54:18', 'USER0007', '', 'Unpaid'),
('SH0001', '31', 'child', 'TKT0009', 2000, '2023-11-27', '17:54:18', 'TKT0009SH0001-31-child-USER00072023-11-27child17:54:18', 'USER0007', '', 'Unpaid'),
('SH0001', '1', 'child', 'TKT0010', 2000, '2023-11-27', '17:58:48', 'TKT0010SH0001-1-child-USER00072023-11-27child17:58:48', 'USER0007', '', 'Unpaid'),
('SH0001', '2', 'child', 'TKT0010', 2000, '2023-11-27', '17:58:48', 'TKT0010SH0001-2-child-USER00072023-11-27child17:58:48', 'USER0007', '', 'Unpaid'),
('SH0001', '3', 'child', 'TKT0011', 2000, '2023-11-27', '18:02:24', 'TKT0011SH0001-3-child-USER00072023-11-27child18:02:24', 'USER0007', '', 'Unpaid'),
('SH0001', '4', 'woman', 'TKT0011', 2000, '2023-11-27', '18:02:24', 'TKT0011SH0001-4-woman-USER00072023-11-27woman18:02:24', 'USER0007', '', 'Unpaid'),
('SH0001', '29', 'child', 'TKT0012', 2000, '2023-12-02', '19:00:50', 'TKT0012SH0001-29-child-USER00072023-12-02child19:00:50', 'USER0007', '', 'Unpaid'),
('SH0001', '34', 'child', 'TKT0012', 2000, '2023-12-02', '19:00:50', 'TKT0012SH0001-34-child-USER00072023-12-02child19:00:50', 'USER0007', '', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(50) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `role` varchar(50) NOT NULL,
  `Latitude` varchar(30) NOT NULL,
  `Longitude` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Name`, `Email`, `Username`, `Password`, `Phone_Number`, `role`, `Latitude`, `Longitude`) VALUES
('USER0005', 'Mahthy', 'maheng907@gmail.com', 'hasan', '12345678', 769074027, 'admin', '0', '0'),
('USER0006', 'abcd', 'abcd1@gmail.com', 'abcd', 'abcd12345', 123498761, 'pasanger', '6.9802618', '81.0809906'),
('USER0007', 'Hasan', 'hasan@gmail.com', 'hasan', '12345678', 769074027, 'pasanger', '', ''),
('USER0008', 'Dilhan', 'dilhan@gmail.com', 'dilhan123', 'qwertyuiop', 787878781, 'conductor', '0', '0'),
('USER0009', 'Janith', 'janith@gmail.com', 'janith123', 'zxcvbnm', 786545365, 'pasanger', '0', '0'),
('USER0010', 'Sansala', 'sansala@gmail.com', 'sansala123', '12345678', 765432451, 'conductor', '0', '0'),
('USER0011', 'Bhagya', 'bhagya@gmail.com', 'bhagya123', '12345678', 786543521, 'pasanger', '0', '0'),
('USER0012', 'abcd123', 'abcd123@gmail.com', 'abcd123', 'abcd123', 111111111, 'pasanger', '', ''),
('USER0013', 'Tharushi', 'tharu@gmail.com', 'Vithanage', '1234567890', 714474829, 'pasanger', '', ''),
('USER0014', 'Yashoda', 'yashoda@gmail.com', 'Vithanage', '1111', 1234567890, 'pasanger', '', ''),
('USER0015', 'test5', 'test5@gmail.com', 'test5', '11111', 771111111, 'conductor', '', ''),
('USER0016', 'test6', 'tes6@gmail.com', 'test6', 'qwerty', 717312778, 'conductor', '', ''),
('USER0017', 'test7', 'tes7t@gmail.com', 'test7', 'abcd', 714104986, 'conductor', '', ''),
('USER0018', 'test8', 'test8@gmail.com', 'test8', '77777', 712345678, 'conductor', '', ''),
('USER0019', 'test9', 'tes9@gmail.com', 'test9', '99999', 718312874, 'conductor', '', ''),
('USER0020', 'test10', 'test10@gmail.com', 'test10', '8888', 777328744, 'conductor', '', ''),
('USER0021', 'abcd12345', 'abcd12345@gmail.com', 'abcd12345', '1111', 123456789, 'pasanger', '', ''),
('USER0022', 'demo', 'demo1@gmail.com', 'DemoUser', '1234', 771231234, 'pasanger', '', ''),
('USER0023', 'Demo3', 'demo3@gmail.com', 'user', '1234', 771231234, 'pasanger', '', ''),
('USER0024', 'hasan', 'test6@gmail.com', 'test', '1111', 771231234, 'pasanger', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings_entire_bus`
--
ALTER TABLE `bookings_entire_bus`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `bus_id_fk` (`bus_id_fk`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_ID`);

--
-- Indexes for table `bus_company`
--
ALTER TABLE `bus_company`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `bus_tracking`
--
ALTER TABLE `bus_tracking`
  ADD PRIMARY KEY (`Track_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`),
  ADD KEY `Bus_ID` (`Bus_ID`);

--
-- Indexes for table `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`Conductor_ID`),
  ADD KEY `Bus_ID` (`Bus_ID`);

--
-- Indexes for table `contac_us`
--
ALTER TABLE `contac_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `entire_booking_buses`
--
ALTER TABLE `entire_booking_buses`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `expences`
--
ALTER TABLE `expences`
  ADD PRIMARY KEY (`EX_ID`),
  ADD KEY `Bus_ID` (`Bus_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Feedback_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`Fuel_ID`),
  ADD KEY `Bus_ID` (`Bus_ID`);

--
-- Indexes for table `income_payment`
--
ALTER TABLE `income_payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_ID`);

--
-- Indexes for table `package_services`
--
ALTER TABLE `package_services`
  ADD PRIMARY KEY (`Package_ID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`Passenger_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `random_user`
--
ALTER TABLE `random_user`
  ADD PRIMARY KEY (`Random_User_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Route_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Schedule_ID`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`Ticket_ID`),
  ADD KEY `Bus_ID` (`Bus_ID`),
  ADD KEY `Route_ID` (`Route_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings_entire_bus`
--
ALTER TABLE `bookings_entire_bus`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contac_us`
--
ALTER TABLE `contac_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entire_booking_buses`
--
ALTER TABLE `entire_booking_buses`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expences`
--
ALTER TABLE `expences`
  MODIFY `EX_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Feedback_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `Fuel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `package_services`
--
ALTER TABLE `package_services`
  MODIFY `Package_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings_entire_bus`
--
ALTER TABLE `bookings_entire_bus`
  ADD CONSTRAINT `bookings_entire_bus_ibfk_1` FOREIGN KEY (`bus_id_fk`) REFERENCES `entire_booking_buses` (`bus_id`);

--
-- Constraints for table `bus_tracking`
--
ALTER TABLE `bus_tracking`
  ADD CONSTRAINT `bus_tracking_ibfk_1` FOREIGN KEY (`Ticket_ID`) REFERENCES `tickets` (`Ticket_ID`),
  ADD CONSTRAINT `bus_tracking_ibfk_2` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`);

--
-- Constraints for table `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`);

--
-- Constraints for table `expences`
--
ALTER TABLE `expences`
  ADD CONSTRAINT `expences_ibfk_1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `fuel`
--
ALTER TABLE `fuel`
  ADD CONSTRAINT `fuel_ibfk_1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`Ticket_ID`) REFERENCES `tickets` (`Ticket_ID`),
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `random_user`
--
ALTER TABLE `random_user`
  ADD CONSTRAINT `random_user_ibfk_1` FOREIGN KEY (`Ticket_ID`) REFERENCES `tickets` (`Ticket_ID`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`Bus_ID`) REFERENCES `bus` (`Bus_ID`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`Route_ID`) REFERENCES `route` (`Route_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
