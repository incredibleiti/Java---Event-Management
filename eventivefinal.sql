-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 06:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventivefinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(8) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_age` int(2) NOT NULL,
  `admin_contactFKEY` int(10) NOT NULL,
  `admin_qual` varchar(10) NOT NULL,
  `admin_exp` int(2) NOT NULL,
  `admin_gender` varchar(6) NOT NULL,
  `admin_roleFKEY` varchar(5) NOT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_age`, `admin_contactFKEY`, `admin_qual`, `admin_exp`, `admin_gender`, `admin_roleFKEY`, `password`) VALUES
(11111, 'sanjal', 21, 1, 'MCS', 2, 'female', '1', 'sanjal123'),
(11112, 'hema', 23, 2, 'msc', 3, 'female', '1', 'hema123'),
(11113, 'avinash', 22, 0, 'mca', 5, 'male', '1', 'avinash123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_contact`
--

CREATE TABLE `admin_contact` (
  `admin_contactKey` int(8) NOT NULL,
  `admin_email` varchar(20) NOT NULL,
  `admin_phno` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_contact`
--

INSERT INTO `admin_contact` (`admin_contactKey`, `admin_email`, `admin_phno`) VALUES
(1, 'sanjal@gmail.com', 52623526),
(2, 'mayank@gmail.com', 21334345);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ap_id` int(8) NOT NULL,
  `cust_id` int(8) NOT NULL,
  `app_date` varchar(20) NOT NULL,
  `app_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`ap_id`, `cust_id`, `app_date`, `app_time`) VALUES
(10, 0, '2020-02-02', '11:30'),
(11, 0, '2020-02-23', '12:30'),
(12, 18, '2020-02-25', '12:30'),
(13, 18, '2019-04-05', '05:56'),
(14, 18, '2020-02-11', '12:39'),
(15, 18, '2020-03-15', '22:05'),
(16, 0, '2020-04-09', '14:30'),
(17, 0, '2020-04-20', '09:30'),
(18, 0, '2021-03-31', '16:41');

-- --------------------------------------------------------

--
-- Table structure for table `award_ceremonies`
--

CREATE TABLE `award_ceremonies` (
  `award_id` int(8) NOT NULL,
  `ap_id` int(8) NOT NULL,
  `venueFKEY` int(8) NOT NULL,
  `caterersFKEY` int(8) NOT NULL,
  `transportFKEY` int(8) NOT NULL,
  `decorsFKEY` int(8) NOT NULL,
  `extra_requirements` text NOT NULL,
  `award_type` varchar(20) NOT NULL,
  `Occasion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award_ceremonies`
--

INSERT INTO `award_ceremonies` (`award_id`, `ap_id`, `venueFKEY`, `caterersFKEY`, `transportFKEY`, `decorsFKEY`, `extra_requirements`, `award_type`, `Occasion`) VALUES
(1, 66, 11, 31, 66, 35, 'red carpet\ntwo mices\n', 'cinemaawards', 'siima');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(8) NOT NULL,
  `bill_custname` varchar(10) NOT NULL,
  `event_id` int(8) DEFAULT NULL,
  `bill_TimingsFKEY` int(4) NOT NULL,
  `Item_slected` varchar(20) NOT NULL,
  `balance` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_custname`, `event_id`, `bill_TimingsFKEY`, `Item_slected`, `balance`) VALUES
(1, 'customer 1', 1, 1, 'Item 1', 300),
(2, 'customer 2', 2, 2, 'Item 2', 890);

-- --------------------------------------------------------

--
-- Table structure for table `bill_timings`
--

CREATE TABLE `bill_timings` (
  `bill_timeid` int(8) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_day` varchar(10) NOT NULL,
  `bill_timings` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_timings`
--

INSERT INTO `bill_timings` (`bill_timeid`, `bill_date`, `bill_day`, `bill_timings`) VALUES
(1, '2021-04-01', 'Thursday', '11:00 '),
(2, '2021-04-02', 'Friday', '11:00');

-- --------------------------------------------------------

--
-- Table structure for table `caterers`
--

CREATE TABLE `caterers` (
  `cater_id` int(8) NOT NULL,
  `cat_companyname` varchar(10) NOT NULL,
  `catererstype` varchar(20) NOT NULL,
  `caterers_addressFKEY` int(4) NOT NULL,
  `cat_staffno` int(5) NOT NULL,
  `cat_foodcuisine` varchar(30) NOT NULL,
  `cat_menuselectionFKEY` varchar(10) NOT NULL,
  `cat_priceFKEY` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caterers`
--

INSERT INTO `caterers` (`cater_id`, `cat_companyname`, `catererstype`, `caterers_addressFKEY`, `cat_staffno`, `cat_foodcuisine`, `cat_menuselectionFKEY`, `cat_priceFKEY`) VALUES
(12, 'srs', 'luxury', 1, 12, 'South Indian', '1', 1),
(13, 'oil', 'luxury', 2, 12, 'North Indian', '2', 2),
(14, 'AVSandsons', 'luxury', 3, 10, 'Mexican', '3', 3),
(15, 'sis', 'luxury', 4, 11, 'North Indian', '4', 4),
(16, 'wer', 'luxury', 5, 90, 'North Indian', '5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `caterers_address`
--

CREATE TABLE `caterers_address` (
  `cat_addrid` int(11) NOT NULL,
  `cat_street` varchar(40) NOT NULL,
  `cat_city` varchar(30) NOT NULL,
  `cat_state` varchar(30) NOT NULL,
  `cat_zip` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caterers_address`
--

INSERT INTO `caterers_address` (`cat_addrid`, `cat_street`, `cat_city`, `cat_state`, `cat_zip`) VALUES
(24, 'kormangla', 'bangalore', 'karntaka', 890056),
(25, 'jks', 'bangalore', 'karnataka', 670078),
(26, 'basavanagudi', 'banglore', 'karnataka', 560028),
(27, 'ubcity', 'bang', 'ka', 14141),
(28, 'long', 'distance', 'bangalore', 45231);

-- --------------------------------------------------------

--
-- Table structure for table `caterers_menuselection`
--

CREATE TABLE `caterers_menuselection` (
  `menu_id` int(8) NOT NULL,
  `menu_breakfast` varchar(50) NOT NULL,
  `menu_lunch` varchar(50) NOT NULL,
  `menu_snack` varchar(50) NOT NULL,
  `menu_dinner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caterers_menuselection`
--

INSERT INTO `caterers_menuselection` (`menu_id`, `menu_breakfast`, `menu_lunch`, `menu_snack`, `menu_dinner`) VALUES
(24, 'dosa,idli,vada,sambar', 'rice,sambar,lemon rice', 'bhel', 'halwa,aloo,pulav,rice,rasam'),
(25, 'idli,vada,pongal,carrot halwa', 'halwa,aloo,pulav,rice,rasam', 'bonda', 'puri,sagu,pulav,rice'),
(26, 'dosa,idli,vada,sambar', 'rice,sambar,lemon rice', 'bhel', 'halwa,aloo,pulav,rice,rasam'),
(27, 'none', 'puri,sagu,pulav,rice', 'samosa', 'none'),
(28, 'idli,vada,pongal,carrot halwa', 'halwa,aloo,pulav,rice,rasam', 'bonda', 'puri,sagu,pulav,rice');

-- --------------------------------------------------------

--
-- Table structure for table `caterers_price`
--

CREATE TABLE `caterers_price` (
  `cat_priceid` int(8) NOT NULL,
  `price_perplate` int(3) NOT NULL,
  `capacity` int(3) NOT NULL,
  `total_eprice` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caterers_price`
--

INSERT INTO `caterers_price` (`cat_priceid`, `price_perplate`, `capacity`, `total_eprice`) VALUES
(23, 89, 20, 1780),
(24, 12, 20, 240),
(25, 350, 30, 10500),
(26, 12, 22, 264),
(27, 780, 20, 15600);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `cust_age` int(2) NOT NULL,
  `cust_idproof` varchar(20) NOT NULL,
  `cust_eventname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_age`, `cust_idproof`, `cust_eventname`, `email`, `phone`) VALUES
(14, 'jayram ', 21, '5865754', 'we', 'aarna@g.com', '8867252656'),
(15, 'keerthi', 21, '431534', 'wedding', 'keerthi@gmail.com', '7259279585'),
(16, 'jayram ', 40, '7687162', 'blaa', 'jack@gmail.com', '8971715217'),
(17, 'sunaina', 21, '651241', 'wedding', 'sunaina@gmail.com', '9902837799'),
(18, 'shankar', 21, '4625', 'wedding', 'shanakar@gmail.com', '8884233310'),
(19, 'sanjal donthi', 21, '12345454534222', 'wedd', 'sanjal.donthi@gmail.com', '8867252656');

-- --------------------------------------------------------

--
-- Table structure for table `decors`
--

CREATE TABLE `decors` (
  `decor_id` int(8) NOT NULL,
  `basic_charges` int(6) NOT NULL,
  `decor_name` varchar(20) NOT NULL,
  `decor_type` varchar(10) NOT NULL,
  `decor_extraFKEY` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decors`
--

INSERT INTO `decors` (`decor_id`, `basic_charges`, `decor_name`, `decor_type`, `decor_extraFKEY`) VALUES
(62, 32000, 'luxury', 'luxury', 1),
(63, 32000, 'luxury', 'luxury', 2),
(64, 32000, 'luxury', 'luxury', 3),
(65, 32000, 'luxury', 'luxury', 4),
(66, 32000, 'luxury', 'luxury', 5);

-- --------------------------------------------------------

--
-- Table structure for table `decor_extra`
--

CREATE TABLE `decor_extra` (
  `dextkey` int(11) NOT NULL,
  `extra_requirements` varchar(50) NOT NULL,
  `extra_reqcharges` int(6) NOT NULL,
  `billexre` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decor_extra`
--

INSERT INTO `decor_extra` (`dextkey`, `extra_requirements`, `extra_reqcharges`, `billexre`) VALUES
(62, 'Flowers', 100, 300),
(63, 'Show pieces', 200, 2000),
(64, 'Show pieces', 200, 1600),
(65, 'Candles', 350, 350),
(66, 'Candles', 350, 350);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(8) NOT NULL,
  `employee_name` varchar(20) NOT NULL,
  `employee_age` int(2) NOT NULL,
  `employee_qual` varchar(10) NOT NULL,
  `emp_contactFKEY` int(3) NOT NULL,
  `emp_exp` int(2) NOT NULL,
  `emp_gender` varchar(6) NOT NULL,
  `roleFKEY` int(8) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_age`, `employee_qual`, `emp_contactFKEY`, `emp_exp`, `emp_gender`, `roleFKEY`, `password`) VALUES
(122, 'keerthi', 23, 'msw', 1, 6, 'female', 2, 'keerthi123'),
(123, 'sunaina', 22, 'msc', 2, 5, 'female', 2, 'sunaina123');

-- --------------------------------------------------------

--
-- Table structure for table `employee salary`
--

CREATE TABLE `employee salary` (
  `eid` int(8) NOT NULL,
  `no_ofevents` int(8) NOT NULL,
  `commisionFKEY` int(5) NOT NULL,
  `extra_pay` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_contact`
--

CREATE TABLE `employee_contact` (
  `emp_contactkey` int(8) NOT NULL,
  `emp_phno` int(12) NOT NULL,
  `emp_email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_contact`
--

INSERT INTO `employee_contact` (`emp_contactkey`, `emp_phno`, `emp_email`) VALUES
(1, 989807878, 'keerthi@gmail.com'),
(2, 676786768, 'sunaina@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salcommision`
--

CREATE TABLE `employee_salcommision` (
  `emp_salkey` int(8) NOT NULL,
  `event_id` int(8) NOT NULL,
  `emp_id` int(8) NOT NULL,
  `commision_perevent` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(8) DEFAULT NULL,
  `event_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`) VALUES
(1, 'Wedding'),
(2, 'Theme Parties'),
(3, 'Awards'),
(4, 'Exhibitions'),
(5, 'Exotic Outings');

-- --------------------------------------------------------

--
-- Table structure for table `exhibitions`
--

CREATE TABLE `exhibitions` (
  `exh_id` int(8) NOT NULL,
  `ap_id` int(8) NOT NULL,
  `exh_name` varchar(10) NOT NULL,
  `decors` int(10) NOT NULL,
  `caterers` int(10) NOT NULL,
  `transport` int(10) NOT NULL,
  `venue` int(10) NOT NULL,
  `exhextra_requirements` text NOT NULL,
  `occassion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibitions`
--

INSERT INTO `exhibitions` (`exh_id`, `ap_id`, `exh_name`, `decors`, `caterers`, `transport`, `venue`, `exhextra_requirements`, `occassion`) VALUES
(1, 67, 'techies', 36, 31, 67, 13, 'javax.swing.JTextArea[,0,0,304x254,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.synth.SynthBorder@66a72529,flags=288,maximumSize=,minimumSize=,preferredSize=,caretColor=,disabledTextColor=DerivedColor(color=142,143,145 parent=nimbusDisabledText offsets=0.0,0.0,0.0,0 pColor=142,143,145,editable=true,margin=javax.swing.plaf.InsetsUIResource[top=0,left=0,bottom=0,right=0],selectedTextColor=DerivedColor(color=255,255,255 parent=nimbusSelectedText offsets=0.0,0.0,0.0,0 pColor=255,255,255,selectionColor=DerivedColor(color=57,105,138 parent=nimbusSelectionBackground offsets=0.0,0.0,0.0,0 pColor=57,105,138,colums=20,columWidth=11,rows=5,rowHeight=16,word=false,wrap=false]', 'bussiness meet');

-- --------------------------------------------------------

--
-- Table structure for table `exotic_guide`
--

CREATE TABLE `exotic_guide` (
  `eo_guideid` int(8) NOT NULL,
  `guide_name` varchar(10) NOT NULL,
  `guide_contactFKEY` int(4) NOT NULL,
  `guide_languagesFKEY` varchar(20) NOT NULL,
  `guide_gender` varchar(6) NOT NULL,
  `guide_exp` int(5) NOT NULL,
  `guide_age` int(5) NOT NULL,
  `guide_addressFKEY` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exotic_guide`
--

INSERT INTO `exotic_guide` (`eo_guideid`, `guide_name`, `guide_contactFKEY`, `guide_languagesFKEY`, `guide_gender`, `guide_exp`, `guide_age`, `guide_addressFKEY`) VALUES
(1, 'sanjal', 6, '6', 'Female', 1, 22, 6),
(2, 'aarna', 7, '7', 'Female', 1, 22, 7),
(3, 'aarna', 8, '8', 'Female', 1, 21, 8),
(4, 'aaaa', 9, '9', 'Female', 1, 11, 9),
(5, 'pranav', 10, '10', 'Female', 1, 22, 10),
(6, 'sumathi', 11, '11', 'Female', 1, 41, 11),
(7, 'sanjal', 12, '12', 'Female', 1, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `exotic_outings`
--

CREATE TABLE `exotic_outings` (
  `eo_id` int(8) NOT NULL,
  `capacity` int(5) NOT NULL,
  `transportFKEY` int(8) NOT NULL,
  `guideFKEY` int(8) NOT NULL,
  `iterary` text NOT NULL,
  `extra_requirements` text NOT NULL,
  `eo_stayFKEY` int(8) NOT NULL,
  `eo_timingsFKEY` int(8) NOT NULL,
  `destination_place` varchar(40) NOT NULL,
  `ap_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exotic_outings`
--

INSERT INTO `exotic_outings` (`eo_id`, `capacity`, `transportFKEY`, `guideFKEY`, `iterary`, `extra_requirements`, `eo_stayFKEY`, `eo_timingsFKEY`, `destination_place`, `ap_id`) VALUES
(1, 12, 24, 6, 'sas', 'sasasdfvd', 6, 8, 'dont', 13),
(2, 5, 25, 7, 'get up\nfreshen up\nbreakfast\n', 'nothing for now\nthank you', 7, 9, 'chikkabalput', 10);

-- --------------------------------------------------------

--
-- Table structure for table `exotic_stay`
--

CREATE TABLE `exotic_stay` (
  `e_stayid` int(8) NOT NULL,
  `eo_stayplacename` varchar(20) NOT NULL,
  `estayaddressFKEY` int(4) NOT NULL,
  `estayroomFKEY` int(4) NOT NULL,
  `food` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exotic_stay`
--

INSERT INTO `exotic_stay` (`e_stayid`, `eo_stayplacename`, `estayaddressFKEY`, `estayroomFKEY`, `food`) VALUES
(1, 'discovery', 2, 2, ''),
(2, 'GRT', 3, 3, 'Yes'),
(3, 'village out', 4, 4, 'Yes'),
(4, 'sss', 5, 5, 'Yes'),
(5, 'ericsson', 6, 6, 'Yes'),
(6, 'discovery village', 7, 7, 'Yes'),
(7, 'sg palya', 8, 8, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `exotic_timings`
--

CREATE TABLE `exotic_timings` (
  `et_id` int(8) NOT NULL,
  `et_date` varchar(50) NOT NULL,
  `et_timingsgo` varchar(50) NOT NULL,
  `et_timingsback` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exotic_timings`
--

INSERT INTO `exotic_timings` (`et_id`, `et_date`, `et_timingsgo`, `et_timingsback`) VALUES
(1, 'java.text.SimpleDateFormat@f67a0200', '17:00:00', '07:00:00'),
(2, 'java.text.SimpleDateFormat@f67a0200', '17:00:00', '07:00:00'),
(3, 'java.text.SimpleDateFormat@f67a0200', '03:00:00', '05:00:00'),
(4, 'java.text.SimpleDateFormat@f67a0200', '03:00:00', '15:00:00'),
(5, 'java.text.SimpleDateFormat@f67a0200', '03:00:00', '15:00:00'),
(6, 'java.text.SimpleDateFormat@f67a0200', '03:00:00', '06:00:00'),
(7, 'java.text.SimpleDateFormat@f67a0200', '05:00:00', '14:00:00'),
(8, 'java.text.SimpleDateFormat@f67a0200', '21:00:00', '12:00:00'),
(9, 'java.text.SimpleDateFormat@f67a0200', '17:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `guide_address`
--

CREATE TABLE `guide_address` (
  `guide_addressid` int(8) NOT NULL,
  `guide_street` varchar(20) NOT NULL,
  `guide_city` varchar(15) NOT NULL,
  `guide_state` varchar(15) NOT NULL,
  `guide_zip` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_address`
--

INSERT INTO `guide_address` (`guide_addressid`, `guide_street`, `guide_city`, `guide_state`, `guide_zip`) VALUES
(1, 'sgpalya', 'bng', 'ka', 1234),
(2, 'sgpalya', 'bng', 'ka ', 1234),
(3, 'sgpalya', 'bng', 'ka ', 123),
(4, 'ssgp', 'bng', 'kaa', 12345),
(5, 'gowrinilaya', 'gbd', 'ka', 1234),
(6, 'ssar', 'ssss', 'ssdsd', 1212),
(7, 'hello', 'hi', 'bye', 1234),
(8, 'gowrinilaya', 'gbd', 'karnataka', 12367),
(9, 'sanj', 'bng', 'ka', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `guide_contact`
--

CREATE TABLE `guide_contact` (
  `guide_contactid` int(8) NOT NULL,
  `guide_phno` varchar(15) NOT NULL,
  `guide_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_contact`
--

INSERT INTO `guide_contact` (`guide_contactid`, `guide_phno`, `guide_email`) VALUES
(7, '8867252656', 'aarna.donthi@gmail.com'),
(8, '88674444', 'aarna.donthi@gmail.com'),
(9, '776554', 'aarna@gm.com'),
(10, '565555', 'pranava@gmail.com'),
(11, '7259279585', 'sumathi@gmail.com'),
(12, '887766416', 'sabjal@gmail.c');

-- --------------------------------------------------------

--
-- Table structure for table `guide_language`
--

CREATE TABLE `guide_language` (
  `guide_langid` int(8) NOT NULL,
  `lanaguage1` varchar(20) NOT NULL,
  `language2` varchar(20) NOT NULL,
  `language3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_language`
--

INSERT INTO `guide_language` (`guide_langid`, `lanaguage1`, `language2`, `language3`) VALUES
(1, 'english', 'kannada', 'telugu'),
(2, 'english', 'kannada', 'telugu'),
(3, 'fg', 'hhg', 'hgfhgf'),
(4, 'fg', 'hhg', 'hgfhgf'),
(5, 'fg', 'hhg', 'hgfhgf'),
(6, 'english', 'telugi', 'kannada'),
(7, 'english', 'telugu', 'hindi'),
(8, 'english', 'hindi', 'telugu'),
(9, 'eng', 'hin', 'tel'),
(10, 'langg', 'lannnn', 'uiu'),
(11, 'english', 'kannada', 'telugu'),
(12, 'english', 'kannada', 'telugu');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `slno` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`slno`, `username`, `password`, `level`) VALUES
(13, 'aarna@g.com', 'd41d8cd98f00b204e9800998ecf8427e', 1),
(14, 'shivamtyagi', '4f73954d7ffa07973f2d28bde12fca4d', 1),
(15, 'jack@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(16, 'sunaina@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(17, 'shanakar@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(18, 'sanjal.donthi@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `rolekey` int(5) NOT NULL,
  `name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`rolekey`, `name`) VALUES
(1, 'admin'),
(2, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `stay_address`
--

CREATE TABLE `stay_address` (
  `stay_addressid` int(8) NOT NULL,
  `stay_street` varchar(30) NOT NULL,
  `stay_city` varchar(30) NOT NULL,
  `stay_state` varchar(30) NOT NULL,
  `stay_zip` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stay_address`
--

INSERT INTO `stay_address` (`stay_addressid`, `stay_street`, `stay_city`, `stay_state`, `stay_zip`) VALUES
(1, 'sg playa', 'bng', 'ka', 1234),
(2, 'sg palya', 'bng', 'ka', 12334),
(3, 'sgpalya', 'bng', 'ka', 12332),
(4, 'sgpalya', 'bng', 'ka', 12345),
(5, 'hillmounts ', 'bng', 'karnataka', 12345),
(6, 'mount', 'chmg', 'ka', 1234),
(7, 'ssss', 'sssss', 'sssss', 124),
(8, 'ss', 'sss', 'ssss', 1234),
(9, 'nandi hills', 'bangalore', 'karnataka', 12345),
(10, 'sg palya ', 'bangalorea  ', 'karnataka ', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `stay_room`
--

CREATE TABLE `stay_room` (
  `stay_roomid` int(8) NOT NULL,
  `no_ofrooms` int(5) NOT NULL,
  `room_service` varchar(10) NOT NULL,
  `AC/N-AC` varchar(10) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `check_out` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stay_room`
--

INSERT INTO `stay_room` (`stay_roomid`, `no_ofrooms`, `room_service`, `AC/N-AC`, `room_type`, `check_in`, `check_out`) VALUES
(1, 4, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(2, 4, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(3, 12, 'Yes ', 'AC', 'Suit', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(4, 12, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(5, 12, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(6, 12, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(7, 56565, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200'),
(8, 12, 'Yes ', 'AC', 'Delux', 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200');

-- --------------------------------------------------------

--
-- Table structure for table `themeparties`
--

CREATE TABLE `themeparties` (
  `theme_id` int(8) NOT NULL,
  `ap_id` int(8) NOT NULL,
  `occassion` varchar(20) NOT NULL,
  `theme_name` varchar(10) NOT NULL,
  `caterers` tinyint(1) NOT NULL,
  `transport` tinyint(1) NOT NULL,
  `venue` tinyint(1) NOT NULL,
  `decors` tinyint(1) NOT NULL,
  `themeextra_requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themeparties`
--

INSERT INTO `themeparties` (`theme_id`, `ap_id`, `occassion`, `theme_name`, `caterers`, `transport`, `venue`, `decors`, `themeextra_requirements`) VALUES
(1, 10, 'birthday', 'barbie', 13, 32, 63, 29, 'no nothing for now	');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `trans_id` int(8) NOT NULL,
  `trans_addressFKEY` int(5) NOT NULL,
  `trans_vehicleFKEY` int(4) NOT NULL,
  `trans_driverFKEY` int(5) NOT NULL,
  `trans_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`trans_id`, `trans_addressFKEY`, `trans_vehicleFKEY`, `trans_driverFKEY`, `trans_date`) VALUES
(26, 43, 43, 43, 'java.text.SimpleDateFormat@f67a0200'),
(27, 45, 45, 45, 'java.text.SimpleDateFormat@f67a0200'),
(28, 22, 22, 22, 'java.text.SimpleDateFormat@f67a0200'),
(29, 26, 26, 26, 'java.text.SimpleDateFormat@f67a0200'),
(30, 28, 28, 28, 'java.text.SimpleDateFormat@f67a0200'),
(31, 7, 7, 7, 'java.text.SimpleDateFormat@f67a0200');

-- --------------------------------------------------------

--
-- Table structure for table `trans_address`
--

CREATE TABLE `trans_address` (
  `trans_adddressid` int(8) NOT NULL,
  `trans_street` varchar(20) NOT NULL,
  `trans_city` varchar(10) NOT NULL,
  `trans_state` varchar(10) NOT NULL,
  `trans_zip` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans_address`
--

INSERT INTO `trans_address` (`trans_adddressid`, `trans_street`, `trans_city`, `trans_state`, `trans_zip`) VALUES
(48, 'vbcgfd', 'gfdgf', 'dgf', 56465),
(49, 'bjhg', 'hg', 'gfhg', 675564),
(50, 'chgc', 'dgfdgf', 'fggfc', 8876),
(51, 'hjhv', 'hvjhv', 'hvjhv', 787),
(52, 'bvhv', 'hvhgvjh', 'gjhgjh', 87876),
(53, 'ljhkj', 'hgjhgk', 'bvjhv', 987),
(54, 'kjgju', 'khgbj', 'hnm', 768),
(55, 'sss', 'sssss', 'sssss', 1213),
(56, 'sss', 'sssss', 'sssss', 1213),
(57, 'sgpalya', 'bng', 'ka', 12345),
(58, 'sgpalya', 'bgn', 'ka', 1234),
(59, 'sssssss', 'sssss', 'ssss', 1111),
(60, 'ss', 'sjhj', 'fhgf', 1211),
(61, 'sg palya', 'bng', 'ka', 560029),
(62, 'kol', 'kolll', 'kollll', 5678),
(63, 'lok', 'lokk', 'lokkk', 8901),
(64, 'sanjal', 'sanjal', 'sanjal', 1345),
(65, 'aarna', 'aarna', 'aarna', 5678),
(66, 'asa', 'saaa', 'sasaan', 1251),
(67, 'jhsuy', 'jgds', 'hguds', 78821),
(68, 'jaynagar', 'bangalore', 'karnataka', 560078),
(69, 'jpnagara', 'bangalore', 'karntaka', 900781),
(70, 'skm', 'gbd', 'karntaka', 5612),
(71, 'skm', 'gbd', 'karntaka', 5612),
(72, 'v v puram', 'banglore', 'karnataka', 560030),
(73, 'jaynagar', 'banglore', 'karnataka', 560029),
(74, 'dfs', 'bang', 'ka', 67679),
(75, 'bfs', 'bang', 'ka', 8989),
(76, 'grs', 'mysore', 'karntaka', 12345),
(77, 'sagh', 'bng', 'karnataja', 909099);

-- --------------------------------------------------------

--
-- Table structure for table `trans_driver`
--

CREATE TABLE `trans_driver` (
  `trans_driverid` int(8) NOT NULL,
  `trans_drivername` varchar(20) NOT NULL,
  `trans_phno` int(12) NOT NULL,
  `trans_byatacharges` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans_driver`
--

INSERT INTO `trans_driver` (`trans_driverid`, `trans_drivername`, `trans_phno`, `trans_byatacharges`) VALUES
(40, 'sanjal', 88672526, 1200),
(41, 'aarna', 94483214, 3000),
(42, 'aarna', 944832, 3000),
(43, 'Harish', 9876543, 2000),
(44, 'manu', 121212, 1200),
(45, 'mohan', 1234121, 3000),
(46, 'sanjal', 8867252, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `trans_vehicle`
--

CREATE TABLE `trans_vehicle` (
  `trans_vehicleid` int(8) NOT NULL,
  `trans_vehiclenumber` varchar(50) NOT NULL,
  `trans_vehicletype` varchar(15) NOT NULL,
  `trans_vehiclequantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans_vehicle`
--

INSERT INTO `trans_vehicle` (`trans_vehicleid`, `trans_vehiclenumber`, `trans_vehicletype`, `trans_vehiclequantity`) VALUES
(39, 'ka89m1234', 'Sumo- 8', 1),
(40, 'ka34b5676', 'Sumo- 8', 1),
(41, 'ka34b5676', 'Sumo- 8', 1),
(42, '9690', 'TT - 12', 2),
(43, 'ka6yt', 'Bus- 50', 1),
(44, 'ko13bh', 'Bus- 50', 1),
(45, 'hj76hghg', 'Bus - 50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(8) NOT NULL,
  `venue_addressFKEY` int(5) NOT NULL,
  `venue_type` varchar(10) NOT NULL,
  `no_of_days` int(2) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `check_out` varchar(50) NOT NULL,
  `total_venue_cost` int(11) NOT NULL,
  `venueextraFKEY` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_addressFKEY`, `venue_type`, `no_of_days`, `check_in`, `check_out`, `total_venue_cost`, `venueextraFKEY`) VALUES
(31, 1, 'luxury', 5, 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200', 48000, 1),
(32, 2, 'luxury', 3, 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200', 48000, 2),
(33, 3, 'luxury', 4, 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200', 48000, 3),
(34, 4, 'luxury', 4, 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200', 48000, 4),
(35, 5, 'luxury', 3, 'java.text.SimpleDateFormat@f67a0200', 'java.text.SimpleDateFormat@f67a0200', 48000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `venue_address`
--

CREATE TABLE `venue_address` (
  `venue_addressid` int(8) NOT NULL,
  `venue_street` varchar(20) NOT NULL,
  `venue_city` varchar(10) NOT NULL,
  `venue_state` varchar(10) NOT NULL,
  `venue_zip` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_address`
--

INSERT INTO `venue_address` (`venue_addressid`, `venue_street`, `venue_city`, `venue_state`, `venue_zip`) VALUES
(46, 's g palya', 'banglore', '', 560029),
(47, 'gowri nilaya', 'gbd', '', 561208),
(48, 'sg palya', 'banglore', '', 560029),
(49, 'sgg', 'bng', '', 12344),
(50, 'krs', 'mysore', '', 561028);

-- --------------------------------------------------------

--
-- Table structure for table `venue_extra`
--

CREATE TABLE `venue_extra` (
  `venue_extraid` int(8) NOT NULL,
  `venueextraname` varchar(50) NOT NULL,
  `venuequantity` int(20) NOT NULL,
  `venuecharges` int(20) NOT NULL,
  `billexvenue` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_extra`
--

INSERT INTO `venue_extra` (`venue_extraid`, `venueextraname`, `venuequantity`, `venuecharges`, `billexvenue`) VALUES
(36, 'Extra Bed', 3, 500, 1500),
(37, 'Premium Room', 3, 2000, 6000),
(38, 'Deluxe Room', 4, 2000, 8000),
(39, 'Extra Pillow', 3, 1500, 4500),
(40, 'Extra Bed', 10, 1700, 17000);

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `wed_id` int(8) NOT NULL,
  `ap_id` int(8) NOT NULL,
  `bridename` varchar(20) NOT NULL,
  `groomname` varchar(20) NOT NULL,
  `caterersFKEY` int(8) NOT NULL,
  `decorsFKEY` int(8) NOT NULL,
  `venueFKEY` int(8) NOT NULL,
  `transportFKEY` int(8) NOT NULL,
  `wed_Extrarequ` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wedding`
--

INSERT INTO `wedding` (`wed_id`, `ap_id`, `bridename`, `groomname`, `caterersFKEY`, `decorsFKEY`, `venueFKEY`, `transportFKEY`, `wed_Extrarequ`) VALUES
(1, 64, 'sanjal', 'sanjal', 29, 33, 10, 64, 'we\nare\ngood\nthats enough'),
(2, 65, 'Sharavani', 'Sukesh', 30, 34, 13, 65, 'No for now \nthank you \nnice website \nstart matlab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_contact`
--
ALTER TABLE `admin_contact`
  ADD PRIMARY KEY (`admin_contactKey`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `award_ceremonies`
--
ALTER TABLE `award_ceremonies`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `bill_timings`
--
ALTER TABLE `bill_timings`
  ADD PRIMARY KEY (`bill_timeid`);

--
-- Indexes for table `caterers`
--
ALTER TABLE `caterers`
  ADD PRIMARY KEY (`cater_id`);

--
-- Indexes for table `caterers_address`
--
ALTER TABLE `caterers_address`
  ADD PRIMARY KEY (`cat_addrid`);

--
-- Indexes for table `caterers_menuselection`
--
ALTER TABLE `caterers_menuselection`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `caterers_price`
--
ALTER TABLE `caterers_price`
  ADD PRIMARY KEY (`cat_priceid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `decors`
--
ALTER TABLE `decors`
  ADD PRIMARY KEY (`decor_id`);

--
-- Indexes for table `decor_extra`
--
ALTER TABLE `decor_extra`
  ADD PRIMARY KEY (`dextkey`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee salary`
--
ALTER TABLE `employee salary`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `employee_contact`
--
ALTER TABLE `employee_contact`
  ADD PRIMARY KEY (`emp_contactkey`);

--
-- Indexes for table `employee_salcommision`
--
ALTER TABLE `employee_salcommision`
  ADD PRIMARY KEY (`emp_salkey`);

--
-- Indexes for table `exhibitions`
--
ALTER TABLE `exhibitions`
  ADD PRIMARY KEY (`exh_id`);

--
-- Indexes for table `exotic_guide`
--
ALTER TABLE `exotic_guide`
  ADD PRIMARY KEY (`eo_guideid`);

--
-- Indexes for table `exotic_outings`
--
ALTER TABLE `exotic_outings`
  ADD PRIMARY KEY (`eo_id`);

--
-- Indexes for table `exotic_stay`
--
ALTER TABLE `exotic_stay`
  ADD PRIMARY KEY (`e_stayid`);

--
-- Indexes for table `exotic_timings`
--
ALTER TABLE `exotic_timings`
  ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `guide_address`
--
ALTER TABLE `guide_address`
  ADD PRIMARY KEY (`guide_addressid`);

--
-- Indexes for table `guide_contact`
--
ALTER TABLE `guide_contact`
  ADD PRIMARY KEY (`guide_contactid`);

--
-- Indexes for table `guide_language`
--
ALTER TABLE `guide_language`
  ADD PRIMARY KEY (`guide_langid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rolekey`);

--
-- Indexes for table `stay_address`
--
ALTER TABLE `stay_address`
  ADD PRIMARY KEY (`stay_addressid`);

--
-- Indexes for table `stay_room`
--
ALTER TABLE `stay_room`
  ADD PRIMARY KEY (`stay_roomid`);

--
-- Indexes for table `themeparties`
--
ALTER TABLE `themeparties`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `trans_address`
--
ALTER TABLE `trans_address`
  ADD PRIMARY KEY (`trans_adddressid`);

--
-- Indexes for table `trans_driver`
--
ALTER TABLE `trans_driver`
  ADD PRIMARY KEY (`trans_driverid`);

--
-- Indexes for table `trans_vehicle`
--
ALTER TABLE `trans_vehicle`
  ADD PRIMARY KEY (`trans_vehicleid`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- Indexes for table `venue_address`
--
ALTER TABLE `venue_address`
  ADD PRIMARY KEY (`venue_addressid`);

--
-- Indexes for table `venue_extra`
--
ALTER TABLE `venue_extra`
  ADD PRIMARY KEY (`venue_extraid`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`wed_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_contact`
--
ALTER TABLE `admin_contact`
  MODIFY `admin_contactKey` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `ap_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `award_ceremonies`
--
ALTER TABLE `award_ceremonies`
  MODIFY `award_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bill_timings`
--
ALTER TABLE `bill_timings`
  MODIFY `bill_timeid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `caterers`
--
ALTER TABLE `caterers`
  MODIFY `cater_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `caterers_address`
--
ALTER TABLE `caterers_address`
  MODIFY `cat_addrid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `caterers_menuselection`
--
ALTER TABLE `caterers_menuselection`
  MODIFY `menu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `caterers_price`
--
ALTER TABLE `caterers_price`
  MODIFY `cat_priceid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `decors`
--
ALTER TABLE `decors`
  MODIFY `decor_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `decor_extra`
--
ALTER TABLE `decor_extra`
  MODIFY `dextkey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `employee_contact`
--
ALTER TABLE `employee_contact`
  MODIFY `emp_contactkey` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_salcommision`
--
ALTER TABLE `employee_salcommision`
  MODIFY `emp_salkey` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exhibitions`
--
ALTER TABLE `exhibitions`
  MODIFY `exh_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exotic_guide`
--
ALTER TABLE `exotic_guide`
  MODIFY `eo_guideid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exotic_outings`
--
ALTER TABLE `exotic_outings`
  MODIFY `eo_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exotic_stay`
--
ALTER TABLE `exotic_stay`
  MODIFY `e_stayid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exotic_timings`
--
ALTER TABLE `exotic_timings`
  MODIFY `et_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `guide_address`
--
ALTER TABLE `guide_address`
  MODIFY `guide_addressid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `guide_contact`
--
ALTER TABLE `guide_contact`
  MODIFY `guide_contactid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `guide_language`
--
ALTER TABLE `guide_language`
  MODIFY `guide_langid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `rolekey` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stay_address`
--
ALTER TABLE `stay_address`
  MODIFY `stay_addressid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stay_room`
--
ALTER TABLE `stay_room`
  MODIFY `stay_roomid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `themeparties`
--
ALTER TABLE `themeparties`
  MODIFY `theme_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `trans_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `trans_address`
--
ALTER TABLE `trans_address`
  MODIFY `trans_adddressid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `trans_driver`
--
ALTER TABLE `trans_driver`
  MODIFY `trans_driverid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `trans_vehicle`
--
ALTER TABLE `trans_vehicle`
  MODIFY `trans_vehicleid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `venue_address`
--
ALTER TABLE `venue_address`
  MODIFY `venue_addressid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `venue_extra`
--
ALTER TABLE `venue_extra`
  MODIFY `venue_extraid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `wed_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
