-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 09:16 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `performance_indicator`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `Department_Name` varchar(255) DEFAULT NULL,
  `Dept_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_table`
--

INSERT INTO `department_table` (`Department_Name`, `Dept_id`) VALUES
('Production', 101),
('Utility', 102),
('WareHouse', 103),
('Quality', 104),
('Materials', 105),
('HR', 106),
('Engineering', 107),
('Safety', 108),
('Project', 109),
('Others', 110),
('Logistics', 111),
('Electrical', 112),
('Mechanical', 113),
('Instrumentation', 114),
('Civil', 115);

-- --------------------------------------------------------

--
-- Table structure for table `description_table`
--

CREATE TABLE `description_table` (
  `Description` varchar(255) DEFAULT NULL,
  `Dept_id` int(11) NOT NULL,
  `Desc_id` int(11) NOT NULL,
  `Unit_of_measurement` varchar(50) NOT NULL,
  `Monthly_Todate` bigint(20) NOT NULL,
  `Yearly_todate` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `description_table`
--

INSERT INTO `description_table` (`Description`, `Dept_id`, `Desc_id`, `Unit_of_measurement`, `Monthly_Todate`, `Yearly_todate`) VALUES
('Production Rating', 101, 10101, 'TPH', 0, 0),
('Production_rating_overall', 101, 10102, 'TPH', 0, 0),
('Off spec generation during production', 101, 10103, '%', 0, 0),
('Off spec percentage during prod. till date', 101, 10104, '%', 0, 0),
('Yeild gain/loss', 101, 10105, 'Lakhs', 0, 0),
('OPH Out let Temperature', 101, 10106, 'celsius', 0, 0),
('APH Out let Temperature', 101, 10107, 'celsius', 0, 0),
('Steam Generation-Boiler', 102, 10201, 'MT/MTCB', 0, 0),
('WHB Steam Generation', 102, 10202, 'MT/MTCB', 0, 0),
('Sp. Steam Consumption Plant', 102, 10203, 'MT/MTCB', 0, 0),
('Sp. Steam Consumption Turbine', 102, 10204, 'MWh/MT', 0, 0),
('Specific Water Consumption', 102, 10205, 'M^3/MTCB', 0, 0),
('Water Recycle ETP', 102, 10206, 'M^3', 0, 0),
(' Water Recycle STP', 102, 10207, 'M^3', 0, 0),
('Power Generation', 102, 10208, 'MWh', 0, 0),
('Plant Steam generation', 102, 10209, 'MT/MTCB', 0, 0),
('Steam Venting', 102, 10210, 'MT', 0, 0),
('Actual Power consumed by Plant ', 102, 10211, 'MWh', 0, 0),
('Dummy load power', 102, 10212, 'MWh/day', 0, 0),
('Power Export', 102, 10213, '%', 0, 0),
('Power Plant Consumption', 102, 10214, '%', 0, 0),
('Water Recovery in STP', 102, 10215, 'KL', 0, 0),
('Water Recovery in Backwash', 102, 10216, 'KL', 0, 0),
('Water Recovery in Zero Water Plant', 102, 10217, 'KL', 0, 0),
('Packing Quantity', 103, 10301, 'MT', 0, 0),
('CB Going out of factory PB', 103, 10302, 'Kg', 0, 0),
('CB Going out of factory JB', 103, 10303, 'Kg', 0, 0),
('Stock as on date Silo', 103, 10304, 'MT', 0, 0),
('Stock as on date Finished Goods', 103, 10305, 'MT', 0, 0),
('PB Deviation in CB going out of factory', 103, 10306, '%', 0, 0),
('JB Deviation in CB going out of factory', 103, 10307, '%', 0, 0),
('Stock Rerun Status', 103, 10308, 'MT', 0, 0),
('Total Rerun', 103, 10309, 'MT', 0, 0),
('Silo Gain/Loss', 103, 10310, 'MT', 0, 0),
('Complaints-Quality', 104, 10401, '', 0, 0),
('Reasons for off specs', 104, 10402, '', 0, 0),
('Lump Generation', 104, 10403, 'MT', 0, 0),
('Rerun Satus', 104, 10404, 'MT', 0, 0),
('CPK -Iodine', 104, 10405, 'MT', 0, 0),
('CPK-DBP', 104, 10406, '', 0, 0),
('Total Off Spec generation after packing', 104, 10407, 'MT', 0, 0),
('Off spec in On spec silo', 104, 10408, 'MT', 0, 0),
('Off spec due to fines', 104, 10409, 'MT', 0, 0),
('Off spec packed from silo 02 & 12', 104, 10410, 'MT', 0, 0),
('Overall Off spec in percentage', 104, 10411, '%', 0, 0),
('FG1', 104, 10412, 'MT', 0, 0),
('FG2', 104, 10413, 'MT', 0, 0),
('FG3', 104, 10414, 'MT', 0, 0),
('Slow', 104, 10415, 'MT', 0, 0),
('Silo 2&12', 104, 10416, 'MT', 0, 0),
('RP', 104, 10417, 'MT', 0, 0),
('SS', 104, 10418, 'MT', 0, 0),
('UT', 104, 10419, 'MT', 0, 0),
('Coal_tar_consumption', 105, 10501, '%', 0, 0),
('CBFS_imported_consumption', 105, 10502, '%', 0, 0),
('RIL/CBO_consumption', 105, 10503, '%', 0, 0),
('AFS_opening_stock', 105, 10504, '', 0, 0),
('AFS_order_quantity', 105, 10505, '', 0, 0),
('AFS_dispatched_quantity', 105, 10506, '', 0, 0),
('AFS_reciept_quantity', 105, 10507, '', 0, 0),
('AFS_consumption', 105, 10508, '', 0, 0),
('AFS_closing_stock', 105, 10509, '', 0, 0),
('CBFS_OIL_RECIEPT', 105, 10510, 'MT', 0, 0),
('RIL/CBO_OIL_RECIEPT', 105, 10511, 'MT', 0, 0),
('COAL_TAR_OIL_RECIEPT', 105, 10512, 'MT', 0, 0),
('CBO/RIL_stock', 105, 10513, 'MT', 0, 0),
('Coal_tar_stock', 105, 10514, 'MT', 0, 0),
('CBFS_stock_(imp)_port', 105, 10515, 'MT', 0, 0),
('CBFS_stock_(imp)_plant', 105, 10516, 'MT', 0, 0),
('LDO', 105, 10517, 'KL', 0, 0),
('Molasses', 105, 10518, 'KL', 0, 0),
('PR-PENDING(0-15)', 105, 10519, '', 0, 0),
('PR-PENDING(16-30)', 105, 10520, '', 0, 0),
('PR-PENDING(>30)', 105, 10521, '', 0, 0),
('OVERDUE_PO_DELIVERY(0-30)', 105, 10522, '', 0, 0),
('OVERDUE_PO_DELIVERY(31-60)', 105, 10523, '', 0, 0),
('OVERDUE_PO_DELIVERY(>60)', 105, 10524, '', 0, 0),
('GRN_PENDING(0-3)', 105, 10525, '', 0, 0),
('GRN_PENDING(>3)', 105, 10526, '', 0, 0),
('TANKER_TTAT', 105, 10527, 'Hrs.', 0, 0),
('INVENTORY_COST', 105, 10528, 'Lakhs', 0, 0),
('S&S expenses', 105, 10529, 'Lakhs', 0, 0),
('R&M expenses', 105, 10530, 'Lakhs', 0, 0),
('S&S consumption', 105, 10531, 'Lakhs', 0, 0),
('R&M Stores Consumption', 105, 10532, 'Lakhs', 0, 0),
('Maintenance Cost', 105, 10533, 'Lakhs', 0, 0),
('Sanctioned Manpower', 106, 10601, '', 0, 0),
('Actual Manpower', 106, 10602, '', 0, 0),
('Over Time', 106, 10603, 'Hrs.', 0, 0),
('Training Hrs', 106, 10604, 'Hrs.', 0, 0),
('Shifts', 106, 10605, '', 0, 0),
('Training Topic', 106, 10606, '', 0, 0),
('Training Faculty', 106, 10607, '', 0, 0),
('PM slippage', 107, 10701, '%', 0, 0),
('Notification Pending', 107, 10702, '', 0, 0),
('Event Report-open', 107, 10703, '', 0, 0),
('MOC-Pending', 107, 10704, '', 0, 0),
('Breakdown hrs-Not Affecting Production', 107, 10705, 'Hrs.', 0, 0),
('Energy Sales', 107, 10706, 'MWh', 0, 0),
('Ratio:Own Energy consumption Vs Export', 107, 10707, '%', 0, 0),
('Excess/ Short supply against commitment', 107, 10708, 'MWh', 0, 0),
('import of power from MSEDCL', 107, 10709, 'MWh', 0, 0),
('SAFETY_JOBS', 108, 10801, '', 0, 0),
('HAZARD_IDENTIFICATION', 108, 10802, '', 0, 0),
('HAZARD_PENDING', 108, 10803, '', 0, 0),
('NEAR_MISS_STATUS', 108, 10804, '', 0, 0),
('NEAR_MISS_PENDING', 108, 10805, '', 0, 0),
('ACCIDENTS', 108, 10806, '', 0, 0),
('DAILY_ABNORMALITIES_REVIEW', 108, 10807, '', 0, 0),
('Capex Status', 109, 10901, '%', 0, 0),
('Capex Expenses', 109, 10902, 'Lakhs', 0, 0),
('Capex ROI', 109, 10903, 'Lakhs', 0, 0),
('Leakages', 110, 11001, '', 0, 0),
('Saving', 110, 11002, 'Lakhs', 0, 0),
('Good work done', 110, 11003, '', 0, 0),
('Admin Expenses', 110, 11004, 'Lakhs', 0, 0),
('Security concern/Violation', 110, 11005, '', 0, 0),
('CSR Highlights', 110, 11006, '', 0, 0),
('number_of_trucks_planned`', 111, 11101, '', 0, 0),
('number_of_trucks_reported', 111, 11102, '', 0, 0),
('SNA', 111, 11103, 'MT', 0, 0),
('OTHERS_STATUS', 111, 11104, 'MT', 0, 0),
('Daily_dispatch', 111, 11105, '', 0, 0),
('Order_status', 111, 11106, 'MT', 0, 0),
('Order_vs_dispatch_in_%', 111, 11107, '%', 0, 0),
('OTIF', 111, 11108, '%', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `grade_info`
--

CREATE TABLE `grade_info` (
  `Grade_ID` int(11) NOT NULL,
  `GradeName` varchar(8) NOT NULL,
  `lsl_IAN` int(11) NOT NULL,
  `msl_IAN` int(11) NOT NULL,
  `usl_IAN` int(11) NOT NULL,
  `msl_oan` int(11) NOT NULL,
  `lsl_oan` int(11) NOT NULL,
  `usl_oan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_info`
--

INSERT INTO `grade_info` (`Grade_ID`, `GradeName`, `lsl_IAN`, `msl_IAN`, `usl_IAN`, `msl_oan`, `lsl_oan`, `usl_oan`) VALUES
(1, 'N110', 140, 145, 150, 113, 108, 118),
(2, 'N121', 116, 121, 126, 132, 127, 137),
(3, 'N134', 137, 142, 147, 127, 122, 132),
(4, 'N220', 116, 121, 126, 114, 109, 119),
(5, 'N234', 115, 120, 125, 125, 120, 130),
(6, 'N326', 77, 82, 87, 72, 67, 77),
(7, 'N330', 77, 82, 87, 102, 97, 107),
(8, 'N339', 85, 90, 95, 120, 115, 125),
(9, 'N375', 85, 90, 95, 114, 109, 119),
(10, 'JC300P', 79, 82, 85, 102, 99, 105),
(11, 'BC2432', 82, 0, 87, 0, 68, 74),
(12, 'BC2056', 85, 90, 95, 135, 130, 140),
(13, 'BC2109', 107, 112, 117, 137, 132, 142),
(14, 'BC2110', 135, 140, 145, 133, 128, 138),
(15, 'BC2123', 55, 60, 65, 144, 139, 149),
(16, 'BC2229', 135, 140, 145, 155, 149, 161),
(17, 'BC2045', 73, 78, 83, 143, 138, 148),
(18, 'BC2207', 87, 90, 93, 135, 131, 139),
(19, 'BC2341', 64, 69, 74, 101, 96, 106);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `Shift_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `Shift_id` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`Shift_name`, `Shift_id`) VALUES
('A', '01'),
('B', '02'),
('C', '03'),
('G', '04'),
('Open Shift', '05');

-- --------------------------------------------------------

--
-- Table structure for table `transition_table`
--

CREATE TABLE `transition_table` (
  `Insertion_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Entry_date` date NOT NULL,
  `Obtained_value` bigint(255) DEFAULT NULL,
  `Target_Value` bigint(255) DEFAULT NULL,
  `Dept_id` int(20) NOT NULL,
  `Desc_id` int(11) NOT NULL,
  `GradeName` varchar(255) COLLATE utf8_bin NOT NULL,
  `Remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Updated by User` varchar(20) COLLATE utf8_bin NOT NULL,
  `Status` varchar(12) COLLATE utf8_bin NOT NULL DEFAULT 'Activated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transition_table`
--

INSERT INTO `transition_table` (`Insertion_Date`, `Entry_date`, `Obtained_value`, `Target_Value`, `Dept_id`, `Desc_id`, `GradeName`, `Remarks`, `Updated by User`, `Status`) VALUES
('2019-07-02 12:36:39', '2019-06-03', 2, 0, 0, 10402, 'NULL', '', '', 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `User_Id` int(11) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`User_Id`, `Password`, `Role`, `Dept_id`) VALUES
(12, 'hii', 'hod', 110),
(112, 'hii', 'hod', 109),
(123456, 'hi', 'hod', 111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`Dept_id`);

--
-- Indexes for table `description_table`
--
ALTER TABLE `description_table`
  ADD PRIMARY KEY (`Dept_id`,`Desc_id`),
  ADD KEY `Dept_id` (`Dept_id`);

--
-- Indexes for table `grade_info`
--
ALTER TABLE `grade_info`
  ADD PRIMARY KEY (`Grade_ID`,`GradeName`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`Shift_id`);

--
-- Indexes for table `transition_table`
--
ALTER TABLE `transition_table`
  ADD KEY `Desc_id` (`Desc_id`),
  ADD KEY `GradeName` (`GradeName`),
  ADD KEY `Dept_id` (`Dept_id`,`Desc_id`,`GradeName`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`User_Id`,`Dept_id`),
  ADD KEY `Dept_id` (`Dept_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description_table`
--
ALTER TABLE `description_table`
  ADD CONSTRAINT `Foreign key` FOREIGN KEY (`Dept_id`) REFERENCES `department_table` (`Dept_id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
