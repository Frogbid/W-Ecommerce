-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 01:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `hno` text NOT NULL,
  `society` text NOT NULL,
  `area` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `landmark` text DEFAULT NULL,
  `type` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `uid`, `hno`, `society`, `area`, `pincode`, `landmark`, `type`, `status`, `name`) VALUES
(1, 3, '56', 'Nirala Abashik', 'Nirala', 9100, 'Khulna', 'Home', 1, 'Dhali Shuvo'),
(2, 4, 'e33', 'nirala', 'Nirala', 1234, '1no main road', 'home', 1, 'mithun saha '),
(3, 5, 'Ex33', 'Nirala', 'Nirala', 123, '1 na.main road', 'Home', 1, 'Tithi sen'),
(4, 6, '23', 'andir pukur len', 'Gollamari', 1111, 'west bania khamar', 'home', 1, 'sarif'),
(5, 9, '251', '16', 'Nirala', 1234, 'Khulna', 'Nirala R/A', 1, 'Ujjal Barmon'),
(6, 10, '25', 'aaa', 'Nirala', 55555, 'aa', 'nirala 3 no. road', 1, 'P.G'),
(7, 11, 'Nurani Madrasa', 'Atim khana mor', 'Moilapota', 1212, 'Nurani Madrasa , 25 no ward community center', 'Home', 1, 'Farzana'),
(8, 13, '9/1', '9/1', 'Nirala', 123, 'Al Amin sorok ', '9/1 Al Amin sorok, Bagmara, Khulna. ', 1, 'Tamanna Sharmin Rupa'),
(9, 18, '14/7', 'baghmara', 'Nirala', 123, 'baghmara bilen', 'monosa vila', 1, 'sujoy sen'),
(10, 18, '14/7', 'baghmara', 'Nirala', 123, 'baghmara bilen', 'monosa vila', 1, 'sujoy sen'),
(11, 22, '9', 'muslim para', 'Moilapota', 1, 'muslim para road,khulna', 'home', 1, 'ruhan'),
(12, 25, '11', 'Seikhpara Bagan Bari', 'Shib Bari', 9100, 'Seikpara Baganbari, Khusi Apar Dokaner Shamne', 'Home', 1, 'Pranto'),
(13, 26, '25', 'nirala abasik elaka', 'Nirala', 852, 'nich tola (Ground floor)', 'house no 25, road no 3,  nirala abasik elaka khulna', 1, 'Ahsan'),
(14, 14, '25', 'ds', 'Nirala', 555, 'fghjk', 'Road no 3', 1, 'Mehedi Hassan'),
(15, 27, '1/2', 'kasem nagor', 'Gollamari', 1234, '4 kasem nagor', 'home', 1, 'nibesh'),
(16, 31, '82kha', 'Road No 7', 'Nirala', 1710240652, 'World Fish LTD', 'Home', 1, 'Abdullah Al Sahad'),
(17, 32, '96', 'west baniakhamar', 'Gollamari', 1, 'alkatramill', 'home', 1, 'anupam'),
(18, 33, 'road no-18,house-338', 'nirala residencial area', 'Nirala', 1234, '5/b', 'road no-18,house no-338,', 1, 'shafayet'),
(19, 34, '198', 'society\n', 'Nirala', 266070, 'landmark', 'rod 13 nirala r/a Khulna ', 1, 'shabuddin ahmad (shawon) '),
(20, 12, 'E33', 'middle class ', 'Nirala', 9100, 'nirala mosque ', 'Present ', 1, 'lov'),
(21, 38, '35', 'Nirala ', 'Nirala', 19891, 'R/A', 'road no#4', 1, 'Feroza'),
(22, 39, '5', '49', 'Nirala', 9072, 'nirala', 'Khulna', 1, 'B M HADI'),
(23, 30, '19', 'nakkhotro', 'Nirala', 6549, 'around store', 'Besides of UCB Atm Bhoot', 1, 'Pizush '),
(24, 40, '84/1', 'hazi Ismail road', 'Gollamari', 1, 'banorgati,alamin moholla', 'home', 1, 'Biplab Debnath'),
(25, 42, '23', 'janina', 'Nirala', 25, 'nirala', 'baghmara primary school road', 1, 'Nikkon Mondal'),
(26, 8, '170/', 'kasamsatok', 'Gollamari', 6541, 'kasamsarok', '170/ka road num 4 kasam sarok Gollamary khulna', 1, 'Syed Iqbal Hosen'),
(27, 44, '19', 'Nirala', 'Nirala', 9100, 'Nirala', 'Road no:3', 1, 'Reaz'),
(28, 20, '11', 'iqbalnagor', 'Moilapota', 1, '12', 'home', 1, 'akhter'),
(29, 20, '11', 'iqbalnagor', 'Moilapota', 1, '12', 'home', 1, 'akhter'),
(30, 19, '11', 'Dakbangla', 'Moilapota', 9100, 'Dakbangla', '11,Dharmashava Cross Road', 1, 'Prosun Das'),
(31, 45, '316', 'Nirala R/A', 'Nirala', 9100, 'Nirala', '18 no nirala R/A', 1, 'Sodipto Kundu'),
(32, 48, 'k69', 'nirala', 'Nirala', 1, 'road6', 'home', 1, 'rahul'),
(33, 49, '30', 'nirala', 'Nirala', 1, '29', 'home', 1, 'shobuj'),
(34, 47, '44', 'najirghat', 'Nirala', 1234, 'nagirghat dr. goli', 'home', 1, 'Milon Kumar'),
(35, 51, '80', 'Road No 7', 'Nirala', 9100, '3rd floor, south side', 'house', 1, 'munna'),
(36, 53, '12', 'baghmara', 'Nirala', 1, 'baghmara main road', 'home', 1, 'goutom'),
(37, 55, '130', 'prantika', 'Nirala', 1, '11', 'home', 1, 'farhana'),
(38, 16, '140', '24', 'Nirala', 9100, 'bangmara', '140 bagmara main road,khulna', 1, 'Dip Roy'),
(39, 57, '17 (2nd floor)', 'Baghmara', 'Nirala', 0, 'Backside of chairman bari more', 'Eidgah bye lane ', 1, 'Md Asif Mahmud Tetas '),
(40, 58, '429', 'Road: 25, In front of Nirala Park', 'Nirala', 9100, 'Amin Palace', 'Home', 1, 'Shahirul Kabir Sami'),
(41, 59, '345', 'Nirala', 'Nirala', 339, 'Near Khaleda Parvin Clinick', 'Road 18', 1, 'Samar Sarker'),
(42, 61, '456', 'Residents ', 'Nirala', 9000, 'Khulna ', 'Road No 26', 1, 'Mohammad Raqibul Hasan '),
(43, 64, '245', 'R/A', 'Nirala', 3086, 'nirala', 'Nirala road no. 12', 1, 'Md shahinuzzaman'),
(44, 52, 'X-33', 'Nirala Residential Area', 'Nirala', 9301, 'Road no 01', 'kirmani', 1, 'Ripon'),
(45, 68, '224', 'nirala', 'Nirala', 1, '21', 'home', 1, 'Anwar '),
(46, 70, '107', 'nirala', 'Nirala', 2, '8', 'home', 1, 'Parvez Shohel'),
(47, 73, '111', 'mohammod nagar', 'Gollamari', 2, 'main road', 'home', 1, 'tarun'),
(48, 74, '25/2', 'xxxx', 'Nirala', 9100, 'Chondi dr er golli', '25/2 Baghmara primary school road', 1, 'Dhimanendu'),
(49, 75, '87/3', 'Bagmara', 'Nirala', 9100, 'Adarsha palli', 'home', 1, 'ryhan islam'),
(50, 77, 'x33', 'nirala', 'Nirala', 9100, 'ucb bank', 'road now 1', 1, 'Ripon'),
(51, 80, '18/342', 'r/a', 'Nirala', 17107, 'khulna', 'nirala r/a', 1, 'onuva'),
(52, 81, '393', 'Dr. Ikbal Hossain', 'Nirala', 9100, 'Khulna ', 'Road No# 21', 1, 'SharifMoshiur Rahman'),
(53, 82, '20/12', 'Rosulbag jame mosjid', 'Nirala', 9100, 'Mistry para', 'Mistry para shahid zia shorok', 1, 'Sumon Azam'),
(54, 50, '01', '00', 'Nirala', 2010, 'Najirghat \n', '48, Kader Khan Road', 1, 'Sukanta Dhali'),
(55, 85, 'House no: 69', 'Road 6', 'Nirala', 69, 'House name: Irin', '4th floor', 1, 'Tuhin Biswas'),
(56, 69, '47', 'nirala', 'Nirala', 123456, 'rasidintal area', 'nirala road no 8', 1, 'Chinmoy Gain'),
(57, 88, '136', 'nirala r/a', 'Nirala', 1, '10 no road', '2nd floor', 1, 'nirala basha'),
(58, 89, '136', '2nd floor', 'Nirala', 1234, 'Road no 10', 'Road 10', 1, 'Sharif Rayhan'),
(59, 89, '136', '2nd floor', 'Nirala', 1234, 'Road no 10', 'Road 10', 1, 'Sharif Rayhan'),
(60, 79, '264', 'Road 16', 'Nirala', 9201, '2 storey building', 'road 16', 1, 'sumon\n'),
(61, 93, '59', 'Nirala R/A', 'Nirala', 9200, 'Nirala', 'Road no: 05', 1, 'Tanvir Ovi'),
(62, 94, '50', 'Ikbalnagar', 'Moilapota', 9100, 'Ikbal Nagar Girls School', '56/2 B K Roy Road', 1, 'A. Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(14) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 1,
  `approve` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `fname`, `lname`, `address`, `contact_no`, `nid`, `gender`, `user_type`, `approve`) VALUES
