-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220428.abf60329bb
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 05:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travellisting`
--

-- --------------------------------------------------------

--
-- Table structure for table `custitinerary`
--

CREATE TABLE `custitinerary` (
  `id` int(11) NOT NULL,
  `pcode` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custitinerary`
--

INSERT INTO `custitinerary` (`id`, `pcode`, `days`, `heading`, `descr`, `date`, `regno`) VALUES
(10, '3', '1 Day', 'Dubai - Abu Dhabi City Tour ', 'Today After Breakfast, 0900 - 0930 Hours Pick Up Abu Dhabi city tour with Lunch followed by Ferrari Park OR After enjoying the breakfast at the hotel Pick Up from Hotel at (0900 Hours) and take you for fun filled day at the Atlantis The Palm You will Vist', 'September 9, 2018', '54722'),
(11, '3', '2 Days', 'Dubai - Bhuj Khalifa / Bollywood Park', 'Today after breakfast, get ready to enter the record books and experience a journey through Dubais exotic Arabian heritage, the extraordinary story behind Burj Khalifa as the new icon for the Middle East, and view the spectacular panorama from the observa', 'September 9, 2018', '54722'),
(15, '1', '1 Day', 'Shimla to Manali', 'Manali is a high-altitude Himalayan resort town in Indiaâ€™s northern Himachal Pradesh state. It has a reputation as a backpacking center and honeymoon destination. Set on the Beas River, itâ€™s a gateway for skiing in the Solang Valley and trekking in Pa', 'September 9, 2018', '54722'),
(16, '1', '2 Days', 'Manali Local Sightseeing Tour', 'Today morning after breakfast, visit Naggar. Naggar was the former capital of Kullu. It was founded by Raja Visudhpal and continued as a headquarters of the State until the capital was transferred to Sultanpur (Kullu) by Jagat Singh in 1460 A.D.', 'September 9, 2018', '54722'),
(17, '2', '1 Day', 'Munnar Local Sight seeing Tour', 'Today morning after breakfast visit Mattupetty dam which has an artificial lake built by a small hydroelectric project. Echo Point is known for the natural echo affect it produces.', 'September 10, 2018', '54722'),
(18, '2', '2 Days', 'Munnar - Alleppey', 'Alleppey Venice of the East check in to the hotel and later after a small fresh up will proceed for Sightseeing tour of Alleppey covering backwaters and beach and evening back to hotel OR Alleppey Houseboat (Applicable only if Houseboat Accommodation) Mor', 'September 10, 2018', '54722'),
(19, 'SI-19', '1 Day', 'Itinerary Heading1', 'testing', 'October 26, 2018', ''),
(20, '1', '3 Days', 'Excursion to Snow Point', 'Rohtang Pass - Located at a height of 3979 metres and at a distance of 51 kms from Manali, Rohtang Pass is on the highway to Keylong / Leh. In winters, the pass remains closed but is open from June to October for motor vehicles. This pass is a gateway to ', 'July 14, 2019', '54722'),
(21, '1', '3 Days', 'Delhi to Shimla', 'Shimla: Strung out along a 12km ridge, with steep forested hillsides falling away in all directions, the Himachal capital is a good appetite-whetter for the awe-inspiring mountain tracts of the states interior. Shimla is one of Indias most popular hill re', 'July 12, 2022', '54722');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enqid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enqid`, `name`, `mobile`, `email`, `service`) VALUES
(1, 'test', 1234567890, 'test@gmail.com', 'TEST'),
(3, 'test1', 1234567890, 'test1@gmail.com', 'Beautiful Kerala'),
(4, 'test3', 1234567890, 'test3@gmail.com', 'Mauritius Delight - 5 Star'),
(5, 'testing', 1234567890, 'testing@gmail.com', 'Mauritius Delight - 5 Star');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `pcode` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `pcode`, `caption`, `photo`, `regno`) VALUES
(1, '1', 'Mall and Cart Road', '370The_mall_road_shimla.JPG', '54722'),
(2, '1', 'Scandle Point', '157Scandle Point.jpg', '54722'),
(3, '1', 'Christ Church', '507Christ Church.jpg', '54722'),
(4, '1', 'The Ridge Shimla', '9324.jpg', '54722'),
(5, '2', 'Tea plantation', '284Tea plantation.jpg', '54722'),
(6, '2', 'Mattupetty dam', '878Mattupetty dam.jpg', '54722'),
(7, '3', 'Desert Safari', '323dessert safari.jpg', '54722'),
(8, '3', 'Sunset', '793sunset.jpg', '54722'),
(9, '4', 'Mauritius', '458Mauritius.jpg', '54722'),
(10, '4', 'Le Meridien, Mauritius', '962le meriden 3.jpg', '54722'),
(13, '6', 'Test', '190test.jpg', '54722'),
(14, '6', 'Sunset', '675sunset.jpg', '54722'),
(16, 'SI-19', 'testing', '2144.jpg', '54722'),
(17, 'A001', 'test', '7524.jpg', '54722');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `id` int(11) NOT NULL,
  `pcode` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `descr` varchar(800) NOT NULL,
  `regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`id`, `pcode`, `days`, `heading`, `descr`, `regno`) VALUES
