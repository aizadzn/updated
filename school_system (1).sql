-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 08, 2024 at 02:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `MobileNumber` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `HomeAddress` varchar(255) DEFAULT NULL,
  `MobileNumber2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserID`, `username`, `password`, `FirstName`, `MiddleName`, `LastName`, `Gender`, `MobileNumber`, `email`, `photo_path`, `HomeAddress`, `MobileNumber2`) VALUES
(1, '0123456', 'Calii', '1234', 'Calii', 'Vern', 'Ford', 'Male', '09192312325', 'aizagonzales.dizon@gmai.com', 'uploads/Calii.jpg', NULL, NULL),
(3, '0045', 'Liaam', 'Liam', 'Liam', 'Payne', 'David', 'Male', '09251624547', 'liamp@gmail,com', 'uploads/Liaam.jpg', 'Einstein Street ', '09192564789');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `TimeInAM` datetime DEFAULT '1970-01-01 00:00:00',
  `TimeOutAM` datetime DEFAULT '1970-01-01 00:00:00',
  `TimeInPM` datetime DEFAULT '1970-01-01 00:00:00',
  `TimeOutPM` datetime DEFAULT '1970-01-01 00:00:00',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `dept_description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`, `dept_description`, `deleted`) VALUES
(6, 'BSIT', 'IHOSDGDAD', 0),
(17, 'BSBA', 'BACHELOR OF BUSINESS ADMINISTRATION\r\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `MobileNumber` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `HomeAddress` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `MobileNumber2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `UserID`, `username`, `password`, `FirstName`, `MiddleName`, `LastName`, `Gender`, `MobileNumber`, `email`, `photo_path`, `HomeAddress`, `department`, `MobileNumber2`) VALUES
(3, '0234', 'Jabee', 'abcd', 'Jabee', 'MC', 'Donald', 'Male', '09253684795', 'jabee@gmail.com', 'uploads/Jabee.jpg', NULL, '', NULL),
(4, '0009', 'Adam', 'adam', 'Adam', 'Son', 'Flores', 'Male', '09184562145', 'adam@gmail.com', 'uploads/Adam.jpg', 'Fort Santiago Street', '', '096321452874');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expires`) VALUES
(1, 'aizagonzales.dizon@gmail.com', '0e7ca024e67d20ede17a6733ba76e1d1598bce61d4e45ddd8bbe5cc98f894e9f401bd29ad329033a05dc9ff9e082dc6a44d3', 1719298169),
(2, 'aizagonzales.dizon@gmail.com', '9df02344259868aef67671c37cc1d81f95e9821e9eb5bbf17a9733915505a3fe7f8dfb2483b7e1537947559f08f6bce89495', 1719298631),
(3, 'aizagonzales.dizon@gmail.com', '5a16e6b9c8b7c1cb1075c418d52cd82937ba6b27cd1c6efb73849b9e6d9f00da654b2fe48ab3422bafa89627cc90418d5933', 1719298668),
(4, 'aizagonzales.dizon@gmail.com', 'b4cdf0c862823e6603027f23627ead97ffa6f0455445bdd709bec72bf435e03f373b7b36d002a06d543ec882b91ef2b90c98', 1719298947),
(5, 'aizagonzales.dizon@gmail.com', 'fbeb91d649c99bf421a59cd49c52cfa27ec06f742e9ffe07ef80ee373499910b9a95fcbfd1b49d3e04256ef2b936311b676e', 1719299065),
(6, 'aizagonzales.dizon@gmail.com', '246379a557a516b379236ef8d47ed21d0a26bde3a8ba60445a3d25ef050916728a1026fa56fb49746eff43c016920d3457f6', 1719299251),
(7, 'aizagonzales.dizon@gmail.com', '761884b71c9118862d7cd67fb2bde1340fbc3a078e56ad7a76647dd2852cbf443826f56a4c098675eacd001ecb1b2049f85f', 1719299373);

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(11) NOT NULL,
  `UserID` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `HomeAddress` varchar(255) DEFAULT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photoPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`) VALUES
(1, '301'),
(2, '302'),
(3, '303'),
(4, '304'),
(5, '305'),
(6, '306');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `year_section` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `day_of_week` varchar(20) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room` varchar(50) NOT NULL,
  `instructor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `year_section`, `course_name`, `day_of_week`, `start_time`, `end_time`, `room`, `instructor`) VALUES
