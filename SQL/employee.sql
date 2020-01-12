-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Jan 12. 16:56
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `path` varchar(30) NOT NULL,
  `filename` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`id`, `name`, `path`, `filename`) VALUES
(1, 'Könyvelő', '../images/', 'accountant.svg'),
(2, 'Mérnök', '../images/', 'architect.svg'),
(3, 'Banki alkalmazott', '../images/', 'banker.svg'),
(4, 'Séf', '../images/', 'chef.svg'),
(5, 'Csapos', '../images/', 'bartender.svg'),
(6, 'Segédmunkás', '../images/', 'construction_worker.svg'),
(7, 'Doktor', '../images/', 'doctor.svg'),
(8, 'Gyári munkás', '../images/', 'factory_worker.svg'),
(9, 'Tűzoltó', '../images/', 'fire_fighter.svg'),
(10, 'Ügyvéd', '../images/', 'lawyer.svg'),
(11, 'IT support', '../images/', 'it_support.svg'),
(12, 'Buszvezető', '../images/', 'bus_driver.svg'),
(13, 'Vezérigazgató', '../IMAGES/', 'ceo.svg'),
(14, 'Tengerész', '../IMAGES/', 'sailor.svg'),
(15, 'Rádiós', '../IMAGES/', 'radio_presenter.svg'),
(16, 'Marketing menedzser', '../IMAGES/', 'marketing.svg'),
(17, 'Termék menedzser', '../IMAGES/', 'product_manager.svg'),
(18, 'Tanár', '../IMAGES/', 'teacher.svg'),
(19, 'Taxi sofőr', '../IMAGES/', 'taxi_driver.svg'),
(20, 'Recepciós', '../IMAGES/', 'receptionist.svg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `path` varchar(30) NOT NULL DEFAULT '../images/',
  `filename` varchar(30) NOT NULL DEFAULT 'business_man.svg',
  `phone_num` varchar(50) NOT NULL DEFAULT '+36 30 345 5233',
  `location` varchar(50) NOT NULL DEFAULT 'Szeged',
  `work_exp` varchar(30) NOT NULL DEFAULT 'Zöldfülű',
  `email` varchar(30) NOT NULL DEFAULT 'email@email.com',
  `born` date DEFAULT NULL,
  `bio` varchar(5000) NOT NULL DEFAULT 'The questions I had didn''t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I''m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can''t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don''t tell me that Democrats won''t defend this country.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `category_id`, `path`, `filename`, `phone_num`, `location`, `work_exp`, `email`, `born`, `bio`) VALUES
(1, 'Michael', 'Smith', 1, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1995-01-01', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(2, 'Susan', 'Barker', 3, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1974-11-05', 'Now, some of you may have heard me talk about the Joshua generation. I\'ve gone to some of the best schools in America and lived in one of the world\'s poorest nations. As a student of history, I also know civilization\'s debt to Islam.'),
(3, 'Robert', 'Tyler', 2, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1992-01-18', 'That they are endowed by their Creator with certain inalienable rights. I am grateful for your hospitality, and the hospitality of the people of Egypt. Each nation gives life to this principle in its own way, grounded in the traditions of its own people.'),
(4, 'Susan', 'Hawthorne', 3, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1978-01-08', 'They know they have to work hard to get ahead - and they want to. Universities and states, including Illinois, are taking part in a divestment campaign to pressure the Sudanese government to stop the killings. It\'s the wisdom Moses imparted to those who would succeed him. Not with so many children to educate, and so many veterans to care for. It\'s a story with a simple truth: that violence is a dead end.'),
(5, 'John', 'Gooding', 4, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1978-06-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(6, 'Helen', 'Fleming', 7, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'helen@emingl.com', '1972-01-27', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(7, 'Chris', 'Tucker', 8, '../images/', 'business_man.svg', '+36 70 330 4299', 'Budapest', 'Zöldfülű', 'chris@tucker.com', '2000-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(8, 'Sarah', 'Parker', 1, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Tapasztalt', 'eee@email.com', '1978-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(9, 'Jane', 'Grossman', 20, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Tapasztalt', 'jane@grolman.com', '1996-01-22', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(10, 'Paula', 'Roberts', 19, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'Paula@email.com', '1952-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(11, 'Thomas', 'Ziegler', 18, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'thom@email.com', '1966-06-05', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(12, 'Samantha', 'Jameson', 16, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'SamaJames@email.com', '1995-01-14', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(13, 'John', 'Blake', 17, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'blake@email.com', '1998-01-02', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(14, 'Cindy', 'Mason', 15, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'cindy@mason.com', '1999-09-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(15, 'Frank', 'Portman', 14, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'wiutch@email.com', '1988-02-01', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(16, 'Theresa', 'Markham', 13, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1978-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(17, 'Beth', 'Fowler', 10, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'beth@email.com', '1978-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(18, 'Rick', 'Tulman', 3, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'lol@email.com', '1974-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(19, 'Rick', 'Sanchez', 12, '../images/', 'business_man.svg', '+36 20 492 5214', 'Budapest', 'Tapasztalt', 'Rick@sachl.com', '1983-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(20, 'Morty', 'Sanchez', 12, '../images/', 'business_man.svg', '+36 20 222 3243', 'Budapest', 'Zöldfülű', 'emmamort@email.com', '1969-02-02', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(21, 'Daniel', 'Lorem', 9, '../images/', 'business_man.svg', '+36 20 222 3243', 'Szeged', 'Tapasztalt', 'Daniel@email.com', '1991-06-18', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(22, 'Jones', 'Freddie', 9, '../images/', 'business_man.svg', '+36 20 222 3243', 'Szentes', 'Tapasztalt', 'Jones@email.com', '1998-08-12', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(23, 'Sanders', 'Terika', 9, '../images/', 'business_woman.svg', '+36 20 431 1235', 'Budapest', 'Zöldfülű', 'Terika@email.com', '1984-03-03', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(24, 'Smith', 'Peterson', 1, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'Smith@email.com', '1993-01-03', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(25, 'Pete', 'Dallas', 1, '../images/', 'business_man.svg', '+36 20 521 1256', 'Budapest', 'Tapasztalt', 'PeteDallas@email.com', '1978-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(26, 'Amy', 'Winehouse', 1, '../images/', 'business_woman.svg', '+36 70 931 5613', 'Szeged', 'Zöldfülű', 'amy@wine.com', '1988-08-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(27, 'Emese', 'Miskolczy', 2, '../images/', 'business_woman.svg', '+36 70 945 9233', 'Szentes', 'Zöldfülű', 'emese@emil.com', '1972-01-09', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(28, 'Aradi', 'Fanni', 2, '../images/', 'business_woman.svg', '+36 70 718 5299', 'Szeged', 'Tapasztalt', 'fanni@aradi.com', '1998-11-18', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(29, 'John', 'Smith', 2, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Tapasztalt', 'john@smith.com', '1999-01-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(30, 'John ', 'Doe', 4, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Zöldfülű', 'email@email.com', '1988-03-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(31, 'John ', 'Dolores', 5, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Tapasztalt', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(32, 'Marco', 'Polo', 4, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(33, 'Wolfgang', 'Mozart', 4, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(34, 'Chopin', 'Tiesto', 4, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Tapasztalt', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(35, 'Michael', 'Angelo', 5, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(36, 'Kansas', 'Dallas', 5, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Tapasztalt', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(37, 'Chicago', 'Colorado', 5, '../images/', 'business_man.svg', '+36 30 345 9999', 'Budapest', 'Zöldfülű', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(38, 'So', 'Many', 5, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Tapasztalt', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(39, 'Sok', 'Adat', 6, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(40, 'Johny', 'Bonny', 11, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Tapasztalt', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(41, 'Jacob', 'Cristos', 11, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Zöldfülű', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(42, 'John ', 'Doe', 1, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Pályakezdő', 'email@email.com', '1988-03-08', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(43, 'Helen', 'Ignácz', 1, '../images/', 'business_woman.svg', '+36 30 345 5233', 'Szentes', 'Pályakezdő', 'helen@emingl.com', '1972-01-27', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(44, 'Josef', 'Stalin', 6, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Pályakezdő', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(45, 'Vladimir', 'Lenin', 14, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szentes', 'Pályakezdő', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(46, 'Karl', 'Marx', 11, '../images/', 'business_man.svg', '+36 30 345 5233', 'Budapest', 'Pályakezdő', 'email@email.com', NULL, 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(47, 'Doe', 'John', 3, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '2020-01-09', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(48, 'Test', 'Name', 12, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Pályakezdő', 'email@email.com', '1988-01-16', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(49, 'Lorem', 'Ipsum', 16, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Zöldfülű', 'email@email.com', '1975-01-22', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.'),
(50, 'Makaveli', 'Johnson', 6, '../images/', 'business_man.svg', '+36 30 345 5233', 'Szeged', 'Pályakezdő', 'email@email.com', '1996-01-14', 'The questions I had didn\'t magically disappear. Our conscience cannot rest until we not only secure our borders, but give the 12 million undocumented immigrants in this country a chance to earn their citizenship by paying a fine and waiting in line behind all those who came here legally. I\'m hearing from progressives who understand that if we want to communicate our hopes and values to Americans, we can\'t abandon the field of religious discourse. What is that promise? Michelle and I are only here tonight because we were given a chance at an education. So don\'t tell me that Democrats won\'t defend this country.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'sze8torada', 'jelszo');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
