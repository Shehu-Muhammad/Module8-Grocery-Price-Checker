-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 12, 2022 at 08:14 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module_eight_grocery_price_check`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'vegetables'),
(2, 'fruits'),
(3, 'protein'),
(4, 'dairy'),
(5, 'grains'),
(6, 'snacks');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `categoriesId` int(11) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `productName`, `storeId`, `categoriesId`, `price`, `description`) VALUES
(1, 'Bananas', 1, 1, 1.44, 'Most popular fruit in the world, has a yellow peel with a deliciously sweet fruit on the inside'),
(3, 'Strawberries', 1, 1, 3.12, 'Small bright red fruit berries that are juicy and have a delicious sweet taste'),
(4, 'Grapes', 1, 1, 4.01, 'Are firm and are juicy and sweet'),
(5, 'Apples', 1, 1, 4.97, 'They have a sweet and aromatic flavor that makes it a great addition to any meal or even just by itself'),
(6, 'Watermelon', 1, 1, 5.98, 'A juicy and sweet taste. Very hydrating'),
(7, 'Oranges', 1, 1, 3.98, 'Naturally tasty oranges that are refreshingly flavorful'),
(8, 'Bananas', 2, 1, 1.19, 'Most popular fruit in the world, has a yellow peel with a deliciously sweet fruit on the inside'),
(9, 'Strawberries', 2, 1, 2.99, 'Small bright red fruit berries that are juicy and have a delicious sweet taste'),
(10, 'Grapes', 2, 1, 4.39, 'Are firm and are juicy and sweet'),
(11, 'Apples', 2, 1, 4.99, 'They have a sweet and aromatic flavor that makes it a great addition to any meal or even just by itself'),
(12, 'Watermelon', 2, 1, 6.29, 'A juicy and sweet taste. Very hydrating'),
(13, 'Oranges', 2, 1, 3.99, 'Naturally tasty oranges that are refreshingly flavorful'),
(14, 'Potatoes', 1, 1, 4.37, 'When well cooked, a potato has a fluffy interior and a crisp skin'),
(15, 'Tomatoes', 1, 1, 2.98, 'A bright, red, shiny skin delicious taste'),
(16, 'Onions', 1, 1, 3.24, 'A round vegetable with a light brown skin. It has many white layers on its inside which have a strong, sharp smell and taste'),
(17, 'Carrots', 1, 1, 1.96, 'Eat alone or enjoy with vegetable dips. Add to soups, salads, stews, and more for a healthy and tasty addition.'),
(18, 'Broccoli', 1, 1, 0.98, 'Delicious flowering heads of broccoli that make a healthy addition to any meal'),
(19, 'Cucumbers', 1, 1, 0.72, 'Provides a delicate flavor that makes it popular in many dishes, and salads'),
(20, 'Potatoes', 2, 1, 3.89, 'When well cooked, a potato has a fluffy interior and a crisp skin'),
(21, 'Tomatoes', 2, 1, 3.19, 'A bright, red, shiny skin delicious taste'),
(22, 'Onions', 2, 1, 5.29, 'A round vegetable with a light brown skin. It has many white layers on its inside which have a strong, sharp smell and taste'),
(23, 'Carrots', 2, 1, 2.89, 'Eat alone or enjoy with vegetable dips. Add to soups, salads, stews, and more for a healthy and tasty addition'),
(24, 'Broccoli', 2, 1, 1.99, 'Delicious flowering heads of broccoli that make a healthy addition to any meal'),
(25, 'Cucumbers', 2, 1, 1.59, 'Provides a delicate flavor that makes it popular in many dishes, and salads'),
(26, 'Beef', 1, 1, 4.86, 'Clean high-quality tasty flavorful meat'),
(27, 'Steak', 1, 1, 12.43, 'Grass fed, tender, flavorful, juicy, cook it how you prefer'),
(28, 'Turkey', 1, 1, 7.47, 'Turkey meat is moist and tender with excellent flavor'),
(29, 'Salmon', 1, 1, 14.36, 'A filet loaded with heart healthy omega 3 fatty acids'),
(30, 'Tuna', 1, 1, 5.98, 'A healthful food rich in protein and contains many vitamins and minerals such as B-Complex vitamins, Vitamins A and D as well as iron, selenium and phosphorus. Tuna also contains healthy omega 3 essential fatty acids DHA and EPA.'),
(31, 'Flounder', 1, 1, 13.96, 'Versatile, easy-to-prepare fish filet with a mildly sweet flavor and delicate, flaky texture. This firm-fleshed white fish can be baked, sautéed, stuffed, and poached.'),
(32, 'Beef', 2, 1, 5.99, 'Clean high-quality tasty flavorful meat'),
(33, 'Steak', 2, 1, 16.31, 'Grass fed, tender, flavorful, juicy, cook it how you prefer'),
(34, 'Turkey', 2, 1, 6.89, 'Turkey meat is moist and tender with excellent flavor'),
(35, 'Salmon', 2, 1, 19.99, 'A filet loaded with heart healthy omega 3 fatty acids'),
(36, 'Tuna', 2, 1, 7.69, 'A healthful food rich in protein and contains many vitamins and minerals such as B-Complex vitamins, Vitamins A and D as well as iron, selenium and phosphorus. Tuna also contains healthy omega 3 essential fatty acids DHA and EPA.'),
(37, 'Flounder', 2, 1, 9.99, 'Versatile, easy-to-prepare fish filet with a mildly sweet flavor and delicate, flaky texture. This firm-fleshed white fish can be baked, sautéed, stuffed, and poached.'),
(38, 'Milk', 1, 1, 3.02, 'Provides many nutrients, including vitamin A, vitamin D, and protein'),
(39, 'Yogurt', 1, 1, 4.36, 'Creamy flavorful good source of calcium'),
(40, 'Cheese', 1, 1, 4.98, 'Yellow, delicious. great for sandwiches good source of calcium'),
(41, 'Lactose-free milk', 1, 1, 6.24, 'Lactose Free milk easy to digest with the same rich taste of regular milk'),
(42, 'Silk Milk', 1, 1, 2.98, 'Is totally free of dairy, soy, lactose, gluten, casein, egg, and MSG. And it\'s nutritious, too'),
(43, 'Ice Cream', 1, 1, 4.97, 'A rich, sweet, creamy frozen food made from variously flavored cream and milk'),
(44, 'Milk', 2, 1, 4.59, 'Provides many nutrients, including vitamin A, vitamin D, and protein'),
(45, 'Yogurt', 2, 1, 4.59, 'Creamy flavorful good source of calcium'),
(46, 'Cheese', 2, 1, 5.29, 'Yellow, delicious. great for sandwiches good source of calcium'),
(47, 'Lactose-free milk', 2, 1, 6.69, 'Lactose Free milk easy to digest with the same rich taste of regular milk'),
(48, 'Silk Milk', 2, 1, 2.99, 'Is totally free of dairy, soy, lactose, gluten, casein, egg, and MSG. And it\'s nutritious too'),
(49, 'Ice Cream', 2, 1, 4.79, 'A rich, sweet, creamy frozen food made from variously flavored cream and milk'),
(50, 'Popcorn', 1, 1, 5.16, 'Consists of grains of maize or corn that have been heated until they have burst and become large and light'),
(51, 'Chips', 1, 1, 9.88, 'A small, thin, crisp, piece of food usually salty packed with a lot of flavor'),
(52, 'Gushers', 1, 1, 5.16, 'It has a juicy center that bursts open with delicious fruity flavored liquid'),
(53, 'Fruit Roll-ups', 1, 1, 5.16, 'A tasty snack flat, pectin-based, fruit-flavored rolled into a tube'),
(54, 'Pretzels', 1, 1, 3.68, 'Perfect on their own or with cheese or hummus for a tasty snack - so many ways to enjoy'),
(55, 'Saltines', 1, 1, 3.28, 'A thin crisp cracker usually sprinkled with salt'),
(56, 'Popcorn', 2, 1, 6.59, 'Consists of grains of maize or corn that have been heated until they have burst and become large and light'),
(57, 'Chips', 2, 1, 11.99, 'A small, thin, crisp, piece of food usually salty packed with a lot of flavor'),
(58, 'Gushers', 2, 1, 5.39, 'It has a juicy center that bursts open with delicious fruity flavored liquid'),
(59, 'Fruit Roll-ups', 2, 1, 5.49, 'A tasty snack flat, pectin-based, fruit-flavored rolled into a tube'),
(60, 'Pretzels', 2, 1, 3.69, 'Perfect on their own or with cheese or hummus for a tasty snack - so many ways to enjoy'),
(61, 'Saltines', 2, 1, 3.29, 'A thin crisp cracker usually sprinkled with salt.');

-- --------------------------------------------------------

--
-- Table structure for table `shoppinglist`
--

CREATE TABLE `shoppinglist` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`) VALUES
(1, 'walmart'),
(2, 'target');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hashed_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `hashed_password`) VALUES
(1, 'John ', 'Smith', 'John24', 'smith@gmail.com', '$2y$10$nxceb0u9juYl3GcCSEO9Be2P96ynhYdBQ2WqVHcnmYr9C0MsvRYou'),
(2, 'MLE', 'Lopez', 'Emily', 'lopez@gmail.com', '$2y$10$8127Vtofre/mERGGnXi2wuvn.rOZHFp/dA.SWTaQmr3KJSZjCETKe'),
(3, 'K', 'Pinky', 'Pinky', 'pinky@gmail.com', '$2y$10$UI/JavpPury6/r3.cpmRz..wRaxg71RCFyUwqsC6xKfta7L7vrYoC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storeId` (`storeId`),
  ADD KEY `categoriesId` (`categoriesId`);

--
-- Indexes for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`storeId`) REFERENCES `store` (`id`),
  ADD CONSTRAINT `product_details_ibfk_2` FOREIGN KEY (`categoriesId`) REFERENCES `categories` (`id`);

--
-- Constraints for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  ADD CONSTRAINT `shoppinglist_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `shoppinglist_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
