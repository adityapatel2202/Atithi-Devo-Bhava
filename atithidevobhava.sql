-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2022 at 05:45 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atithidevobhava`
--

-- --------------------------------------------------------

--
-- Table structure for table `cab_booking`
--

DROP TABLE IF EXISTS `cab_booking`;
CREATE TABLE IF NOT EXISTS `cab_booking` (
  `cal_bookingid` int(10) NOT NULL AUTO_INCREMENT,
  `room_booking_id` int(11) DEFAULT NULL,
  `vehicle_typeid` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `booking_datetime` datetime NOT NULL,
  `flocation` varchar(50) NOT NULL,
  `tlocation` varchar(50) NOT NULL,
  `total_km` float(10,2) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`cal_bookingid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COMMENT='cab booking';

--
-- Dumping data for table `cab_booking`
--

INSERT INTO `cab_booking` (`cal_bookingid`, `room_booking_id`, `vehicle_typeid`, `customer_id`, `payment_id`, `booking_datetime`, `flocation`, `tlocation`, `total_km`, `cost`, `status`) VALUES
(1, 0, 0, 0, 0, '2019-12-12 13:00:00', 'Mangalore', 'bangalore', 323.00, 2500.00, 'Active'),
(2, 0, 0, 0, 0, '2019-12-07 01:00:00', 'Mangalore', 'bangalore', 23.00, 2500.00, 'Active'),
(7, 0, 2, 11, 37, '2020-08-07 22:12:00', 'GHS Road, Hampankatta , Next to Janatha Bazar, Man', 'Mangaladevi Temple, Mangaladevi Temple Road, Bolar', 1.29, 18.00, 'Active'),
(8, 0, 2, 11, 38, '2020-08-07 13:00:00', 'GHS Road, Hampankatta , Next to Janatha Bazar, Man', 'KATEEL SHRI DURGA SANJEEVANI CHARITABLE TRUST HOSP', 21.64, 18.00, 'Active'),
(9, 0, 2, 11, 39, '2020-08-07 13:01:00', 'GHS Road, Hampankatta , Next to Janatha Bazar, Man', 'Puttur, Karnataka, India', 41.36, 18.00, 'Active'),
(10, 0, 2, 12, 42, '2020-08-26 13:00:00', 'GHS Road, Hampankatta , Next to Janatha Bazar, Man', 'Central Market Road, Bhavathi, Bunder, Mangalore, ', 1.27, 18.00, 'Active'),
(11, 0, 2, 13, 48, '2020-08-21 01:01:00', 'GHS Road, Hampankatta , Next to Janatha Bazar, Man', 'Moodabidri, Karnataka, India', 29.13, 18.00, 'Active'),
(12, 0, 3, 4, 63, '2020-08-30 12:19:00', '89 A Navbharat Circle kodialbail, Mangalore ,Daksh', 'Bajpe, Karnataka, India', 12.02, 25.00, 'Active'),
(19, 0, 4, 14, 70, '2023-01-07 11:06:00', '15,khodiyar nager societymodhera road,brahmatal', 'amhedabhad', 20.00, 50.00, 'Active'),
(21, 0, 4, 14, 0, '2022-12-01 11:08:00', '15,khodiyar nager societymodhera road,brahmatal', 'amhedabhad', 300.00, 50.00, 'Active'),
(22, 0, 4, 14, 0, '2023-01-07 11:25:00', '15,khodiyar nager societymodhera road,brahmatal', 'amhedabhad', 20.00, 50.00, 'Active'),
(23, 0, 4, 14, 0, '2022-12-01 11:27:00', '15,khodiyar nager societymodhera road,brahmatal', 'amhedabhad', 20.00, 50.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `address` text,
  `city` varchar(20) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='customer details';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `city`, `pincode`, `contact_no`, `email_id`, `password`, `status`) VALUES
