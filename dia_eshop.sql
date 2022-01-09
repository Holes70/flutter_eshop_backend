-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 09, 2022 at 06:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dia_eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_customer_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `id_customer_uid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts_products`
--

CREATE TABLE `carts_products` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts_products`
--

INSERT INTO `carts_products` (`id`, `id_cart`, `id_product`) VALUES
(39, 1, 2),
(40, 1, 1),
(41, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `id_customer_uid` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `id_customer_uid`, `first_name`, `last_name`, `email`, `phone_number`, `state`, `password`) VALUES
(1, 1, 'xxx', 'Priezvisko_1', 'zakaznik_1@gmail.com', 13102523, 1, '123455'),
(2, 2, 'Meno_2', 'Priezvisko_2', 'zakaznik_2@gmail.com', 26527492, 3, '123455'),
(3, 3, 'Meno_3', 'Priezvisko_3', 'zakaznik_3@gmail.com', 59002038, 3, '123455'),
(4, 4, 'Meno_4', 'Priezvisko_4', 'zakaznik_4@gmail.com', 30765647, 3, '123455'),
(5, 5, 'Meno_5', 'Priezvisko_5', 'zakaznik_5@gmail.com', 26107023, 2, '123455'),
(6, 6, 'Meno_6', 'Priezvisko_6', 'zakaznik_6@gmail.com', 55617027, 2, '123455'),
(7, 7, 'Meno_7', 'Priezvisko_7', 'zakaznik_7@gmail.com', 73821795, 2, '123455'),
(8, 8, 'Meno_8', 'Priezvisko_8', 'zakaznik_8@gmail.com', 28961312, 2, '123455'),
(9, 9, 'Meno_9', 'Priezvisko_9', 'zakaznik_9@gmail.com', 44170284, 1, '123455'),
(10, 10, 'Meno_10', 'Priezvisko_10', 'zakaznik_10@gmail.com', 99530803, 1, '123455'),
(11, 11, 'Meno_11', 'Priezvisko_11', 'zakaznik_11@gmail.com', 39444407, 3, '123455'),
(12, 12, 'Meno_12', 'Priezvisko_12', 'zakaznik_12@gmail.com', 71518588, 1, '123455'),
(13, 13, 'Meno_13', 'Priezvisko_13', 'zakaznik_13@gmail.com', 81691151, 1, '123455'),
(14, 14, 'Meno_14', 'Priezvisko_14', 'zakaznik_14@gmail.com', 33728685, 2, '123455'),
(15, 15, 'Meno_15', 'Priezvisko_15', 'zakaznik_15@gmail.com', 12466616, 1, '123455'),
(16, 16, 'Meno_16', 'Priezvisko_16', 'zakaznik_16@gmail.com', 81052978, 1, '123455'),
(17, 17, 'Meno_17', 'Priezvisko_17', 'zakaznik_17@gmail.com', 11903633, 2, '123455'),
(18, 18, 'Meno_18', 'Priezvisko_18', 'zakaznik_18@gmail.com', 43991703, 1, '123455'),
(19, 19, 'Meno_19', 'Priezvisko_19', 'zakaznik_19@gmail.com', 99733331, 2, '123455'),
(20, 20, 'Meno_20', 'Priezvisko_20', 'zakaznik_20@gmail.com', 36481741, 1, '123455'),
(21, 21, 'Meno_21', 'Priezvisko_21', 'zakaznik_21@gmail.com', 96048753, 3, '123455'),
(22, 22, 'Meno_22', 'Priezvisko_22', 'zakaznik_22@gmail.com', 78271635, 1, '123455'),
(23, 23, 'Meno_23', 'Priezvisko_23', 'zakaznik_23@gmail.com', 33061821, 2, '123455'),
(24, 24, 'Meno_24', 'Priezvisko_24', 'zakaznik_24@gmail.com', 91521589, 3, '123455'),
(25, 25, 'Meno_25', 'Priezvisko_25', 'zakaznik_25@gmail.com', 98992246, 3, '123455'),
(26, 26, 'Meno_26', 'Priezvisko_26', 'zakaznik_26@gmail.com', 89801622, 1, '123455'),
(27, 27, 'Meno_27', 'Priezvisko_27', 'zakaznik_27@gmail.com', 88398601, 2, '123455'),
(28, 28, 'Meno_28', 'Priezvisko_28', 'zakaznik_28@gmail.com', 68542758, 1, '123455'),
(29, 29, 'Meno_29', 'Priezvisko_29', 'zakaznik_29@gmail.com', 67587990, 1, '123455'),
(30, 30, 'Meno_30', 'Priezvisko_30', 'zakaznik_30@gmail.com', 80214353, 1, '123455');

-- --------------------------------------------------------

--
-- Table structure for table `customers_uids`
--

CREATE TABLE `customers_uids` (
  `id` int(11) NOT NULL,
  `uid` varchar(55) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers_uids`
