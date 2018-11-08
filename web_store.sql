-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2018 at 02:44 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) unsigned NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `company_contact` varchar(50) NOT NULL,
  `company_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_address`, `company_contact`, `company_date`) VALUES
(1, 'Samsung company c', 'pokhara', '32323/23232', '2018-09-30'),
(2, 'nokia', 'thankot', '1166161', '2018-08-15'),
(3, 'xyz company', 'sdfsdf', '2424', '2018-08-15'),
(4, 'singer Company', 'sfsdfs', '34352525', '2018-08-13'),
(5, 'zoo', 'butwal', '656654654654', '2018-09-28'),
(6, 'jombu', 'congo', '34343', '2018-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_address` varchar(80) NOT NULL,
  `customer_contact` varchar(60) NOT NULL,
  `customer_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_contact`, `customer_date`) VALUES
(1, 'sudarsan sau ba', 'kamalbinayak', '9895656565', '2018-10-01'),
(2, 'sampat lal', 'naagpokhari', '242242424', '2018-09-05'),
(3, 'punya ram sau', 'volachen', '24242244', '2018-09-05'),
(4, 'sampat lal babu', 's', '23', '2018-09-30'),
(5, 'motu sau ba', 'sdfs', '2323', '2018-09-30'),
(6, 'dfgdddddddddf', 'uDOTfdSXkt', '8812541368', '2018-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `dr_amount` int(11) NOT NULL,
  `cr_amount` int(11) NOT NULL,
  `balanced` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `company_id`, `customer_id`, `discount`, `dr_amount`, `cr_amount`, `balanced`, `sales_id`) VALUES