(1, '1', '1 Day', 'Delhi to Shimla', 'Shimla: Strung out along a 12km ridge, with steep forested hillsides falling away in all directions, the Himachal capital is a good appetite-whetter for the awe-inspiring mountain tracts of the states interior. Shimla is one of Indias most popular hill resorts, buzzing with a happy flow of Indian vacationers and full of echoes of its past role as the summer capital of British India.', '54722'),
(3, '1', '3 Days', 'Shimla to Manali', 'Manali is a high-altitude Himalayan resort town in Indiaâ€™s northern Himachal Pradesh state. It has a reputation as a backpacking center and honeymoon destination. Set on the Beas River, itâ€™s a gateway for skiing in the Solang Valley and trekking in Parvati Valley.', '54722'),
(4, '1', '4 Days', 'Excursion to Snow Point', 'Rohtang Pass - Located at a height of 3979 metres and at a distance of 51 kms from Manali, Rohtang Pass is on the highway to Keylong / Leh. In winters, the pass remains closed but is open from June to October for motor vehicles. This pass is a gateway to Lahaul Spiti, Pangi and Leh valley.', '54722'),
(5, '1', '5 Days', 'Manali Local Sightseeing Tour', 'Today morning after breakfast, visit Naggar. Naggar was the former capital of Kullu. It was founded by Raja Visudhpal and continued as a headquarters of the State until the capital was transferred to Sultanpur (Kullu) by Jagat Singh in 1460 A.D.', '54722'),
(6, '1', '6 Days', 'Manali to Delhi Airport / Railway Station Drop', 'Today After Early Morning Breakfast Departure to Delhi. On Arrival at Delhi our Driver will drop you at Railway Station / Ariport for your Onwards Journey.', '54722'),
(7, '2', '1 Day', 'Cochin - Munnar', 'Munnar: breathtakingly beautiful - a haven of peace and tranquility - the idyllic tourist destination in God is own country. Set at an altitude of 6000 ft in Idukki district, Munnar was the favored summer resort of the erstwhile British rulers in the colonial days.', '54722'),
(8, '2', '2 Days', 'Munnar Local Sight seeing Tour', 'Today morning after breakfast visit Mattupetty dam which has an artificial lake built by a small hydroelectric project. Echo Point is known for the natural echo affect it produces.', '54722'),
(9, '2', '3 Days', 'Munnar - Alleppey', 'Alleppey Venice of the East check in to the hotel and later after a small fresh up will proceed for Sightseeing tour of Alleppey covering backwaters and beach and evening back to hotel OR Alleppey Houseboat (Applicable only if Houseboat Accommodation) Morning after breakfast proceed to Alleppey , where you will be booked to stay overnight on the Houseboat.', '54722'),
(10, '2', '4 Days', 'Alleppey - Cochin', 'After breakfast, check out from Hotel / Houseboat. Drive to Cochin and transfer to Airport / Railway Station for your onward journey.', '54722'),
(11, '3', '1 Day', 'Arrival at Dubai - Desert Safari with Belly Dance Performance', 'On Arrival, After Immigration Clearance proceed towards Parking area where our Airport Local Representative will take you to Dubai Hotel. Standard check in of Hotel is 2 PM. We can request for an early check in but cannot guarantee it.', '54722'),
(12, '3', '2 Days', 'Half Day City Tour with Dubai Frame and Dhow Cruise', 'Our route takes you to some of Dubai is beautiful landmarks, including the most magnificent Jumeirah Mosque built in 1979 and designed in the style of Fatimi mosques in Egypt. See Jumeriah Public Beach and Burj Al Arab the most luxurious and tallest standing hotel in the world.', '54722'),
(13, '3', '3 Days', 'Dubai - Abu Dhabi City Tour ', 'Today After Breakfast, 0900 - 0930 Hours Pick Up Abu Dhabi city tour with Lunch followed by Ferrari Park OR After enjoying the breakfast at the hotel Pick Up from Hotel at (0900 Hours) and take you for fun filled day at the Atlantis The Palm You will Vist the Lost Chamber and have Fun At the Slides in the Aqua venture (Optional Sight seeing at extra cost ).', '54722'),
(14, '3', '4 Days', 'Dubai - Bhuj Khalifa / Bollywood Park', 'Today after breakfast, get ready to enter the record books and experience a journey through Dubais exotic Arabian heritage, the extraordinary story behind Burj Khalifa as the new icon for the Middle East, and view the spectacular panorama from the observatory At the Top, Burj Khalifa. Explore the unique, interactive Burj Khalifa multi-media exhibits.', '54722'),
(15, '3', '5 Days', 'Dubai', 'Morning after breakfast check out from the hotel at around 11 AM. We can keep our Luggage in the Luggage Room and keep this day free for final shopping & other optional activities. ', '54722'),
(16, '4', '1 Day', 'On arrival at Airport', 'On arrival at Airport, after clearing the immigration and custom we come to the Exit hall of the Airport. Here our Airport Representative will meet you and take you to Hotel. (Standard check in time is 1500 Hours). Rest of the day is free for you to relax or explore your picturesque surroundings.', '54722'),
(17, '4', '2 Days', 'Mauritius - North Tour', 'After breakfast, Drive to Port Louis for a visit of the capital via the Citadel & its surrounding area. View the Champ de Mars race course, inaugurated in 1812 it the oldest horse - racing club in the Southern Hemisphere, and one of the oldest in the world. ', '54722'),
(18, '4', '3 Days', 'Mauritius - South Tour', 'After breakfast, Drive to Curepipe. Visit the ship making factory. Shopping at the duty free shops in Floreal. View the scenic town of Curepipe & its surroundings from the extinct crater of Trou aux Cerfs. Afternoon drive through the nature park of Black River & Plaine Champagne to Chamarel village. ', '54722'),
(19, '4', '4 Days', 'Ile aux Cerfs - Mauritius', 'After breakfast, Drive to Belle Mare to enjoy aquatic activities like parasailing, undersea walk, waterfall visit or banana tube ride. Drive to Trou d\'Eau douce for the speedboat transfer to Ile aux Cerfs, the islet with the most beautiful beach and the clearest turquoise water. ', '54722'),
(20, '4', '5 Days', 'Overnight at Hotel', 'Morning after Breakfast day free at your disposal.', '54722'),
(21, '4', '6 Days', 'Mauritius', 'Morning after Breakfast day free at your disposal.', '54722'),
(25, '3', '6 Days', 'testing', 'testing', '54722'),
(26, 'SI-19', '1 Day', 'Itinerary Heading1', 'testing', '54722'),
(27, 'A001', 'Day 1', 'Testing heading', 'testing trip info', '54722');

