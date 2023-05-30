-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 07:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collated_report_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Category` varchar(255) NOT NULL,
  `CID` varchar(20) NOT NULL,
  `Campaign_Name` text NOT NULL,
  `Client_Code` varchar(25) NOT NULL,
  `Country` varchar(8) NOT NULL,
  `Asset_Name` varchar(2500) NOT NULL,
  `EDM_link` varchar(2500) NOT NULL,
  `EDM_Completed_By` varchar(30) NOT NULL,
  `userid` int(6) NOT NULL,
  `Links_Updated_by` varchar(255) NOT NULL,
  `Comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `Date`, `Category`, `CID`, `Campaign_Name`, `Client_Code`, `Country`, `Asset_Name`, `EDM_link`, `EDM_Completed_By`, `userid`, `Links_Updated_by`, `Comments`) VALUES
(53, '2023-05-16 19:49:00', 'W8 (CS)', '', 'URGENT-LP-BUILD-LP-Setup:-2023-Q2-Google-APAC-programs', 'CS', 'NON-EU', 'Make decisions that make a difference#$#@Harvard Business Review: 데이터 및 AI를 통한 아시아태평양 전역에서의 고객 경험 재구축#$#@Harvard Business Review: Rewiring the CustomerExperience across Asia Pacificwith Data and AI#$#@Harvard Business Review: Rewiring the CustomerExperience across Asia Pacificwith Data and AI#$#@Harvard Business Review: Rewiring the CustomerExperience across Asia Pacificwith Data and AI#$#@2023 Data and AI Trends Report#$#@2023 Data and AI Trends Report#$#@2023 Data and AI Trends Report#$#@2023 데이터 AI 트렌드 보고서#$#@Make Data Work for you#$#@Make Data Work for you#$#@효과적인 데이터 활용#$#@Lima cara untuk mempercepat perjalanan Anda menuju masa depan dunia kerja#$#@Formula Membangun Resiliensi - Memadukan kelincahan dan optimalisasi biaya#$#@Modernizing Applications on the Cloud#$#@asdf  sad#$#@Report: Google Workspace vs. O365 Impact on Business#$#@The Total Economic Impact™ Of Google Workspace#$#@RRRReport: Google Workspace vs. O365 Impact on Business#$#@The Total Economic Impact™ Of Google Workspace#$#@Google Workspace Security Whitepaper', 'https://engage.biz-tech-insights.com/whitepaper/Google-APAC-Build-Innovate-Q2-ID-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-KO-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-ZH-CN-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-TW-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q1-Google-Cloud-APAC-ID-CS-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q1-Google-Cloud-APAC-ID-CS-3-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-ZH-CN-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-TW-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-KO-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q1-Google-Cloud-APAC-ID-CS-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-ZH-CN-3-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-KO-3-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-ID-ID-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-ID-ID-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-ID-ID-3-edm.html#$#@undefined#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-EN-EN-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-EN-EN-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-EN-EN-1-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-EN-EN-2-edm.html#$#@https://engage.biz-tech-insights.com/whitepaper/LP-2023-Q2-Google-APAC-CS-EN-EN-3-edm.html', 'hitesh', 2, 'hitesh', ''),
(55, '2023-05-17 14:30:30', 'ACE', '161894.1', 'ACE-New-Order-161894.1-LaunchDarkly', 'CS', 'NON-EU', 'Forrester’s Total Economic Impact of LaunchDarkly#$#@The ROI of Feature Management#$#@Forrester’s Total Economic Impact of LaunchDarkly#$#@The ROI of Feature Management#$#@Forrester’s Total Economic Impact of LaunchDarkly#$#@The ROI of Feature Management', 'https://resource.itbusinessplus.com/whitepapers/LaunchDarkly-161894_1-NONEU-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/LaunchDarkly-161894_1-NONEU-2-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/LaunchDarkly-161894_1-CA-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/LaunchDarkly-161894_1-CA-2-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/LaunchDarkly-161894_1-EU-1-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/LaunchDarkly-161894_1-EU-2-edm.html', 'hitesh', 2, '', ''),
(56, '2023-05-17 14:31:56', 'ACE', '161891', 'ACE-LP-New-Order-161891-Coupa-ENT', 'CS', 'EU', '2020 Gartner Magic Quadrant Procure-to-Pay Suites#$#@ARE YOU READY TO GO THE DISTANCE WITH PROCUREMENT?#$#@Rethinking Risk and Opportunity in the Supply Chain', 'http://eu.itbusinessplus.com/whitepaper/LP-161891-Coupa-Ent-Eu-1-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/LP-161891-Coupa-Ent-Eu-2-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/LP-161891-Coupa-Ent-Eu-3-edm.html', 'hitesh', 2, '', ''),
(57, '2023-05-17 14:32:50', 'ACE', '161908', 'ACE-LP-161908-New-Order-for-ServiceMax', 'CS', 'NON-EU', 'GE Healthcare Puts Customers First with Cloud-Based Field Service Platform#$#@2021 Predictions for Chief Service Officers#$#@Latest Gartner Magic Quadrant for Field Service Management#$#@Frost & Sullivan’s Best Practices Award: Mobile Field Service Management#$#@GE Healthcare Puts Customers First with Cloud-Based Field Service Platform#$#@2021 Predictions for Chief Service Officers#$#@Latest Gartner Magic Quadrant for Field Service Management#$#@Frost & Sullivan’s Best Practices Award: Mobile Field Service Management#$#@GE Healthcare Puts Customers First with Cloud-Based Field Service Platform#$#@2021 Predictions for Chief Service Officers#$#@Latest Gartner Magic Quadrant for Field Service Management#$#@Frost & Sullivan’s Best Practices Award: Mobile Field Service Management', 'https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-Non-Eu-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-Non-Eu-2-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-Non-Eu-3-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-Non-Eu-4-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-CA-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-CA-2-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-CA-3-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/161908-ServiceMax-CA-4-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/161908-ServiceMax-EU-1-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/161908-ServiceMax-EU-2-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/161908-ServiceMax-EU-3-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/161908-ServiceMax-EU-4-edm.html', 'hitesh', 2, '', ''),
(58, '2023-05-17 14:56:04', 'ACE', '161874', 'ACE-New-order-161874-JM-Coveo', 'CS', 'Both', '6 Strategies for Improving Self-Service in Salesforce Experience Cloud#$#@6 Strategies for Improving Self-Service in Salesforce Experience Cloud#$#@6 Strategies for Improving Self-Service in Salesforce Experience Cloud', 'https://resource.itbusinessplus.com/whitepapers/LP-161874-Coveo-Us-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/LP-161874-Coveo-Ca-1-edm.html#$#@http://eu.itbusinessplus.com/whitepaper/LP-161874-Coveo-Eu-1-edm.html', 'hitesh', 2, '', ''),
(59, '2023-05-17 18:57:59', 'TAJ (ARC)', '79723', 'ARC-(79723)-INT-ABM-BANT-Named-Leads-Salesforce-ASEAN-Ent-Service-TH-AprJun23', 'CS', 'NON-EU', 'The Secret to Seamless Service: Connected Channels#$#@Creating Your Digital HQ for a Digital-First World#$#@รายงาน State of Service ฉบับที่ห้า#$#@มาพบกับเทรนด์ที่จะกำหนดอนาคตการมีส่วนร่วมของลูกค้า', 'https://resource.itbusinessplus.com/whitepapers/ARC-79723-ABM-Salesforce-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/ARC-79723-ABM-Salesforce-2-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/ARC-79723-ABM-Salesforce-3-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/ARC-79723-ABM-Salesforce-4-edm.html', 'ketan', 3, '', ''),
(60, '2023-05-17 19:01:15', 'ALPHA (ACE)', '3120814', 'Alpha-LP-VPO-3120814-SAP-Concur-UK-Audit-Client-TAL', 'CS', 'EU', 'The Value of Intelligent Audit#$#@10 Benefits of Intelligent Audit#$#@5 WAYS EFFICIENT AUDITS Can Help Fuel Business Momentum#$#@How to Improve Compliance in Your Business#$#@6 Tips to Drive Compliance, Identify Fraud, and Minimize Workloads', 'https://eu.itbusinessplus.com/whitepaper/Alpha-LP-3120814-SAP-Concur-1-edm.html#$#@https://eu.itbusinessplus.com/whitepaper/Alpha-LP-3120814-SAP-Concur-2-edm.html#$#@https://eu.itbusinessplus.com/whitepaper/Alpha-LP-3120814-SAP-Concur-3-edm.html#$#@https://eu.itbusinessplus.com/whitepaper/Alpha-LP-3120814-SAP-Concur-4-edm.html#$#@https://eu.itbusinessplus.com/whitepaper/Alpha-LP-3120814-SAP-Concur-5-edm.html', 'ketan', 3, '', ''),
(61, '2023-05-17 19:03:18', 'PHANTOM (Magento)', '74467', 'Phantom-LP-DIG-Magnolia-Americas-ASB-008542-PO#74467-', 'CS', 'NON-EU', 'Choosing a digital experience platform (DXP) for insurers#$#@How insurers benefit from customer centricity', 'https://resource.itsourcebox.com/whitepaper/DIG-Magnolia-Americas-ASB-008542-PO-74467_1-email.html#$#@https://resource.itsourcebox.com/whitepaper/DIG-Magnolia-Americas-ASB-008542-PO-74467_2-email.html', 'pratik', 4, '', ''),
(62, '2023-05-17 19:05:45', 'EAGLE', '', 'RCTY-Q123-Content-Syndication:-XDBS-(Eagle)', 'CS', 'NON-EU', 'How to Upgrade Your Cyber Risk Management Program With NIST#$#@5 Best Practices for Improved Risk Management#$#@7 BEST PRACTICES TO MODERNIZE YOUR THIRD-PARTY RISK MANAGEMENT#$#@Compliance Does Not Equal Security#$#@From the Back Office to the Boardroom: The Changing Role of the Security Executive#$#@Automating GRC: The Next Frontier in Risk Management#$#@GET AHEAD OF THREATS BY Surfacing Unknown Risks Lurking in Blind Spots#$#@2023 Cyber Risk Viewpoints Report', 'https://resource.itbusinessplus.com/whitepapers/Eagle-Reciprocity_1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-RiskOptics_2-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-RiskOptics_3-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-RiskOptics_4-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-RiskOptics_5-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-Reciprocity_6-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-RiskOptics_7-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Eagle-RiskOptics_8-edm.html', 'pratik', 4, '', ''),
(63, '2023-05-17 19:10:54', 'RAY (INSTA)', 'L223E7', 'Ray-L-223E7-WekaIO-486-CS-Global-Demand-Gen-2023-03-AMER', 'CS', 'NON-EU', 'Six Storage Considerations When Moving Demanding Applications to the Cloud#$#@CHOOSING THE RIGHT CLOUD FILE STORAGE SYSTEM FOR YOUR BUSINESS#$#@GIGAOM RADAR FOR CLOUD FILE SYSTEMS#$#@RETHINK SUPERCOMPUTING FOR A DIGITAL ERA', 'https://resource.itbusinessplus.com/whitepapers/Ray-L-223E7-WekaIO-486-Global-AMER-1-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Ray-L-223E7-WekaIO-486-Global-AMER-2-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Ray-L-223E7-WekaIO-486-Global-AMER-3-edm.html#$#@https://resource.itbusinessplus.com/whitepapers/Ray-L-223E7-WekaIO-486-Global-AMER-4-edm.html', 'narendra', 5, '', ''),
(64, '2023-05-17 19:16:26', 'W8-RB', '', 'BUILD-LP-FY23-Q3-Q4-Veritas-SQL+-&-RB-+-Boost', 'Survey', 'NON-EU', 'LP-FY23-Q3-Q4-Veritas-SQL-UAE-RB#$#@LP-FY23-Q3-Q4-Veritas-SQL-UAE-RB#$#@LP-FY23-Q3-Q4-Veritas-SQL-US-RB#$#@LP-FY23-Q3-Q4-Veritas-SQL-US-RB', 'https://engage.biz-tech-insights.com/LP-FY23-Q3-Q4-Veritas-SQL-UAE-RB/#$#@https://engage.biz-tech-insights.com/LP-FY23-Q3-Q4-Veritas-SQL-UAE-RB/email.html#$#@https://engage.biz-tech-insights.com/LP-FY23-Q3-Q4-Veritas-SQL-US-RB/#$#@https://engage.biz-tech-insights.com/LP-FY23-Q3-Q4-Veritas-SQL-US-RB/email.html', 'raj', 1, '', ''),
(65, '2023-05-17 19:17:20', 'W8-RB', '', '-BUILD-LP-FY24-Q1-Slack-Research-Builder-Service', 'Survey', 'NON-EU', 'Does Your Organization Have the Right Communication Platform to Deliver Quality Customer Experiences?#$#@LP-FY24-Q1-Slack-Service-RB', 'https://engage.biz-tech-insights.com/LP-FY24-Q1-Slack-Service-RB/email.html#$#@https://engage.biz-tech-insights.com/LP-FY24-Q1-Slack-Service-RB', 'raj', 1, '', ''),
(66, '2023-05-17 19:19:39', 'ITBP PKT (.NET)', '', 'FY24-Q1-Workday-Workforce-Planning-and-Analytics-TechScore', 'Survey', 'NON-EU', 'Take the Analytics and Planning Quiz!#$#@Take the Analytics and Planning Quiz!', 'https://www.itbusinessplus.net/Tech-Score/FY24-Q1-Workday-Workforce-Planning-and-Analytics_TechScore/#$#@https://www.itbusinessplus.net/Tech-Score/FY24-Q1-Workday-Workforce-Planning-and-Analytics_TechScore/', 'raj', 1, '', ''),
(67, '2023-05-17 20:23:03', 'ACE eblast', '3120730', '3120730-OutSystems-Email-UK/DE/FR/NL', 'eBlast', 'EU', 'Power and Control for Pro Devs with High-Performance Low-Code', 'https://eu.itbusinessplus.com/whitepaper/Alpha-Email-OutSystems-EU-3120730.html', 'raj', 1, '', ''),
(68, '2023-05-17 22:31:52', 'W8-LA', '', 'LP-2023-Q1-Google-Chrome-Waterfall-BRE-Center-LA', 'Survey', 'NON-EU', 'LP-2023-Q1-Google-Chrome-Waterfall-BRE-Center-LA#$#@LP-2023-Q1-Google-Chrome-Waterfall-BRE-Center-LA#$#@Secure And Optimize Your Contact Center With Chrome OS', 'https://engage.biz-tech-insights.com/LP-2023-Q1-Google-Chrome-Waterfall-BRE-Center-LA/#$#@https://engage.biz-tech-insights.com/LP-2023-Q1-Google-Chrome-Waterfall-BRE-Center-LA/email.html#$#@https://engage.biz-tech-insights.com/whitepaper/Google-Chrome-Waterfall-Q1-2023-Contact-Center-1-email.html', 'hitesh', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `abstract` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `color` varchar(11) NOT NULL,
  `madeby` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `abstract`, `date`, `color`, `madeby`) VALUES
(6, 'raj', '                                \n                                ', '2023-05-30 14:27:39', '#00EAFF', 'raj'),
(7, 'eee', '                                \n                                ', '2023-05-30 14:27:46', '#ffd8b1', 'raj'),
(8, 'aaa', '                                \n                                ', '2023-05-30 14:27:53', '#6AFF00', 'raj'),
(10, 'hhhh', '                                \n                                ', '2023-05-30 14:28:07', '#dcbeff', 'raj'),
(11, 'kkkk', '                                \n                                ', '2023-05-30 14:28:18', '#e6194B', 'raj');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `username`, `password`) VALUES
(2, 'ketan', '3', '1'),
(6, 'snehal', '102870', 'snehal'),
(26, 'raj', '1', '1'),
(27, 'hitesh', '2', '1'),
(29, 'pratik', '4', '1'),
(30, 'narendra', '5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emp_id`, `password`, `created_at`) VALUES
(1, '102875', 'ketan@12345', '2023-04-07 19:32:06'),
(2, '103875', 'Hitesh@12345', '2023-04-07 19:32:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `firstname` (`firstname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