(1, 1, 2, 234721, 827953, 80171, 552855, 1),
(2, 2, 3, 391694, 974061, 398231, 566554, 2),
(3, 2, 2, 89103, 974634, 231679, 908670, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_catagory` varchar(60) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_particular` varchar(240) NOT NULL,
  `product_description` text NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `unit` int(11) NOT NULL,
  `pic` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_catagory`, `product_code`, `product_particular`, `product_description`, `company_id`, `company_name`, `unit`, `pic`, `qty`, `product_date`) VALUES
(1, 'W9xONjXIeU', 'xoUhzTz7x9', '7QMvy98R3w', '6zvVrSk3TT', 'CANVCzlbbW', 0, '', 0, 0, 0, '2018-08-25'),
(2, 'note1', 'note version catagory', 'samsung01', 'purchase', 'description nothing ', 1, 'Samsung', 25294, 587104, 641113, '2018-08-25'),
(3, 'note2', 'note series', 'samsung02', 'purchase', 'nothing', 1, 'Samsung', 508354, 951950, 149372, '2018-08-08'),
(4, 'x1', 'sdsf', 'sdf', 'sdf', 'sdf', 2, 'nokia', 411204, -533231, 272853, '2018-08-25'),
(5, 'x2', 'sdfs', 'a sf', 'asf', 'as', 2, 'nokia', -146847, -1412185, -886588, '2018-08-23'),
(6, 'x3', 'asda', 'asda', 'asas', 'dsff', 2, 'nokia', 927499, 579808, 867739, '2018-08-25'),
(7, 'xyz item', 'sfs', 'sdfsd', 'sfds', 'sdf', 3, 'xyz company', 439135, 98482, -76511, '2018-08-30'),
(8, 'zoo chocolate', 'chocolate', '32134', 'purchase', 'children chocolate', 5, 'zoo', 555986, 139435, 872760, '2018-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `repayment`
--

CREATE TABLE IF NOT EXISTS `repayment` (
  `payment_re_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `repaid_amount` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repayment`
--

INSERT INTO `repayment` (`payment_re_id`, `date`, `company_id`, `customer_id`, `repaid_amount`, `sales_id`) VALUES
(1, '2018-11-02', 1, 2, 1, 1),
(2, '2018-11-04', 1, 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_info`
--

CREATE TABLE IF NOT EXISTS `sales_info` (
  `sales_id` int(11) unsigned NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(80) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(80) NOT NULL,
  `time` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_info`
--

INSERT INTO `sales_info` (`sales_id`, `company_id`, `company_name`, `customer_id`, `customer_name`, `time`) VALUES
(1, 1, 'Samsung company c', 2, 'sampat lal', 'Sun Sep 30 2018 14:51:00 GMT+0545 (Nepal Time)'),
(2, 2, 'nokia', 3, 'punya ram sau', 'Tue Oct 30 2018 08:01:53 GMT+0545 (Nepal Time)'),
(3, 5, 'zoo', 3, 'punya ram sau', 'Tue Oct 30 2018 08:06:53 GMT+0545 (Nepal Time)'),
(4, 3, 'xyz company', 1, 'sudarsan sau ba', 'Tue Oct 30 2018 08:09:31 GMT+0545 (Nepal Time)'),
(5, 2, 'nokia', 2, 'sampat lal', 'Tue Oct 30 2018 08:11:12 GMT+0545 (Nepal Time)'),
(6, 3, 'xyz company', 4, 'sampat lal babu', 'Tue Oct 30 2018 08:14:06 GMT+0545 (Nepal Time)'),
(7, 2, 'nokia', 5, 'motu sau ba', 'Tue Oct 30 2018 08:17:16 GMT+0545 (Nepal Time)'),
(8, 3, 'xyz company', 3, 'punya ram sau', 'Tue Oct 30 2018 16:56:42 GMT+0545 (Nepal Time)'),
(9, 2, 'nokia', 4, 'sampat lal babu', 'Tue Oct 30 2018 17:00:55 GMT+0545 (Nepal Time)');

-- --------------------------------------------------------

--
-- Table structure for table `sales_item_details`
--

CREATE TABLE IF NOT EXISTS `sales_item_details` (
  `s_detail_id` int(11) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `unit` int(11) NOT NULL,
  `pic` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `time` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_item_details`
--

INSERT INTO `sales_item_details` (`s_detail_id`, `product_name`, `unit`, `pic`, `qty`, `rate`, `amount`, `sales_id`, `time`) VALUES
(1, 'note1 ', 32, 1, 12, 12, 2, 1, 'Sun Sep 30 2018 14:51:00 GMT+0545 (Nepal Time)'),
(2, 'note2 ', 12, 12, 12, 12, 12, 1, 'Sun Sep 30 2018 14:51:00 GMT+0545 (Nepal Time)'),
(3, 'note1 ', 34, 43, 34, 34, 42, 1, 'Tue Oct 02 2018 21:19:14 GMT+0545 (Nepal Time)'),
(4, 'x1 ', 34, 34, 2, 23, 2, 2, 'Tue Oct 30 2018 08:01:53 GMT+0545 (Nepal Time)'),
(5, 'x2 ', 24, 2, 24, 234, 24, 2, 'Tue Oct 30 2018 08:01:53 GMT+0545 (Nepal Time)'),
(6, 'zoo chocolate ', 556023, 139472, 872766, 212265, 760292, 3, 'Tue Oct 30 2018 08:06:53 GMT+0545 (Nepal Time)'),
(7, 'note1 ', 25298, 587149, 641141, 47544, 661651, 1, 'Tue Oct 30 2018 08:08:43 GMT+0545 (Nepal Time)'),
(8, 'note2 ', 508365, 951957, 149379, 756372, 26347, 1, 'Tue Oct 30 2018 08:08:43 GMT+0545 (Nepal Time)'),
(9, 'xyz item ', 111615, 297671, 320559, 287732, 521839, 4, 'Tue Oct 30 2018 08:09:31 GMT+0545 (Nepal Time)'),
(10, 'x1 ', 0, 0, 0, 0, 0, 5, 'Tue Oct 30 2018 08:11:12 GMT+0545 (Nepal Time)'),
(11, 'xyz item ', 82579, 962926, 857579, 235193, 862854, 6, 'Tue Oct 30 2018 08:14:06 GMT+0545 (Nepal Time)'),
(12, 'x1 ', 163090, 258688, 646107, 25755, 946600, 7, 'Tue Oct 30 2018 08:17:16 GMT+0545 (Nepal Time)'),
(13, 'x2 ', 326925, 587266, 220828, 657075, 449570, 7, 'Tue Oct 30 2018 08:17:16 GMT+0545 (Nepal Time)'),
(14, 'x1 ', 0, 0, 0, 0, 0, 5, 'Tue Oct 30 2018 08:18:07 GMT+0545 (Nepal Time)'),
(15, 'x1 ', 0, 0, 0, 0, 0, 2, 'Tue Oct 30 2018 08:19:07 GMT+0545 (Nepal Time)'),
(16, 'x2 ', 0, 0, 0, 0, 0, 5, 'Tue Oct 30 2018 08:29:30 GMT+0545 (Nepal Time)'),
(17, 'x1 ', 796321, 52764, 780495, 38185, 277536, 2, 'Tue Oct 30 2018 08:30:10 GMT+0545 (Nepal Time)'),
(18, 'x1 ', 849207, 968493, 718764, 882878, 506391, 2, 'Tue Oct 30 2018 08:30:37 GMT+0545 (Nepal Time)'),
(19, 'x2 ', 351265, 124867, 947824, 906200, 913919, 2, 'Tue Oct 30 2018 08:30:37 GMT+0545 (Nepal Time)'),
(20, 'x1 ', 0, 0, 0, 0, 0, 2, 'Tue Oct 30 2018 14:06:37 GMT+0545 (Nepal Time)'),
(21, 'x2 ', 0, 0, 0, 0, 0, 2, 'Tue Oct 30 2018 14:07:05 GMT+0545 (Nepal Time)'),
(22, 'x3 ', 0, 0, 0, 0, 0, 2, 'Tue Oct 30 2018 14:07:05 GMT+0545 (Nepal Time)'),
(23, 'x1 ', 0, 0, 0, 0, 0, 2, 'Tue Oct 30 2018 14:08:04 GMT+0545 (Nepal Time)'),
(24, 'x2 ', 98608, 940218, 285000, 941188, 970630, 5, 'Tue Oct 30 2018 14:42:24 GMT+0545 (Nepal Time)'),
(25, 'xyz item ', 0, 0, 0, 0, 0, 4, 'Tue Oct 30 2018 16:26:51 GMT+0545 (Nepal Time)'),
(26, 'xyz item ', 0, 0, 0, 0, 0, 4, 'Tue Oct 30 2018 16:26:51 GMT+0545 (Nepal Time)'),
(27, 'xyz item ', 0, 0, 0, 0, 0, 8, 'Tue Oct 30 2018 16:56:42 GMT+0545 (Nepal Time)'),
(28, 'xyz item ', 0, 0, 0, 0, 0, 8, 'Tue Oct 30 2018 16:56:42 GMT+0545 (Nepal Time)'),
(29, 'xyz item ', 0, 0, 0, 0, 0, 8, 'Tue Oct 30 2018 16:56:42 GMT+0545 (Nepal Time)'),
(30, 'x1 ', 627214, 641220, 857231, 9054, 152655, 9, 'Tue Oct 30 2018 17:00:55 GMT+0545 (Nepal Time)'),
(31, 'x2 ', 223118, 415042, 124630, 82523, 465235, 9, 'Tue Oct 30 2018 17:00:55 GMT+0545 (Nepal Time)'),
(32, 'x2 ', 283801, 944436, 187800, 988397, 98351, 2, 'Fri Nov 02 2018 15:15:53 GMT+0545 (Nepal Time)'),
(33, 'x2 ', 690610, 769558, 630210, 564551, 222095, 5, 'Sun Nov 04 2018 20:22:02 GMT+0545 (Nepal Time)'),
(34, 'x3 ', 927499, 579808, 867739, 562839, 68778, 5, 'Sun Nov 04 2018 20:22:02 GMT+0545 (Nepal Time)');

-- --------------------------------------------------------

--
-- Table structure for table `sales_transact`
--

CREATE TABLE IF NOT EXISTS `sales_transact` (
  `sales_transact_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `sales_date` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `unpaid` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `balanced` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_transact`
--

INSERT INTO `sales_transact` (`sales_transact_id`, `sales_id`, `sales_date`, `sub_total`, `discount`, `paid`, `unpaid`, `grand_total`, `balanced`, `company_id`, `customer_id`) VALUES
(1, 1, 9, 11, 12, 12, 32, 4, 35, 1, 2),
(2, 1, 10, 42, 24, 1, 1, 1, 1, 1, 2),
(3, 2, 10, 2425, 353, 76447, 57, 35, 342, 2, 3),
(4, 3, 10, 234374, 448669, 109640, 402785, 130795, 641666, 5, 3),
(5, 1, 10, 421960, 825164, 36135, 27652, 18118, 357207, 1, 2),
(6, 4, 10, 421567, 504465, 45177, 237324, 896966, 280497, 3, 1),
(7, 5, 10, 0, 0, 0, 0, 0, 0, 2, 2),
(8, 6, 10, 649165, 894578, 824467, 826254, 8203, 48927, 3, 4),
(9, 7, 10, 580226, 392051, 375758, 941350, 576990, 338650, 2, 5),
(10, 5, 10, 0, 0, 0, 0, 0, 0, 2, 2),
(11, 2, 10, 0, 0, 0, 0, 0, 0, 2, 3),
(12, 5, 10, 0, 0, 0, 0, 0, 0, 2, 2),
(13, 2, 10, 757112, 562970, 176867, 128265, 378557, 543376, 2, 3),
(14, 2, 10, 770155, 698521, 181265, 53386, 46023, 8983, 2, 3),
(15, 2, 10, 0, 0, 0, 0, 0, 0, 2, 3),
(16, 2, 10, 0, 0, 0, 0, 0, 0, 2, 3),
(17, 2, 10, 0, 0, 0, 0, 0, 0, 2, 3),
(18, 5, 10, 839900, 887414, 152933, 479038, 781605, 128769, 2, 2),
(19, 4, 10, 0, 0, 0, 0, 0, 0, 3, 1),
(20, 4, 10, 0, 0, 0, 0, 0, 0, 3, 1),
(21, 8, 10, 0, 0, 0, 0, 0, 0, 3, 3),
(22, 8, 10, 0, 0, 0, 0, 0, 0, 3, 3),
(23, 8, 10, 0, 0, 0, 0, 0, 0, 3, 3),
(24, 9, 10, 816614, 234721, 827953, 80179, 746874, 552855, 2, 4),
(25, 2, 11, 986009, 391694, 974061, 398231, 378384, 566554, 2, 3),
(26, 5, 11, 993130, 89103, 974634, 231679, 761125, 908670, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `total_transact`
--

CREATE TABLE IF NOT EXISTS `total_transact` (
  `total_transact_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `total_dr` int(11) NOT NULL,
  `total_cr` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_transact`
--

INSERT INTO `total_transact` (`total_transact_id`, `sales_id`, `total_dr`, `total_cr`) VALUES
(1, 1, 223, 32432);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `repayment`
--
ALTER TABLE `repayment`
  ADD PRIMARY KEY (`payment_re_id`);

--
-- Indexes for table `sales_info`
--
ALTER TABLE `sales_info`
  ADD PRIMARY KEY (`sales_id`), ADD KEY `sales_id` (`sales_id`);

--
-- Indexes for table `sales_item_details`
--
ALTER TABLE `sales_item_details`
  ADD PRIMARY KEY (`s_detail_id`);

--
-- Indexes for table `sales_transact`
--
ALTER TABLE `sales_transact`
  ADD PRIMARY KEY (`sales_transact_id`);

--
-- Indexes for table `total_transact`
--
ALTER TABLE `total_transact`
  ADD PRIMARY KEY (`total_transact_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `repayment`
--
ALTER TABLE `repayment`
  MODIFY `payment_re_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_info`
--
ALTER TABLE `sales_info`
  MODIFY `sales_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sales_item_details`
--
ALTER TABLE `sales_item_details`
  MODIFY `s_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `sales_transact`
--
ALTER TABLE `sales_transact`
  MODIFY `sales_transact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `total_transact`
--
ALTER TABLE `total_transact`
  MODIFY `total_transact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