(1, 'BSIT-4A', 'Prog', 'Monday', '11:00:00', '13:00:00', '301', 'Jabee Mc, Donald'),
(3, 'BSIT-4A', 'SAD', 'Tuesday', '13:23:00', '16:23:00', '302', 'James Rod'),
(4, 'BSIT-4A', 'IT AUDIT', 'Monday', '16:00:00', '18:00:00', '301', 'Robin Hood'),
(5, 'BSBA', 'Accounting', 'Saturday', '08:00:00', '10:00:00', '302', 'aaa'),
(15, 'BA', 'adgfad', 'Saturday', '09:00:00', '10:00:00', '302', 'asfa'),
(23, 'BSBA', 'ACC', 'Saturday', '09:00:00', '11:00:00', '302', 'DFAG'),
(51, 'BEED-3A', 'ENGLISH', 'Monday', '12:00:00', '14:00:00', '301', 'LIAM'),
(52, 'BEED-3A', 'ENGLISH', 'Monday', '12:00:00', '14:00:00', '301', 'LIAM'),
(53, 'BEED-3A', 'ENGLISH', 'Monday', '12:00:00', '14:00:00', '301', 'LIAM'),
(54, 'BEED', 'FILIPINO', 'Wednesday', '12:00:00', '14:00:00', '305', 'ERIN DIZON');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `MobileNumber` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `HomeAddress` varchar(255) DEFAULT NULL,
  `MobileNumber2` varchar(15) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `year_section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `UserID`, `username`, `password`, `FirstName`, `MiddleName`, `LastName`, `Gender`, `MobileNumber`, `email`, `photo_path`, `HomeAddress`, `MobileNumber2`, `department`, `year_section`) VALUES
(1, '001', 'Aiza', '12345', 'Aiza', 'Gonzales', 'Dizon', 'Female', '09123456987', 'aizagonzales.dizon@gmail.com', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `MobileNumber` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `HomeAddress` varchar(255) DEFAULT NULL,
  `MobileNumber2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `UserID`, `username`, `password`, `role`, `FirstName`, `MiddleName`, `LastName`, `Gender`, `MobileNumber`, `email`, `photo_path`, `HomeAddress`, `MobileNumber2`) VALUES
(1, '0123456', 'Calii', '1234', 'admin', 'Calii', 'Vern', 'Ford', 'Male', '09192312325', 'aizagonzales.dizon@gmai.com', 'uploads/Calii.jpg', NULL, NULL),
(2, '0123', 'Jabee', 'abcd', 'faculty', 'Jabee', 'MC', 'Donald', 'Male', '09256847893', 'jabee@gmail.com', 'uploads/Jabee.jpg', NULL, NULL),
(3, '0234', 'scott', '123abc', 'faculty', 'Scott', 'Rock', 'Alvarez', 'Male', '09192312325', 'scott@gmail.com', 'uploads/scott.jpg', NULL, NULL),
(4, '0234', 'Jabee', 'abcd', 'faculty', 'Jabee', 'MC', 'Donald', 'Male', '09253684795', 'jabee@gmail.com', 'uploads/Jabee.jpg', NULL, NULL),
(5, '001', 'Aiza', '12345', 'student', 'Aiza', 'Gonzales', 'Dizon', 'Female', '09123456987', 'aizagonzales.dizon@gmail.com', 'uploads/Aiza.jpg', NULL, NULL),
(6, '0023', 'Charlotte', 'abcde', 'admin', 'Charlotte', 'Garcia', 'Ramos', 'Female', '09192452685', 'charlotte@gmail.com', 'uploads/Charlotte.jpg', 'North Wood Magalang ', '09142312526'),
(7, '0045', 'Liaam', 'Liam', 'admin', 'Liam', 'Payne', 'David', 'Male', '09251624547', 'liamp@gmail,com', 'uploads/Liaam.jpg', 'Einstein Street ', '09192564789'),
(8, '0009', 'Adam', 'adam', 'faculty', 'Adam', 'Son', 'Flores', 'Male', '09184562145', 'adam@gmail.com', 'uploads/Adam.jpg', 'Fort Santiago Street', '096321452874');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `log_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`),
  ADD UNIQUE KEY `uk_dept_name` (`dept_name`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
