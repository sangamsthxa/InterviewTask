-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 05:03 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `person_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collateral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scanned_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scanned_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scanned_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_initial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scanned_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scanned_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_initial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collateral` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scanned_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `event_name`, `scanned_date`, `scanned_time`, `first_name`, `middle_initial`, `last_name`, `email`, `email2`, `company`, `job_title`, `address1`, `address2`, `address3`, `city`, `state_id`, `zip`, `country_id`, `phone_number`, `phone2_number`, `fax_number`, `question`, `response`, `note`, `collateral`, `qualified`, `scanned_by`) VALUES
(1, '2019 Microsoft Inspire', '7/15/2019', '14:11:01', 'DZMITRY', '', 'ANTSIPENKA', 'a-dmanti@microsoft.com', '', 'Microsoft', 'Partner Technical Strategist ', 'Pobediteley ave. 106', '', '', 'Minsk', 'Minsk', '220025', 'Belarus', '3.75E+11', '3.75E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(2, '2019 Microsoft Inspire', '7/17/2019', '14:27:14', 'Gabrielle ', '', 'Vikman', 'a-gavikm@microsoft.com', '', 'Microsoft ', 'Partner Channel Marketing Manager ', 'Keilalahdentie 2-4', '', '', 'Espoo', '', '2150', 'Finland', '3.58E+11', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(3, '2019 Microsoft Inspire', '7/15/2019', '14:20:10', 'Andrew', '', 'Brownlie ', 'a.brownlie@frankgroup.com', '', 'Nigel Frank International', 'Principle Account Manager', 'Centennium House', '5th Floor', '', 'London', '', 'EC3R6DL', 'United Kingdom', '+44207 337 0852', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(4, '2019 Microsoft Inspire', '7/15/2019', '12:39:48', 'Abdalla', '', 'Amara', 'abdulla.amara@devoteam.com', '', 'Devoteam', 'Senior Partner and Country Manager', 'Riyadh', '', '', 'RIYADH', 'Central Province', '11', 'Saudi Arabia', '9.67E+11', '9.67E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(5, '2019 Microsoft Inspire', '7/16/2019', '10:46:32', 'Abel', '', 'Smit', 'Abel.Smit@techdata.com', '', 'Tech Data', 'Sales Director IoT Solutions ', 'San Francisco Xavier', '11b', '', 'Sant Cugat Del Valles', 'Barcelona', '8172', 'Spain', '34670249455', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(6, '2019 Microsoft Inspire', '7/16/2019', '18:38:26', 'Adam', '', 'Conkle', 'aconkle@microsoft.com', '', 'Microsoft', 'Technical Advisor - Azure Networking', '', '', '', 'Charlotte', 'NC', '', 'United States', '17047377732', '17047377732', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(7, '2019 Microsoft Inspire', '7/15/2019', '15:52:52', 'Adam', '', 'Longacre', 'adam@altariscloud.com', '', 'Altaris Consulting', 'President', '231 East Main Street', '', '', 'Louisville', 'OH', '44641', 'United States', '13302058851', '', '', 'Push for Notes', '', '', '', 'qualified', 'Amanda Delong'),
(8, '2019 Microsoft Inspire', '7/17/2019', '13:40:30', 'Adam', '', 'Cole', 'adam@telagility.biz', '', 'TelAgility - SIPPIO', 'CEO', '326 First St.', 'Ste 24', '', 'Annapolis', 'MD', '21403', 'United States', '4109190357', '4102712570', '', 'Push for Notes', '', 'looking to connect teams voice and partner with DXC. they will add voice to DXC team FoC', '', 'qualified', 'Roger Williams'),
(9, '2019 Microsoft Inspire', '7/15/2019', '12:50:44', 'Adam', '', 'Burke', 'adam_burke@questsys.com', '', 'Quest Media & Supplies, Inc.', 'VP Sales and Partners ', '9000 Foothills Blvd ', '', '', 'Roseville', 'CA', '95762', 'United States', '1 916 342 0043', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(10, '2019 Microsoft Inspire', '7/16/2019', '9:14:14', 'Adrienne', '', 'Doyle', 'adrienne.doyle@dxc.com', '', 'DXC.technology', 'Regional Sales Director', '1 Pancreas Square', '', '', 'London', 'London', 'N1C 4AG', 'United Kingdom', '0044 7790493691', '0044 7790493691', '', 'Push for Notes', '', '', '', 'disqualified', 'James Finnegan'),
(11, '2019 Microsoft Inspire', '7/17/2019', '11:04:41', 'Agnes', '', 'SZANTO', 'agszanto@microsoft.com', '', 'Microsoft', 'OCP&SMC Sales Excellence Lead', '', '', '', 'Budapest', '', '', 'Hungary', '36317802010', '36317802010', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(12, '2019 Microsoft Inspire', '7/17/2019', '13:16:20', 'Ahsim', '', 'Nisar', 'ahni@microsoft.com', '', 'Microsoft', 'Technology Solutions Professional', '', '', '', 'Kuala Lumpur', '', '', 'Malaysia', '60327778873', '60173960846', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(13, '2019 Microsoft Inspire', '7/16/2019', '10:06:18', 'Alan', '', 'Sizemore', 'alan.sizemore@wipro.com', '', 'Wipro Technologies', 'Managing Partner, Cybersecurity Advisory', '5445 Legacy Drive', 'Suite 300', '', 'Plano', 'TX', '75024', 'United States', '-9408672536', '-9408672536', '', 'Notes', '', '', '', 'qualified', 'Laura Jordan'),
(14, '2019 Microsoft Inspire', '7/16/2019', '13:17:33', 'Alasdair', '', 'Hill', 'alasdair.hill@zerto.com', '', 'Zerto', 'EMEA Alliances Manager', '27-43 Wormwood St', '', '', 'Boston', '', 'MA 02210', 'United Kingdom', '4.48E+11', '4.48E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Roger Williams'),
(15, '2019 Microsoft Inspire', '7/15/2019', '18:29:37', 'Alfredo', '', 'Dos Santos', 'aldossa@microsoft.com', '', 'Microsoft', 'Cloud Solution Architect', '', '', '', 'Johannesburg', '', '', 'South Africa', '27645170287', '27645170287', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(16, '2019 Microsoft Inspire', '7/15/2019', '13:15:45', 'Alejandro', '', 'Morales Hermin', 'alejandro.morales@uruit.com', '', 'NearSure / UruIT', 'Director & Dynamics Practice Manager', '26 de marzo ', '3616', '', 'Montevideo', '', '11300', 'Uruguay', '59899297608', '59899297608', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(17, '2019 Microsoft Inspire', '7/15/2019', '11:13:58', 'Alan', '', 'Lupas', 'Alupas@stonedonut.com', '', 'StoneDonut', 'Sales and Marketing Mgr. ', '7650 First Place Suite G', '', '', 'Oakwood Village', 'OH', '44146', 'United States', '01-216-973-9265', '01-216-973-9265', '', 'Push for Notes', '', '', '', 'qualified', 'James Finnegan'),
(18, '2019 Microsoft Inspire', '7/16/2019', '10:21:10', 'Amanda', '', 'DeLong', 'amanda.delong@dxc.com', '', 'DXC Technology', 'Vendor Manager', '7036 S 184th Street', '', '', 'Omaha', 'NE', '68136', 'United States', '4029605963', '4029605963', '', 'Push for Notes', '', '', '', 'disqualified', 'Adrienne Doyle'),
(19, '2019 Microsoft Inspire', '7/15/2019', '12:54:12', 'Amanda', '', 'Zakoor ', 'amanda.zakoor@slalom.com', '', 'Slalom ', 'Alliance Marketing Manager', '8 King St E #2000', '', '', 'Toronto', 'ON', 'M5C 1B5', 'Canada', '613-858-1247', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(20, '2019 Microsoft Inspire', '7/16/2019', '10:55:05', 'Ami', '', 'Arad', 'amarad@microsoft.com', '', 'Microsoft', 'Cloud Specialist', '', '', '', 'Alameda', 'CA', '', 'United States', '14152699250', '14152699250', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(21, '2019 Microsoft Inspire', '7/16/2019', '15:56:07', 'Amit', '', 'Sinha', 'amit@workspan.com', '', 'WorkSpan', 'Founder & Chief Customer Officer ', '950 Tower Lane, Suite 1975', '', '', 'Foster City', 'CA', '94404', 'United States', '6505336552', '', '', 'Push for Notes', '', '', '', 'qualified', 'Chris Knepper'),
(22, '2019 Microsoft Inspire', '7/17/2019', '11:26:53', 'Ammar', '', 'Bacha', 'ammarb@microsoft.com', '', 'Microsoft', 'SR PARTNER DEV MANAGER', 'Dubai Internet City', 'PO Box 52244', '', 'Dubai', '', '52244', 'United Arab Emirates', '9.72E+11', '9.72E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(23, '2019 Microsoft Inspire', '7/16/2019', '9:56:08', 'Ana', '', 'Arreola', 'ana@zohocorp.com', '', 'Site24x7', 'Marketing Manager - US Events', '4141 Hacienda Dr.', '', '', 'Pleasanton', 'CA', '94588', 'United States', '9258725258', '', '', 'Push for Notes', '', '', '', 'qualified', 'Adrienne Doyle'),
(24, '2019 Microsoft Inspire', '7/15/2019', '12:54:33', 'Andrea ', '', 'Lipka', 'andrea.lipka@slalom.com', '', 'Slalom Consulting ', 'Microsoft Alliance Manager', '8 King Street East', 'Suite 2000', '', 'Toronto', 'ON', 'M5C 1B5', 'Canada', '1+ 647-999-1187', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(25, '2019 Microsoft Inspire', '7/16/2019', '12:34:48', 'Andrew', '', 'Kim', 'Andrew.Kim@avalara.com', '', 'Avalara', 'Director, Strategic Alliances', '255 s king st', '', '', 'Seattle', 'WA', '98104', 'United States', '+1 714-383-0771', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(26, '2019 Microsoft Inspire', '7/14/2019', '17:26:09', 'Andrew', '', 'Pordage', 'andrew.pordage@megaport.com', '', 'Megaport', 'Partner Development Manager Cloud - EMEA', '60 Gresham Street', '', '', 'London', '', '', 'United Kingdom', '+44 (0)7814373772', '', '', '', '', '', '', 'qualified', 'Pam Fink'),
(27, '2019 Microsoft Inspire', '7/15/2019', '16:35:43', 'andy', '', 'crawford', 'andy.crawford@turbonomic.com', '', 'Turbonomic', 'Senior Director, Global Alliances', '500 Boylston St 7th Floor,', '', '', 'Boston', 'MA', '2116', 'United States', '4.48E+11', '4.48E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Amanda Delong'),
(28, '2019 Microsoft Inspire', '7/16/2019', '17:07:30', 'Andrew', '', 'Heddle', 'andy.heddle@vml.com', '', 'VMLY&R', 'Group Director', '4255 Jefferson Street', 'Cottagewood', '', 'Excelsior', 'MN', '55331', 'United States', '6129908510', '', '', 'Push for Notes', '', 'looking for retail practice 612 669 8901', '', 'qualified', 'Amanda Delong'),
(29, '2019 Microsoft Inspire', '7/17/2019', '13:31:19', 'Andy', '', 'Clayton-Smith', 'andy@technologyrecord.com', '', 'The Record', 'Executive Editor', 'Tudor House', '6 Friar Lane', '', 'Leicester', 'Other', 'LE1 5RA', 'United Kingdom', '44 116 222 9900', '44 790 471 4615', '', 'Push for Notes', '', 'Would like to connect with Pam Fink', '', 'qualified', 'Roger Williams'),
(30, '2019 Microsoft Inspire', '7/15/2019', '18:17:45', 'Angela', '', 'Thompson', 'angelt@microsoft.com', '', 'Microsoft', 'Azure SSP', '', '', '', 'Grand Rapids', 'MI', '', 'United States', '2488272002', '6164431742', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(31, '2019 Microsoft Inspire', '7/17/2019', '12:56:31', 'Anna', '', 'Lemyakina', 'annlem@microsoft.com', '', 'Microsoft Rus', 'Partners Business Development Manager ', 'Russia, Moscow, Krylatskaya 17.1', '', '', 'Moscow', '', '', 'Russia', '79032727428', '79032727428', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(32, '2019 Microsoft Inspire', '7/16/2019', '17:34:14', 'Annie', '', 'Shelly', 'anshelly@microsoft.com', '', 'Microsoft', 'Enterprise Channel Manager', '', '', '', 'Clayton', 'IL', '', 'United States', '13142108538', '13142108538', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(33, '2019 Microsoft Inspire', '7/16/2019', '18:05:56', 'Anupama', '', 'Ramabhadran', 'anuram@microsoft.com', '', 'Microsoft', 'Global Partner Dev Manager', '15120 NE 40th Street', '', '', 'REDMOND', 'WA', '98052', 'United States', '14252089162', '14252089162', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(34, '2019 Microsoft Inspire', '7/15/2019', '13:55:08', 'Ariel', '', 'Deligdisch', 'arields@olam.com.py', '', 'Grupo OLAM', 'CEO', 'Aviadores del Chaco 2462.  Edificio Aura.  Piso 7', '', '', 'Asuncion', 'Capital', '1287', 'Paraguay', '59521601929', '5.96E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(35, '2019 Microsoft Inspire', '7/17/2019', '13:18:22', 'Artur', '', 'Vieira', 'arturv@microsoft.com', '', 'Microsoft', 'Architect', '', '', '', 'Lisbon', '', '', 'Portugal', '3.51E+11', '3.52E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(36, '2019 Microsoft Inspire', '7/15/2019', '12:34:53', 'Ashleigh', '', 'Vogstad', 'ash@transcends.ca', '', 'Transcends Marketing', 'CEO', '103-1880 Greer Ave', '', '', 'Vancouver', 'BC', 'V6J1C5', 'Canada', '64245802695', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(37, '2019 Microsoft Inspire', '7/16/2019', '18:05:00', 'Ali', '', 'Shadman', 'ashadman@siriusiq.com', '', 'SiriusIQ', 'Partner', '200 Continental Dr.', 'Suite 401', '', 'Newark', 'DE', '19713', 'United States', '949-421-8305', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(38, '2019 Microsoft Inspire', '7/15/2019', '15:06:19', 'Ash', '', 'Vijay', 'ashv@cloudera.com', '', 'Cloudera', 'Managing Dir', '395 Page Mill Road', '', '', 'Palo Alto', 'CA', '94306', 'United States', '2064092693', '', '', 'Push for Notes', '', '', '', 'qualified', 'Amanda Delong'),
(39, '2019 Microsoft Inspire', '7/16/2019', '18:37:12', 'Autum ', '', 'Grimm ', 'autum@partnertap.com', '', 'Partnertap', 'CRO', '113 cherry street #36244', '', '', 'Seattle ', 'WA', '98104', 'United States', '2064801051', '4255081337', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(40, '2019 Microsoft Inspire', '7/17/2019', '15:50:27', 'Mir Azher', '', 'Ali', 'azali@microsoft.com', '', 'Microsoft', 'Support Engineer', '', '', '', 'Bangalore', '', '', 'India', '9.20E+11', '9.20E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(41, '2019 Microsoft Inspire', '7/17/2019', '12:37:43', 'Barbara', '', 'Colzani', 'barbaco@microsoft.com', '', 'Microsoft srl', 'Senior Partner Development Manager', 'Viale Pasubio 21', '', '', 'Milano', '', '', 'Italy', '3488003745', '3488003745', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(42, '2019 Microsoft Inspire', '7/16/2019', '17:28:48', 'Barb', '', 'Borrowman', 'barbborr@microsoft.com', '', 'Microsoft', 'Partner Technology Strategist', '3601 W. 76th Street', '', '', 'Edina', 'MN', '55435', 'United States', '6513340361', '6513340361', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(43, '2019 Microsoft Inspire', '7/16/2019', '18:05:43', 'Bruce', '', 'Ashmead', 'bashmead@microsoft.com', '', 'Microsoft', 'Solution PDM', '4630 ASTIBLE CT NW', '', '', 'ACWORTH', 'GA', '30102-8132', 'United States', '+1 (678) 4290880', '+1 (678) 4290880', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(44, '2019 Microsoft Inspire', '7/17/2019', '12:46:52', 'Bee Wah', '', 'Lim', 'beeli@microsoft.com', '', 'Microsoft', 'Enterprise Commercial Leader', '', '', '', 'Kuala Lumpur', '', '', 'Malaysia', '60327778888', '60122145338', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(45, '2019 Microsoft Inspire', '7/15/2019', '14:54:40', 'Ben', '', 'James', 'ben.james@ttsolutions.com.au', '', 'TTS', 'Practice Manager', 'PO Box 248', '', '', 'Tugun', 'QL', '4224', 'Australia', '6.10E+11', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(46, '2019 Microsoft Inspire', '7/16/2019', '9:32:38', 'Brendan', '', 'Francis', 'bfrancis@fultonfrancis.com', '', 'Fulton Francis', 'CEO', '117 Old Pittwater Road', 'Suite 234', '', 'Brookvale', 'NSW', '2100', 'Australia', '+1 917 340 1337', '+64 21 340 489', '', 'Push for Notes', '', '', '', 'qualified', 'Adrienne Doyle'),
(47, '2019 Microsoft Inspire', '7/15/2019', '12:11:24', 'Bjarne', '', 'Aarup', 'bjarne.aarup@eg.dk', '', 'DXC Eclipse Nordic', 'Director', 'Industrivej Syd 13 C', '', '', 'Herning', 'Denmark', '8600', 'Denmark', '4520859290', '4520859290', '', 'Push for Notes', '', '', '', 'qualified', 'Bjarne Aarup'),
(48, '2019 Microsoft Inspire', '7/16/2019', '14:17:53', 'Bjarke', '', 'Larsen', 'bjlarsen@microsoft.com', '', 'Microsoft', 'Inside Solution Specialist', '', '', '', 'Dublin', '', '', 'Ireland', '4561780667', '4561780667', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(49, '2019 Microsoft Inspire', '7/16/2019', '18:58:00', 'Bob', '', 'Ellsworth', 'bobell@microsoft.com', '', 'Microsoft', 'Director Strategic Workloads', '', '', '', 'REDMOND', 'WA', '', 'United States', '14257075280', '14256818855', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(50, '2019 Microsoft Inspire', '7/16/2019', '14:26:00', 'Brendan', '', 'Fazel', 'brendan.fazel@exigotech.com.au', '', 'Exigo Tech Pty Ltd', 'GM Operations', 'Suite 104, 460 Church Street', '', '', 'Parramatta', 'NSW', '2150', 'Australia', '61439338514', '61439338514', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(51, '2019 Microsoft Inspire', '7/16/2019', '18:37:43', 'Brian', '', 'Loeffler', 'brianlo@microsoft.com', '', 'Microsoft', 'Cloud Solution Architect', '', '', '', 'Tempe', 'AZ', '', 'United States', '6027225427', '6027225427', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(52, '2019 Microsoft Inspire', '7/17/2019', '15:48:53', 'Bruno', '', 'Marcantonio', 'brmarca@microsoft.com', '', 'Microsoft', 'Account Executive', '', '', '', 'Rome', '', '', 'Italy', '3.91E+11', '3.93E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(53, '2019 Microsoft Inspire', '7/16/2019', '17:57:35', 'Bryan', '', 'Walsh', 'Bryan.walsh@dell.com', '', 'Dell Technologies', 'Storage & Solutions Marketing', '95 Mount Hope St', '', '', 'North Attleboro', 'MA', '2760', 'United States', '17742259020', '17742259020', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(54, '2019 Microsoft Inspire', '7/17/2019', '14:16:01', 'BULENT', '', 'DAL', 'bulent.dal@obase.com', '', 'OBASE', 'CEO', 'OBASE INC. 1775 Tysons Blvd 5th Floor', '', '', 'TYSONS', 'VA', '22102', 'United States', '7033739869', '', '', 'Push for Notes', '', 'retail boutique firm', '', 'qualified', 'Kevin Block'),
(55, '2019 Microsoft Inspire', '7/15/2019', '14:20:34', 'Carlie', '', 'Devlin', 'c.devlin@nigelfrank.com', '', 'Nigel Frank International ', 'Manager - Cloud & Security ', 'St Nicholas\' St', '', '', 'Newcastle Upon Tyne, ', '', 'NE1 1RF', 'United Kingdom', '+44 (0)191 338 7555', '4.48E+12', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(56, '2019 Microsoft Inspire', '7/17/2019', '12:16:24', 'Christine', '', 'Alford', 'calford@microsoft.com', '', 'Microsoft Corporation', 'Director, Marketplace', '1 Microsoft Way', '', '', 'Redmond', 'WA', '98054', 'United States', '2063515054', '2063515054', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(57, '2019 Microsoft Inspire', '7/16/2019', '13:52:05', 'Cameron', '', 'Sharp', 'cam.sharp@cloudreach.com', '', 'Cloudreach', 'Partner Business Development Manager - Microsoft', '1679 S DuPont Highway', 'Suite 100', '', 'Dover', 'DE', '19901', 'United States', '646-899-2408', '646-899-2408', '', 'Push for Notes', '', '', '', 'qualified', 'Bjarne Aarup'),
(58, '2019 Microsoft Inspire', '7/16/2019', '18:12:02', 'Carmel', '', 'Mosser', 'CAMOSSER@microsoft.com', '', 'Microsoft Australia', 'PARTNER DEVELOPMENT MANAGER', '', '', '', '', '', '', 'Australia', '61 428 652 057', '61 428 652 057', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(59, '2019 Microsoft Inspire', '7/16/2019', '17:57:29', 'Cassandra', '', 'Ashworth', 'cashworth@dxc.com', '', 'DXC Technoloay', 'Director, Alliance Sales - A&NZ', 'Level 19', '360 Collins Street', '', 'Melbourne', 'VIC', '3000', 'Australia', '61 430 455 198', '61 430 455 198', '', 'Push for Notes', '', '', '', 'disqualified', 'Pam Fink'),
(60, '2019 Microsoft Inspire', '7/16/2019', '18:37:24', 'Cassandra', '', 'Gholston', 'cassandra@partnertap.com', '', 'PartnerTap ', 'CEO', '113 Cherry Street #36244', '', '', 'Seattle', 'WA', '98104-2205', 'United States', '2067780971', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(61, '2019 Microsoft Inspire', '7/15/2019', '14:22:03', 'Cathy', '', 'Tsai', 'cathyt@systexsoftware.com.tw', '', 'SYSTEX Software & Service Corporation', 'Senior sales Director', '17F.,No 100,Sec.2,Roosevelt Rd.,', '', '', 'Taipei', '', '', 'Taiwan', '-773', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(62, '2019 Microsoft Inspire', '7/17/2019', '15:49:01', 'Carlos', '', 'Umana Hernandez', 'caumanah@microsoft.com', '', 'Microsoft', 'Inside Sales Representative', '', '', '', 'San Jose', '', '', 'Costa Rica', '50641160967', '50689700348', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(63, '2019 Microsoft Inspire', '7/15/2019', '13:24:56', 'Christiano', '', 'Gherardini', 'cgherardini@turnkeytec.com', '', 'Turnkey Technologies, Inc.', 'Owner/CEO', '14 Research Park Drive', '', '', 'Saint Charles', 'MO', '63304', 'United States', '636-237-2270', '314-308-3996', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(64, '2019 Microsoft Inspire', '7/16/2019', '9:48:17', 'Chad', '', 'Vander Wilt', 'chad.vanderwilt@knowledgelake.com', '', 'KnowledgeLake', 'Business Development Manager', '6 City Place Drive, Suite 500', '', '', 'SAINT LOUIS', 'MO', '63141', 'United States', '8888980555', '', '', 'Push for Notes', '', '', '', 'qualified', 'James Finnegan'),
(65, '2019 Microsoft Inspire', '7/16/2019', '9:09:09', 'Charles', '', 'Hamilton', 'chamilton21@dxc.com', '', 'DXC Eclipse ', 'Sales Director', '135 King St', '', '', 'Sydney', 'NSW', '2046', 'Australia', '+61 407 181 484', '+61 407 181 484', '', 'Push for Notes', '', '', '', 'disqualified', 'Adrienne Doyle'),
(66, '2019 Microsoft Inspire', '7/16/2019', '14:09:19', 'Charlie', '', 'Mitchell', 'charlie.mitchell@livearena.com', '', 'LiveArena Broadcast AB', 'Head of Sales North America', '17220 SW 108th Ave', '', '', 'Tualatin', 'OR', '97062', 'United States', '1310 308-8970', '+1 310 308 8970', '', 'Push for Notes', '', '', '', 'qualified', 'Bjarne Aarup'),
(67, '2019 Microsoft Inspire', '7/15/2019', '16:31:50', 'Chris', '', 'Generalis', 'chris.generalis@celigo.com', '', 'Celigo', 'VP, Alliances & Business Development', '1820 Gateway Drive, Ste. 260', '', '', 'San Mateo', 'CA', '94404', 'United States', '16505790210', '', '', 'Push for Notes', '', '', '', 'qualified', 'Amanda Delong'),
(68, '2019 Microsoft Inspire', '7/15/2019', '15:02:32', 'Chris', '', 'van Staden', 'chris.staden@citixsys.com', '', 'CitiXsys - iVend Retail', 'Channel Sales Director - North America', 'One Rockefeller Plaza, 11th Floor', '', '', 'New York', 'NY', '10020', 'United States', '3106230643', '3106230643', '', 'Push for Notes', '', '', '', 'qualified', 'Amanda Delong'),
(69, '2019 Microsoft Inspire', '7/17/2019', '11:43:54', 'Christer', '', 'Johansson', 'christer.johansson@preciofishbone.se', '', 'Precio Fishbone', 'CEO', '', '', '', '', '', '', 'Sweden', '730788040', '730788040', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(70, '2019 Microsoft Inspire', '7/16/2019', '18:54:12', 'Christine', '', 'Lehmann', 'christine.lehmann@ge.com', '', 'GE Healthcare', 'Director-Strategic Technology Alliances', '500 W Monroe', '', '', 'Chicago', 'IL', '60661', 'United States', '12625050967', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(71, '2019 Microsoft Inspire', '7/15/2019', '18:19:20', 'Claudio', '', 'Aquevedo del Pozo', 'claqueve@microsoft.com', '', 'Microsoft', 'Consultant', '', '', '', 'Santiago', '', '', 'Chile', '56965295300', '56942876834', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(72, '2019 Microsoft Inspire', '7/16/2019', '18:45:11', 'Simon', '', 'Clephan', 'clephan@igel.com', '', 'IGEL Technology', 'VP Strategic Alliances', '540 Howard Street', '', '', 'San Francisco', 'CA', '94105', 'United States', '19255488049', '-9521', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(73, '2019 Microsoft Inspire', '7/15/2019', '18:28:01', 'Cleve', '', 'Lewis', 'clewis@pax8.com', '', 'Pax8', 'VP of Strategic Accounts ', '6400 Fiddlers Green Circle', '', '', 'Greenwood Village', 'CO', '80111', 'United States', '3032460600', '3032460600', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(74, '2019 Microsoft Inspire', '7/16/2019', '17:58:26', 'Christina', '', 'Neary', 'cneary3@dxc.com', '', 'DXC Technology', 'Global Industry Partner Executive', 'PO Box 1603', '', '', 'Litchfield', 'CT', '6759', 'United States', '8608063368', '8608063368', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(75, '2019 Microsoft Inspire', '7/15/2019', '15:34:57', 'Collin', '', 'McGaughey', 'collinmcgaughey@gmail.com', '', 'Aventri', 'OSS', '', '', '', '', '', '', 'United States', '17022348628', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(76, '2019 Microsoft Inspire', '7/17/2019', '12:37:53', 'Claudia', '', 'Poloni', 'cpoloni@microsoft.com', '', 'Microsoft', 'Cloud Enablement Engagement Manager', '', '', '', 'Milan', '', '', 'Italy', '3.00E+11', '3.93E+11', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(77, '2019 Microsoft Inspire', '7/16/2019', '10:46:44', 'Craig', '', 'Smith', 'craig.smith@techdata.com', '', 'Tech Data', 'VP Analytics & IoT', 'Capital Building', '', '', 'Bracknell', 'Hampshire', '', 'United Kingdom', '4.48E+11', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(78, '2019 Microsoft Inspire', '7/16/2019', '17:42:57', 'Craig', '', 'Hendrickson', 'crhendri@microsoft.com', '', 'Microsoft', 'Solution Specialist', '', '', '', 'Denver', 'CO', '', 'United States', '3038462714', '3035015422', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink'),
(79, '2019 Microsoft Inspire', '7/16/2019', '17:47:11', 'Casey', '', 'Shea', 'cshea7@dxc.com', '', 'DXC', 'VP Business Development', '49 O\'Neill Drive', '', '', 'Belleville', 'ON', 'K8N4Z4', 'Canada', '9056164388', '', '', 'Push for Notes', '', '', '', 'qualified', 'Pam Fink');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKexiduoieigs1ypqrfppxcvsvj` (`person_detail_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `FKexiduoieigs1ypqrfppxcvsvj` FOREIGN KEY (`person_detail_id`) REFERENCES `detail` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