(1, 'superadmin', '123456', 'Super', 'Admin', 'Khulna', '01111111111', '0111111111', 'Male', 0, 0),
(2, 'Subadmin1', '123456789', 'Super', 'Admin', 'Khulna', '01111111111', '0111111111', 'Male', 1, 0),
(3, 'Subadmin2', '123456789', 'Super', 'Admin', 'Khulna', '01111111111', '0111111111', 'Male', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` text NOT NULL,
  `pname` text NOT NULL,
  `pimg` text NOT NULL,
  `ptype` text NOT NULL,
  `price` text NOT NULL,
  `discount` float NOT NULL,
  `qty` text NOT NULL,
  `total` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`id`, `uid`, `pid`, `pname`, `pimg`, `ptype`, `price`, `discount`, `qty`, `total`) VALUES
(62, 60, '43', 'Sprite Soft Drink', 'cat/thump_1594677313.jpg', '2', '2', 0, '1', 60),
(63, 60, '228', 'Olympic energy plus family biscuit', 'cat/thump_1595003455.jpg', '0', '0', 0, '1', 38),
(64, 60, '493', 'Ultra Zest Sodesh Muri', 'cat/thump_1595281173.jpg', '0', '0', 0, '1', 32),
(65, 60, '308', 'Ruchi Bbq Chanachur', 'cat/thump_1595112504.jpg', '1', '1', 0, '1', 65),
(79, 69, '524', 'Omera Lp Gas', 'cat/thump_1595311474.jpg', '0', '0', 0, '1', 790),
(82, 87, '890', 'RC Cola (1.25L/2L)', 'cat/thump_5f396271ca58b1597596273.png', '1', '1', 0, '1', 60),
(83, 87, '40', ' Diet Coke Drink', 'cat/thump_1594675186.jpg', '0', '0', 0, '1', 40),
(84, 87, '49', 'Pure Cow Milk', 'cat/thump_1594737115.jpg', '0', '0', 0, '1', 35);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` text NOT NULL,
  `catimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `catimg`) VALUES
(2, 'Test Catagory', 'cat/thump_1644818993.png'),
(3, 'Test Catagory 1', 'cat/thump_1644819003.png'),
(4, 'Test Catagory 2', 'cat/thump_1644820943.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(8) NOT NULL,
  `oid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `pid` text NOT NULL,
  `ptype` text NOT NULL,
  `pprice` text NOT NULL,
  `ddate` text NOT NULL,
  `timesloat` text NOT NULL,
  `order_date` date NOT NULL,
  `status` text NOT NULL,
  `qty` text NOT NULL,
  `total` float NOT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `p_method` text DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 0,
  `photo` longtext DEFAULT NULL,
  `s_photo` longtext DEFAULT NULL,
  `r_status` varchar(200) DEFAULT 'Not Assigned',
  `pickup` text DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `tid` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `sname` text NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `psdesc` text NOT NULL,
  `pgms` text NOT NULL,
  `pprice` text NOT NULL,
  `status` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pimg` text NOT NULL,
  `prel` longtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `popular` int(11) NOT NULL,
  `area` varchar(255) NOT NULL DEFAULT 'Mohanogor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `prel`, `date`, `discount`, `popular`, `area`) VALUES
(1, 'Test Product P', 'Test', 3, 2, 'Test Description', '1 gms$;250 gms', '1$;10', 1, 1, 'cat/thump_1644819684.jpg', 'cat/0download (1).png,cat/17.jpg', '2022-02-14 12:21:24', 0, 0, 'Mohanogor'),
(2, 'Test Product 25', 'Test', 4, 3, 'Not Interested', '1 gms$;250 gms', '1$;10', 1, 1, 'cat/thump_1644821534.png', 'cat/07.jpg,cat/16.jpg,cat/25.jpg', '2022-02-14 12:52:14', 5, 0, 'Mohanogor');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `currency` text CHARACTER SET utf8 NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `about_us` longtext NOT NULL,
  `contact_us` longtext NOT NULL,
  `o_min` int(11) NOT NULL,
  `timezone` text NOT NULL,
  `tax` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `title` text NOT NULL,
  `terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `currency`, `privacy_policy`, `about_us`, `contact_us`, `o_min`, `timezone`, `tax`, `logo`, `favicon`, `title`, `terms`) VALUES
(1, 'BDT', '<p><br></p>\r\n', '', '<p><br></p>', 100, 'Asia/Dhaka', 0, 'website/thump_1644821581.png', 'website/thump_1644821581.png', 'Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `cat_id`, `name`, `img`) VALUES
(1, 2, 'Test Subcatagory', 'subcategory/thump_1644819121.png'),
(2, 3, 'Test Subcatagory 1', 'subcategory/thump_1644819135.png'),
(3, 4, 'Test Subcatagory 2', 'subcategory/thump_1644820967.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `imei` text NOT NULL,
  `email` text NOT NULL,
  `ccode` text NOT NULL,
  `mobile` text NOT NULL,
  `rdate` datetime NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `pin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