-- --------------------------------------------------------

--
-- Table structure for table `tripcategory`
--

CREATE TABLE `tripcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `triptype` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `about` varchar(400) NOT NULL,
  `regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripcategory`
--

INSERT INTO `tripcategory` (`id`, `category`, `triptype`, `cover`, `about`, `regno`) VALUES
(3, 'Kerala', 'Domestic Packages', '720kerala.jpg', '', '54722'),
(4, 'Maharashtra', 'Domestic Packages', '553maharashtra.jpg', '', '54722'),
(5, 'Dubai', 'International Packages', '660test.jpg', 'testing', '54722'),
(6, 'Singapore', 'Domestic Packages', '531singapur.jpg', '', '54722'),
(7, 'Kashmir', 'Domestic Packages', '191sunset.jpg', '', '54722'),
(8, 'Mauritius', 'Domestic Packages', '298Mauritius.jpg', 'testing', '54722'),
(9, 'Karnataka', 'Domestic Packages', '886main-image-25.jpg', '', '54722'),
(10, 'Himachal', 'Domestic Packages', '257himachal.jpg', 'testing', '54722'),
(11, 'test', 'International Packages', '6122.jpg', 'test', '54722'),
(12, 'Latur', 'Domestic Packages', '2566.jpg', 'Testing summary', '54722'),
(14, 'test4', 'Domestic Packages', '246nature.jpg', 'Natural Beauty', '54722');

-- --------------------------------------------------------

--
-- Table structure for table `tripinfo`
--

CREATE TABLE `tripinfo` (
  `pcode` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `trtype` varchar(255) NOT NULL,
  `package` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `scity` varchar(255) NOT NULL,
  `ecity` varchar(255) NOT NULL,
  `about` varchar(400) NOT NULL,
  `header` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripinfo`