--

INSERT INTO `customers_uids` (`id`, `uid`, `id_customer`) VALUES
(1, '00001', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dia_navbar`
--

CREATE TABLE `dia_navbar` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `link` varchar(25) NOT NULL,
  `description` varchar(35) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `order_index` int(2) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dia_navbar`
--

INSERT INTO `dia_navbar` (`id`, `id_parent`, `name`, `link`, `description`, `icon`, `order_index`, `is_enabled`) VALUES
(217, 0, 'Produkty', 'produkty', NULL, NULL, 1, 1),
(218, 0, 'Košíky', 'kosiky', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dia_tables`
--

CREATE TABLE `dia_tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(55) NOT NULL,
  `structure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dia_tables`
--

INSERT INTO `dia_tables` (`id`, `table_name`, `structure`) VALUES
(1, 'users', '{\"id\":{\"type\":\"number\",\"show_in_table\":false,\"show_in_form\":true},\"id_address\":{\"type\":\"number\",\"show_in_table\":false,\"show_in_form\":true,\"type\":\"lookup\",\"lookup_table\":\"addresses\"},\"avatar\":{\"show_in_table\":true,\"show_in_form\":true,\"type\":\"image\"},\"first_name\":{\"type\":\"text\",\"required\":true,\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"First Name\"},\"last_name\":{\"type\":\"text\",\"required\":true,\"show_in_table\":true,\"show_in_form\":true},\"email\":{\"type\":\"email\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Email\"},\"phone_number\":{\"type\":\"number\",\"required\":true,\"show_in_form\":true,\"show_in_table\":true},\"password\":{\"type\":\"password\",\"required\":true,\"show_in_form\":true,\"show_in_table\":true}}'),
(2, 'products', '{\"id\":{\"type\":\"number\",\"show_in_table\":false,\"show_in_form\":false},\"image\":{\"type\":\"image\",\"show_in_table\":true,\"show_in_form\":true},\"name\":{\"show_in_table\":true,\"name_in_table\":\"Produkt\",\"show_in_form\":true,\"required\":true},\"price\":{\"type\":\"number\",\"show_in_table\":true,\"name_in_table\":\"Cena\",\"show_in_form\":true,\"required\":true,\"unit\":\"€\"},\"available\":{\"type\":\"checkbox\",\"default_value\":true,\"show_in_table\":true,\"name_in_table\":\"Dostupný\",\"show_in_form\":true},\"count\":{\"type\":\"number\",\"show_in_table\":true,\"name_in_table\":\"Skladom\",\"show_in_form\":true},\"description\":{\"type\":\"text\",\"show_in_table\":false,\"name_in_table\":\"Popis\",\"show_in_form\":true},\"type\":{\"type\":\"number\",\"show_in_table\":false,\"name_in_table\":\"Typ\",\"show_in_form\":true}}'),
(3, 'accessories', '{\"id\":{\"type\":\"number\",\"show_in_table\":false,\"show_in_form\":false},\"image\":{\"type\":\"image\",\"show_in_table\":true,\"show_in_form\":true},\"name\":{\"show_in_table\":true,\"name_in_table\":\"Produkt\",\"show_in_form\":true,\"required\":true},\"price\":{\"type\":\"number\",\"show_in_table\":true,\"name_in_table\":\"Cena\",\"show_in_form\":true,\"required\":true,\"unit\":\"€\"},\"available\":{\"type\":\"checkbox\",\"show_in_table\":true,\"name_in_table\":\"Dostupný\",\"show_in_form\":true},\"description\":{\"type\":\"text\",\"show_in_table\":false,\"name_in_table\":\"Popis\",\"show_in_form\":true},\"count\":{\"type\":\"number\",\"show_in_table\":true,\"name_in_table\":\"Počet\",\"show_in_form\":true}}'),
(4, 'customers', '{\"first_name\":{\"disabled\":true,\"required\":true,\"show_in_table\":true,\"name_in_table\":\"Meno\",\"show_in_form\":true},\"last_name\":{\"required\":true,\"show_in_table\":true,\"name_in_table\":\"Priezvisko\",\"show_in_form\":true},\"email\":{\"required\":false,\"show_in_table\":true,\"name_in_table\":\"E-mail\",\"show_in_form\":true},\"phone_number\":{\"required\":true,\"show_in_table\":true,\"name_in_table\":\"Mobil\",\"show_in_form\":true},\"state\":{\"type\":\"radio\",\"name_in_table\":\" \",\"default_value\":\"1\",\"radio\":{\"1\":\"Nový\",\"2\":\"Overený\",\"3\":\"Dlžný\"},\"show_in_table\":true,\"show_in_form\":true}}'),
(5, 'orders', '{\"serial_number\":{\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Číslo\"},\"type\":{\"type\":\"radio\",\"default_value\":1,\"radio\":{\"1\":\"Nová\",\"2\":\"Schválená\",\"3\":\"Zaplatená\",\"4\":\"Odovzdaná\"},\"show_in_table\":false,\"show_in_form\":true,\"name_in_table\":\"Typ\"},\"id_customer_uid\":{\"type\":\"lookup\",\"lookup_icon\":\"user\",\"lookup_table\":\"customers_uids\",\"lookup_table_col\":\"id\",\"lookup_url\":\"zakaznici\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Zákazník\"},\"id_cart\":{\"type\":\"lookup\",\"lookup_table\":\"carts\",\"lookup_icon\":\"shopping-cart\",\"lookup_table_col\":\"id\",\"lookup_url\":\"kosik\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Košík\"},\"id_invoice\":{\"type\":\"lookup\",\"lookup_table\":\"invoices\",\"lookup_icon\":\"file-alt\",\"lookup_columns\":{\"1\":\"number\"},\"lookup_table_col\":\"id\",\"lookup_url\":\"faktury\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Faktúra\"}}'),
(6, 'products_accessories', '{\"id\":{\"type\":\"number\",\"show_in_table\":false,\"show_in_form\":false},\"image\":{\"type\":\"image\",\"show_in_table\":true,\"show_in_form\":true},\"name\":{\"show_in_table\":true,\"name_in_table\":\"Produkt\",\"show_in_form\":true,\"required\":true},\"price\":{\"type\":\"number\",\"show_in_table\":true,\"name_in_table\":\"Cena\",\"show_in_form\":true,\"required\":true,\"unit\":\"€\"},\"available\":{\"type\":\"checkbox\",\"show_in_table\":true,\"name_in_table\":\"Dostupný\",\"show_in_form\":true},\"count\":{\"type\":\"number\",\"show_in_table\":true,\"name_in_table\":\"Skladom\",\"show_in_form\":true},\"description\":{\"type\":\"text\",\"show_in_table\":false,\"name_in_table\":\"Popis\",\"show_in_form\":true},\"type\":{\"type\":\"number\",\"show_in_table\":false,\"name_in_table\":\"Typ\",\"show_in_form\":true}}'),
(7, 'invoices', '{\"number\":{\"type\":\"number\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Číslo\"},\"price\":{\"type\":\"number\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Cena\",\"unit\":\"€\"},\"id_order\":{\"type\":\"lookup\",\"lookup_table\":\"orders\",\"lookup_table_col\":\"id\",\"lookup_url\":\"objednavky\",\"show_in_table\":true,\"show_in_form\":true,\"name_in_table\":\"Objednávka\"},\"state\":{\"type\":\"radio\",\"default_value\":1,\"radio\":{\"1\":\"Vystavená\",\"2\":\"Zaplatená\"},\"show_in_table\":false,\"show_in_form\":true,\"name_in_table\":\"Stav\"}}\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `serial_number` int(8) DEFAULT NULL,
  `type` int(1) NOT NULL,
  `id_customer_uid` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_invoice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `serial_number`, `type`, `id_customer_uid`, `id_cart`, `id_invoice`) VALUES
(1, 3597, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(55) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `price` double(14,2) DEFAULT NULL,
  `available` tinyint(1) DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `price`, `available`, `count`, `description`, `type`) VALUES
(1, 'product_3.png', 'Product_1', 107.00, 1, 86, 'Popis', 2),
(2, 'product_2.png', 'kkk', 858.00, 1, 0, 'Popis', 1),
(3, 'product_1.png', 'Product_3', 102.00, 1, 14, 'Popis', 2),
(4, 'product_3.png', 'Product_4', 375.00, 0, 8, 'Popis', 1),
(5, 'product_2.png', 'Product_5', 944.00, 0, 4, 'Popis', 1),
(6, 'product_3.png', 'Product_6', 511.00, 1, 2, 'Popis', 2),
(7, 'product_1.png', 'Product_7', 523.00, 0, 0, 'Popis', 2),
(8, 'product_3.png', 'Product_8', 360.00, 1, 15, 'Popis', 1),
(9, 'product_1.png', 'Product_9', 435.00, 0, 14, 'Popis', 1),
(10, 'product_2.png', 'Product_10', 434.00, 0, 3, 'Popis', 2),
(11, 'product_1.png', 'Product_11', 676.00, 1, 13, 'Popis', 2),
(12, 'product_2.png', 'Product_12', 862.00, 1, 10, 'Popis', 2),
(13, 'product_2.png', 'Product_13', 537.00, 0, 8, 'Popis', 2),
(14, 'product_1.png', 'Product_14', 775.00, 1, 2, 'Popis', 2),
(15, 'product_1.png', 'Product_15', 732.00, 1, 10, 'Popis', 2),
(16, 'product_2.png', 'Product_16', 58.00, 0, 5, 'Popis', 1),
(17, 'product_1.png', 'Product_17', 194.00, 1, 13, 'Popis', 1),
(18, 'product_2.png', 'Product_18', 675.00, 1, 11, 'Popis', 2),
(19, 'product_2.png', 'Product_19', 439.00, 1, 13, 'Popis', 2),
(20, 'product_2.png', 'Product_20', 247.00, 1, 7, 'Popis', 1),
(21, 'product_3.png', 'Product_21', 417.00, 0, 0, 'Popis', 2),
(22, 'product_2.png', 'Product_22', 214.00, 1, 7, 'Popis', 2),
(23, 'product_3.png', 'Product_23', 496.00, 1, 9, 'Popis', 1),
(24, 'product_2.png', 'Product_24', 856.00, 1, 6, 'Popis', 1),
(25, 'product_1.png', 'Product_25', 940.00, 1, 11, 'Popis', 2),
(26, 'product_3.png', 'Product_26', 902.00, 1, 8, 'Popis', 2),
(27, 'product_3.png', 'Product_27', 778.00, 0, 6, 'Popis', 2),
(28, 'product_2.png', 'Product_28', 648.00, 0, 10, 'Popis', 2),
(29, 'product_2.png', 'Product_29', 28.00, 1, 11, 'Popis', 1),
(30, 'product_3.png', 'Product_30', 69.00, 1, 12, 'Popis', 2),
(31, 'product_1.png', 'Product_31', 23.00, 1, 14, 'Popis', 2),
(32, 'product_1.png', 'Product_32', 655.00, 0, 10, 'Popis', 2),
(33, 'product_2.png', 'Product_33', 180.00, 1, 13, 'Popis', 1),
(34, 'product_2.png', 'Product_34', 349.00, 0, 2, 'Popis', 1),
(35, 'product_2.png', 'Product_35', 726.00, 1, 7, 'Popis', 2),
(36, 'product_2.png', 'Product_36', 14.00, 0, 13, 'Popis', 1),
(37, 'product_3.png', 'Product_37', 827.00, 0, 12, 'Popis', 2),
(38, 'product_2.png', 'Product_38', 871.00, 0, 2, 'Popis', 2),
(39, 'product_3.png', 'Product_39', 249.00, 0, 1, 'Popis', 2),
(40, 'product_2.png', 'Product_40', 993.00, 0, 3, 'Popis', 1),
(41, 'product_1.png', 'Product_41', 594.00, 0, 7, 'Popis', 1),
(42, 'product_1.png', 'Product_42', 518.00, 0, 6, 'Popis', 1),
(43, 'product_1.png', 'Product_43', 823.00, 1, 15, 'Popis', 2),
(44, 'product_2.png', 'Product_44', 56.00, 1, 0, 'Popis', 2),
(45, 'product_3.png', 'Product_45', 743.00, 0, 11, 'Popis', 1),
(46, 'product_1.png', 'Product_46', 655.00, 0, 14, 'Popis', 2),
(47, 'product_2.png', 'Product_47', 580.00, 0, 3, 'Popis', 1),
(48, 'product_1.png', 'Product_48', 237.00, 0, 7, 'Popis', 2),
(49, 'product_3.png', 'Product_49', 942.00, 0, 1, 'Popis', 2),
(50, 'product_2.png', 'Product_50', 844.00, 1, 0, 'Popis', 1),
(51, 'product_1.png', 'Product_51', 674.00, 0, 1, 'Popis', 2),
(52, 'product_1.png', 'Product_52', 920.00, 1, 5, 'Popis', 2),
(53, 'product_1.png', 'Product_53', 648.00, 1, 2, 'Popis', 1),
(54, 'product_2.png', 'Product_54', 436.00, 0, 0, 'Popis', 2),
(55, 'product_1.png', 'Product_55', 56.00, 1, 6, 'Popis', 2),
(56, 'product_1.png', 'Product_56', 319.00, 0, 2, 'Popis', 1),
(57, 'product_3.png', 'Product_57', 742.00, 0, 5, 'Popis', 1),
(58, 'product_2.png', 'Product_58', 317.00, 1, 4, 'Popis', 1),
(59, 'product_1.png', 'Product_59', 589.00, 0, 12, 'Popis', 1),
(60, 'product_2.png', 'Product_60', 267.00, 1, 0, 'Popis', 1),
(61, 'product_1.png', 'Product_61', 98.00, 1, 15, 'Popis', 2),
(62, 'product_3.png', 'Product_62', 201.00, 1, 14, 'Popis', 2),
(63, 'product_3.png', 'Product_63', 328.00, 1, 8, 'Popis', 2),
(64, 'product_2.png', 'Product_64', 642.00, 0, 0, 'Popis', 2),
(65, 'product_2.png', 'Product_65', 719.00, 0, 3, 'Popis', 1),
(66, 'product_2.png', 'Product_66', 996.00, 1, 6, 'Popis', 1),
(67, 'product_1.png', 'Product_67', 859.00, 1, 12, 'Popis', 1),
(68, 'product_1.png', 'Product_68', 799.00, 1, 0, 'Popis', 1),
(69, 'product_3.png', 'Product_69', 690.00, 1, 4, 'Popis', 1),
(70, 'product_1.png', 'Product_70', 828.00, 1, 1, 'Popis', 1),
(71, 'product_2.png', 'Product_71', 776.00, 0, 1, 'Popis', 1),
(72, 'product_3.png', 'Product_72', 601.00, 0, 13, 'Popis', 1),
(73, 'product_1.png', 'Product_73', 907.00, 1, 8, 'Popis', 2),
(74, 'product_1.png', 'Product_74', 686.00, 1, 6, 'Popis', 2),
(75, 'product_3.png', 'Product_75', 211.00, 1, 13, 'Popis', 2),
(76, 'product_2.png', 'Product_76', 451.00, 1, 13, 'Popis', 1),
(77, 'product_1.png', 'Product_77', 260.00, 0, 12, 'Popis', 2),
(78, 'product_3.png', 'Product_78', 631.00, 1, 4, 'Popis', 1),
(79, 'product_2.png', 'Product_79', 522.00, 1, 9, 'Popis', 1),
(80, 'product_1.png', 'Product_80', 680.00, 1, 1, 'Popis', 2),
(81, 'product_1.png', 'Product_81', 180.00, 1, 5, 'Popis', 1),
(82, 'product_3.png', 'Product_82', 869.00, 1, 4, 'Popis', 2),
(83, 'product_3.png', 'Product_83', 281.00, 0, 9, 'Popis', 2),
(84, 'product_3.png', 'Product_84', 859.00, 1, 2, 'Popis', 1),
(85, 'product_1.png', 'Product_85', 293.00, 0, 7, 'Popis', 1),
(86, 'product_1.png', 'Product_86', 860.00, 0, 14, 'Popis', 2),
(87, 'product_2.png', 'Product_87', 623.00, 0, 11, 'Popis', 2),
(88, 'product_3.png', 'Product_88', 223.00, 1, 13, 'Popis', 2),
(89, 'product_1.png', 'Product_89', 522.00, 0, 5, 'Popis', 1),
(90, 'product_2.png', 'Product_90', 451.00, 1, 10, 'Popis', 2),
(91, 'product_3.png', 'Product_91', 369.00, 1, 1, 'Popis', 2),
(92, 'product_3.png', 'Product_92', 691.00, 0, 14, 'Popis', 2),
(93, 'product_3.png', 'Product_93', 36.00, 0, 2, 'Popis', 1),
(94, 'product_1.png', 'Product_94', 181.00, 0, 9, 'Popis', 1),
(95, 'product_2.png', 'Product_95', 416.00, 0, 3, 'Popis', 2),
(96, 'product_1.png', 'Product_96', 812.00, 1, 0, 'Popis', 1),
(97, 'product_1.png', 'Product_97', 643.00, 1, 2, 'Popis', 2),
(98, 'product_3.png', 'Product_98', 155.00, 1, 6, 'Popis', 1),
(99, 'product_3.png', 'Product_99', 974.00, 0, 11, 'Popis', 1),
(100, 'product_1.png', 'Product_100', 839.00, 0, 5, 'Popis', 1),
(101, 'wallpaper.jpeg', 'gvbj', 5.00, 0, 1, '', 2),
(102, 'wallpaper.jpeg', 'test', 11.00, 0, 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_discounts`
--

CREATE TABLE `products_discounts` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products_gallery`
--

CREATE TABLE `products_gallery` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_gallery` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_gallery`
--

INSERT INTO `products_gallery` (`id`, `id_product`, `id_gallery`) VALUES
(1, 33, 58),
(2, 36, 69),
(3, 32, 94),
(4, 38, 7),
(5, 41, 83),
(6, 19, 52),
(7, 50, 35),
(8, 45, 77),
(9, 12, 71),
(10, 41, 37),
(11, 39, 91),
(12, 44, 20),
(13, 41, 59),
(14, 4, 24),
(15, 7, 37),
(16, 37, 3),
(17, 50, 58),
(18, 47, 95),
(19, 12, 6),
(20, 20, 38),
(21, 30, 92),
(22, 36, 87),
(23, 10, 45),
(24, 41, 26),
(25, 1, 34),
(26, 8, 10),
(27, 40, 69),
(28, 17, 41),
(29, 44, 60),
(30, 23, 88),
(31, 26, 36),
(32, 1, 23),
(33, 24, 96),
(34, 1, 94),
(35, 38, 50),
(36, 21, 44),
(37, 17, 61),
(38, 8, 48),
(39, 11, 8),
(40, 25, 86),
(41, 18, 94),
(42, 44, 91),
(43, 12, 34),
(44, 15, 72),
(45, 37, 57),
(46, 15, 60),
(47, 38, 9),
(48, 42, 1),
(49, 36, 10),
(50, 8, 89),
(51, 32, 89),
(52, 20, 85),
(53, 26, 78),
(54, 20, 75),
(55, 29, 30),
(56, 28, 37),
(57, 9, 83),
(58, 43, 30),
(59, 34, 33),
(60, 7, 91),
(61, 42, 1),
(62, 29, 43),
(63, 10, 81),
(64, 20, 28),
(65, 2, 89),
(66, 17, 16),
(67, 4, 5),
(68, 46, 11),
(69, 30, 32),
(70, 8, 61),
(71, 33, 78),
(72, 37, 68),
(73, 4, 48),
(74, 17, 76),
(75, 5, 37),
(76, 3, 6),
(77, 45, 54),
(78, 4, 59),
(79, 27, 86),
(80, 46, 36),
(81, 30, 76),
(82, 10, 80),
(83, 45, 89),
(84, 8, 3),
(85, 38, 67),
(86, 27, 8),
(87, 36, 35),
(88, 9, 45),
(89, 19, 86),
(90, 30, 34),
(91, 19, 2),
(92, 7, 34),
(93, 24, 87),
(94, 24, 77),
(95, 39, 59),
(96, 31, 2),
(97, 11, 4),
(98, 18, 9),
(99, 44, 33),
(100, 9, 100),
(101, 9, 101),
(102, 2, 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts_products`
--
ALTER TABLE `carts_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_uids`
--
ALTER TABLE `customers_uids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dia_navbar`
--
ALTER TABLE `dia_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dia_tables`
--
ALTER TABLE `dia_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_discounts`
--
ALTER TABLE `products_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_gallery`
--
ALTER TABLE `products_gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts_products`
--
ALTER TABLE `carts_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customers_uids`
--
ALTER TABLE `customers_uids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dia_navbar`
--
ALTER TABLE `dia_navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `dia_tables`
--
ALTER TABLE `dia_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products_discounts`
--
ALTER TABLE `products_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_gallery`
--
ALTER TABLE `products_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
