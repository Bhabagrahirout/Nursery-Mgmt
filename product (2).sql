-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 04:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nur`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_desc` varchar(255) NOT NULL,
  `p_iamge` varchar(255) NOT NULL,
  `p_price` int(11) NOT NULL,
  `category` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_desc`, `p_iamge`, `p_price`, `category`) VALUES
(6, 'Lucky Bamboo ', ' Live lucky bamboo plant along with ceramic pot (bowl)\r\n Plant height between 6-9 inch with planter.\r\n Good luck (fortune) plant, bring prosperity and wealth in home.\r\n Indoor plant, useful for decor home and office.\r\n pot color will be different\r\n Cerami', 'images/plant/c1.jpg', 349, 'plant'),
(7, 'Acalypha Red Plant', ' Live plant along with plastic pot\r\n plants height with pot is 1 feet and pot size is 5 icnhes diameter.\r\n plants nature is outdoor, loves full sun, less watering\r\n Useful for hedges, ground cover, garden plants\r\n Best flowering and aromatic plants & beau', 'images/plant/c2.jpg', 99, 'plant'),
(8, 'Acalypha Hispida', 'Live plant along with plastic pot\r\n plants height with pot is 1 feet and pot size is 5 icnhes diameter.\r\n plants nature is outdoor, loves full sun, less watering\r\n Useful for hedges, ground cover, garden plants\r\n Best flowering and aromatic plants & beaut', 'images/plant/c3.jpg', 299, 'plant'),
(9, 'Money Plant', ' Live plant along with ceramic pot\r\n plants height with pot is 1 feet and pot size is 4 icnhes diameter.\r\n plants nature is indoor/semi shade, less watering\r\n Recommended by NASA\'s air purifying study.\r\n Best foliage plants, useful for table top and gift ', 'images/plant/c4.jpg', 99, 'plant'),
(10, 'Poinsettia Pink Plant', ' Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5 icnhes diameter.\r\n plants nature is indoor-semishade.\r\n Less watering, booms in winters\r\n Useful for Lucky plant, table top, gift plant', 'images/plant/c5.png', 299, 'plant'),
(11, 'Adenium plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c1.jpg', 199, 'flower'),
(12, 'African Violet', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c2.jpg', 149, 'flower'),
(13, 'Allamanda plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c3.jpg', 199, 'flower'),
(14, 'Anthurium Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c4.jpg', 99, 'flower'),
(15, 'Begonia Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c5.jpg', 249, 'flower'),
(16, 'Bougainvillea Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c6.jpg', 299, 'flower'),
(17, 'Bromeliads Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c7.jpg', 249, 'flower'),
(18, 'Calanchchu Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c8.jpg', 149, 'flower'),
(19, 'Canna Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c9.jpg', 399, 'flower'),
(20, 'Dahlia Plant', 'Live plant along with plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor/semi shade & less watering.\r\n Bonsai Looking plant, easy maintenance.\r\n Annual Flowering & hardy plant', 'images/flower/c10.jpg', 429, 'flower'),
(21, 'Jasmine Plant', 'Live plant along with Plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor, loves full sun & less watering.\r\n Aromatic plant, useful for shrubs, garden plant & gifts\r\n Annual Flowering & hardy plant', 'images/flower/c11.jpg', 249, 'flower'),
(22, 'Marigold plant', 'Live plant along with Plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor, loves full sun & less watering.\r\n Aromatic plant, useful for shrubs, garden plant & gifts\r\n Annual Flowering & hardy plant', 'images/flower/c12.jpg', 99, 'flower'),
(23, 'Tecoma', 'Live plant along with Plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor, loves full sun & less watering.\r\n Aromatic plant, useful for shrubs, garden plant & gifts\r\n Annual Flowering & hardy plant', 'images/flower/c13.jpg', 109, 'flower'),
(24, 'Thunbergia Plant', 'Live plant along with Plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor, loves full sun & less watering.\r\n Aromatic plant, useful for shrubs, garden plant & gifts\r\n Annual Flowering & hardy plant', 'images/flower/c14.jpg', 209, 'flower'),
(25, 'Vinca Plant', 'Live plant along with Plastic pot\r\n plants height with pot is 1.5 feet and pot size is 5\'\' diameter.\r\n plants nature is outdoor, loves full sun & less watering.\r\n Aromatic plant, useful for shrubs, garden plant & gifts\r\n Annual Flowering & hardy plant', 'images/flower/c15.jpg', 249, 'flower'),
(26, 'Plastic Pot', 'Pack of 3 Blossom Hanging basket', 'images/pot/c1.jpg', 149, 'pot'),
(27, 'Ceramic Pot', ' Pack of 3 Beautiful Ceramic Round Pots\r\n Pot size: 4 Inch\r\n', 'images/pot/c2.jpg', 299, 'pot'),
(28, 'Colorful Plastic Planters', ' 3 Pieces of Blossom Hanging basket\r\n Color : Violet\r\n Durable and light weight planter', 'images/pot/c3.jpg', 199, 'pot'),
(29, 'Designer pot', ' 3 Pieces of Blossom Hanging basket\r\n Color : Violet\r\n Durable and light weight planter', 'images/pot/c4.png', 349, 'pot'),
(30, 'Ralling Pot', '10inch Mix Color (Pack of 3)', 'images/pot/c5.jpg', 399, 'pot'),
(31, 'Bird House', 'Made from heavy-gauge steel using handcrafting techniques.\r\n Powder-coated for a smooth, durable finish.\r\n Light weight Bird House 4.5?x 6.5? high.\r\n Enchanting colors with hanging chain.', 'images/gardendecor/c1.jpg', 499, 'gardendecor'),
(32, 'Fairy Garden', 'Made from heavy-gauge steel using handcrafting techniques.\r\n Powder-coated for a smooth, durable finish.\r\n Light weight  4.5?x 6.5? high.\r\n Enchanting colors with hanging chain.', 'images/gardendecor/c2.jpg', 449, 'gardendecor'),
(33, 'Garden Fountains', 'Made from heavy-gauge steel using handcrafting techniques.\r\n Powder-coated for a smooth, durable finish.\r\n Light weight 4.5?x 6.5? high.\r\n Enchanting colors with hanging chain.', 'images/gardendecor/c3.jpg', 499, 'gardendecor'),
(34, 'Pot stand', ' Made from heavy-gauge steel using handcrafting techniques.\r\n Useful for Pot stand\r\n Color may be different as shown in the image.\r\n Strong and durable handles.', 'images/gardendecor/c4.jpg', 599, 'gardendecor'),
(35, 'Pebbles', ' 1 Kg mix color pabbles in small size\r\n For decorative purpose', 'images/gardendecor/c5.jpg', 229, 'gardendecor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