--

INSERT INTO `tripinfo` (`pcode`, `pname`, `trtype`, `package`, `duration`, `scity`, `ecity`, `about`, `header`, `destination`, `regno`) VALUES
('1', 'Magical Himachal', 'Domestic Packages', ' 14200', '5 Nights / 6 Days', 'Shimla', 'Manali', 'The Himachal capital is a good appetite-whetter for the awe-inspiring mountain tracts of the states interior.', '835main-image-6.jpg', 'Himachal', '54722'),
('2', 'Beautiful Kerala', 'Domestic Packages', '5400', '3 Nights / 4 Days', 'Munnar', 'Alleppey', 'Munnar is such a beautiful place in Kerala, which cannot be portrayed in a single canvas. Everything and anything here will make us excited.', '299kerala.jpg', 'Kerala', '54722'),
('3', 'Glittering Dubai', 'International Packages', 'USD 386', '4 Nights / 5 Days', 'Dubai', 'Abu Dhabi', 'Our route takes you to some of Dubai is beautiful landmarks, including the most magnificent Jumeirah Mosque built in 1979 and designed in the style of Fatimi mosques in Egypt.', '697main-image-38.jpg', 'Dubai', '54722'),
('4', 'Mauritius Delight - 5 Star', 'International Packages', 'USD 613', '6 Nights / 7 Days', 'Mauritius', 'Mauritius', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ', '738main-image-42.jpg', 'Mauritius', '54722'),
('5', 'Adorable Karnataka', 'Domestic Packages', '11850', '5 Nights / 6 Days', 'Bangalore', 'Gokarana', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '333main-image-25.jpg', 'Karnataka', '54722'),
('6', 'Graceful Karnataka', 'Domestic Packages', '10750', '5 Nights / 6 Days', 'Bangalore', 'Shimoga', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '21main-image-24.jpg', 'Karnataka', '54722'),
('7', 'Karnataka Delights', 'Domestic Packages', '18600', '8 Nights / 9 Days', 'Bangalore', 'Udupi', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '615main-image-26.png', 'Karnataka', '54722'),
('A001', 'Package A001', 'International Packages', '10000', '2 Days/ 1 Night', 'Latur', 'Benglore', '', '4871.jpg', 'test', '54722'),
('L001', 'Latur Tour', 'Domestic Packages', '10000', '2 Days/ 1 Night', 'Nitur', 'Latur', '', '1285.jpg', 'Latur', '54722'),
('MH-4', 'Maharashtra Tour', 'Domestic Packages', '5000', '5Days / 4Night', '', '', '', '497dessert safari.jpg', 'Maharashtra', '54722'),
('si-18', 'Best of Singapore ', 'Domestic Packages', 'SGD 453', '5 Nights / 6 Days', 'Singapore', 'Lumpur', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2singapur.jpg', 'Singapore', '54722'),
('SI-19', 'Latest Singapure', 'Domestic Packages', '15000', '5Days/4Night', '', '', 'testing', '685Christ Church.jpg', 'Singapore', '54722'),
('SI-20', 'Singapur Tours', 'Domestic Packages', '12000', '5Days/4Night', '', '', '', '180main-image-38.jpg', 'Singapore', '54722');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `regno` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`regno`, `fullname`, `mobile`, `email`, `password`) VALUES
(54722, 'Shri Tours & Travel', '9689427382', 'test@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `pcode` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `pcode`, `caption`, `video`, `type`, `regno`) VALUES
(1, 'SI-20', 'nature', '234nature.jpg', 'Image', '54722');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custitinerary`
--
ALTER TABLE `custitinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enqid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripcategory`
--
ALTER TABLE `tripcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `tripinfo`
--
ALTER TABLE `tripinfo`
  ADD PRIMARY KEY (`pcode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`regno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custitinerary`
--
ALTER TABLE `custitinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tripcategory`
--
ALTER TABLE `tripcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `regno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54723;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



