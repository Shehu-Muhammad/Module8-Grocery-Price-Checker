-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 14, 2022 at 07:23 PM
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
  `description` varchar(255) NOT NULL,
  `imageSource` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `productName`, `storeId`, `categoriesId`, `price`, `description`, `imageSource`) VALUES
(1, 'Bananas', 1, 2, 1.44, 'Most popular fruit in the world, has a yellow peel with a deliciously sweet fruit on the inside', 'banana.png'),
(3, 'Strawberries', 1, 2, 3.12, 'Small bright red fruit berries that are juicy and have a delicious sweet taste', 'strawberry.png'),
(4, 'Grapes', 1, 2, 4.01, 'Are firm and are juicy and sweet', 'redgrapes.png'),
(5, 'Apples', 1, 2, 4.97, 'They have a sweet and aromatic flavor that makes it a great addition to any meal or even just by itself', 'redapple.png'),
(6, 'Watermelon', 1, 2, 5.98, 'A juicy and sweet taste. Very hydrating', 'watermelon.png'),
(7, 'Oranges', 1, 2, 3.98, 'Naturally tasty oranges that are refreshingly flavorful', 'oranges.png'),
(8, 'Bananas', 2, 2, 1.19, 'Most popular fruit in the world, has a yellow peel with a deliciously sweet fruit on the inside', 'banana.png'),
(9, 'Strawberries', 2, 2, 2.99, 'Small bright red fruit berries that are juicy and have a delicious sweet taste', 'strawberry.png'),
(10, 'Grapes', 2, 2, 4.39, 'Are firm and are juicy and sweet', 'greengrapes.png'),
(11, 'Apples', 2, 2, 4.99, 'They have a sweet and aromatic flavor that makes it a great addition to any meal or even just by itself', 'greenapple.png'),
(12, 'Watermelon', 2, 2, 6.29, 'A juicy and sweet taste. Very hydrating', 'watermelon.png'),
(13, 'Oranges', 2, 2, 3.99, 'Naturally tasty oranges that are refreshingly flavorful', 'oranges.png'),
(14, 'Potatoes', 1, 1, 4.37, 'When well cooked, a potato has a fluffy interior and a crisp skin', 'potatoes.png'),
(15, 'Tomatoes', 1, 1, 2.98, 'A bright, red, shiny skin delicious taste', 'tomatoe.png'),
(16, 'Onions', 1, 1, 3.24, 'A round vegetable with a light brown skin. It has many white layers on its inside which have a strong, sharp smell and taste', 'onions.png'),
(17, 'Carrots', 1, 1, 1.96, 'Eat alone or enjoy with vegetable dips. Add to soups, salads, stews, and more for a healthy and tasty addition.', 'carrots.png'),
(18, 'Broccoli', 1, 1, 0.98, 'Delicious flowering heads of broccoli that make a healthy addition to any meal', 'broccoli.png'),
(19, 'Cucumbers', 1, 1, 0.72, 'Provides a delicate flavor that makes it popular in many dishes, and salads', 'cucumber.png'),
(20, 'Potatoes', 2, 1, 3.89, 'When well cooked, a potato has a fluffy interior and a crisp skin', 'potatoes.png'),
(21, 'Tomatoes', 2, 1, 3.19, 'A bright, red, shiny skin delicious taste', 'tomatoe.png'),
(22, 'Onions', 2, 1, 5.29, 'A round vegetable with a light brown skin. It has many white layers on its inside which have a strong, sharp smell and taste', 'onions.png'),
(23, 'Carrots', 2, 1, 2.89, 'Eat alone or enjoy with vegetable dips. Add to soups, salads, stews, and more for a healthy and tasty addition', 'carrots.png'),
(24, 'Broccoli', 2, 1, 1.99, 'Delicious flowering heads of broccoli that make a healthy addition to any meal', 'broccoli.png'),
(25, 'Cucumbers', 2, 1, 1.59, 'Provides a delicate flavor that makes it popular in many dishes, and salads', 'cucumber.png'),
(26, 'Beef', 1, 3, 4.86, 'Clean high-quality tasty flavorful meat', 'beef.png'),
(27, 'Steak', 1, 3, 12.43, 'Grass fed, tender, flavorful, juicy, cook it how you prefer', 'steak.png'),
(28, 'Turkey', 1, 3, 7.47, 'Turkey meat is moist and tender with excellent flavor', 'turkey.png'),
(29, 'Salmon', 1, 3, 14.36, 'A filet loaded with heart healthy omega 3 fatty acids', 'salmon.png'),
(30, 'Tuna', 1, 3, 5.98, 'A healthful food rich in protein and contains many vitamins and minerals such as B-Complex vitamins, Vitamins A and D as well as iron, selenium and phosphorus. Tuna also contains healthy omega 3 essential fatty acids DHA and EPA.', 'tuna.png'),
(31, 'Flounder', 1, 3, 13.96, 'Versatile, easy-to-prepare fish filet with a mildly sweet flavor and delicate, flaky texture. This firm-fleshed white fish can be baked, sautéed, stuffed, and poached.', 'flounder.png'),
(32, 'Beef', 2, 3, 5.99, 'Clean high-quality tasty flavorful meat', 'beef.png'),
(33, 'Steak', 2, 3, 16.31, 'Grass fed, tender, flavorful, juicy, cook it how you prefer', 'steak.png'),
(34, 'Turkey', 2, 3, 6.89, 'Turkey meat is moist and tender with excellent flavor', 'turkey.png'),
(35, 'Salmon', 2, 3, 19.99, 'A filet loaded with heart healthy omega 3 fatty acids', 'salmon.png'),
(36, 'Tuna', 2, 3, 7.69, 'A healthful food rich in protein and contains many vitamins and minerals such as B-Complex vitamins, Vitamins A and D as well as iron, selenium and phosphorus. Tuna also contains healthy omega 3 essential fatty acids DHA and EPA.', 'tuna.png'),
(37, 'Flounder', 2, 3, 9.99, 'Versatile, easy-to-prepare fish filet with a mildly sweet flavor and delicate, flaky texture. This firm-fleshed white fish can be baked, sautéed, stuffed, and poached.', 'flounder.png'),
(38, 'Milk', 1, 4, 3.02, 'Provides many nutrients, including vitamin A, vitamin D, and protein', 'milk.png'),
(39, 'Yogurt', 1, 4, 4.36, 'Creamy flavorful good source of calcium', 'yogurt.png'),
(40, 'Cheese', 1, 4, 4.98, 'Yellow, delicious. great for sandwiches good source of calcium', 'cheese.png'),
(41, 'Lactose-free milk', 1, 4, 6.24, 'Lactose Free milk easy to digest with the same rich taste of regular milk', 'lactosefreemilk.png'),
(42, 'Silk Milk', 1, 4, 2.98, 'Is totally free of dairy, soy, lactose, gluten, casein, egg, and MSG. And it\'s nutritious, too', 'fortifiedsoymilk.png'),
(43, 'Ice Cream', 1, 4, 4.97, 'A rich, sweet, creamy frozen food made from variously flavored cream and milk', ''),
(44, 'Milk', 2, 4, 4.59, 'Provides many nutrients, including vitamin A, vitamin D, and protein', 'milk.png'),
(45, 'Yogurt', 2, 4, 4.59, 'Creamy flavorful good source of calcium', 'yogurt.png'),
(46, 'Cheese', 2, 4, 5.29, 'Yellow, delicious. great for sandwiches good source of calcium', 'cheese.png'),
(47, 'Lactose-free milk', 2, 4, 6.69, 'Lactose Free milk easy to digest with the same rich taste of regular milk', 'lactosefreemilk.png'),
(48, 'Silk Milk', 2, 4, 2.99, 'Is totally free of dairy, soy, lactose, gluten, casein, egg, and MSG. And it\'s nutritious too', 'fortifiedsoymilk.png'),
(49, 'Ice Cream', 2, 4, 4.79, 'A rich, sweet, creamy frozen food made from variously flavored cream and milk', ''),
(50, 'Popcorn', 1, 6, 5.16, 'Consists of grains of maize or corn that have been heated until they have burst and become large and light', 'popcorn.png'),
(51, 'Chips', 1, 6, 9.88, 'A small, thin, crisp, piece of food usually salty packed with a lot of flavor', 'chips.png'),
(52, 'Gushers', 1, 6, 5.16, 'It has a juicy center that bursts open with delicious fruity flavored liquid', 'gushers.png'),
(53, 'Fruit Roll-ups', 1, 6, 5.16, 'A tasty snack flat, pectin-based, fruit-flavored rolled into a tube', 'fruitrollups.png'),
(54, 'Pretzels', 1, 6, 3.68, 'Perfect on their own or with cheese or hummus for a tasty snack - so many ways to enjoy', 'pretzels.png'),
(55, 'Saltines', 1, 6, 3.28, 'A thin crisp cracker usually sprinkled with salt', 'saltines.png'),
(56, 'Popcorn', 2, 6, 6.59, 'Consists of grains of maize or corn that have been heated until they have burst and become large and light', 'popcorn.png'),
(57, 'Chips', 2, 6, 11.99, 'A small, thin, crisp, piece of food usually salty packed with a lot of flavor', 'chips.png'),
(58, 'Gushers', 2, 6, 5.39, 'It has a juicy center that bursts open with delicious fruity flavored liquid', 'gushers.png'),
(59, 'Fruit Roll-ups', 2, 6, 5.49, 'A tasty snack flat, pectin-based, fruit-flavored rolled into a tube', 'fruitrollups.png'),
(60, 'Pretzels', 2, 6, 3.69, 'Perfect on their own or with cheese or hummus for a tasty snack - so many ways to enjoy', 'pretzels.png'),
(61, 'Saltines', 2, 6, 3.29, 'A thin crisp cracker usually sprinkled with salt.', 'saltines.png'),
(62, 'Bread', 1, 5, 3.84, 'Food made of flour, water, and yeast or another leavening agent, mixed together and baked', 'bread.png'),
(63, 'Pasta', 1, 5, 1.84, 'A type of food made from a mixture of flour, eggs, and water that is formed into different shapes and then boiled.', 'pasta.png'),
(64, 'Cereal', 1, 5, 3, 'A breakfast food made from roasted grain, typically eaten with milk.', 'breakfastcereals.png'),
(65, 'Grits', 1, 5, 2.58, 'A porridge made from boiled cornmeal', 'grits.png'),
(66, 'Rice', 1, 5, 1.54, 'Best cereal crop in terms of food energy per production area and is consumed in various forms, including plain rice, noodles, puffed rice, breakfast cereals, cakes, fermented sweet rice, snack foods, beer, wine and vinegar.', 'rice.png'),
(67, 'Flour', 1, 5, 4.48, 'Flour made from a blend of hard or soft wheats suitable for all cookery except the finest cakes.', 'flour.png'),
(68, 'Bread', 2, 5, 4.29, 'Food made of flour, water, and yeast or another leavening agent, mixed together and baked', 'bread.png'),
(69, 'Pasta', 2, 5, 1.89, 'A type of food made from a mixture of flour, eggs, and water that is formed into different shapes and then boiled.', 'pasta.png'),
(70, 'Cereal', 2, 5, 3.79, 'A breakfast food made from roasted grain, typically eaten with milk.', 'breakfastcereals.png'),
(71, 'Grits', 2, 5, 2.79, 'A porridge made from boiled cornmeal', 'grits.png'),
(72, 'Rice', 2, 5, 1.79, 'Best cereal crop in terms of food energy per production area and is consumed in various forms, including plain rice, noodles, puffed rice, breakfast cereals, cakes, fermented sweet rice, snack foods, beer, wine and vinegar.', 'rice.png'),
(73, 'Flour', 2, 5, 4.79, 'Flour made from a blend of hard or soft wheats suitable for all cookery except the finest cakes.', 'flour.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

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