(4, 'Hema', '3rd floor', 'Mangalore', '789456', '9740073178', 'mvaravinda@gmail.com', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Active'),
(6, 'raj', '', '', '', '7877894561', 'kiran@gmail.com', '123456789', 'Active'),
(8, 'Arathi', '', '', '', '7894561230', 'arathik@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Active'),
(9, 'Roand k', '', '', '', '9871234561', 'rolandk@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Active'),
(10, 'Raj kiran', '3rd floor, city light building, Opp. Khazana jewellers', 'Mangalore', '575003', '9876543210', 'aravinda@technopulse.in', '25f9e794323b453885f5181f1b624d0b', 'Active'),
(11, 'aman azad', '5th floor, vins garden', 'Mangalore', '596874', '9874563210', 'amanazad@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Active'),
(12, 'Akshith s', '4th place', 'Bangalore', '456789', '7894561230', 'akshiths@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'Active'),
(13, 'Anchan', '', '', '', '9874563210', 'anchansingh@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'Active'),
(14, 'Aditya Patel', '15,khodiyar nager society\r\nmodhera road', 'Mehsana', '384002', '0123456789', 'ap@gmail.com', 'b4eb85269431edf2503cce20d9ba5861', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `tourism_placeid` int(10) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `feedback_dt` date NOT NULL,
  `ratings` float(10,1) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COMMENT='feedback';

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `customer_id`, `tourism_placeid`, `hotel_id`, `feedback`, `feedback_dt`, `ratings`, `status`) VALUES
(1, 0, 0, 0, 'very happy', '0000-00-00', 10.0, 'Active'),
(2, 13, 0, 1, 'Hello', '0000-00-00', 3.0, 'Active'),
(3, 13, 0, 0, 'a', '0000-00-00', 2.0, 'Active'),
(4, 13, 2, 0, 'aa', '0000-00-00', 3.0, 'Active'),
(5, 13, 2, 0, 'Hello', '0000-00-00', 2.0, 'Active'),
(6, 13, 2, 0, 'Cannes', '0000-00-00', 2.0, 'Active'),
(7, 13, 2, 0, 'Cannes', '0000-00-00', 2.0, 'Active'),
(8, 13, 2, 0, 'Cannes', '0000-00-00', 2.0, 'Active'),
(9, 13, 2, 0, 'Cannes', '0000-00-00', 2.0, 'Active'),
(10, 13, 2, 0, 'aa abb', '0000-00-00', 4.0, 'Active'),
(11, 13, 2, 0, 'aa abb', '0000-00-00', 4.0, 'Active'),
(12, 13, 2, 0, 'aa abb', '0000-00-00', 4.0, 'Active'),
(13, 13, 2, 0, 'Hello how are you', '0000-00-00', 4.0, 'Active'),
(14, 13, 2, 0, 'This is for sweet feedback', '2020-08-08', 3.0, 'Active'),
(15, 13, 2, 0, 'It might be awkward, but please don\'t scroll past this. This Saturday we humbly ask you to defend Wikipedia\'s independence. 98% of our readers don\'t give; they simply look the other way. If you are an exceptional reader who has already donated, we sincerely thank you. If you donate just ? 150, Wikipedia could keep thriving for years. Most people donate because Wikipedia is useful. If Wikipedia has given you ? 150 worth of knowledge this year, take a minute to donate. Show the volunteers who bring you reliable, neutral information that their work matters. Thank you.', '2020-08-08', 5.0, 'Active'),
(16, 13, 2, 0, 'hello', '2020-08-08', 3.0, 'Active'),
(17, 13, 2, 0, '\r\nThis website provide complete information about tourism places with facilities, location map, contact details. Even it allows customer to book lodges, Cabs and Food order through online.', '2020-08-08', 1.0, 'Active'),
(18, 13, 2, 0, '\r\nThis website provide complete information about tourism places with facilities, location map, contact details. Even it allows customer to book lodges, Cabs and Food order through online.', '2020-08-08', 5.0, 'Active'),
(19, 13, 0, 14, 'test', '0000-00-00', 5.0, 'Active'),
(20, 13, 0, 14, 'Hello How are you I am fine', '2020-08-08', 5.0, 'Active'),
(21, 13, 3, 0, 'Test', '2020-08-08', 3.0, 'Active'),
(22, 10, 0, 33, 'In my opinion, Wix is the best that I had experienced using. On the other hand, I think it\'s better to manually code the website using atleast HTML, and CSS. It\'s not that hard to learn. For me, the difference of using drag and drop, and manually coding is the flexibility. I mean, you can\'t do some things on drag and drop builders that are possible on manually coding. But the choice is still yours', '2020-08-18', 5.0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

DROP TABLE IF EXISTS `food_category`;
CREATE TABLE IF NOT EXISTS `food_category` (
  `food_category_id` int(10) NOT NULL AUTO_INCREMENT,
  `food_category` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`food_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='food_category';

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`food_category_id`, `food_category`, `note`, `status`) VALUES
(1, 'Soft Drinks', '', 'Active'),
(2, 'Break Fast', '', 'Active'),
(3, 'Ice Cream', '', 'Active'),
(4, 'Sandwich', '', 'Active'),
(5, 'Dosa', '', 'Active'),
(6, 'Soup', '', 'Active'),
(7, 'Chinese', '', 'Active'),
(8, 'South Indian Meals', '', 'Active'),
(9, 'North Indian Meals', '', 'Active'),
(10, 'Milk Shake', '', 'Active'),
(11, 'Cake', '', 'Active'),
(12, 'Fast Food', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

DROP TABLE IF EXISTS `food_order`;
CREATE TABLE IF NOT EXISTS `food_order` (
  `food_order_id` int(10) NOT NULL AUTO_INCREMENT,
  `room_booking_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `item_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `item_cost` float(10,2) NOT NULL,
  `qty` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`food_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`food_order_id`, `room_booking_id`, `payment_id`, `item_id`, `customer_id`, `item_cost`, `qty`, `status`) VALUES
(10, 33, 24, 1, 11, 100.00, 10, 'Active'),
(11, 35, 41, 2, 12, 250.00, 10, 'Active'),
(12, 36, 47, 2, 13, 250.00, 5, 'Active'),
(14, 48, 61, 1, 4, 100.00, 30, 'Active'),
(19, 62, NULL, 3, 14, 100.00, 2, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `galleryid` int(10) NOT NULL AUTO_INCREMENT,
  `gallerytype` varchar(50) NOT NULL,
  `tourism_placeid` int(10) NOT NULL,
  `upload_file` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`galleryid`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 COMMENT='gallery details';

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`galleryid`, `gallerytype`, `tourism_placeid`, `upload_file`, `note`, `status`) VALUES
(1, 'Photo Gallery', 2, '206614016398128-Bangalore-Palace.jpg', '', 'Active'),
(2, 'Photo Gallery', 3, '886488296l1_20170829182853.png', '', 'Active'),
(3, 'Photo Gallery', 4, '841380385cubbon.jpg', '', 'Active'),
(4, 'Photo Gallery', 5, '336456572tippu.jpg', '', 'Active'),
(5, 'Photo Gallery', 6, '635977598bannergatta.jpg', '', 'Active'),
(6, 'Photo Gallery', 7, '1837865094bangalore-iskcon-sri-radha-krishna-temple-152459005676-orijgp.jpg', '', 'Active'),
(7, 'Photo Gallery', 8, '125489505wonderla_entrance.jpg', '', 'Active'),
(8, 'Photo Gallery', 46, '190402085dandeli wid.jpg', '', 'Active'),
(9, 'Photo Gallery', 47, '650617442kali-river-173168_960_720.jpg', '', 'Active'),
(10, 'Photo Gallery', 48, '1242934726Kavala.jpg', '', 'Active'),
(11, 'Photo Gallery', 49, '17516533591502863612_Syntheri_Rocks.JPG.jpg.jpg', '', 'Active'),
(12, 'Photo Gallery', 50, '615140942skyes.jpg.jpg', '', 'Active'),
(13, 'Photo Gallery', 51, '1223927397anshi-evergreen-camp.jpg', '', 'Active'),
(14, 'Photo Gallery', 52, '1423568878supa-dam-dandeli.jpg', '', 'Active'),
(15, 'Photo Gallery', 53, '76115949maxresdefault.jpg', '', 'Active'),
(16, 'Photo Gallery', 54, '1392108266720x512-dandeli-458187_1_des.jpg', '', 'Active'),
(17, 'Photo Gallery', 21, '736465215abbey.jpg', '', 'Active'),
(18, 'Photo Gallery', 22, '1655638117tala.jpg', '', 'Active'),
(19, 'Photo Gallery', 23, '79445208221frTibet2jpg.jpg', '', 'Active'),
(20, 'Photo Gallery', 24, '772512307raja-s-tomb.jpg', '', 'Active'),
(21, 'Photo Gallery', 25, '5050128782019111378-ogn8sbi38vrfdxy3kr9bduh8jv57fe88e6oxf5600a.jpeg', '', 'Active'),
(22, 'Photo Gallery', 26, '383991551madikeri-fort-coorg.jpg', '', 'Active'),
(23, 'Photo Gallery', 27, '1450365159coffe plant.jpg', '', 'Active'),
(24, 'Photo Gallery', 28, '1222967438omakre temple.jpg', '', 'Active'),
(25, 'Photo Gallery', 29, '1970388310chingar.webp', '', 'Active'),
(26, 'Photo Gallery', 30, '1957943213wayanad.jpg', '', 'Active'),
(27, 'Photo Gallery', 31, '1656278596kochi.jpg', '', 'Active'),
(28, 'Photo Gallery', 32, '1551297278munnar_hills_kerala_india.jpg', '', 'Active'),
(29, 'Photo Gallery', 33, '1229997847kollam.jpg', '', 'Active'),
(30, 'Photo Gallery', 34, '841382705kozhida.jpg', '', 'Active'),
(31, 'Photo Gallery', 35, '1743670158bekal.jpg', '', 'Active'),
(32, 'Photo Gallery', 36, '948712267Guruvayur.jpg', '', 'Active'),
(33, 'Photo Gallery', 38, '1642866143ananthapura-lake-temple.jpg', '', 'Active'),
(34, 'Photo Gallery', 64, '1656078443Agatti Island.jpg', '', 'Active'),
(35, 'Photo Gallery', 65, '2102990303Bangaram Island.jpg', '', 'Active'),
(36, 'Photo Gallery', 66, '1878896646Pitti-Bird-Sanctuary.jpg', '', 'Active'),
(37, 'Photo Gallery', 67, '2044950490Kavaratti Island Marine Aquarium.jpg', '', 'Active'),
(38, 'Photo Gallery', 40, '777761887Netrani Island.jpg', '', 'Active'),
(39, 'Photo Gallery', 41, '560882036Murudeshwara Temple.jpg', '', 'Active'),
(40, 'Photo Gallery', 42, '186412058Murudeshwara Beach.jpg', '', 'Active'),
(41, 'Photo Gallery', 69, '744392962everest-honeymoon-tour20.jpg', 'Everest tour', 'Active'),
(42, 'Photo Gallery', 69, '93254561CAMP.jpg', '', 'Active'),
(43, 'Feedback', 11, './imgfeedback/338993861hide.png', '', 'Active'),
(44, 'Feedback', 11, './imgfeedback/728841665PressBellIconSubscribe.mp4', '', 'Active'),
(45, 'Feedback', 11, './imgfeedback/1098956560screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(46, 'Feedback', 11, './imgfeedback/28070386f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(47, 'Feedback', 12, './imgfeedback/760046193hide.png', '', 'Active'),
(48, 'Feedback', 12, './imgfeedback/372103812PressBellIconSubscribe.mp4', '', 'Active'),
(49, 'Feedback', 12, './imgfeedback/1844483397screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(50, 'Feedback', 12, './imgfeedback/1309413004f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(51, 'Feedback', 13, '1280199521hide.png', '', 'Active'),
(52, 'Feedback', 13, '695527955PressBellIconSubscribe.mp4', '', 'Active'),
(53, 'Feedback', 13, '202866715557155550_10157098180566797_5541158147198025728_o.jpg', '', 'Active'),
(54, 'Feedback', 13, '1701267755screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(55, 'Feedback', 13, '1171729542f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(56, 'Feedback', 14, '515506585hide.png', '', 'Active'),
(57, 'Feedback', 14, '448526732PressBellIconSubscribe.mp4', '', 'Active'),
(58, 'Feedback', 14, '1931640465106777051_277762423532613_4787779012604751657_o.jpg', '', 'Active'),
(59, 'Feedback', 14, '1805439329f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(60, 'Feedback', 15, '2075309917hide.png', '', 'Active'),
(61, 'Feedback', 15, '706394505PressBellIconSubscribe.mp4', '', 'Active'),
(62, 'Feedback', 15, '1637925353screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(63, 'Feedback', 15, '1062339493f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(64, 'Feedback', 16, '14900110hide.png', '', 'Active'),
(65, 'Feedback', 16, '821784489PressBellIconSubscribe.mp4', '', 'Active'),
(66, 'Feedback', 16, '237561980screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(67, 'Feedback', 16, '760543797f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(68, 'Feedback', 17, '1690693118hide.png', '', 'Active'),
(69, 'Feedback', 17, '166437961257155550_10157098180566797_5541158147198025728_o.jpg', '', 'Active'),
(70, 'Feedback', 17, '1512068200screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(71, 'Feedback', 18, '584100834hide.png', '', 'Active'),
(72, 'Feedback', 18, '873939574PressBellIconSubscribe.mp4', '', 'Active'),
(73, 'Feedback', 18, '1868683022screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', '', 'Active'),
(74, 'Feedback', 18, '9330537f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active'),
(75, 'Feedback', 21, '1226699518hide.png', '', 'Active'),
(76, 'Feedback', 21, '1733254800PressBellIconSubscribe.mp4', '', 'Active'),
(77, 'Feedback', 21, '1416834992f613edfa-b43a-41d5-98d0-478114c51bef.jpg', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `giftcoupon`
--

DROP TABLE IF EXISTS `giftcoupon`;
CREATE TABLE IF NOT EXISTS `giftcoupon` (
  `giftcouponid` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `couponcode` varchar(25) NOT NULL,
  `expirydate` date NOT NULL,
  `discount_percentage` double NOT NULL,
  `max_limit` double NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`giftcouponid`),
  UNIQUE KEY `couponcode` (`couponcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `hotel_id` int(10) NOT NULL AUTO_INCREMENT,
  `location_id` int(10) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_type` varchar(20) NOT NULL,
  `hotel_description` text NOT NULL,
  `hotel_address` text NOT NULL,
  `hotel_map` text NOT NULL,
  `hotel_pincode` varchar(10) NOT NULL,
  `hotel_policies` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='hotel details';

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `location_id`, `hotel_name`, `hotel_type`, `hotel_description`, `hotel_address`, `hotel_map`, `hotel_pincode`, `hotel_policies`, `status`) VALUES
(1, 2, 'The Monarch Luxur', 'Hotel', 'Stay at the best 3-star hotel in Bangalore and enjoy its exceptional facilities The Monarch Luxur Hotel is a convenient stay for business travellers in Bangalore, as it is situated on Infantry Road, a bustling business district. It is 300 metres from Chinnaswamy Stadium and 500 metres from city centre. The interiors are modern and there are 3 banquet halls to accommodate special occasions and conferences. The rooms are spacious with wooden flooring and the bathrooms feature Italian marble. The hotel is only 800 meters from St. Mary Basilica and St. Mark Cathedral. It is 2km from Brigade Road and Cubbon Park. The Bangalore Aquarium is only 3km away. The Vidhan Soudha or the legislature house is at 4km, Bangalore Palace is at 6km and the ISKCON Temple is 8km from the hotel. The property is only 5km from Cantonment Railway station and 6km from Bengaluru railway station. The Kempegowda International Airport is only 10km away. For the business traveller, the hotel is 2km from the commercial street, MG Road, British Deputy high commission and Consulate of Japan. The Karnataka High court is 11km from the premises. The rooms are centrally air conditioned with in-suite bathrooms. Paid Wi-fi is available in all the areas of the hotel. The rooms are equipped with LCD TV, direct telephone, in-room safe deposit box, mineral water and a mini bar. The hotel has a 24-hour caf lounge named Finesse which is famous for its continental snacks and desserts. The hotel offers 3 conference and meeting halls. It has a fitness centre and a gift shop. 24-hour front desk, tour desk, ticket services, and currency exchange are also available. The hotel also offers shoeshine, ironing and dry-cleaning services on request. Amazing amenities at great prices is what makes The Monarch Luxur Hotel a popular accommodation choice for guests. Book now and enjoy a comfortable stay at The Monarch Luxur Hotel.', '67, Infantry Road, Tasker Town, Shivaji Nagar,, Bangalore   \r\n\r\n', '', '560001', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nYatra.com will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(2, 2, 'The Lalit Ashok', 'Hotel', 'The Lalit Ashok offers an exquisite view of the adjacent 18-hole golf course and is known for its contemporary dining options and the citys largest banquet facilities. This business accommodation in Bangalore offers internet access to its patrons. Bengaluru City Junction Railway Station is 3 km away from the hotel.This Bangalore property has 184 well-appointed suites and rooms overlooking the golf and pool view. A host of conveniences available in the rooms includes mini bar, tea/coffee maker, hair dryer, electronic safe, private balcony overlooking the pool and bathroom with shower cubicle.Classic Richmond features an outdoor pool, gymnasium, spa, multi-cuisine restaurants and bar, and patisserie shop within the premises. In addition to this, services such as private luxury air charter service, butler service, 24-hour concierge, in-room dining and transfer service is also provided. Nearby points of interest to drop by includes Shree Dodda Ganapathi Temple (8 km), Lalbagh Botanical Garden (7 km), Bangalore Palace (2 km) and Iskcon Temple (7 km). This property is 3 km away from Bangalore Cantonment and 32 km from Kempegowda International Airport.', 'Kumara Krupa High Grounds, Central Bangalore, Bangalore ', '', '560001  ', 'CANCELLATION/PREPAYMENTCancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nYatra.com will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(14, 3, 'Hotel Paradise', 'Hotel', 'Hotel Paradise has an on-site spa center and massage parlor. This property in Mysore is located about 4 km from Saint Philomena Church and 2 km from Mysore Railway Junction.Accommodation is provided in 80 well-maintained guestrooms, across four floors. Some in-room amenities include cable television, air-conditioner, telephone, separate seating area and attached bathroom with 24-hour hot and cold water supply. Guests staying at Hotel Paradise are provided with room service, laundry, medical assistance and 24-hour front desk assistance. This property in Mysore encompasses a Veg restaurant, a bar, a lounge and a gift shop. Travel assistance and tour arrangements are also provided for the occupants.Attractions nearby include Brindavan Garden (15 km) and Mysore Palace (3 km). The accommodation in Mysore can also be reached from Akashvani Circle Bus Stop (0.5 km) and Mysore Airport (14 km).\r\n\r\n', '104, Vivekananda Road,Yadavagiri, Mysore ', '', '570020', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel\r\n', 'Active'),
(17, 3, 'Silent Shores Resort and Spa', 'Resort', 'Enjoy a luxurious experience in a beautiful setting! Set midst sprawling greenery and a lake, Silent Shores Resort and Spa provides luxurious interiors and a pleasant stay. Located in the Hootagalli area of Mysore, this magnificent resort is within 900 meters of Saraswathi Convention Hall and 1 km from Hootagalli Industrial area. The resort has 3 restaurants, bar, coffee shop, restorative spa and a swimming pool. It also has an amphitheatre, 2 boardrooms, banquet hall with lawn and an event area surrounded by water for business/event purposes. The resort also features a gym and games room with pool table. Other facilities include airport shuttle, laundry service and an amphitheatre. There are 73 rooms which are tastefully decorated and have gorgeous views. These are of types: Duplex, Deluxe, Classic, Superior, Cottage and Suite. The rooms have LCD TV with premium channels, Wi-Fi and balcony. The private bathrooms have shower facility and premium toiletries. Other facilities include tea-coffee maker, wardrobe and minibar. Ambrosia provides picturesque views through its glass walls while serving delicious Continental, Chinese and Indian dishes. Spring is set by the lake with an open kitchen offering Indian, Tandoor, Continental and Oriental delights. Relish a sumptuous Italian meal at Bella Italiano while enjoying the ambience of the garden or enjoy a nice drink at Amphora, the bar. Sit back and relax with a warm coffee or a chilled mojito at the poolside coffee shop, Cafe Bistro. Some nearby attractions include Planet Earth Aquarium (4 km), MUDA Sports Ground (5 km), Royal Heritage Garden (5 km), New Zoo Koorgalli (5 km), GRS Fantasy Park (6 km), Mahadeshwara Theatre (6 km) and Balmuri Falls (10 km) Mysore Airport is 20 km and Mysuru Junction Railway Station is 10 km from the resort. Some important locations include Glowtronics (280 meters), Excelsoft Technologies (400 meters), Reckitt Benckiser India (450 meters), Hootagalli Industrial Area (1 km), Waves Technology (2 km) and Triphase Technologies (2 km). What makes this property a first choice among travellers is its exceptional setting and excellent services. Book Silent Shores Resort and Spa now and revel in the best!\r\n\r\n', '# 85-87, BEML / KRS Road, Hootagalli Off Hunsur Road, Mysore \r\n\r\n', '', '570018 ', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(21, 4, 'Green Vista Home Stay Coorg', 'Homestays', 'PROPERTY DETAILS With mountains surrounding Green Vista Homestay, guests are bound to get a delightful view. The property in Madikeri is inclusive of two bedrooms, of which one has an attached bathroom, and the other has a common. Conveniences in the rooms are drinking water, comfortable bed, television, wardrobe, separate seating area, makeup mirror, tea kettle, ceiling fan, side table, and luggage rack. There is a common balcony available on the first floor offering a view of the locale. Facilities available on the premises include car parking, kitchen, and sit-outs. Guests are offered all meals (on cost), room service, doctor on call, travel assistance, and housekeeping during their stay. NEIGHBOURHOOD Places worth a visit include Raja Seat Mantapa (2 km), Kanchi Kamakshi Temple (2 km), Omkareshwara Temple (2 km) and Abbi Falls (7 km). NEARBY Travel hubs include KSRTC Bus Station (1 km), Kannur International Airport (92 km) and Subramanya Road Railway Station (87 km). Taxi and rickshaw are available and connect well within the city. HOUSE RULES TIMINGS: 10 am Check-in, and 10.30 am Check-out, Non-veg food is allowed, Smoking is allowed, Alcohol is allowed, Unmarried couples are allowed, valid ID proof is a mandate, and pets are not allowed.\r\n\r\n', '#19-98-5, Bhagavathi nagara, Madikeri ', '', ' 571201 ', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nYatra.com will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(22, 4, 'HolidayinCoorg Orchid Villa ', 'Villa', 'Offering internet access and breakfast service Holidayincoorg Orchid Villa is a budget hotel in Madikeri, situated 102 km from Sakaleshpur Railway Station and 7 km from Mercara Downs Golf Club.The hotel in Madikeri accommodates 2 well-appointed rooms. Rooms include conveniences like wardrobe, tea/coffee maker, wake-up call service and kitchenette.24-hour front desk, travel counter and parking facility are few of the conveniences offered at Holidayincoorg Orchid Villa in Madikeri.', 'Near Raghavendra temple, Chain Gate, Madikeri ', '', '571201', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nYatra.com will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(27, 9, 'Dandeli Jungle Residency', 'Hotel', 'Dandeli Jungle Residency is located in Bailpur about 7 km from the Ambewadi Railway Station and 4 km from Dandeli National Park. This homestay in Dandeli has a restaurant and provides free airport transfers.The property has 6 rooms for accommodation. It is also equipped with amenities like a comfortable bed and wardrobe. The attached bathrooms include complimentary toiletries and a supply of hot and cold running water.This accommodation in Dandeli provides laundry, medical assistance and 24-hour room service. The property also has a garden and offers safaris, treks and campfires with light music among other wildlife activities.Tourist attractions nearby include Dandelleppa Temple (5 km) and Shri Shiradi Sai Baba Temple (5 km). Dandeli Jungle Residency is also 5 km from the Ambewadi Bus Stop and 134 from the Goa Airport.\r\n\r\n', 'IPM Colony, Jungleshwar Temple Road, Bailpur, , Dandeli, Karnataka, Dandeli\r\n\r\n', '', '581325 ', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(28, 9, 'Whistling Thrush', 'Cottage', 'Reachable from Dandeli Bus Stand (1 km), Whistling Thrush offers front desk assistance to its patrons. Dandeli National Park is also at 2 km from this property in Dandeli.This accommodation in Dandeli accommodates in 4 spacious and well-maintained rooms. Each room is equipped with amenities such as television with premium TV channels, makeup mirror, wardrobe and attached bathroom with hot/cold running water.Whistling Thrush features a parking area within the premises. A travel assistance desk set up to attend countless travel queries of the vacationers. Travel hubs nearby are WCPM Gate 3 Bus Stop (1 km) and Haliyal Bus Depot (22 km). Points of interest around this property include the Dandelleppa Temple (3 km), Abhayaranya Wildlife Adventures (4 km) and Crocodile Park (3 km).', 'Villege Ghotga, Punchayat Bazar Kunang, Post Castle-Rock, Dandeli ', '', '581121', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(29, 31, 'The Verda Saffron', 'Hotel', 'The Yatra SMART choice property comes with a promise of 8 assured amenities, money-back guarantee and priority helpline support. You also get free cancellation and standardized prices through the year.The Saffron is located 17 km awayfrom the Mangalore International Airport and 2 km from Central Railway Station.This hotel in Mangalore offer high speed internet access to the guests. The Saffron offer comfortableaccommodation in Mangalore. Facilities which are provided in the room are iron/ironingboard on request, in-room smoke detectors, desk level power adaptors and manymore.The hotel facilitates guests with a traveldesk for ticketing, tours and car rentals, laundry and a dry cleaning service. TheSpice restaurant at The Saffron offer multi-cuisine delicacies to the guests.The hotel has an individual climatecontrol facility in all rooms. The Saffron hotel is in proximity to St.Aloysious Chapel (2 km) and Durga Parameshwari Temple (5 km). Other interestingdestinations to explore in Mangalore are Someshwar Beach (12.4 km), MangaladeviTemple (10.2 km) and Milagres Church (2.7 km).', 'GHS Road, Hampankatta , Next to Janatha Bazar, Mangalore ', '', '575001', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(30, 2, 'The Ocean Pearl', 'Hotel', 'Stay at the best 3-star hotel in Mangalore and enjoy its exceptional facilities The Ocean Pearl Hotel is 3-star hotel strategically located in the Navabharath Circle in Kodiabail, Mangalore, 3.5 km from Mangala Devi Temple. The hotel is known for its affordable luxury and caters to both leisure and business travellers. The Ocean Pearl offers all necessary services and facilities to make your stay most enjoyable. It includes a swimming pool, mini gym, and a spa and wellness centre. There are 5 dedicated halls and a conference room for formal and informal functions. Other facilities include valet parking, doctor-on-call, pick-up and drop facility, secretarial services, laundry and travel desk for convenience of the guests. There are 3 categories of rooms in Ocean Pearl Hotel Deluxe, Premium and Studio. The in-room facilities include a private sitting area, LCD TV, tea/coffee maker, mini-fridge and electronic safe. The attached bathroom comes with shower cubicle. They also provide 24-hour room service, in-house laundry and free Wi-Fi in all rooms. Sagar Ratna is an in-house vegetarian restaurant delighting customers with authentic South Indian dishes. Coral Fine Dine restaurant serves Indian, Mughlai and seafood delicacies. Guests can unwind with exotic mocktails, cocktails and wines at Jade - the in-house bar. Grab a quick bite at Tide the 24x7 coffee shop. Small parties or family gatherings can be conducted in the Jade-Party Hall.Touristattractions nearby are Mangala Devi Temple, (3.7km), Someshwara Beach, (14km),Ullal Beach(12km) and Panambur Beach(11km). Guest can use Wi-Fi facility at noextra cost. This hotel in Mangalore is reachable from Mangalore Railway Stationwhich is 7 km and Mangalore Bus Stand which is 2 km from this hotel. Amazing amenities at great prices is what makes The Ocean Pearl a popular accommodation choice for guests. Book now and enjoy a comfortable stay at The Ocean Pearl', '89 A Navbharat Circle kodialbail, Mangalore ', '', '575003', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(31, 31, 'The Ocean Pearl', 'Hotel', 'Stay at the best 3-star hotel in Mangalore and enjoy its exceptional facilities The Ocean Pearl Hotel is 3-star hotel strategically located in the Navabharath Circle in Kodiabail, Mangalore, 3.5 km from Mangala Devi Temple. The hotel is known for its affordable luxury and caters to both leisure and business travellers. The Ocean Pearl offers all necessary services and facilities to make your stay most enjoyable. It includes a swimming pool, mini gym, and a spa and wellness centre. There are 5 dedicated halls and a conference room for formal and informal functions. Other facilities include valet parking, doctor-on-call, pick-up and drop facility, secretarial services, laundry and travel desk for convenience of the guests. There are 3 categories of rooms in Ocean Pearl Hotel Deluxe, Premium and Studio. The in-room facilities include a private sitting area, LCD TV, tea/coffee maker, mini-fridge and electronic safe. The attached bathroom comes with shower cubicle. They also provide 24-hour room service, in-house laundry and free Wi-Fi in all rooms. Sagar Ratna is an in-house vegetarian restaurant delighting customers with authentic South Indian dishes. Coral Fine Dine restaurant serves Indian, Mughlai and seafood delicacies. Guests can unwind with exotic mocktails, cocktails and wines at Jade - the in-house bar. Grab a quick bite at Tide the 24x7 coffee shop. Small parties or family gatherings can be conducted in the Jade-Party Hall.Touristattractions nearby are Mangala Devi Temple, (3.7km), Someshwara Beach, (14km),Ullal Beach(12km) and Panambur Beach(11km). Guest can use Wi-Fi facility at noextra cost. This hotel in Mangalore is reachable from Mangalore Railway Stationwhich is 7 km and Mangalore Bus Stand which is 2 km from this hotel. Amazing amenities at great prices is what makes The Ocean Pearl a popular accommodation choice for guests. Book now and enjoy a comfortable stay at The Ocean Pearl', '89 A Navbharat Circle kodialbail, Mangalore ', '', '575003', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(32, 5, 'The Planters Court', 'Hotel', 'Placed at a mere distance from Mullayanagiri (1 km), The Planters Court provides comfortable accommodation in Chimagalur offering Wi-Fi to its guests.It comprises of spacious and well-kept rooms.\r\nEach room has amenities like Air-condition, wardrobe,telephone, television desk and attached bathroom. Some facilities include Travel desk, car rental, front desk and room service to name a few.\r\nThe Planters Court in Chimagalur also offers services like Doctor on call, power back-up and parking to its guests. The Planters Court in Chimagalur is accessible via travel hubs such as KSRTC Bus Stand ( 1 km) and Mangalore International Airport (157 km).\r\n\r\nPlaces worth a visit include Ranganathaswamy Temple (4 km) and Venugopala Swamy temple (8 km). <B> What people love the most about this property is its great location and classy ambiance. Book now and enjoy world-class services at The Planters Court. </B>\"', 'P.B.No.109, Kadur Mangalore Main Road, , Chikmagalur ', '', '577101', 'Cancellation and prepayment policies vary according to room type. Please check what room conditions may apply when selecting your room above.\r\nThe primary guest must be at least 18 years of age to check into this hotel.\r\nAs per Government regulations, It is mandatory for all guests above 18 years of age to carry a valid photo identity card & address proof at the time of check-in. In case, check-in is denied by the hotel due to lack of required documents, you cannot claim for the refund & the booking will be considered as NO SHOW.\r\nUnless mentioned, the tariff does not include charges for optional room services (such as telephone calls, room service, mini bar, snacks, laundry etc). In case, such additional charges are levied by the hotel, we shall not be held responsible for it.\r\nAll hotels charge a compulsory Gala Dinner Supplement on Christmas and New Years eve. Other special supplements may also be applicable during festival periods such as Dusshera, Diwali etc. Any such charge would have to be cleared directly at the hotel.\r\nIn case of an increase in the hotel tariff (for example, URS period in Ajmer or Lord Jagannath Rath Yatra in Puri) the customer is liable to pay the difference if the stay period falls during these dates.\r\nOur travel agency will not be responsible for any service issues at the hotel\r\nInvoice for hotel stay must be collected at the time of checkout, directly from the hotel', 'Active'),
(33, 33, 'Tiger Palace Resort, Bhairahawa, Lumbini, Nepal', 'Resort', 'Contemporary accommodations in an upscale resort with a casino, a spa & multiple restaurants. Surrounded by jungles, this sophisticated resort offering views of the Himalayas is 12 km from Indian/Nepali border and 19 km from Nautanwa train station.', 'Tilottama - 17,\r\nSiddharthanagar,\r\nNepal', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3536.809191092583!2d83.45458861505907!3d27.56843168284959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39969a5a9f9642a9%3A0xdf5115edca01c295!2sTiger%20Palace%20Resort%2C%20Bhairahawa%2C%20Lumbini%2C%20Nepal!5e0!3m2!1sen!2sin!4v1596622559215!5m2!1sen!2sin\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '32900', 'Conditions Apply', 'Active'),
(34, 34, 'Novotel New Delhi Aerocity- International Airport', 'Hotel', 'it was a amazing....', '15,khodiyar nager society\r\nmodhera road', '', '384002', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facility`
--

DROP TABLE IF EXISTS `hotel_facility`;
CREATE TABLE IF NOT EXISTS `hotel_facility` (
  `hotel_facilityid` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) NOT NULL,
  `room_typeid` int(10) NOT NULL,
  `facility_type` varchar(100) NOT NULL,
  `facility_img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`hotel_facilityid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='hotel_facility';

--
-- Dumping data for table `hotel_facility`
--

INSERT INTO `hotel_facility` (`hotel_facilityid`, `hotel_id`, `room_typeid`, `facility_type`, `facility_img`, `status`) VALUES
(1, 1, 1, '1.Inclusions\r\n  -Complimentary Wi-Fi Internet\r\n2.Amenities\r\n -HD-TV\r\n -TV With DTH Connection', '457318734', 'Active'),
(2, 1, 1, '1.Inclusions\r\n  -Complimentary Wi-Fi Internet\r\n2.Amenities\r\n -HD-TV\r\n -TV With DTH Connection', '813683942', 'Active'),
(3, 2, 3, '1.Inclusions\r\n -Breakfast\r\n -Mandatory Gala Dinner On 24th & 31st Dec @ INR 2800 + Tax Per Adult & I', '2133085043', 'Active'),
(4, 2, 3, '1.Inclusions\r\n -Breakfast\r\n -Mandatory Gala Dinner On 24th & 31st Dec @ INR 2800 + Tax Per Adult & I', '10602059', 'Active'),
(5, 21, 5, 'Facilities available on the premises include\r\n1. car parking, kitchen, and sit-outs.\r\n 2.Guests are ', '1904687087', 'Active'),
(6, 22, 6, '1.Inclusions\r\n -Breakfast\r\n-Amenities\r\n2.Wardrobe/Closet\r\n-Tea/Coffee Maker\r\n', '1661740597', 'Active'),
(7, 14, 7, '1.Inclusions\r\n -Room Only', '1285185426', 'Active'),
(8, 14, 8, '1.Inclusions\r\n -Breakfast\r\n2.Amenities\r\n-Safe\r\n-Refrigerator', '453429499', 'Active'),
(9, 17, 9, '1.Inclusions\r\n -Complimentary Wi-Fi Internet\r\n -Breakfast', '641973624m1.jpg', 'Active'),
(10, 27, 10, '1.Inclusions\r\n -All Meals', '1260528017d1.jpg', 'Active'),
(11, 27, 11, '1.Inclusions\r\n -All Meals', '1115443092d2.jpg', 'Active'),
(12, 28, 12, '1.Inclusions\r\n -All Meals\r\n -Breakfast And Dinner', '1120361580', 'Active'),
(13, 28, 13, '1.Inclusions\r\n -All Meals\r\n -Breakfast And Dinner', '1842226959', 'Active'),
(14, 29, 0, '1.Inclusions\r\n -Breakfast\r\n -Complimentary Wi-Fi Internet\r\n -Free Room Upgrade Subject To Availabili', '624709797', 'Active'),
(15, 31, 0, '1.Inclusions\r\n-Breakfast\r\n- Complimentary Wi-Fi Internet\r\n2.Amenities\r\n  -Safe \r\n  -Refrigerator \r\n ', '1685027840o1.jpg', 'Active'),
(16, 33, 0, 'WIFI FACILITY', '1547358594wifi.png', 'Active'),
(17, 33, 0, 'TV', '1090194687tv.jpg', 'Active'),
(18, 33, 19, 'AC', '828069720ac.jpg', 'Active'),
(19, 34, 21, '5GHZ wifi', '2046416954th (1).jpeg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_image`
--

DROP TABLE IF EXISTS `hotel_image`;
CREATE TABLE IF NOT EXISTS `hotel_image` (
  `hotel_imageid` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) NOT NULL,
  `room_typeid` int(10) NOT NULL,
  `hotel_image` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`hotel_imageid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='hotel image';

--
-- Dumping data for table `hotel_image`
--

INSERT INTO `hotel_image` (`hotel_imageid`, `hotel_id`, `room_typeid`, `hotel_image`, `image_description`, `status`) VALUES
(1, 1, 0, '131413679monarch.jpg', 'Stay at the best 3-star hotel in Bangalore and enjoy its exceptional facilities The Monarch Luxur Hotel is a convenient stay for business travellers in Bangalore, as it is situated on Infantry Road, a bustling business district. It is 300 metres from Chinnaswamy Stadium and 500 metres from city centre. The interiors are modern and there are 3 banquet halls to accommodate special occasions and conferences. The rooms are spacious with wooden flooring and the bathrooms feature Italian marble. The hotel is only 800 meters from St. Mary Basilica and St. Mark Cathedral. It is 2km from Brigade Road and Cubbon Park. The Bangalore Aquarium is only 3km away. The Vidhan Soudha or the legislature house is at 4km, Bangalore Palace is at 6km and the ISKCON Temple is 8km from the hotel. The property is only 5km from Cantonment Railway station and 6km from Bengaluru railway station. The Kempegowda International Airport is only 10km away. For the business traveller, the hotel is 2km from the commercial street, MG Road, British Deputy high commission and Consulate of Japan. The Karnataka High court is 11km from the premises. The rooms are centrally air conditioned with in-suite bathrooms. Paid Wi-fi is available in all the areas of the hotel. The rooms are equipped with LCD TV, direct telephone, in-room safe deposit box, mineral water and a mini bar. The hotel has a 24-hour caf lounge named Finesse which is famous for its continental snacks and desserts. The hotel offers 3 conference and meeting halls. It has a fitness centre and a gift shop. 24-hour front desk, tour desk, ticket services, and currency exchange are also available. The hotel also offers shoeshine, ironing and dry-cleaning services on request. Amazing amenities at great prices is what makes The Monarch Luxur Hotel a popular accommodation choice for guests. Book now and enjoy a comfortable stay at The Monarch Luxur Hotel.\r\n\r\n', 'Active'),
(2, 2, 0, '1123619895lalith.jpg', 'The Lalit Ashok offers an exquisite view of the adjacent 18-hole golf course and is known for its contemporary dining options and the citys largest banquet facilities. This business accommodation in Bangalore offers internet access to its patrons. Bengaluru City Junction Railway Station is 3 km away from the hotel.This Bangalore property has 184 well-appointed suites and rooms overlooking the golf and pool view. A host of conveniences available in the rooms includes mini bar, tea/coffee maker, hair dryer, electronic safe, private balcony overlooking the pool and bathroom with shower cubicle.Classic Richmond features an outdoor pool, gymnasium, spa, multi-cuisine restaurants and bar, and patisserie shop within the premises. In addition to this, services such as private luxury air charter service, butler service, 24-hour concierge, in-room dining and transfer service is also provided. Nearby points of interest to drop by includes Shree Dodda Ganapathi Temple (8 km), Lalbagh Botanical Garden (7 km), Bangalore Palace (2 km) and Iskcon Temple (7 km). This property is 3 km away from Bangalore Cantonment and 32 km from Kempegowda International Airport.\r\n\r\n', 'Active'),
(4, 21, 0, '1903834979green.jpg', 'PROPERTY DETAILS With mountains surrounding Green Vista Homestay, guests are bound to get a delightful view. The property in Madikeri is inclusive of two bedrooms, of which one has an attached bathroom, and the other has a common. Conveniences in the rooms are drinking water, comfortable bed, television, wardrobe, separate seating area, makeup mirror, tea kettle, ceiling fan, side table, and luggage rack. There is a common balcony available on the first floor offering a view of the locale. Facilities available on the premises include car parking, kitchen, and sit-outs. Guests are offered all meals (on cost), room service, doctor on call, travel assistance, and housekeeping during their stay. NEIGHBOURHOOD Places worth a visit include Raja Seat Mantapa (2 km), Kanchi Kamakshi Temple (2 km), Omkareshwara Temple (2 km) and Abbi Falls (7 km). NEARBY Travel hubs include KSRTC Bus Station (1 km), Kannur International Airport (92 km) and Subramanya Road Railway Station (87 km). Taxi and rickshaw are available and connect well within the city. HOUSE RULES TIMINGS: 10 am Check-in, and 10.30 am Check-out, Non-veg food is allowed, Smoking is allowed, Alcohol is allowed, Unmarried couples are allowed, valid ID proof is a mandate, and pets are not allowed.', 'Active'),
(5, 22, 0, '805727797villa.jpg', 'Offering internet access and breakfast service Holidayincoorg Orchid Villa is a budget hotel in Madikeri, situated 102 km from Sakaleshpur Railway Station and 7 km from Mercara Downs Golf Club.The hotel in Madikeri accommodates 2 well-appointed rooms. Rooms include conveniences like wardrobe, tea/coffee maker, wake-up call service and kitchenette.24-hour front desk, travel counter and parking facility are few of the conveniences offered at Holidayincoorg Orchid Villa in Madikeri.', 'Active'),
(6, 14, 0, '1100942619paradise.jpg', 'Hotel Paradise has an on-site spa center and massage parlor. This property in Mysore is located about 4 km from Saint Philomena Church and 2 km from Mysore Railway Junction.Accommodation is provided in 80 well-maintained guestrooms, across four floors. Some in-room amenities include cable television, air-conditioner, telephone, separate seating area and attached bathroom with 24-hour hot and cold water supply. Guests staying at Hotel Paradise are provided with room service, laundry, medical assistance and 24-hour front desk assistance. This property in Mysore encompasses a Veg restaurant, a bar, a lounge and a gift shop. Travel assistance and tour arrangements are also provided for the occupants.Attractions nearby include Brindavan Garden (15 km) and Mysore Palace (3 km). The accommodation in Mysore can also be reached from Akashvani Circle Bus Stop (0.5 km) and Mysore Airport (14 km).\r\n\r\n', 'Active'),
(7, 27, 0, '462235703Dandeli1.jpg', 'Dandeli Jungle Residency is located in Bailpur about 7 km from the Ambewadi Railway Station and 4 km from Dandeli National Park. This homestay in Dandeli has a restaurant and provides free airport transfers.The property has 6 rooms for accommodation. It is also equipped with amenities like a comfortable bed and wardrobe. The attached bathrooms include complimentary toiletries and a supply of hot and cold running water.This accommodation in Dandeli provides laundry, medical assistance and 24-hour room service. The property also has a garden and offers safaris, treks and campfires with light music among other wildlife activities.Tourist attractions nearby include Dandelleppa Temple (5 km) and Shri Shiradi Sai Baba Temple (5 km). Dandeli Jungle Residency is also 5 km from the Ambewadi Bus Stop and 134 from the Goa Airport.', 'Active'),
(8, 28, 0, '354716169whist.jpg', 'Reachable from Dandeli Bus Stand (1 km), Whistling Thrush offers front desk assistance to its patrons. Dandeli National Park is also at 2 km from this property in Dandeli.This accommodation in Dandeli accommodates in 4 spacious and well-maintained rooms. Each room is equipped with amenities such as television with premium TV channels, makeup mirror, wardrobe and attached bathroom with hot/cold running water.Whistling Thrush features a parking area within the premises. A travel assistance desk set up to attend countless travel queries of the vacationers. Travel hubs nearby are WCPM Gate 3 Bus Stop (1 km) and Haliyal Bus Depot (22 km). Points of interest around this property include the Dandelleppa Temple (3 km), Abhayaranya Wildlife Adventures (4 km) and Crocodile Park (3 km).\r\n\r\n', 'Active'),
(9, 29, 0, '853244623verda.jpg', 'The Free Friendly Travel Mood SMART choice property comes with a promise of 8 assured amenities, money-back guarantee and priority helpline support. You also get free cancellation and standardized prices through the year.The Saffron is located 17 km awayfrom the Mangalore International Airport and 2 km from Central Railway Station.This hotel in Mangalore offer high speed internet access to the guests. The Saffron offer comfortableaccommodation in Mangalore. Facilities which are provided in the room are iron/ironingboard on request, in-room smoke detectors, desk level power adaptors and manymore.The hotel facilitates guests with a traveldesk for ticketing, tours and car rentals, laundry and a dry cleaning service. TheSpice restaurant at The Saffron offer multi-cuisine delicacies to the guests.The hotel has an individual climatecontrol facility in all rooms. The Saffron hotel is in proximity to St.Aloysious Chapel (2 km) and Durga Parameshwari Temple (5 km). Other interestingdestinations to explore in Mangalore are Someshwar Beach (12.4 km), MangaladeviTemple (10.2 km) and Milagres Church (2.7 km).', 'Active'),
(10, 31, 0, '1906667965Ocean pearl.jpg', 'Stay at the best 3-star hotel in Mangalore and enjoy its exceptional facilities The Ocean Pearl Hotel is 3-star hotel strategically located in the Navabharath Circle in Kodiabail, Mangalore, 3.5 km from Mangala Devi Temple. The hotel is known for its affordable luxury and caters to both leisure and business travellers. The Ocean Pearl offers all necessary services and facilities to make your stay most enjoyable. It includes a swimming pool, mini gym, and a spa and wellness centre. There are 5 dedicated halls and a conference room for formal and informal functions. Other facilities include valet parking, doctor-on-call, pick-up and drop facility, secretarial services, laundry and travel desk for convenience of the guests. There are 3 categories of rooms in Ocean Pearl Hotel Deluxe, Premium and Studio. The in-room facilities include a private sitting area, LCD TV, tea/coffee maker, mini-fridge and electronic safe. The attached bathroom comes with shower cubicle. They also provide 24-hour room service, in-house laundry and free Wi-Fi in all rooms. Sagar Ratna is an in-house vegetarian restaurant delighting customers with authentic South Indian dishes. Coral Fine Dine restaurant serves Indian, Mughlai and seafood delicacies. Guests can unwind with exotic mocktails, cocktails and wines at Jade - the in-house bar. Grab a quick bite at Tide the 24x7 coffee shop. Small parties or family gatherings can be conducted in the Jade-Party Hall.Touristattractions nearby are Mangala Devi Temple, (3.7km), Someshwara Beach, (14km),Ullal Beach(12km) and Panambur Beach(11km). Guest can use Wi-Fi facility at noextra cost. This hotel in Mangalore is reachable from Mangalore Railway Stationwhich is 7 km and Mangalore Bus Stand which is 2 km from this hotel. Amazing amenities at great prices is what makes The Ocean Pearl a popular accommodation choice for guests. Book now and enjoy a comfortable stay at The Ocean Pearl', 'Active'),
(11, 30, 0, '1259880204Ocean pearl.jpg', 'Stay at the best 3-star hotel in Mangalore and enjoy its exceptional facilities The Ocean Pearl Hotel is 3-star hotel strategically located in the Navabharath Circle in Kodiabail, Mangalore, 3.5 km from Mangala Devi Temple. The hotel is known for its affordable luxury and caters to both leisure and business travellers. The Ocean Pearl offers all necessary services and facilities to make your stay most enjoyable. It includes a swimming pool, mini gym, and a spa and wellness centre. There are 5 dedicated halls and a conference room for formal and informal functions. Other facilities include valet parking, doctor-on-call, pick-up and drop facility, secretarial services, laundry and travel desk for convenience of the guests. There are 3 categories of rooms in Ocean Pearl Hotel Deluxe, Premium and Studio. The in-room facilities include a private sitting area, LCD TV, tea/coffee maker, mini-fridge and electronic safe. The attached bathroom comes with shower cubicle. They also provide 24-hour room service, in-house laundry and free Wi-Fi in all rooms. Sagar Ratna is an in-house vegetarian restaurant delighting customers with authentic South Indian dishes. Coral Fine Dine restaurant serves Indian, Mughlai and seafood delicacies. Guests can unwind with exotic mocktails, cocktails and wines at Jade - the in-house bar. Grab a quick bite at Tide the 24x7 coffee shop. Small parties or family gatherings can be conducted in the Jade-Party Hall.Touristattractions nearby are Mangala Devi Temple, (3.7km), Someshwara Beach, (14km),Ullal Beach(12km) and Panambur Beach(11km). Guest can use Wi-Fi facility at noextra cost. This hotel in Mangalore is reachable from Mangalore Railway Stationwhich is 7 km and Mangalore Bus Stand which is 2 km from this hotel. Amazing amenities at great prices is what makes The Ocean Pearl a popular accommodation choice for guests. Book now and enjoy a comfortable stay at The Ocean Pearl', 'Active'),
(12, 32, 0, '1227818526planters.jpg', '', 'Active'),
(13, 33, 17, '843994994singleroom.jpg', 'Single Room', 'Active'),
(14, 33, 18, '1316798122doubleroom.jpg', '', 'Active'),
(15, 33, 19, '1859517080three room.jpg', '', 'Active'),
(16, 34, 21, '1007422428th (2).jpeg', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `food_category_id` int(10) NOT NULL,
  `item_img` varchar(100) NOT NULL,
  `item_description` text NOT NULL,
  `item_cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='item details';

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `hotel_id`, `location_id`, `item_name`, `food_category_id`, `item_img`, `item_description`, `item_cost`, `status`) VALUES
(1, 33, 33, 'Pani Puri', 12, '107847156Pani Puri.jpg', 'This popular street food doesn’t need any introduction', 100.00, 'Active'),
(2, 29, 31, 'ra', 4, '712697765screenshot-livestudentprojects.com_2083-2020.07.15-05_41_39.png', 'a', 250.00, 'Active'),
(3, 34, 34, 'pakode', 12, '1185002430th.jpeg', '', 100.00, 'Active'),
(4, 33, 33, 'pakode', 2, '1645344569th.jpeg', 'dxfgcfhvj', 100.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `mail_setting`
--

DROP TABLE IF EXISTS `mail_setting`;
CREATE TABLE IF NOT EXISTS `mail_setting` (
  `settingid` int(10) NOT NULL AUTO_INCREMENT,
  `settingtype` varchar(25) NOT NULL,
  `settingdetails` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`settingid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_setting`
--

INSERT INTO `mail_setting` (`settingid`, `settingtype`, `settingdetails`, `status`) VALUES
(14, 'SMTP', 'a:5:{s:10:\"mailsender\";s:25:\"Free Friendly Travel Mood\";s:10:\"smtpserver\";s:21:\"mail.technopulse.tech\";s:8:\"smtpport\";s:2:\"26\";s:7:\"loginid\";s:39:\"freefriendlytravelmood@technopulse.tech\";s:8:\"password\";s:12:\"p?G.n@aZ?m+e\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `room_booking_id` int(10) NOT NULL,
  `food_order_id` int(10) DEFAULT NULL,
  `cab_bookingid` int(10) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time DEFAULT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `payment_detail` text NOT NULL,
  `card_holder` varchar(50) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `cvv_no` varchar(5) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `total_amt` float(10,2) NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_detail` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COMMENT='payment details';

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `room_booking_id`, `food_order_id`, `cab_bookingid`, `payment_date`, `payment_time`, `transaction_type`, `payment_type`, `payment_detail`, `card_holder`, `card_no`, `cvv_no`, `exp_date`, `total_amt`, `discount_amount`, `discount_detail`, `name`, `mobileno`, `note`, `status`) VALUES
(1, 4, 16, 0, 0, '2020-03-03', '00:00:00', '', 'MASTER CARD', 'a:4:{i:0;s:9:\"raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"488\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(2, 4, 17, 0, 0, '2020-03-03', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"Rja\";i:1;s:16:\"1234567980123456\";i:2;s:3:\"345\";i:3;s:7:\"2022-01\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(3, 4, 18, 0, 0, '2020-03-03', '00:00:00', '', 'MASTER CARD', 'a:4:{i:0;s:3:\"Rah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2022-02\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(4, 4, 19, 0, 0, '2020-03-03', '00:00:00', '', 'MASTER CARD', 'a:4:{i:0;s:3:\"Rah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2022-02\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(5, 4, 20, 0, 0, '2020-03-03', '00:00:00', '', 'MASTER CARD', 'a:4:{i:0;s:3:\"Rah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2022-02\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(6, 4, 21, 0, 0, '2020-03-03', '00:00:00', '', 'MASTER CARD', 'a:4:{i:0;s:3:\"Rah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2022-02\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(7, 4, 22, 0, 0, '2020-03-03', '00:00:00', '', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"548\";i:3;s:7:\"2022-01\";}', '', '', '', '0000-00-00', 3999.00, 0, '', 'Maithri', '9489587656', 'test', 'Active'),
(8, 8, 23, 0, 0, '2020-06-14', '00:00:00', '', 'VISA', 'a:4:{i:0;s:9:\"Kirthan k\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2022-01\";}', '', '', '', '0000-00-00', 11997.00, 0, '', 'Arathi', '7894561230', 'Kindly arrange one guide', 'Active'),
(9, 8, 24, 0, 0, '2020-06-14', '00:00:00', '', 'VISA', 'a:4:{i:0;s:9:\"Kirthan k\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2022-01\";}', '', '', '', '0000-00-00', 11997.00, 0, '', 'Arathi', '7894561230', 'Kindly arrange one guide', 'Active'),
(10, 9, 25, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(11, 9, 26, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(12, 9, 27, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"456\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(13, 9, 28, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"456\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(14, 9, 29, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"raj\";i:1;s:16:\"1234567890123565\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(15, 9, 30, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"raj\";i:1;s:16:\"1234567890123565\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(16, 9, 31, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"raj\";i:1;s:16:\"1234567890123565\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(17, 9, 32, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:3:\"raj\";i:1;s:16:\"1234567890123565\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'Roand k', '9871234561', 'arrange', 'Active'),
(18, 9, 32, 32, 0, '2020-08-07', '00:00:00', '', 'Debit card', '', 'Rja', '1234567890123456', '155', '2021-01-01', 0.00, 0, '', '2020-08-18', '01:00', 'as', 'Active'),
(19, 9, 32, 32, 0, '2020-08-07', '00:00:00', '', 'Credit card', '', 'Rah', '1234567890123456', '158', '2021-01-01', 0.00, 0, '', '2020-08-18', '13:00', 'sa', 'Active'),
(20, 9, 32, 32, 0, '2020-08-07', '00:00:00', '', 'Debit card', '', 'Raj', '1234567890123456', '158', '2021-01-01', 1000.00, 0, '', '2020-08-18', '13:01', 'asd', 'Active'),
(21, 9, 32, 32, 0, '2020-08-07', '00:00:00', '', 'Debit card', '', 'Ram', '1234567890123456', '322', '2021-01-01', 500.00, 0, '', '2020-08-19', '13:01', 's', 'Active'),
(22, 9, 32, 32, 0, '2020-08-07', '00:00:00', '', 'Debit card', '', 'POeter', '1234567890123456', '158', '2021-01-01', 600.00, 0, '', '2020-08-17', '01:01', 'xs', 'Active'),
(23, 11, 33, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"589\";i:3;s:7:\"2020-12\";}', '', '', '', '0000-00-00', 12000.00, 0, '', 'aman azad', '9874563210', 'We need personal security', 'Active'),
(24, 11, 33, 33, 0, '2020-08-07', '00:00:00', '', 'Debit card', '', 'Raah', '1234567890123456', '158', '2021-01-01', 1000.00, 0, '', '2020-08-12', '01:01', 'For food', 'Active'),
(25, 11, 34, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', 'a:4:{i:0;s:4:\"Raah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"488\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 1919.00, 0, '', 'aman azad', '9874563210', 'a', 'Active'),
(26, 11, 34, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '158', '2021-01-01', 267.66, 0, '', '', '', '', 'Active'),
(27, 11, 34, 0, 0, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '158', '2021-01-01', 267.66, 0, '', '', '', '', 'Active'),
(28, 11, 34, 0, 4, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '121', '2021-01-01', 267.66, 0, '', '', '', '', 'Active'),
(29, 11, 34, 0, 4, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '121', '2021-01-01', 267.66, 0, '', '', '', '', 'Active'),
(30, 11, 34, 0, 4, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '121', '2021-01-01', 267.66, 0, '', '', '', '', 'Active'),
(31, 11, 34, 0, 4, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '121', '2021-01-01', 267.66, 0, '', '', '', '', 'Active'),
(32, 11, 34, 0, 5, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '156', '2021-01-01', 40.50, 0, '', '', '', '', 'Active'),
(33, 11, 34, 0, 6, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '158', '2021-01-01', 40.50, 0, '', '', '', '', 'Active'),
(34, 11, 34, 0, 7, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123456', '889', '2021-01-01', 23.22, 0, '', '', '', '', 'Active'),
(35, 11, 34, 0, 7, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123145', '158', '2021-01-01', 23.22, 0, '', '', '', '', 'Active'),
(36, 11, 34, 0, 7, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123145', '158', '2021-01-01', 23.22, 0, '', '', '', '', 'Active'),
(37, 11, 34, 0, 7, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raj kiran', '1234567890123145', '158', '2021-01-01', 23.22, 0, '', '', '', '', 'Active'),
(38, 11, 34, 0, 8, '2020-08-07', '00:00:00', '', 'MASTER CARD', '', 'Raj kiran', '1234567890123456', '599', '2021-01-01', 389.52, 0, '', '', '', '', 'Active'),
(39, 11, 34, 0, 9, '2020-08-07', '00:00:00', '', 'VISA', '', 'Raah', '1234567890123456', '158', '2021-01-01', 744.48, 0, '', '', '', '', 'Active'),
(40, 12, 35, 0, 0, '2020-08-07', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"188\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 13433.00, 0, '', 'Akshith s', '7894561230', '', 'Cancel'),
(41, 12, 35, 35, 0, '2020-08-07', '00:00:00', 'Food Order', 'Credit card', '', 'Raah', '1253456789123456', '158', '2021-01-01', 2500.00, 0, '', '2020-08-25', '01:01', 'Test', 'Cancel'),
(42, 12, 35, 0, 10, '2020-08-07', '00:00:00', 'Cab Booking', 'MASTER CARD', '', 'Raj kiran', '1234567890123456', '158', '2021-01-01', 22.86, 0, '', '', '', '', 'Cancel'),
(43, 12, 0, 0, 0, '2020-08-07', '00:00:00', 'Cancellation', 'Savings Account', '', 'Raj kiran', '123456789012346', 'ANDB0', '0000-00-00', 7977.93, 0, '', '35', '', '', 'Cancelled'),
(44, 12, 0, 0, 0, '2020-08-07', '00:00:00', 'Cancellation', 'Savings Account', '', 'Raj kiran', '123456789012346', 'ANDB0', '0000-00-00', 7977.93, 0, '', '35', '', '', 'Cancelled'),
(45, 12, 0, 0, 0, '2020-08-07', '00:00:00', 'Cancellation', 'Savings Account', '', 'Raj kiran', '123456789012346', 'ANDB0', '0000-00-00', 7977.93, 0, '', '35', '', '', 'Cancelled'),
(46, 13, 36, 0, 0, '2020-08-07', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"458\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 11514.00, 0, '', 'Anchan', '9874563210', '', 'Cancel'),
(47, 13, 36, 36, 0, '2020-08-07', '00:00:00', 'Food Order', 'Credit card', '', 'Raj kiran', '1234567890123456', '155', '2021-01-01', 1250.00, 0, '', '2020-08-20', '01:00', 'a', 'Cancel'),
(48, 13, 36, 0, 11, '2020-08-07', '00:00:00', 'Cab Booking', 'VISA', '', 'Raj kiran', '1234567890123456', '158', '2021-01-01', 524.34, 0, '', '', '', '', 'Cancel'),
(49, 13, 0, 0, 0, '2020-08-07', '00:00:00', 'Cancellation', 'Savings Account', '', 'Raj kiran', '1234567890123456', '45646', '0000-00-00', 6644.17, 0, '', '36', '', '', 'Cancelled'),
(50, 13, 38, 0, 0, '2020-08-08', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:4:\"Raah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"158\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 5040.00, 100, 'a:6:{i:0;s:3:\"999\";i:1;s:10:\"2021-01-01\";i:2;s:2:\"25\";i:3;s:3:\"100\";i:4;s:12:\"For surprise\";i:5;s:6:\"Active\";}', 'Anchan', '9874563210', '', 'Active'),
(51, 10, 39, 0, 0, '2020-08-18', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:4:\"Raah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"158\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', -36996000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Raj kiran', '9876543210', '', 'Active'),
(52, 10, 40, 0, 0, '2020-08-18', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"158\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Raj kiran', '9876543210', 'a', 'Active'),
(53, 10, 41, 0, 0, '2020-08-18', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"158\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 10000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Raj kiran', '9876543210', '', 'Active'),
(54, 10, 42, 0, 0, '2020-08-18', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"548\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 8000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Raj kiran', '9876543210', 'Kindly arrange guide', 'Active'),
(55, 4, 43, 0, 0, '2020-08-24', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"158\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Active'),
(56, 4, 44, 0, 0, '2020-08-24', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"128\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Active'),
(57, 4, 45, 0, 0, '2020-08-24', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:3:\"Raj\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"128\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Active'),
(58, 4, 46, 0, 0, '2020-08-24', '00:00:00', 'Hotel Booking', 'MASTER CARD', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"159\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Active'),
(59, 4, 47, 0, 0, '2020-08-25', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"145\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 20000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Active'),
(60, 4, 48, 0, 0, '2020-08-25', '00:00:00', 'Hotel Booking', 'VISA', 'a:4:{i:0;s:4:\"Raah\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"488\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 8000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Active'),
(61, 4, 48, 48, 0, '2020-08-25', '00:00:00', 'Food Order', 'Credit card', '', 'Raah', '1234567890123456', '159', '2022-01-01', 3000.00, 0, '', '2020-09-03', '11:57', 'test', 'Active'),
(62, 4, 49, 0, 0, '2020-08-25', '00:00:00', 'Hotel Booking', 'MASTER CARD', 'a:4:{i:0;s:9:\"Raj kiran\";i:1;s:16:\"1234567890123456\";i:2;s:3:\"415\";i:3;s:7:\"2021-01\";}', '', '', '', '0000-00-00', 12662.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Hema', '9740073178', '', 'Cancel'),
(63, 4, 49, 0, 12, '2020-08-25', '00:00:00', 'Cab Booking', 'VISA', '', 'Raj kiran', '1234567890123456', '158', '2021-01-01', 300.50, 0, '', '', '', '', 'Cancel'),
(64, 4, 0, 0, 0, '2020-08-25', '12:35:05', 'Cancellation', 'Savings Account', '', 'Raj kiran', '1234567890123456', '15578', '0000-00-00', 6481.25, 0, '', '49', '', '', 'Cancelled'),
(65, 14, 56, NULL, NULL, '2022-11-21', NULL, 'Hotel Booking', 'VISA', 'a:4:{i:0;s:4:\"safd\";i:1;s:16:\"1234123412341234\";i:2;s:3:\"123\";i:3;s:7:\"2022-12\";}', NULL, NULL, NULL, NULL, 3000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', 'sassdfghj', 'Active'),
(66, 14, 57, NULL, NULL, '2022-11-21', NULL, 'Hotel Booking', 'MASTER CARD', 'a:4:{i:0;s:15:\"qsdwefrgthyqswd\";i:1;s:16:\"1234123412341234\";i:2;s:3:\"123\";i:3;s:7:\"2026-01\";}', NULL, NULL, NULL, NULL, 3000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', 'sefgwrthyuj', 'Active'),
(67, 14, 58, NULL, NULL, '2022-11-21', NULL, 'Hotel Booking', 'MASTER CARD', 'a:4:{i:0;s:6:\"asdfgb\";i:1;s:16:\"1234123412341234\";i:2;s:3:\"123\";i:3;s:7:\"2027-05\";}', NULL, NULL, NULL, NULL, 3000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', 'sefgwrthyuj', 'Active'),
(68, 14, 59, NULL, NULL, '2022-11-24', NULL, 'Hotel Booking', 'VISA', 'a:4:{i:0;s:9:\"asdfghjkl\";i:1;s:16:\"1234123412341234\";i:2;s:3:\"123\";i:3;s:7:\"2024-01\";}', NULL, NULL, NULL, NULL, 3000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', '', 'Cancel'),
(69, 14, 60, NULL, NULL, '2022-11-27', NULL, 'Hotel Booking', 'CREDIT CARD', 'a:4:{i:0;s:7:\"asdfghj\";i:1;s:16:\"2341234123423467\";i:2;s:3:\"113\";i:3;s:7:\"2022-01\";}', NULL, NULL, NULL, NULL, 4000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', '', 'Active'),
(70, 14, 61, NULL, NULL, '2022-11-29', NULL, 'Hotel Booking', 'VISA', 'a:4:{i:0;s:4:\"easg\";i:1;s:16:\"1234123412341234\";i:2;s:3:\"123\";i:3;s:7:\"2026-12\";}', NULL, NULL, NULL, NULL, 135000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', 'dgfnfg', 'Active'),
(71, 14, 62, NULL, NULL, '2022-11-30', NULL, 'Hotel Booking', 'VISA', 'a:4:{i:0;s:11:\"asdxfcgvhbj\";i:1;s:16:\"1234567812345678\";i:2;s:3:\"123\";i:3;s:7:\"2022-01\";}', NULL, NULL, NULL, NULL, 3000.00, 0, 'a:6:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', 'Aditya Patel', '0123456789', 'sdfghjnkmlasdfgh jk', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

DROP TABLE IF EXISTS `room_booking`;
CREATE TABLE IF NOT EXISTS `room_booking` (
  `room_booking_id` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) NOT NULL,
  `room_typeid` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `no_ofadults` int(10) NOT NULL,
  `no_ofchildren` int(10) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `checkintime` time NOT NULL,
  `checkouttime` time NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`room_booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COMMENT='room booking';

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `hotel_id`, `room_typeid`, `customer_id`, `no_ofadults`, `no_ofchildren`, `check_in`, `check_out`, `checkintime`, `checkouttime`, `cost`, `status`) VALUES
(1, 1, 1, 3, 3, 2, '2020-02-25 00:00:00', '2020-02-27 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(2, 21, 5, 3, 5, 3, '2020-02-25 00:00:00', '2020-02-25 00:00:00', '00:00:00', '00:00:00', 7000.00, 'Active'),
(3, 14, 7, 3, 2, 1, '2020-02-25 00:00:00', '2020-02-25 00:00:00', '00:00:00', '00:00:00', 1008.00, 'Active'),
(4, 1, 1, 3, 3, 2, '2020-02-25 00:00:00', '2020-02-25 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(5, 14, 7, 3, 2, 1, '2020-03-01 00:00:00', '2020-03-02 00:00:00', '00:00:00', '00:00:00', 1008.00, 'Active'),
(6, 1, 1, 1, 3, 2, '2020-03-03 00:00:00', '2020-03-04 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(7, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(8, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(9, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(10, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(11, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(12, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(13, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(14, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(15, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(16, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(17, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(18, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(19, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(20, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(21, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(22, 1, 1, 4, 3, 2, '2020-03-03 00:00:00', '2020-03-03 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(23, 1, 1, 8, 3, 2, '2020-06-19 00:00:00', '2020-06-21 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(24, 1, 1, 8, 3, 2, '2020-06-19 00:00:00', '2020-06-21 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(25, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(26, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(27, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(28, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(29, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(30, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(31, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(32, 33, 17, 9, 1, 0, '2020-08-15 00:00:00', '2020-08-20 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(33, 33, 17, 11, 1, 0, '2020-08-10 00:00:00', '2020-08-15 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(34, 29, 14, 11, 1, 0, '2020-08-07 00:00:00', '2020-08-07 00:00:00', '00:00:00', '00:00:00', 1919.00, 'Active'),
(35, 29, 14, 12, 2, 0, '2020-08-24 00:00:00', '2020-08-30 00:00:00', '00:00:00', '00:00:00', 1919.00, 'Active'),
(36, 29, 14, 13, 0, 0, '2020-08-18 00:00:00', '2020-08-23 00:00:00', '00:00:00', '00:00:00', 1919.00, 'Active'),
(37, 1, 1, 13, 2, 0, '2020-08-20 00:00:00', '2020-08-30 00:00:00', '00:00:00', '00:00:00', 3999.00, 'Active'),
(38, 14, 7, 13, 2, 0, '2020-08-19 00:00:00', '2020-08-23 00:00:00', '00:00:00', '00:00:00', 1008.00, 'Active'),
(39, 33, 17, 10, 0, 0, '2020-08-25 00:00:00', '0000-00-00 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(40, 33, 17, 10, 0, 0, '2020-08-25 00:00:00', '2020-08-30 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(41, 33, 17, 10, 1, 0, '2020-08-25 00:00:00', '2020-08-29 00:00:00', '00:00:00', '00:00:00', 2000.00, 'Active'),
(42, 33, 18, 10, 2, 0, '2020-08-27 00:00:00', '2020-08-28 00:00:00', '00:00:00', '00:00:00', 4000.00, 'Active'),
(43, 33, 18, 4, 2, 0, '2020-08-27 00:00:00', '2020-08-29 00:00:00', '00:00:00', '00:00:00', 4000.00, 'Active'),
(44, 33, 18, 4, 2, 0, '2020-08-27 00:00:00', '2020-08-29 00:00:00', '00:00:00', '00:00:00', 4000.00, 'Active'),
(45, 33, 18, 4, 2, 0, '2020-08-27 00:00:00', '2020-08-29 00:00:00', '00:00:00', '00:00:00', 4000.00, 'Active'),
(46, 33, 18, 4, 2, 0, '2020-08-27 00:00:00', '2020-08-29 00:00:00', '21:09:00', '21:10:00', 4000.00, 'Active'),
(47, 33, 18, 4, 2, 0, '2020-09-01 00:00:00', '2020-09-05 00:00:00', '11:27:00', '11:27:00', 4000.00, 'Active'),
(48, 33, 18, 4, 2, 0, '2020-09-02 00:00:00', '2020-09-03 00:00:00', '11:29:00', '11:30:00', 4000.00, 'Active'),
(49, 31, 16, 4, 2, 0, '2020-08-29 00:00:00', '2020-08-30 00:00:00', '12:19:00', '12:20:00', 6331.00, 'Active'),
(50, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(51, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(52, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(53, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(54, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(55, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(56, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(57, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(58, 34, 21, 14, 2, 1, '2022-11-22 00:00:00', '2022-11-22 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(59, 34, 21, 14, 2, 1, '2022-11-25 00:00:00', '2022-11-25 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(60, 33, 18, 14, 2, 1, '2022-11-28 00:00:00', '2022-11-28 00:00:00', '12:30:00', '12:30:00', 4000.00, 'Active'),
(61, 34, 21, 14, 1, 2, '2022-12-31 00:00:00', '2023-02-13 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active'),
(62, 34, 21, 14, 2, 1, '2022-12-01 00:00:00', '2022-12-01 00:00:00', '12:30:00', '12:30:00', 3000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `room_typeid` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(10) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `available_rooms` bigint(20) NOT NULL,
  `max_adults` int(10) NOT NULL,
  `max_children` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`room_typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_typeid`, `hotel_id`, `room_type`, `available_rooms`, `max_adults`, `max_children`, `cost`, `status`) VALUES
(1, 1, 'Single bedroom', 0, 3, 2, 3999.00, 'Active'),
(2, 1, 'Executive Double without Meals', 0, 3, 2, 4499.00, 'Active'),
(3, 2, 'Deluxe Twin Room with Breakfast', 0, 1, 0, 6500.00, 'Active'),
(4, 2, 'Deluxe Room with Breakfast', 0, 3, 1, 7000.00, 'Active'),
(5, 21, 'Two bedrooms', 0, 5, 3, 7000.00, 'Active'),
(6, 22, 'Deluxe Double Non A/C without meals', 0, 3, 1, 2192.00, 'Active'),
(7, 14, 'Standard Non Ac', 0, 2, 1, 1008.00, 'Active'),
(8, 14, 'Executive AC With Breakfast', 0, 3, 2, 1649.00, 'Active'),
(9, 17, 'Classic Single Room With ', 0, 1, 0, 5486.00, 'Active'),
(10, 27, 'Deluxe Non AC Room With All meals', 0, 3, 2, 2115.00, 'Active'),
(11, 27, 'Family Suite With All Meals', 0, 6, 2, 8535.00, 'Active'),
(12, 28, 'Non A/C Indian With All Meals', 0, 3, 2, 3960.00, 'Active'),
(13, 28, 'Non A/C Foreigner With All meals', 0, 3, 2, 5824.00, 'Active'),
(14, 29, 'Deluxe Room Single With Breakfast', 0, 1, 0, 1919.00, 'Active'),
(15, 29, 'Deluxe Double Room With Breakfast', 0, 3, 2, 2067.00, 'Active'),
(16, 31, 'Premium Suite Room With Breakfast', 10, 3, 2, 6331.00, 'Active'),
(17, 33, 'Single Room', 10, 1, 0, 2000.00, 'Active'),
(18, 33, 'Double Room', 20, 2, 1, 4000.00, 'Active'),
(19, 33, 'Quin Room', 30, 2, 2, 6000.00, 'Active'),
(20, 33, 'Joint Family', 5, 10, 8, 10000.00, 'Active'),
(21, 34, 'high level', 10, 2, 1, 3000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staffid` int(10) NOT NULL AUTO_INCREMENT,
  `staffname` varchar(25) NOT NULL,
  `stafftype` varchar(20) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='staff details';

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `staffname`, `stafftype`, `loginid`, `password`, `status`) VALUES
(3, 'Kavya', 'Employee', 'Kavya@gmail.com', '123456789', 'Active'),
(4, 'Jaya', 'Employee', 'Jaya@gmail.com', 'jaya1234', 'Active'),
(5, 'Kavya', 'Administrator', 'admin@gmail.com', 'f6fdffe48c908deb0f4c3bd36c032e72', 'Active'),
(6, 'Ramanand', 'Employee', 'ramanand@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tourism_location`
--

DROP TABLE IF EXISTS `tourism_location`;
CREATE TABLE IF NOT EXISTS `tourism_location` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(50) NOT NULL,
  `location_img` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='item details';

--
-- Dumping data for table `tourism_location`
--

INSERT INTO `tourism_location` (`location_id`, `location_name`, `location_img`, `description`, `status`) VALUES
(2, 'Bangalore', '137647011Bangalore.jpg', '', 'Active'),
(3, 'Mysore', '195634359mysore.jpg', '', 'Active'),
(4, 'Madekeri', '971511455Madekeri.jpg', '', 'Active'),
(5, 'Chikmagalur', '1350647029chikamagalur.jpg', '', 'Active'),
(8, 'Murudeshwara', '1995075842Murudeshwara.jpg', '', 'Active'),
(9, 'Dandeli', '359455946Dandeli.jpg', '', 'Active'),
(10, 'Shimoga', '372934366Shimoga.jpg', '', 'Active'),
(11, 'Lakshadweep', '1178672852LAKSHADWEEP-ISLANDS.jpg', '', 'Active'),
(12, 'Hyderabad', '1393491072Hydrabad.jpg', '', 'Active'),
(15, 'Ooty', '1798048704Ooty.jpg', '', 'Active'),
(16, 'Pondecherry', '2056519143Pondechery.jpg', '', 'Active'),
(19, 'Mumbai', '324046484Mumbai.jpg', '', 'Active'),
(20, 'Kolkata', '1223962518Kolkata.jpg', '', 'Active'),
(22, 'New Delhi', '1934977962delhi.jpg', '', 'Active'),
(23, 'Meghalaya', '63139439meghalaya.jpg', '', 'Active'),
(25, 'Manali', '1520891284manali.jpg', '', 'Active'),
(26, 'Udupi', '84899131udupi.jpg', '', 'Active'),
(29, 'Kerala', '1415890658kerala.jpg', '', 'Active'),
(31, 'Dakshina Kannada', '394648902DSCN0571.JPG', '', 'Active'),
(32, 'TamilNadu', '1314514380', '', 'Active'),
(33, 'Nepal', '938198248Nepal.jpg', '<p><span style=\"color: #3d3d3d; font-family: sans-serif; font-size: 16px; text-align: justify; background-color: #ffffff;\">Land of mystic mountains and tales, Nepal is a paradise for hikers hidden between China and India. It&rsquo;s been an important trading point for silk and it is also said that Nepal is the birth place of Buddha. Home of the Himalayas, its high peaks taunts many aspiring alpinists for its real challenge: the Mount Everest. Nepal is finally a haven of peace and tolerance.&nbsp;</span></p>', 'Active'),
(34, 'brahmatal', '1917075539Brahmatal-3.jpeg', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tourism_place`
--

DROP TABLE IF EXISTS `tourism_place`;
CREATE TABLE IF NOT EXISTS `tourism_place` (
  `tourism_placeid` int(10) NOT NULL AUTO_INCREMENT,
  `location_id` int(10) NOT NULL,
  `tourism_place` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `feature` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`tourism_placeid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourism_place`
--

INSERT INTO `tourism_place` (`tourism_placeid`, `location_id`, `tourism_place`, `description`, `feature`, `status`) VALUES
(1, 3, 'Mysore palace', '', '', 'Active'),
(2, 2, 'Bangalore Palace', '', '', 'Active'),
(3, 2, 'Lalbagh Botanical Garden', '', '', 'Active'),
(4, 2, 'Cubbon Park', '', '', 'Active'),
(5, 2, 'Tippu sultan Place and Fort', '', '', 'Active'),
(6, 2, 'Bannerghatta Biological Park', '', '', 'Active'),
(7, 2, 'ISKCON Temple Bangalore', '', '', 'Active'),
(8, 2, 'Wonderla Bangalore', '', '', 'Active'),
(9, 3, 'Mysore palace', '', '', 'Active'),
(10, 3, 'Brindavan Gardens', '', '', 'Active'),
(11, 3, 'Somanathapura Temple', '', '', 'Active'),
(12, 3, 'Mysore Zoo', '', '', 'Active'),
(13, 3, 'Chamundeshwarai Temple', '', '', 'Active'),
(14, 3, 'Shuka Vana', '', '', 'Active'),
(15, 3, 'Bonsai Garden', '', '', 'Active'),
(16, 3, 'Karanji Lake', '', '', 'Active'),
(17, 3, 'GRS Fantasy Park', '', '', 'Active'),
(18, 3, 'St.Philomenas Chruch', '', '', 'Active'),
(19, 3, 'Jaganmohan Palace', '', '', 'Active'),
(20, 3, 'Talakadu Temple', '', '', 'Active'),
(21, 4, 'Abbey Falls', '', '', 'Active'),
(22, 4, 'Talacauvery', '', '', 'Active'),
(23, 4, 'Namdroling Monastery', '', '', 'Active'),
(24, 4, 'Gaddige Rajas Tomb', '', '', 'Active'),
(25, 4, 'Rajas Seat', '', '', 'Active'),
(26, 4, 'Madekeri Fort', '', '', 'Active'),
(27, 4, 'Coffee Plantation', '', '', 'Active'),
(28, 4, 'Omkareshwara Temple', '', '', 'Active'),
(29, 4, 'Chingara Falls', '', '', 'Active'),
(30, 29, 'Wayanad', '', '', 'Active'),
(31, 29, 'Cochin', '', '', 'Active'),
(32, 29, 'Munnar', '', '', 'Active'),
(33, 29, 'Kollam', '', '', 'Active'),
(34, 29, 'Kozhikode', '', '', 'Active'),
(35, 29, 'Bekal', '', '', 'Active'),
(36, 29, 'Guruvayur', '', '', 'Active'),
(37, 29, 'Kannur', '', '', 'Active'),
(38, 29, 'Kasargod', '', '', 'Active'),
(39, 29, 'Mangeshwara', '', '', 'Active'),
(40, 8, 'Netrani Island', '', '', 'Active'),
(41, 8, 'Murudeshwara Temple', '', '', 'Active'),
(42, 8, 'Murudeshwara Beach', '', '', 'Active'),
(43, 8, 'Murudeshwara Fort', '', '', 'Active'),
(44, 8, 'Statue Park', '', '', 'Active'),
(45, 8, 'Bhatkal Beach', '', '', 'Active'),
(46, 9, 'Dandeli WildLife Sanctuary', '', '', 'Active'),
(47, 9, 'Kali River', '', '', 'Active'),
(48, 9, 'Kavala Caves', '', '', 'Active'),
(49, 9, 'Syntheri Rock', '', '', 'Active'),
(50, 9, 'Shiroli peak', '', '', 'Active'),
(51, 9, 'Anshi National Park', '', '', 'Active'),
(52, 9, 'Supa Dam', '', '', 'Active'),
(53, 9, 'Sykes Point', '', '', 'Active'),
(54, 9, 'Kulgi Nature Camp', '', '', 'Active'),
(55, 10, 'Dabbe Falls', '', '', 'Inactive'),
(56, 10, 'Kodachadri', '', '', 'Active'),
(57, 10, 'Jog Falls', '', '', 'Active'),
(58, 10, 'Agumbe', '', '', 'Active'),
(59, 10, 'Mandagadde Bird Sanctuary', '', '', 'Active'),
(60, 10, 'Gudavi Bird Sanctuary', '', '', 'Active'),
(61, 10, 'Jogigundi Falls', '', '', 'Active'),
(62, 10, 'Sakerbayalu Elephant Camp', '', '', 'Active'),
(63, 10, 'Nagara Fort', '', '', 'Active'),
(64, 11, 'Agatti Island', '', '', 'Active'),
(65, 11, 'Bangaram Island', '', '', 'Active'),
(66, 11, 'Pitti Bird Sanctuary', '', '', 'Active'),
(67, 11, 'Kavaratti Island Marine Aquarium', '', '', 'Active'),
(69, 33, 'Everest View Jeep Tour', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; color: #333333; font-family: Oxygen; font-size: 15px; background-color: #ffffff; text-align: justify; -webkit-tap-highlight-color: transparent !important;\">There are many different ways to view world highest Mount Everest from Nepal depending on budget and availability of time. Shortest, cheapest and easiest option is one hour regular flight by plane from the Kathmandu airport which is called&nbsp;<strong style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\">Everest Experience Flight</strong>. Other easiest but most expensive option is flying over to the Everest View Hotel or Kongde View Hotel at an altitude just below 4000 meter above sea level. It takes four hours round trip with spending an hour having hot breakfast and appreciating view of the entire Khumbu Himalayan range which is called&nbsp;<strong style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\">Breakfast with Everest</strong>. Other longer options which involves&nbsp;<strong style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\">Trekking and Hiking Holidays</strong>&nbsp;including 7 Days Everest Panorama Trekking, 12 Days Everest Base Camp Trek and 15 Days Gokyo Valley -Chola Pass -Everest Base Camp visit.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; color: #333333; font-family: Oxygen; font-size: 15px; background-color: #ffffff; text-align: justify; -webkit-tap-highlight-color: transparent !important;\">The best way of viewing Mount Everest in a most economic way is&nbsp;<strong style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\">Everest View Jeep Experience</strong>. A scenic drive to the beautiful and untouched Nepal eastern region of Nepal called Solukhumbu district in our own private 4WD Land Cruiser jeep and very experienced driver. Enjoy the breathtaking views of Mount Everest and entire Western and Eastern Himalayan range from Annapurna to Kanchenjunga from the Chagesthan Temple, Dhap and Pattale villages. The plan fits families and individuals who are physically fit for ascending the altitude in short period of time. Enjoy two days stay in a home stay and hike to the view point to see Mt. Everest. Experience the hike in the green valley right under the snow capped mountains, hike over mountain trails with breath taking views of the mountain range and abundant greenery.</p>', '<h3 style=\"box-sizing: border-box; font-family: Oxygen; margin-top: 0px; color: #333333; background-color: #ffffff; -webkit-tap-highlight-color: transparent !important;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important; font-size: 14pt;\"><em style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important; color: #0000ff;\">OUTLINES OF ITINERARY</span></em></span></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; color: #333333; font-family: Oxygen; font-size: 15px; background-color: #ffffff; -webkit-tap-highlight-color: transparent !important;\">DAY 01: DRIVE TO MULKOT (493M) VIA DHULIKHEL (1550M) 98KM, 4-5 HRS<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\" />DAY 02: DRIVE TO DHAAP VILLAGE (2950M) 143KM, 6-7 HRS<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\" />DAY 03: SUNRISE. WALK AROUND VILLAGE, STUPA. AFTERNOON, DRIVE TO SALLERI &amp; PHAPLU (2413M) 32KM, 2 HRS<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\" />DAY 04: EXPLORE TOWNS. HIKE TO EVEREST VIEW POINT (3000M), 3-4 HRS. DRIVE TO DHAAP VILLAGE 32KM, 2 HRS<br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\" />DAY 05: DRIVE TO KATHMANDU (1300M) 240KM, 9-10 HRS</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; color: #333333; font-family: Oxygen; font-size: 15px; background-color: #ffffff; -webkit-tap-highlight-color: transparent !important;\"><strong style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent !important;\">(7 people in a group, meals, accommodation, transportation, staffs)</strong></p>', 'Active'),
(70, 2, 'ad', '', '', 'Active'),
(71, 34, 'top view', '', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

DROP TABLE IF EXISTS `vehicle_type`;
CREATE TABLE IF NOT EXISTS `vehicle_type` (
  `vehicle_typeid` int(10) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `vehicle_img` varchar(100) NOT NULL,
  `km_cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`vehicle_typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`vehicle_typeid`, `hotel_id`, `location_id`, `vehicle_type`, `vehicle_img`, `km_cost`, `status`) VALUES
(1, 33, 33, 'Maruti Suzuki Swift ZDi', '1941952736Maruti-Swift-Ownership-Experience.jpg', 10.00, 'Active'),
(2, 29, 31, 'Maruti Suzuki Swift ZDi', '1198632328f613edfa-b43a-41d5-98d0-478114c51bef.jpg', 18.00, 'Active'),
(3, 31, 31, 'Mercedes', '1767695086Maruti-Swift-Ownership-Experience.jpg', 25.00, 'Active'),
(4, 34, 34, 'brezza', '1225536025original (1).jpg', 50.00, 'Active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
