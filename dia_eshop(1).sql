-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 11.Jan 2022, 14:45
-- Verzia serveru: 10.4.22-MariaDB
-- Verzia PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `dia_eshop`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_customer_uid` int(11) NOT NULL,
  `is_order` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `carts`
--

INSERT INTO `carts` (`id`, `id_customer_uid`, `is_order`) VALUES
(1, 1, 1),
(26, 1, 1),
(27, 1, 1),
(28, 1, 1),
(29, 1, 1),
(30, 1, 1),
(31, 1, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `carts_products`
--

CREATE TABLE `carts_products` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `carts_products`
--

INSERT INTO `carts_products` (`id`, `id_cart`, `id_product`) VALUES
(41, 1, 3),
(42, 1, 8),
(43, 1, 17),
(55, 2, 2),
(57, 1, 6),
(58, 1, 6),
(59, 1, 6),
(77, 26, 2),
(78, 26, 1),
(79, 27, 1),
(80, 28, 2),
(81, 28, 1),
(82, 29, 2),
(83, 29, 2),
(91, 30, 6),
(92, 30, 3),
(94, 31, 1),
(95, 31, 3);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `customers`
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
-- Sťahujem dáta pre tabuľku `customers`
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
-- Štruktúra tabuľky pre tabuľku `customers_uids`
--

CREATE TABLE `customers_uids` (
  `id` int(11) NOT NULL,
  `uid` varchar(55) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `customers_uids`
--

INSERT INTO `customers_uids` (`id`, `uid`, `id_customer`) VALUES
(1, '00001', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `dia_navbar`
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
-- Sťahujem dáta pre tabuľku `dia_navbar`
--

INSERT INTO `dia_navbar` (`id`, `id_parent`, `name`, `link`, `description`, `icon`, `order_index`, `is_enabled`) VALUES
(217, 0, 'Produkty', 'produkty', NULL, NULL, 1, 1),
(218, 0, 'Košíky', 'kosiky', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `dia_tables`
--

CREATE TABLE `dia_tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(55) NOT NULL,
  `structure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `dia_tables`
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
-- Štruktúra tabuľky pre tabuľku `orders`
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
-- Sťahujem dáta pre tabuľku `orders`
--

INSERT INTO `orders` (`id`, `serial_number`, `type`, `id_customer_uid`, `id_cart`, `id_invoice`) VALUES
(1, 3597, 1, 1, 1, NULL),
(2, 5547, 1, 1, 1, NULL),
(3, 9858, 1, 1, 1, NULL),
(4, 6307, 1, 1, 26, NULL),
(5, 4728, 1, 1, 26, NULL),
(6, 1633, 1, 1, 27, NULL),
(7, 5963, 1, 1, 28, NULL),
(8, 7623, 1, 1, 29, NULL),
(9, 8985, 1, 1, 30, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `products`
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
-- Sťahujem dáta pre tabuľku `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `price`, `available`, `count`, `description`, `type`) VALUES
(1, 'dress_1.png', 'dress_1', 620.00, 0, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(2, 'pants_1.png', 'pants_2', 559.00, 1, 1, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(3, 'w_pants_2.png', 'w_pants_3', 747.00, 1, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(4, 'dress_3.png', 'dress_4', 532.00, 1, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(5, 'shoes_3.png', 'shoes_5', 30.00, 0, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(6, 'leggins_3.png', 'leggins_6', 879.00, 0, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(7, 'w_pants_1.png', 'w_pants_7', 262.00, 1, 5, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(8, 'dress_3.png', 'dress_8', 509.00, 1, 5, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(9, 'pants_1.png', 'pants_9', 262.00, 1, 7, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(10, 'leggins_3.png', 'leggins_10', 447.00, 1, 13, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(11, 'dress_3.png', 'dress_11', 2.00, 0, 2, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(12, 'w_pants_3.png', 'w_pants_12', 907.00, 0, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(13, 'w_pants_1.png', 'w_pants_13', 914.00, 0, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(14, 'leggins_2.png', 'leggins_14', 697.00, 0, 14, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(15, 'pants_2.png', 'pants_15', 324.00, 0, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(16, 'dress_3.png', 'dress_16', 472.00, 1, 15, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(17, 'shoes_2.png', 'shoes_17', 676.00, 0, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(18, 'leggins_1.png', 'leggins_18', 369.00, 1, 12, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(19, 'w_pants_2.png', 'w_pants_19', 886.00, 1, 5, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(20, 'shoes_2.png', 'shoes_20', 86.00, 1, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(21, 'dress_2.png', 'dress_21', 407.00, 0, 4, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(22, 'shoes_3.png', 'shoes_22', 932.00, 0, 0, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(23, 'w_pants_3.png', 'w_pants_23', 444.00, 1, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(24, 'w_pants_3.png', 'w_pants_24', 136.00, 1, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(25, 'leggins_2.png', 'leggins_25', 155.00, 1, 5, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(26, 'shoes_3.png', 'shoes_26', 62.00, 0, 4, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(27, 'pants_2.png', 'pants_27', 395.00, 1, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(28, 'shoes_1.png', 'shoes_28', 190.00, 0, 13, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(29, 'dress_1.png', 'dress_29', 112.00, 1, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(30, 'dress_3.png', 'dress_30', 716.00, 1, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(31, 'leggins_1.png', 'leggins_31', 969.00, 1, 7, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(32, 'pants_1.png', 'pants_32', 99.00, 1, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(33, 'w_pants_2.png', 'w_pants_33', 807.00, 0, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(34, 'shoes_1.png', 'shoes_34', 611.00, 0, 0, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(35, 'shoes_3.png', 'shoes_35', 624.00, 0, 14, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(36, 'dress_3.png', 'dress_36', 609.00, 1, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(37, 'pants_2.png', 'pants_37', 244.00, 1, 2, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(38, 'shoes_1.png', 'shoes_38', 71.00, 0, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(39, 'shoes_3.png', 'shoes_39', 936.00, 0, 3, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(40, 'shoes_1.png', 'shoes_40', 147.00, 1, 4, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(41, 'shoes_2.png', 'shoes_41', 358.00, 1, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(42, 'dress_3.png', 'dress_42', 521.00, 0, 7, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(43, 'w_pants_2.png', 'w_pants_43', 62.00, 1, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(44, 'shoes_1.png', 'shoes_44', 237.00, 0, 2, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(45, 'w_pants_1.png', 'w_pants_45', 337.00, 0, 3, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(46, 'w_pants_1.png', 'w_pants_46', 679.00, 0, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(47, 'shoes_3.png', 'shoes_47', 389.00, 0, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(48, 'w_pants_1.png', 'w_pants_48', 453.00, 0, 0, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(49, 'leggins_2.png', 'leggins_49', 119.00, 1, 7, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(50, 'shoes_3.png', 'shoes_50', 904.00, 0, 0, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(51, 'w_pants_1.png', 'w_pants_51', 242.00, 0, 4, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(52, 'w_pants_3.png', 'w_pants_52', 717.00, 1, 14, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(53, 'pants_1.png', 'pants_53', 170.00, 1, 13, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(54, 'w_pants_3.png', 'w_pants_54', 928.00, 0, 0, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1);
INSERT INTO `products` (`id`, `image`, `name`, `price`, `available`, `count`, `description`, `type`) VALUES
(55, 'w_pants_3.png', 'w_pants_55', 534.00, 0, 4, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(56, 'dress_1.png', 'dress_56', 237.00, 1, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(57, 'pants_2.png', 'pants_57', 684.00, 1, 12, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(58, 'shoes_1.png', 'shoes_58', 931.00, 1, 1, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(59, 'shoes_3.png', 'shoes_59', 182.00, 0, 3, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(60, 'w_pants_2.png', 'w_pants_60', 271.00, 1, 5, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(61, 'pants_1.png', 'pants_61', 470.00, 1, 1, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(62, 'dress_3.png', 'dress_62', 412.00, 0, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(63, 'leggins_2.png', 'leggins_63', 620.00, 0, 15, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(64, 'dress_3.png', 'dress_64', 89.00, 1, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(65, 'dress_1.png', 'dress_65', 557.00, 1, 3, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(66, 'shoes_2.png', 'shoes_66', 717.00, 0, 7, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(67, 'leggins_2.png', 'leggins_67', 593.00, 0, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(68, 'dress_2.png', 'dress_68', 84.00, 0, 15, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(69, 'leggins_3.png', 'leggins_69', 929.00, 0, 5, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(70, 'leggins_3.png', 'leggins_70', 97.00, 1, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(71, 'pants_2.png', 'pants_71', 754.00, 1, 2, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(72, 'leggins_1.png', 'leggins_72', 716.00, 0, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(73, 'pants_3.png', 'pants_73', 434.00, 1, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(74, 'w_pants_3.png', 'w_pants_74', 308.00, 0, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(75, 'w_pants_1.png', 'w_pants_75', 648.00, 0, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(76, 'pants_3.png', 'pants_76', 636.00, 1, 2, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(77, 'dress_3.png', 'dress_77', 969.00, 0, 0, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(78, 'shoes_1.png', 'shoes_78', 157.00, 0, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(79, 'w_pants_2.png', 'w_pants_79', 735.00, 1, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(80, 'pants_3.png', 'pants_80', 614.00, 1, 3, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(81, 'w_pants_2.png', 'w_pants_81', 375.00, 0, 13, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(82, 'pants_2.png', 'pants_82', 479.00, 0, 12, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(83, 'pants_3.png', 'pants_83', 885.00, 1, 12, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(84, 'pants_2.png', 'pants_84', 432.00, 0, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(85, 'dress_3.png', 'dress_85', 300.00, 0, 13, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(86, 'shoes_3.png', 'shoes_86', 124.00, 1, 9, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(87, 'pants_1.png', 'pants_87', 701.00, 0, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(88, 'w_pants_2.png', 'w_pants_88', 458.00, 0, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(89, 'shoes_1.png', 'shoes_89', 251.00, 0, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(90, 'pants_3.png', 'pants_90', 605.00, 1, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(91, 'shoes_2.png', 'shoes_91', 850.00, 0, 15, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(92, 'leggins_3.png', 'leggins_92', 802.00, 1, 6, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(93, 'pants_3.png', 'pants_93', 395.00, 0, 2, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(94, 'w_pants_1.png', 'w_pants_94', 165.00, 0, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(95, 'dress_2.png', 'dress_95', 282.00, 0, 14, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(96, 'pants_2.png', 'pants_96', 3.00, 1, 4, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(97, 'pants_2.png', 'pants_97', 984.00, 1, 8, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(98, 'leggins_3.png', 'leggins_98', 562.00, 1, 11, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 1),
(99, 'w_pants_3.png', 'w_pants_99', 903.00, 1, 10, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2),
(100, 'w_pants_1.png', 'w_pants_100', 817.00, 0, 12, 'Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ', 2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `products_discounts`
--

CREATE TABLE `products_discounts` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `products_gallery`
--

CREATE TABLE `products_gallery` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_gallery` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `products_gallery`
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
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `carts_products`
--
ALTER TABLE `carts_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `customers_uids`
--
ALTER TABLE `customers_uids`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `dia_navbar`
--
ALTER TABLE `dia_navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `dia_tables`
--
ALTER TABLE `dia_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `products_discounts`
--
ALTER TABLE `products_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `products_gallery`
--
ALTER TABLE `products_gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pre tabuľku `carts_products`
--
ALTER TABLE `carts_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pre tabuľku `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pre tabuľku `customers_uids`
--
ALTER TABLE `customers_uids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `dia_navbar`
--
ALTER TABLE `dia_navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT pre tabuľku `dia_tables`
--
ALTER TABLE `dia_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pre tabuľku `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pre tabuľku `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pre tabuľku `products_discounts`
--
ALTER TABLE `products_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pre tabuľku `products_gallery`
--
ALTER TABLE `products_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
