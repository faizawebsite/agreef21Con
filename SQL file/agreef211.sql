-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 12:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agreef211`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Pesticides', 'protect plants from pests, weeds or diseases, and humans from vector-borne diseases, such as malaria, dengue fever, and schistosomiasis.', '2022-05-28 14:44:29', NULL),
(2, 'Fertilizers', 'natural or artificial substance containing the chemical elements that improve growth and productiveness of plants.', '2022-05-28 14:45:18', NULL),
(3, 'seeds', 'Seeds of Different Types ', '2022-05-28 14:45:46', NULL),
(4, 'Agree Equipment', 'Different types of Agriculture Equipment', '2022-05-28 14:47:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

CREATE TABLE `consultant` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `supName` varchar(50) NOT NULL,
  `supAddress` varchar(50) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consultant`
--

INSERT INTO `consultant` (`id`, `username`, `password`, `supName`, `supAddress`, `creationDate`, `Contact`) VALUES
(1, 'consultant1', '202cb962ac59075b964b07152d234b70', 'Shahzad', 'Lahore', '2022-05-28 16:57:52', '03058514741');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `UserID` varchar(50) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `Response` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `Name`, `UserID`, `Message`, `Response`, `Status`) VALUES
(1, 'Zeloric', 'user 1', 'Hi', 'G hi', 'Replied'),
(2, 'Husnain Ali', 'user1', 'hi', 'Best of Luck', 'Replied');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `amount` int(50) NOT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `amount`, `orderStatus`) VALUES
(1, 1, '2', 1, '2022-05-28 14:57:52', 'COD', 1080, NULL),
(2, 1, '3', 1, '2022-06-19 10:43:44', 'COD', 10450, 'Delivered'),
(3, 1, '5', 1, '2022-06-19 10:43:44', 'COD', 10450, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Delivered', 'Done', '2022-04-28 18:32:33'),
(2, 2, 'in Process', 'Cancelled', '2022-04-28 18:34:03'),
(3, 2, 'Delivered', 'good', '2022-06-19 10:44:09'),
(4, 3, 'Delivered', 'giood', '2022-06-19 10:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Lambda', 'Byer', 2570, 2589, 'Best Pesticides in Pakistan for better growth of agree', 'lmabda.jpg', 'lmabda.jpg', 'lmabda.jpg', 100, 'In Stock', '2022-05-28 14:50:00', NULL),
(2, 1, 2, 'Kick', 'National Pesticide', 980, 1000, 'National Pesticide Offered best Product<br>', 'fepronil.jpg', 'fepronil.jpg', 'fepronil.jpg', 100, 'In Stock', '2022-05-28 14:53:49', NULL),
(3, 1, 3, 'Mark', 'Saver', 3550, 3690, 'Sheading Bet product for Agree', 'shading.jpg', 'shading.jpg', 'shading.jpg', 200, 'In Stock', '2022-05-28 14:55:37', NULL),
(4, 2, 4, 'DAP', 'FFC', 6450, 6500, 'FFC Best Product for agriculture&nbsp;', 'DAP3.jpg', 'DAP3.jpg', 'DAP3.jpg', 200, 'In Stock', '2022-05-28 15:03:03', NULL),
(5, 2, 5, 'Richfield Potassic ', 'Richfield', 6500, 6540, 'NKS Richfield Pottasic', 'potassium-sulphate-500x500.jpg', 'potassium-sulphate-500x500.jpg', 'potassium-sulphate-500x500.jpg', 200, 'In Stock', '2022-05-28 15:06:12', NULL),
(6, 2, 6, 'Nitrogenous Organic ', 'Organic', 8850, 9000, 'All purpose Fertilizer&nbsp;', 'NitrogenFertBagComp-699-1.jpg', 'NitrogenFertBagComp-699-1.jpg', 'NitrogenFertBagComp-699-1.jpg', 200, 'In Stock', '2022-05-28 15:13:09', NULL),
(7, 3, 7, 'Cotton Seed', 'Byer', 990, 1000, 'Best Cotton seed In Pakistan', 'cotton.jpg', 'cotton.jpg', 'cotton.jpg', 100, 'In Stock', '2022-05-28 15:25:59', NULL),
(8, 3, 8, 'Wheat Seeds', 'Byer', 1150, 1200, 'Best Wheat Seeds In Pakistan', 'whaeat.jpg', 'whaeat.jpg', 'whaeat.jpg', 100, 'In Stock', '2022-05-28 15:27:11', NULL),
(9, 3, 9, 'Rice Seeds', 'Byer', 1980, 2000, 'Best Rice Seeds In Pakistan<br>', 'rice.jpg', 'rice.jpg', 'rice.jpg', 100, 'In Stock', '2022-05-28 15:27:57', NULL),
(10, 4, 10, 'Ursus Tractor', 'Ursus', 1980000, 1590000, 'Powerful Tractor of Ursus', 'tractor.jpg', 'tractor.jpg', 'tractor.jpg', 20000, 'In Stock', '2022-05-28 15:34:02', NULL),
(11, 4, 11, 'Millat Cultivator ', 'Millat', 340000, 350000, 'Millat offered Best Cultivator In Pakistan', 'cultivator.jpg', 'cultivator.jpg', 'cultivator.jpg', 2000, 'In Stock', '2022-05-28 15:35:24', NULL),
(12, 4, 12, 'Hondai Chain Saw', 'Hondai', 8950, 9000, 'Best Chain Saw&nbsp;', 'chaiinsaw.jpg', 'chaiinsaw.jpg', 'chaiinsaw.jpg', 500, 'In Stock', '2022-05-28 15:36:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Lambda', '2022-05-28 14:47:37', NULL),
(2, 1, 'Kick', '2022-05-28 14:48:15', '16-06-2022 11:31:49 PM'),
(3, 1, 'Mark', '2022-05-28 14:48:30', '16-06-2022 11:33:17 PM'),
(4, 2, 'DAP', '2022-05-28 14:59:36', NULL),
(5, 2, 'Potassic', '2022-05-28 15:00:09', NULL),
(6, 2, 'Nitrogeous', '2022-05-28 15:00:41', NULL),
(7, 3, 'Cotton', '2022-05-28 15:23:59', NULL),
(8, 3, 'Wheat', '2022-05-28 15:24:06', NULL),
(9, 3, 'Rice', '2022-05-28 15:24:18', NULL),
(10, 4, 'Tractor', '2022-05-28 15:30:44', NULL),
(11, 4, 'Cultivator', '2022-05-28 15:30:58', NULL),
(12, 4, 'Chain Saw', '2022-05-28 15:31:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`, `status`) VALUES
(1, 'user1', 'user1@gmail.com', 305401414, '6ad14ba9986e3615423dfca256d04e3f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-19 10:35:12', NULL, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
