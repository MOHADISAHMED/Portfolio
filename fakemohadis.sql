-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 01:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fakemohadis`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `catname`, `catimage`) VALUES
(1, 'computer ', 'gettyimages-184944186-612x612.jpg'),
(3, 'mobile-devices', 'user.jpg'),
(4, 'Cameras', 'Screenshot (55).png');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Mohadis', 'mohadis@gmail', '32654546', 'adjhfjadksnf'),
(2, 'Babar Ali', 'shabir@gmail.com', '12135464', 'dasfadsfads');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `itemcount` int(11) NOT NULL,
  `totalquantity` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL,
  `invoicedate` date NOT NULL,
  `invoicetime` time NOT NULL,
  `orderstatus` varchar(255) NOT NULL DEFAULT 'pending',
  `confirmationcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceid`, `userid`, `useremail`, `username`, `itemcount`, `totalquantity`, `totalamount`, `invoicedate`, `invoicetime`, `orderstatus`, `confirmationcode`) VALUES
(1, 1, 'farooqsethi21@gmail.com', 'farooq sethi', 1, 2, 1090, '2024-05-22', '14:58:28', 'pending', ''),
(2, 1, 'farooqsethi21@gmail.com', 'farooq sethi', 2, 2, 35000930, '2024-05-22', '15:36:45', 'pending', ''),
(3, 8, 'farihaaptech888@gmail.com', 'FARIHA', 3, 3, 35001475, '2024-05-23', '16:44:35', 'pending', '610448'),
(4, 8, 'farihaaptech888@gmail.com', 'FARIHA', 1, 1, 35000385, '2024-05-23', '16:46:48', 'pending', '448845'),
(5, 8, 'farihaaptech888@gmail.com', 'FARIHA', 1, 1, 35000385, '2024-05-25', '14:30:54', 'pending', '283439'),
(6, 8, 'farihaaptech888@gmail.com', 'FARIHA', 1, 1, 545, '2024-05-25', '14:31:48', 'pending', '081589');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productprice` int(11) NOT NULL,
  `productquantity` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  `orderstatus` varchar(255) NOT NULL DEFAULT 'pending',
  `ordertime` time NOT NULL,
  `productimage` varchar(255) NOT NULL,
  `confirmationcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `productid`, `productname`, `productprice`, `productquantity`, `userid`, `orderdate`, `orderstatus`, `ordertime`, `productimage`, `confirmationcode`) VALUES
(1, 5, 'vivo', 545, 2, 1, '2024-05-22', 'pending', '14:57:26', 'password.png', ''),
(2, 5, 'vivo', 545, 2, 1, '2024-05-22', 'pending', '14:58:28', 'password.png', ''),
(3, 5, 'vivo', 545, 1, 1, '2024-05-22', 'pending', '15:36:45', 'password.png', ''),
(4, 3, 'VIovdasd', 35000385, 1, 1, '2024-05-22', 'pending', '15:36:45', 'Screenshot (47).png', ''),
(9, 5, 'vivo', 545, 1, 8, '2024-05-23', 'pending', '16:44:35', 'password.png', '610448'),
(10, 5, 'vivo', 545, 1, 8, '2024-05-23', 'pending', '16:44:35', 'password.png', '610448'),
(11, 3, 'VIovdasd', 35000385, 1, 8, '2024-05-23', 'pending', '16:44:35', 'Screenshot (47).png', '610448'),
(12, 3, 'VIovdasd', 35000385, 1, 8, '2024-05-23', 'pending', '16:46:48', 'Screenshot (47).png', '448845'),
(13, 3, 'VIovdasd', 35000385, 1, 8, '2024-05-25', 'pending', '14:30:54', 'Screenshot (47).png', '283439'),
(14, 5, 'vivo', 545, 1, 8, '2024-05-25', 'pending', '14:31:48', 'password.png', '081589');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productquantity` int(255) NOT NULL,
  `productprice` int(11) NOT NULL,
  `productdescription` varchar(255) NOT NULL,
  `productimage` varchar(255) NOT NULL,
  `productcatid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `productquantity`, `productprice`, `productdescription`, `productimage`, `productcatid`) VALUES
(3, 'VIovdasd', 500, 35000385, 'dasdasdcxcxzaasdassfdasc', 'Screenshot (47).png', 3),
(5, 'vivo', 2, 545, 'sdasdasda', 'password.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceid` int(11) NOT NULL,
  `servicename` varchar(255) NOT NULL,
  `servicedescription` varchar(255) NOT NULL,
  `serviceprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceid`, `servicename`, `servicedescription`, `serviceprice`) VALUES
(1, '\r\nFrontend Design', 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', 199),
(2, 'Data Base Management', 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', 250),
(3, 'Backend Development', 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', 300),
(4, 'UI/UX Design', 'Stet lorem dolor diam amet vero eos. No stet est diam amet diam ipsum. Clita dolor duo clita sit sed sit dolor eos.', 199);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `userphonenumber` varchar(13) NOT NULL,
  `userrole` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `useremail`, `userpassword`, `userphonenumber`, `userrole`) VALUES
(1, 'farooq sethi', 'farooqsethi21@gmail.com', '$2y$10$pwj79jkE/cjeVDViy5zTpOpiLvlYvgaoeozXx6yqEPKcknP7aw.4O', '03102450439', 'admin'),
(2, 'admin', 'admin@corza.com', '$2y$10$WhGGutxC1zXBlVUuGJvWe.OI90AbZ22m5i.WSX.utKFikhDagRItC', '321456987', 'admin'),
(5, 'Babar', 'babar@corza.com', '$2y$10$xAld29fm6T8cc6jHzU5p8uejhF9X1o/FH6JS6QO4L/Df1C7J1QgMy', '531564156', 'user'),
(6, 'Babar Ali', '123@g', '$2y$10$G47SDlup.xh.17p04ohKyeqFjyB4Dg4ByickQeEx9Ysw0G8W72rwu', '12321', 'customer'),
(7, 'Babar Ali', 'bk8483300@gmail.com', '$2y$10$kFDD7NYmM1Mq8jp.8pD5YeECzUppCwxnrosTT3LEe95ioYV1fEvIm', '1564131', 'admin'),
(8, 'FARIHA', 'farihaaptech888@gmail.com', '$2y$10$X6gAjjNScV9B7cbQ9mKD.uYPDwl6pLnNQbzNrgPDCxHk.O4XB4/J2', '03556454', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `productcatid` (`productcatid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `useremail` (`useremail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productcatid`) REFERENCES `categories` (`catid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
