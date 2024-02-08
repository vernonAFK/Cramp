-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2024 at 12:24 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(5) NOT NULL,
  `header` text NOT NULL,
  `links` text NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `header`, `links`, `content`, `footer`) VALUES
(1, '\r\n<header>\r\n    <img src=\"img/logo.png\" alt=\"\">\r\n\r\n    <? require_once(\"links.php\") ?>\r\n\r\n    <input type=\"text\" placeholder=\"Поиск...\">\r\n</header>', '\r\n<ul>\r\n    <li><a href=\"\">Эфиры</a></li>\r\n    <li><a href=\"\">Клипы</a></li>\r\n    <li><a href=\"\">Видео</a></li>\r\n</ul>', '\r\n<main>\r\n    <form action=\"user.php\" method=\"POST\" enctype=\"multipart/form-data\">\r\n        <input type=\"text\" name=\"first-name\" placeholder=\"Имя\" maxlength=\"30\" required>\r\n        <input type=\"text\" name=\"last-name\" placeholder=\"Фамилия\" maxlength=\"30\"required>\r\n        <input type=\"date\" name=\"date\" id=\"date\" required>\r\n        <input type=\"text\" name=\"login\" placeholder=\"Логин\" maxlength=\"30\" required>\r\n        <input type=\"password\" name=\"password\" placeholder=\"Пароль\" maxlength=\"30\" required>\r\n        <input type=\"email\" name=\"email\" placeholder=\"Эл.почта\" maxlength=\"45\" required>\r\n        <input type=\"file\" name=\"userpic\" accept=\"image/*\" required>\r\n        <input type=\"submit\">\r\n    </form>\r\n</main>', '\r\n<footer>\r\n    <div>\r\n        CRAMP Транслируйте себя\r\n    </div>\r\n\r\n    <div class=\"email\">\r\n        crampsupport@gmail.com\r\n    </div>\r\n\r\n    <div>\r\n        8 (800) 555 35 35\r\n    </div>\r\n</footer>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `template`
--
ALTER TABLE `template`
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
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
