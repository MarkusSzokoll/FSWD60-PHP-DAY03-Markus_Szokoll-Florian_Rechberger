-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 13. Mrz 2019 um 09:40
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr09_markus_szokoll_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `branch_office`
--

CREATE TABLE `branch_office` (
  `branch_office_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `branch_office`
--

INSERT INTO `branch_office` (`branch_office_id`, `name`, `address`) VALUES
(1, 'Office-1', 'Address of office 1'),
(2, 'Office-2', 'Address of office 2'),
(3, 'Office-3', 'Address of office 3'),
(4, 'Office-4', 'Address of office 4'),
(5, 'Office-5', 'Address of office 5'),
(6, 'Office-6', 'Address of office 6'),
(7, 'Office-7', 'Address of office 7'),
(8, 'Office-8', 'Address of office 8'),
(9, 'Office-9', 'Address of office 9'),
(10, 'Webshop', 'WWW - Internet'),
(11, 'Office-10', 'Address of office 10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `vin` varchar(50) NOT NULL,
  `type` varchar(200) NOT NULL,
  `color` varchar(50) NOT NULL,
  `fk_manufacturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_id`, `vin`, `type`, `color`, `fk_manufacturer_id`) VALUES
(1, '33r421dfdsf', 'Opel Corsa', 'red', 1),
(2, '33r422dfdsf', 'Honda Civic', 'red', 2),
(3, '33r342dfdsf', 'BMW Ca brio', 'green', 3),
(4, '33r442dfdsf', 'Ferrari F-40', 'red', 4),
(5, '33r425dfdsf', 'Porsche', 'red', 5),
(6, '33r46dfdsf', 'VW', 'blue', 5),
(7, '33r42d7fdsf', 'Nissan', 'red', 6),
(8, '33r428dfdsf', 'Nissan', 'red', 6),
(9, '33r42d9fdsf', 'Volvo', 'red', 6),
(10, '33r042dfdsf', 'VW', 'red', 7),
(11, '33r42dfds1f', 'Honda Concerto', 'white', 7),
(12, '33r42dfds2f', 'Audi A8', 'red', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `charge`
--

CREATE TABLE `charge` (
  `charge_id` int(11) NOT NULL,
  `charge_name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `charge`
--

INSERT INTO `charge` (`charge_id`, `charge_name`, `price`, `type`) VALUES
(1, 'fuel', 10, 'standard'),
(2, 'cleaning', 2, 'standard'),
(3, 'repair', 8, 'standard'),
(4, 'damage', 100, 'additional');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `age`) VALUES
(1, 'Markus', 42),
(2, 'Hugo', 22),
(3, 'Max', 24),
(4, 'Sabine', 62),
(5, 'Sonja', 45);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `SSno` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`employee_id`, `SSno`, `name`) VALUES
(1, '1234-111111', 'Hugo');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee_office`
--

CREATE TABLE `employee_office` (
  `fk_employee_id` int(11) NOT NULL,
  `fk_branch_office_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `fk_reservation_id` int(11) NOT NULL,
  `invoice_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `invoice_charges`
--

CREATE TABLE `invoice_charges` (
  `fk_invoice_id` int(11) NOT NULL,
  `fk_charge_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `address`) VALUES
(1, 'manu1', 'manu1_address'),
(2, 'manu2', 'manu2_address'),
(3, 'manu3', 'manu3_address'),
(4, 'manu4', 'manu4_address'),
(5, 'manu5', 'manu5_address'),
(6, 'manu6', 'manu6_address'),
(7, 'manu7', 'manu7_address'),
(8, 'manu8', 'manu8_address');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `start_location` varchar(200) NOT NULL,
  `end_location` varchar(200) NOT NULL,
  `start_dt` datetime NOT NULL,
  `end_dt` datetime NOT NULL,
  `fk_customer_id` int(11) NOT NULL,
  `fk_car_id` int(11) NOT NULL,
  `fk_branch_office_id` int(11) NOT NULL,
  `fk_employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `branch_office`
--
ALTER TABLE `branch_office`
  ADD PRIMARY KEY (`branch_office_id`);

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `fk_manufacturer_id` (`fk_manufacturer_id`);

--
-- Indizes für die Tabelle `charge`
--
ALTER TABLE `charge`
  ADD PRIMARY KEY (`charge_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indizes für die Tabelle `employee_office`
--
ALTER TABLE `employee_office`
  ADD PRIMARY KEY (`fk_employee_id`,`fk_branch_office_id`),
  ADD KEY `fk_branch_office_id` (`fk_branch_office_id`);

--
-- Indizes für die Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `fk_reservation_id` (`fk_reservation_id`);

--
-- Indizes für die Tabelle `invoice_charges`
--
ALTER TABLE `invoice_charges`
  ADD PRIMARY KEY (`fk_invoice_id`,`fk_charge_id`),
  ADD KEY `fk_charge_id` (`fk_charge_id`);

--
-- Indizes für die Tabelle `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_branch_office_id` (`fk_branch_office_id`),
  ADD KEY `fk_employee_id` (`fk_employee_id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`fk_manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`);

--
-- Constraints der Tabelle `employee_office`
--
ALTER TABLE `employee_office`
  ADD CONSTRAINT `employee_office_ibfk_1` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `employee_office_ibfk_2` FOREIGN KEY (`fk_branch_office_id`) REFERENCES `branch_office` (`branch_office_id`);

--
-- Constraints der Tabelle `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`fk_reservation_id`) REFERENCES `reservation` (`reservation_id`);

--
-- Constraints der Tabelle `invoice_charges`
--
ALTER TABLE `invoice_charges`
  ADD CONSTRAINT `invoice_charges_ibfk_1` FOREIGN KEY (`fk_invoice_id`) REFERENCES `invoice` (`invoice_id`),
  ADD CONSTRAINT `invoice_charges_ibfk_2` FOREIGN KEY (`fk_charge_id`) REFERENCES `charge` (`charge_id`);

--
-- Constraints der Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`fk_branch_office_id`) REFERENCES `branch_office` (`branch_office_id`),
  ADD CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
