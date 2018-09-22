-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2015 at 01:34 AM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `destinat_jobsinagri`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `security_question` varchar(200) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `twitter` varchar(500) NOT NULL,
  `google` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `security_question`, `facebook`, `twitter`, `google`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'aklovelyarun700@gmail.com', 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE IF NOT EXISTS `apply` (
  `id` int(200) NOT NULL,
  `job_id` varchar(200) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `applicant_email` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`id`, `job_id`, `company_email`, `applicant_email`, `date`) VALUES
(23, '17', 'op.kumawat30@gmail.com', 'op.kumawat78@gmail.com', 'Friday 16th  October 2015 07:25:47 AM'),
(24, '17', 'op.kumawat78@gmail.com', 'mohan.sharma82@gmail.com', 'Friday 16th  October 2015 08:53:20 AM'),
(25, '16', 'amitiipmb@rediffmail.com', 'amitiipmb@rediffmail.com', 'Saturday 17th  October 2015 12:34:23 AM'),
(26, '19', 'madhu.august82@gmail.com', 'amitiipmb@rediffmail.com', 'Saturday 17th  October 2015 09:26:30 AM'),
(27, '51', '', 'mohan_sharma82@rediffmail.com', 'Wednesday 21st  October 2015 02:41:09 AM'),
(29, '50', '', 'mohan_sharma82@rediffmail.com', 'Thursday 22nd  October 2015 09:50:30 AM'),
(30, '49', '', 'mohan_sharma82@rediffmail.com', '24th October 2015'),
(31, '49', '', 'madhu.august82@gmail.com', '24th October 2015'),
(33, '51', '', 'madhu.august82@gmail.com', '24th October 2015'),
(35, '50', 'mohan.sharma82@gmail.com', 'madhu.august82@gmail.com', '24th October 2015'),
(36, '53', 'mohan.sharma82@gmail.com', 'mohan_sharma82@rediffmail.com', '24th October 2015'),
(37, '53', 'mohan.sharma82@gmail.com', 'amitiipmb@rediffmail.com', '26th October 2015'),
(38, '54', 'amit.bayer@rediffmail.com', 'amitiipmb@rediffmail.com', '26th October 2015'),
(39, '55', 'aklovelyarun700@gmail.com', 'admin', '26th October 2015');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employeer`
--

CREATE TABLE IF NOT EXISTS `employeer` (
  `id` int(200) NOT NULL,
  `user_email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `reg_date` varchar(200) NOT NULL,
  `reset` varchar(5555) NOT NULL,
  `email_verify` varchar(5000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeer`
--

INSERT INTO `employeer` (`id`, `user_email`, `password`, `company`, `contact`, `address`, `city`, `state`, `zip`, `reg_date`, `reset`, `email_verify`) VALUES
(24, 'mohan.sharma82@gmail.com', 'e2d8a98f4a9c850135b78560d721e74c', 'Makemyshift', '9799030777', 'Vishali Nagar- Jaipur', 'Jaipur', 'Rajasthan', '302012', '20/10/2015', '', ''),
(25, 'amit.bayer@rediffmail.com', '3b864cf1c41336d275f1caa9049cce41', 'Sharma consultant', '9413345073', '18 A bajrang nagar', 'jaipur', 'Rajasthan', '302033', '', '', ''),
(26, 'aklovelyarun700@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'inventive infosys', '9529149189', 'jaipur', 'jaipur', 'Rajasthan', '302012', '26th October 2015', '', 'omprakash'),
(27, 'eqwew', '6b9cd35431512db952b19ae8e6219739', 'grwrwr', '2333', 'wrwrrw', '', '----Select a State ------', '', '27th October 2015', '', ''),
(28, 'op.kum@gmail.com', 'e053176dfce7744cec69de07fb65f5e6', 'grwrwr', '2333', 'wrwrrw', 'wrrw', 'Mizoram', '5555', '27th October 2015', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers`
--

CREATE TABLE IF NOT EXISTS `jobseekers` (
  `id` int(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `ug` varchar(500) NOT NULL,
  `ug_university` varchar(500) NOT NULL,
  `pg` varchar(500) NOT NULL,
  `pg_university` varchar(500) NOT NULL,
  `current_ctc` varchar(100) NOT NULL,
  `exp_ctc` int(11) NOT NULL,
  `current_location` varchar(100) NOT NULL,
  `per_address` varchar(200) NOT NULL,
  `pre_location` varchar(200) NOT NULL,
  `current_company` varchar(200) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `keyskill` varchar(1000) NOT NULL,
  `functional_area` varchar(500) NOT NULL,
  `lan1` varchar(20) NOT NULL,
  `lan2` varchar(20) NOT NULL,
  `lan3` varchar(20) NOT NULL,
  `resume` mediumtext NOT NULL,
  `date` varchar(100) NOT NULL,
  `last_update` int(100) NOT NULL,
  `dob_m` varchar(10) NOT NULL,
  `dob_y` varchar(10) NOT NULL,
  `dob_d` varchar(10) NOT NULL,
  `reset` varchar(2000) NOT NULL,
  `email_verify` varchar(5000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseekers`
--

INSERT INTO `jobseekers` (`id`, `fullname`, `email`, `password`, `mobile`, `ug`, `ug_university`, `pg`, `pg_university`, `current_ctc`, `exp_ctc`, `current_location`, `per_address`, `pre_location`, `current_company`, `experience`, `keyskill`, `functional_area`, `lan1`, `lan2`, `lan3`, `resume`, `date`, `last_update`, `dob_m`, `dob_y`, `dob_d`, `reset`, `email_verify`) VALUES
(22, 'Mohan Lal ', 'mohan_sharma82@rediffmail.com', 'e2d8a98f4a9c850135b78560d721e74c', '8358880548', 'B.Sc.Ag', 'Rajasthan Agri University', 'MBA-Agri', 'AAI-DU', '14,00,000', 1600000, 'Jaipur', 'Vill-Bagawara', 'Anywhere in India', 'Thomson Reuters', '11', 'Agri Marketing, Seed, Sales', 'Agri input-Pesticides', 'English', 'Hindi', 'Rajasthani', '19-10-15_Mohan CV.doc', 'Monday 19th  October 2015 08:34:29 AM', 0, '1', '1982', '15', '', ''),
(23, 'omprakash', 'op.kumawat30@gmail.com', 'admin', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(24, 'arun', 'aklovelyarun700@gmail.com', 'admin', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', ''),
(25, 'Madhu Sharma', 'madhu.august82@gmail.com', 'e2d8a98f4a9c850135b78560d721e74c', '49279798978', 'BBA', 'RAU', 'MBA', 'MPAUT', '16008380', 179379739, 'Bikaner', 'Bikaner', 'Anywhere In INdia', 'Bayer CropScience', '10', 'Agri, Marketing, Rural, Sales', 'Agri input-Seeds', 'HIndi', 'English', 'Rajasthani', '24-10-15_', 'Saturday 24th  October 2015 01:57:43 AM', 0, '08', '1982', '15', '', ''),
(26, 'Jai Prakash Srivastava', 'jai2608@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8736074265', 'Graduation', 'Allahabad Univerasity', '', '', '120000', 150000, 'Allahabad', '87/76/1 Mahabiran Lane Mutthiganj Allahabad', 'Allahabad', 'Mansoon seeds Pvt. Ltd', '5', '', 'Business Development', 'Hindi', 'English', 'Gujrati', '24-10-15_', 'Saturday 24th  October 2015 01:54:24 PM', 0, '08', '1980', '26', '', ''),
(27, 'amit sharma', 'amitiipmb@rediffmail.com', '3b864cf1c41336d275f1caa9049cce41', '9413345073', 'Bsc (Agriculture)', 'RAU Bikaner', 'PGDABPM', 'IIPM bangalore', '15 lac', 20, 'jaipur', '18 a Bajrang Nagar Chack gator Jaipur', 'Jaipur', 'sharma', '13', 'Sales & Marketing', 'Agri input-Seeds', 'English', 'hindi', 'Rajasthani', '26-10-15_CV Amit sharma.doc', 'Monday 26th  October 2015 03:55:19 AM', 0, '01', '1982', '05', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE IF NOT EXISTS `job_post` (
  `id` int(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `min_experience` varchar(10) NOT NULL,
  `max_experience` varchar(10) NOT NULL,
  `jobdiscription` mediumtext NOT NULL,
  `app_email` varchar(500) NOT NULL,
  `company` varchar(500) NOT NULL,
  `website` varchar(500) NOT NULL,
  `company_discription` mediumtext NOT NULL,
  `logo` varchar(50000) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `approvel` int(11) NOT NULL,
  `hot_job` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id`, `email`, `title`, `location`, `type`, `category`, `qualification`, `skill`, `salary`, `min_experience`, `max_experience`, `jobdiscription`, `app_email`, `company`, `website`, `company_discription`, `logo`, `user_email`, `date`, `approvel`, `hot_job`) VALUES
(50, 'mohan.sharma82@gmail.com', 'SSE-Maharsthra', 'Malegaon , Bhusawal , Satara , Sangali , Nandurbar', 'Full Time', 'R&D-seeds', '', '', 'As Per Industry', '0', '3', 'Looking for sales people for the position of Sales Executive/Senior Sales Executive for Malegaon, Bhusawal, Sangali, Satara, Nandurbar\r\n\r\n1. Developing market for Zytonic soilconditioner. \r\n\r\n2. Executing marketing strategies.\r\n\r\n3. Locating and finalizing prospective franchise owners in the assigned area.\r\n\r\n4. Ensuring extensive market penetration and presence by maximizing demos conducted throughout the alloted area/region.\r\n\r\n5. Conducting regular performance assessments of Marketing Executives and Field Assistants and initiating corrective actions to improve performance.\r\n\r\n6. Co-ordinating the activities of marketing executives with franchise owners to ensure targets are met and surpassed.\r\n\r\n7. Relationship building and maintenance with Zydex Franchise owners.\r\n\r\n8. Continuously making amendments to the current marketing strategy over time in order to maximize presence and sales in the market.', '5', 'Zydex Industries', 'www.zydexindustries.com', 'Since its establishment in 1997, Zydex has been developing, creating and providing sustainable eco-friendly chemical technologies for the Agriculture sector, Textiles sector, Roads sector and the Construction sector. \r\n\r\nFor more details, kindly visit our website on http://www.zydexindustries.com/', 'WnlkZXgtSW5kdXN0cmllcy5qcGc=', 'mohan.sharma82@gmail.com', '20th October 2015 ', 1, '1'),
(51, 'op.kumawat30@gmail.com', 'marketiong manager', 'kbjna,m', 'Third Party', 'R&D-seeds', 'fsfss', 'fsfssf', '500000', '2', '4', 'fs', '5', 'inventive', 'www.make.com', 'fs.gkuesd', 'MTI4LTEyOC0wOWMzMjBjNGY1NGZhNmQ2OWMzZDRiNDkyZTVlMDYwNi1wZW5jaWwucG5n', 'mohan.sharma82@gmail.com', '20th October 2015', 1, '0'),
(52, 'op.kumawat30@gmail.com', 'Managing Director', 'Jaipur, Jodhpur, Kota', 'Full Time', 'Warehousing and Commodity finance', 'BE/B.Tech', 'Team Work, Good English', '1.2l - 3.2l', '0', '0', 'Production experience of non-voice BPO \r\nShould have participated in IQA as auditor \r\nShould have Knowledge of performance measurement \r\nGood analytical skills \r\nGood Communications skills \r\nShould be good at RCA technique\r\nShould posses problem solving skills\r\nKnowledge of MS Office\r\nExposure to ISO 9001', '1', 'Lumina Datamatics', 'www.luminadatamatics.com', 'Its our privilege to introduce Lumina Datamatics, the 5th largest company in the eContent and eCommerce space worldwide with operations spread over three geographies, viz. India, Europe and USA. Lumina Datamatics is a trusted partner to several Fortune 500 companies in the global publishing and retail industries, addressing their needs in content, technology and commerce.', 'bG9nby5wbmc=', 'mohan.sharma82@gmail.com', '21st October 2015', 1, '0'),
(53, 'mohan.sharma82@gmail.com', 'Manager- Consumer Affairs', 'Jaipur', 'Full Time', 'Tractor/ farm equipments', 'LLB', 'Agriculture, Rural, Marketing, Pesticides', 'As Per Industry', '10', '15', 'Business Development / Revenue Generation:\r\nGenerate the revenue from Farm Advisory & diagnostic services \r\nGenerate the revenue from sales of input to farmers and procurement from member farmers.\r\nGrow base of Global GAP members, \r\n\r\nManagement of Farmers for high levels of service delivery :\r\nVisit to proposed and agreed villages per day & per week\r\nInteract with minimum proposed & agreed number of farmers in each village\r\nVisit to member farmer fortnightly, monthly.\r\nTo ensure to conduct field trials, farmers meetings, seminars as and when required.\r\nConsult & execute the latest & applicable agriculture technology practices to farms', '7', 'Confidential', 'Confedential', 'Deepak Fertiliser And Petrochemicals Corporation Ltd\r\nDeepak Fertilisers and Petrochemicals Corporation Limited is a leading manufacturer of Chemicals and Fertilisers and is among the best financial performers in the industry. We are a professionally managed company poised for massive growth. We are now looking for a young well qualified professional to join our Saarrthie Centers at various locations.\r\nWe provide a performance driven, result oriented work culture; environment.', '', 'mohan.sharma82@gmail.com', '24th October 2015', 1, '0'),
(54, 'amit.bayer@rediffmail.com', 'Sales executive', 'Gujrat', 'Full Time', 'Agri input-Seeds', 'Bsc.Ag', 'Sales,Marketing of seed', '5 lac', '5', '0', 'Person should have good experience in seed industry specially in millet', '1', 'confidential', 'www.jobsinagri.com', 'Company is well known in seed industry', '', 'amit.bayer@rediffmail.com', '26th October 2015', 1, '0'),
(55, 'aklovelyarun700@gmail.com', 'Our Mottossss', 'jaipur', 'Third Party', 'Fisheries', 'b.tech', 'developer', '2000000', '13', '18', 'urgent requirement', '5', 'inventive infosys', 'www.mehtacollege.com', 'gvhdajeafkjkefjklef fn,wrdojiifle fukfnfkl', 'YXZhdGFyNS5wbmc=', 'aklovelyarun700@gmail.com', '26th October 2015', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `content`) VALUES
(15, 'Coming Soon .......', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeer`
--
ALTER TABLE `employeer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseekers`
--
ALTER TABLE `jobseekers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employeer`
--
ALTER TABLE `employeer`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `jobseekers`
--
ALTER TABLE `jobseekers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
