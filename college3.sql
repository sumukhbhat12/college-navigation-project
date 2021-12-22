-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 06:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college3`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `block_name` varchar(50) NOT NULL,
  `no_of_floors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`block_name`, `no_of_floors`) VALUES
('APJ Kalam Block', 5),
('Atal Block', 3),
('S Ramanujan Block', 4),
('Sir CV Raman Block', 5),
('Sir M Visvesvaraya Block', 3);

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `block_name` varchar(50) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`block_name`, `dept_name`) VALUES
('APJ Kalam Block', 'Biotechnology Department'),
('APJ Kalam Block', 'Computer Science and Engineering'),
('APJ Kalam Block', 'Department of Computer & Communication Engineering'),
('APJ Kalam Block', 'Department of Physical Education'),
('APJ Kalam Block', 'E&C Engineering Department'),
('APJ Kalam Block', 'Information Science Department'),
('APJ Kalam Block', 'Mechanical Engineering Department'),
('Atal Block', 'AI&ML Department'),
('Atal Block', 'Department of Basic Science'),
('Atal Block', 'Information Science Department'),
('Atal Block', 'Mechanical Engineering Department'),
('S Ramanujan Block', 'Chemistry Department'),
('S Ramanujan Block', 'E&C Engineering Department'),
('S Ramanujan Block', 'Mathematics Department'),
('S Ramanujan Block', 'MCA Department'),
('S Ramanujan Block', 'Mechanical Engineering Department'),
('S Ramanujan Block', 'Physics Department'),
('S Ramanujan Block', 'Training & Placement Department'),
('Sir CV Raman Block', 'AI&ML Department'),
('Sir CV Raman Block', 'Civil Engineering Department'),
('Sir CV Raman Block', 'Computer Science and Engineering'),
('Sir CV Raman Block', 'Department of Electrical & Electronics Engineering'),
('Sir CV Raman Block', 'Humanities Department'),
('Sir CV Raman Block', 'Information Science Department'),
('Sir CV Raman Block', 'Mechanical Engineering Department'),
('Sir M Visvesvaraya Block', 'Civil Engineering Department'),
('Sir M Visvesvaraya Block', 'Department of Electrical & Electronics Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(50) NOT NULL,
  `hod_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `hod_name`) VALUES
('AI&ML Department', 'null'),
('Biotechnology Department', 'Dr. C Vaman Rao'),
('Chemistry Department', 'Dr. Shivaprasad Shetty M.'),
('Civil Engineering Department', 'Dr. Arun Kumar Bhat'),
('Computer Science and Engineering', 'Dr. Jyothi Shetty'),
('Department of Basic Science', 'null'),
('Department of Computer & Communication Engineering', 'null'),
('Department of Electrical & Electronics Engineering', 'Dr. Nagesh Prabhu'),
('Department of Physical Education', 'Ganesh Poojary'),
('E&C Engineering Department', 'Dr. K.V.S.S.S.S.Sairam'),
('Humanities Department', 'Rashmi Hegde'),
('Information Science Department', 'Dr. Karthik Pai B.H.'),
('Mathematics Department', 'Dr. Kumudakshi'),
('MCA Department', 'Dr. Surendra Shetty'),
('Mechanical Engineering Department', 'Dr. Shashikantha  Karinka'),
('null', 'null'),
('Physics Department', 'Dr. Shobha R. Prabhu'),
('Training & Placement Department', 'Prof. Shalini K. Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_number` smallint(6) NOT NULL,
  `faculty_name` varchar(50) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `block_name` varchar(50) NOT NULL,
  `floor_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_number`, `faculty_name`, `dept_name`, `block_name`, `floor_number`) VALUES
(1, 'Dr. Kumudakshi', 'Mathematics Department', 'S Ramanujan Block', 1),
(2, 'Dr. Subramanaya Bhat K.', 'Mechanical Engineering Department', 'S Ramanujan Block', 1),
(3, 'Dr. Shivaprasad Shetty M.', 'Chemistry Department', 'S Ramanujan Block', 1),
(4, 'Dr. Shobha R. Prabhu', 'Physics Department', 'S Ramanujan Block', 1),
(5, 'Dr. Shashirekha B. Rai', 'Mathematics Department', 'S Ramanujan Block', 1),
(6, 'Dr. Raghavendra Bairy', 'Physics Department', 'S Ramanujan Block', 1),
(7, 'Dr. Manjunatha K.B.', 'Physics Department', 'S Ramanujan Block', 1),
(8, 'Dr. Janardana Nayak', 'Chemistry Department', 'S Ramanujan Block', 1),
(9, 'Dr. Ramesh Bhat', 'Chemistry Department', 'S Ramanujan Block', 1),
(10, 'Mrs. Sharmila ', 'Mathematics Department', 'S Ramanujan Block', 1),
(11, 'Ms. Anjana Pai K', 'Mathematics Department', 'S Ramanujan Block', 1),
(12, 'Ms. Soumya', 'Mathematics Department', 'S Ramanujan Block', 1),
(13, 'Mrs. Anitha D.Bayar', 'Mathematics Department', 'S Ramanujan Block', 1),
(14, 'Ms. Bhavya D.', 'Mathematics Department', 'S Ramanujan Block', 1),
(15, 'Ms. Smitha G.V.', 'Mathematics Department', 'S Ramanujan Block', 1),
(16, 'Mr. Austin Dinesh D\'Souza', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(17, 'Aneesh Jose', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(18, 'Dr. Srinivasa Pai P.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(19, 'Mr. Raghavendra Pai', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(20, 'Mr. Rajath N. Rao', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(21, 'Mr. P. Venkatesh Murthy', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(22, 'Mr. Suresh Shetty', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(23, 'Dr. Rashmi P. Shetty', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(24, 'Dr. Uday D.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(25, 'Dr. Shashikantha Karinka', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(26, 'Dr. Mallikappa', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(27, 'Dr. Kumar H.S.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(28, 'Dr. Ananthakrishna Somayaji', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(29, 'Dr. Narasimha Marakala', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(30, 'Mr. A. Adarsha Rai', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(31, 'De. Veeresha R.K.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(32, 'Dr. Grynal D\'Mello', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(33, 'Mr. Mohan N.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(34, 'Dr. T. R. Venugopal ', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(35, 'Mr. Ravishankar Bhat S.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(36, 'Dr. Nitin Kumar', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(37, 'Mr. Vishwanatha J. S.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(38, 'Dr. Sharad M. Hegde', 'Mathematics Department', 'S Ramanujan Block', 1),
(39, 'Mr. Ravikiran Kamath B.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(40, 'Mr. Sunil Kumar Shetty', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(41, 'Dr. Sharath Chandra H. S.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(42, 'Mr. Santosh G.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(43, 'Dr. Ajith Hebbale', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(44, 'Dilip Kumar K', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(45, 'Dr. Gururaj Upadhaya', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(46, 'Mr. Veeresha R. K.', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(47, 'Mr. Govindraja ', 'Mechanical Engineering Department', 'S Ramanujan Block', 2),
(48, 'Dr. Subramanya Bhat', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(49, 'Mr. Mahaveera K.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(50, 'Dr. Durga Prasad ', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(51, 'Dr. Shivakumar B.R.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(52, 'Dileep Kumar M. J.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(53, 'Bommegowda K. B.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(54, 'Mr. Ravindra K. S.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(55, 'Mr. Sukesh Rao M.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(56, 'Mr. Anil Kumar Bhat', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(57, 'Dr. Veena Devi Shastrimath V', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(58, 'Mr. Prajawal Hegde', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(59, 'Dr. Roopa B. H.', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(60, 'Mrs. Nagapriya Kamath', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(61, 'Ms. Harshitha Bhat', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(62, 'Dr K.V.S.S.S.S.Sairam', 'E&C Engineering Department', 'S Ramanujan Block', 3),
(63, 'Dr. Mamatha Balipa', 'MCA Department', 'S Ramanujan Block', 4),
(64, 'Mr. Anantha Murthy', 'MCA Department', 'S Ramanujan Block', 4),
(65, 'Mr. Arhath Kumar', 'MCA Department', 'S Ramanujan Block', 4),
(66, 'Mr. Spoorthi B. Shetty', 'MCA Department', 'S Ramanujan Block', 4),
(67, 'Mr. Balachandra Rao', 'MCA Department', 'S Ramanujan Block', 4),
(68, 'Mr. Puneeth B. R', 'MCA Department', 'S Ramanujan Block', 4),
(69, 'Dr. Surendra Shetty', 'MCA Department', 'S Ramanujan Block', 4),
(70, 'Ms. Pallavi Shetty', 'MCA Department', 'S Ramanujan Block', 4),
(71, 'Ms. Mangala A. G.', 'MCA Department', 'S Ramanujan Block', 4),
(72, 'Ms. Saritha ', 'MCA Department', 'S Ramanujan Block', 4),
(73, 'Ms. Ramya', 'MCA Department', 'S Ramanujan Block', 4),
(74, 'Ms. Jyothi Shetty', 'MCA Department', 'S Ramanujan Block', 4),
(75, 'Mr. Rajeevan KV', 'MCA Department', 'S Ramanujan Block', 4),
(76, 'Ms. Poornima S Suvarna', 'MCA Department', 'S Ramanujan Block', 4),
(77, 'Mr. Praveen Shetty', 'MCA Department', 'S Ramanujan Block', 4),
(78, 'Ms. Seema Katipalla', 'MCA Department', 'S Ramanujan Block', 4),
(79, 'Ms. Divya Shetty', 'E&C Engineering Department', 'S Ramanujan Block', 4),
(80, 'Ms. Shobha P. DCS', 'MCA Department', 'S Ramanujan Block', 4),
(81, 'Ms. Vishali Karkera', 'MCA Department', 'S Ramanujan Block', 4),
(82, 'Mr. Harshavardhan', 'MCA Department', 'S Ramanujan Block', 4),
(83, 'Mr. Sadashiva N.', 'MCA Department', 'S Ramanujan Block', 4),
(84, 'Mr. Praveen K Devadiga', 'MCA Department', 'S Ramanujan Block', 4),
(85, 'Dr. Udaya Kumar K Shenoy', 'Computer Science and Engineering', 'APJ Kalam Block', -1),
(86, 'Dr. I. Ramesh Mithanthaya', 'Civil Engineering Department', 'APJ Kalam Block', 0),
(87, 'A. Yogeesh Hegde', 'null', 'APJ Kalam Block', 0),
(88, 'Dr. Shrinivasa Rao B. R.', 'null', 'APJ Kalam Block', 0),
(89, 'Dr. Sudesh Bekal', 'null', 'APJ Kalam Block', 0),
(90, 'Dr. K. Rajesh Shetty', 'null', 'APJ Kalam Block', 0),
(91, 'N. Vinay Hegde', 'null', 'APJ Kalam Block', 0),
(92, 'Dr. Niranjan N Chiplunkar', 'Computer Science and Engineering', 'APJ Kalam Block', 0),
(93, 'Dr. Anilkumar H. S.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(94, 'Dr. Vinayaka B. Shet', 'Biotechnology Department', 'APJ Kalam Block', 2),
(95, 'Dr. Ujwal P.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(96, 'Dr Vidya S. M.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(97, 'Dr. Chethan D. M.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(98, 'Dr. Venkatesh Kamath H.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(99, 'Dr. C. Vaman Rao', 'Biotechnology Department', 'APJ Kalam Block', 2),
(100, 'Dr. Shyam Prasad ', 'Biotechnology Department', 'APJ Kalam Block', 2),
(101, 'Dr. Sandesh K.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(102, 'Ms. Louella C. G.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(103, 'Mrs. Harshitha J.', 'Biotechnology Department', 'APJ Kalam Block', 2),
(104, 'Ganesh Poojari ', 'Department of Physical Education', 'APJ Kalam Block', 2),
(105, 'Shyamsundar M.', 'Department of Physical Education', 'APJ Kalam Block', 2),
(106, 'Ms. Sowjanya', 'Department of Physical Education', 'APJ Kalam Block', 2),
(107, 'Dr. Sudeepa K. B.', 'Computer Science and Engineering', 'APJ Kalam Block', 3),
(108, 'Raju K.', 'Computer Science and Engineering', 'APJ Kalam Block', 3),
(109, 'Dr. Balasubramani R.', 'Computer Science and Engineering', 'APJ Kalam Block', 3),
(110, 'Dr. Jyothi Shetty', 'Computer Science and Engineering', 'APJ Kalam Block', 3),
(111, 'Vijaya Murari T.', 'Computer Science and Engineering', 'APJ Kalam Block', 3),
(112, 'Dr. Anisha P. Rodrigues', 'Computer Science and Engineering', 'APJ Kalam Block', 3),
(113, 'Mr. Vasudeva Pai', 'Information Science Department', 'APJ Kalam Block', 3),
(114, 'Mr. Devidas', 'Information Science Department', 'APJ Kalam Block', 3),
(115, 'Mr. Abhishek S. Rao', 'Information Science Department', 'APJ Kalam Block', 3),
(116, 'Mr. Ganesh Pai', 'Information Science Department', 'APJ Kalam Block', 3),
(117, 'Mrs. Subha B.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(118, 'Mrs. Charishma', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(119, 'Mrs. Anupama B.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(120, 'Mrs. Niju Rajan', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(121, 'Mrs. Ramya Shetty', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(122, 'Mrs. Deepa K.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(123, 'Anusha R.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(124, 'Mrs. Ashwini K.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(125, 'Ms. Chaithra K.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(126, 'Ms. Bhavya K.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(127, 'Dr. Santosh Poojary', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(128, 'Dr. Harishini U.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(129, 'Mrs. Sneha Nayak', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(130, 'Ms. Sushma P.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(131, 'Ms. Shrividya G.', 'E&C Engineering Department', 'APJ Kalam Block', 3),
(132, 'Dr. Roshan Fernandes', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(133, 'Dr. Venugopala P. S.', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(134, 'Dr . D. K. Sreekantha', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(135, 'Dr. Sharda U Shenoy', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(136, 'Dr. Arvind C. V.', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(137, 'Radhakrishna D.', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(138, 'Pradeep Kanchan', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(139, 'Mr. Krishnaraj', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(140, 'Mr. Balaji N.', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(141, 'Raghunadan K.R.', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(142, 'Dr. Ashwini B.', 'Information Science Department', 'APJ Kalam Block', 5),
(143, 'Dr. Karthik Pai', 'Information Science Department', 'APJ Kalam Block', 5),
(144, 'Ms. Chinmai Shetty', 'Information Science Department', 'APJ Kalam Block', 5),
(145, 'Ms. Rashmi Naveen', 'Information Science Department', 'APJ Kalam Block', 5),
(146, 'Ms. Anusha N.', 'Information Science Department', 'APJ Kalam Block', 5),
(147, 'Ms. Deepa', 'Information Science Department', 'APJ Kalam Block', 5),
(148, 'Sandeep Kumar Hegde', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(149, 'Ms. Prathyakshini', 'Information Science Department', 'APJ Kalam Block', 5),
(150, 'Divya Jennifer D\'Souza', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(151, 'Nikitha Saurabh', 'Information Science Department', 'APJ Kalam Block', 5),
(152, 'Savitha Shetty', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(153, 'Shabari Shedthi B.', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(154, 'Asmita Poojary', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(155, 'Pallavi K. N.', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(156, 'Dr. Jason Elroy Martis', 'Information Science Department', 'APJ Kalam Block', 5),
(157, 'Sannidhan M. S.', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(158, 'Ankitha A. Nayak', 'Computer Science and Engineering', 'APJ Kalam Block', 5),
(159, 'Dr. Karuna Pandit', 'Information Science Department', 'APJ Kalam Block', 5),
(160, 'Dr. Balasubramani', 'Information Science Department', 'APJ Kalam Block', 5),
(161, 'Dr. Usha Divakarla', 'Information Science Department', 'APJ Kalam Block', 5),
(162, 'Mr. B. Sunil Kamath', 'Information Science Department', 'APJ Kalam Block', 5),
(163, 'Mr. Vasudeva Pai', 'Information Science Department', 'APJ Kalam Block', 5),
(164, 'Ms. Rashmi Naveen', 'Information Science Department', 'APJ Kalam Block', 5),
(165, 'Mr. Abhir Bhandary', 'Information Science Department', 'APJ Kalam Block', 5),
(166, 'Mr. Srikanth Bhat K.', 'Information Science Department', 'APJ Kalam Block', 5),
(167, 'Ms. Alaka Ananth', 'Information Science Department', 'APJ Kalam Block', 5),
(168, 'Ms. Sapna S', 'Information Science Department', 'APJ Kalam Block', 5),
(169, 'Ms. Tanzila Nargis', 'Information Science Department', 'APJ Kalam Block', 5),
(170, 'Ms. Sandhya S.', 'Information Science Department', 'APJ Kalam Block', 5),
(171, 'Ms. Vanajakshi', 'Information Science Department', 'APJ Kalam Block', 5),
(172, 'Ms. Deepa Kumari', 'Information Science Department', 'APJ Kalam Block', 5),
(173, 'Ms. Pratheeksha Hegde N.', 'Information Science Department', 'APJ Kalam Block', 5),
(174, 'Mr. Harikrishna Rai', 'Information Science Department', 'APJ Kalam Block', 5),
(175, 'Ms. Suchithra', 'Information Science Department', 'APJ Kalam Block', 5),
(176, 'Mr. Akhil Adyanthaya', 'Information Science Department', 'APJ Kalam Block', 5),
(177, 'Mr. Amar A. Shetty', 'Information Science Department', 'APJ Kalam Block', 5),
(178, 'Mr. Harish Moolya', 'Information Science Department', 'APJ Kalam Block', 5),
(179, 'Mr. Gopal R. Amin', 'Information Science Department', 'APJ Kalam Block', 5),
(180, 'Mr. Rajaram Rao', 'Information Science Department', 'APJ Kalam Block', 5),
(181, 'Dr. Naramsimha K. Baillkeri', 'Mechanical Engineering Department', 'Sir CV Raman Block', 0),
(182, 'Mr. Pushparaj A. Naik', 'Civil Engineering Department', 'Sir CV Raman Block', -1),
(184, 'Dr. Shekhar Poojari', 'null', 'Sir CV Raman Block', 2),
(185, 'Dr. Ramakrishna B.', 'Humanities Department', 'Sir CV Raman Block', 2),
(186, 'Sonia Lobo', 'Humanities Department', 'Sir CV Raman Block', 2),
(187, 'Srinivas Nekkar', 'Humanities Department', 'Sir CV Raman Block', 2),
(188, 'Ms. Sudeeksha S Pai', 'Humanities Department', 'Sir CV Raman Block', 2),
(189, 'Dr. Shyam Prasad K.', 'Physics Department', 'Sir CV Raman Block', 3),
(190, 'Dr. Nagaraja B. S.', 'Physics Department', 'Sir CV Raman Block', 3),
(191, 'Dr. Shankaran P.', 'Mathematics Department', 'Sir CV Raman Block', 3),
(192, 'Ms. Pratheeksha Hegde N', 'Information Science Department', 'Sir CV Raman Block', 3),
(193, 'Ms. Deepa Kumari', 'Information Science Department', 'Sir CV Raman Block', 3),
(194, 'Dr. Bola Sunil Kamath', 'Physics Department', 'Sir CV Raman Block', 3),
(195, 'Sarvajith M.S.', 'Physics Department', 'Sir CV Raman Block', 3),
(196, 'Srinivas Prabhu', 'Mechanical Engineering Department', 'Sir CV Raman Block', 3),
(197, 'Goutham Hebbar', 'Mechanical Engineering Department', 'Sir CV Raman Block', 3),
(198, 'Manjunath Maiya', 'Mechanical Engineering Department', 'Sir CV Raman Block', 3),
(199, 'Mr. Santhosh Acharya', 'Mechanical Engineering Department', 'Sir CV Raman Block', 3),
(200, 'Vincent Linish D\'Souza', 'null', 'Sir CV Raman Block', 3),
(201, 'Melwyn Rajesh Castelino', 'Mechanical Engineering Department', 'Sir CV Raman Block', 3),
(202, 'Mr. Sunil Kumar Aithal S.', 'Computer Science and Engineering', 'Sir CV Raman Block', 3),
(203, 'Mr. Srikanth Bhat K.', 'Computer Science and Engineering', 'Sir CV Raman Block', 3),
(204, 'Mr. Krishnaprasad Rao', 'Computer Science and Engineering', 'Sir CV Raman Block', 3),
(205, 'Mr. Karthik ', 'Computer Science and Engineering', 'Sir CV Raman Block', 3),
(206, 'Mrs. Shankari N.', 'null', 'Sir CV Raman Block', 3),
(207, 'Rajashree', 'Computer Science and Engineering', 'Sir CV Raman Block', 3),
(208, 'Ms. Alaka Ananth', 'Information Science Department', 'Sir CV Raman Block', 3),
(209, 'Ms. Vanajakshi J', 'Information Science Department', 'Sir CV Raman Block', 3),
(210, 'Ms. Sapna S', 'Information Science Department', 'Sir CV Raman Block', 3),
(211, 'Ms. Tanzila Nargis', 'Information Science Department', 'Sir CV Raman Block', 3),
(212, 'Dr. Aarti S.', 'Chemistry Department', 'Sir CV Raman Block', 3),
(213, 'Dr. Subrahmanaya I. Bhat ', 'Chemistry Department', 'Sir CV Raman Block', 3),
(214, 'Ankitha A. Nayak', 'Computer Science and Engineering', 'Sir CV Raman Block', 3),
(215, 'Dr. Ashish Singh', 'null', 'Sir CV Raman Block', 4),
(216, 'Ms. Kavitha S.', 'Computer Science and Engineering', 'Sir CV Raman Block', 4),
(217, 'Dr. Vasanth K. R.', 'Mathematics Department', 'Sir CV Raman Block', 4),
(218, 'Mr. Santosh', 'Mathematics Department', 'Sir CV Raman Block', 4),
(219, 'Rajalaxmi S. Hegde', 'Computer Science and Engineering', 'Sir CV Raman Block', 4),
(220, 'Shruthi M.', 'Computer Science and Engineering', 'Sir CV Raman Block', 4),
(221, 'Mr. Puneeth R. P.', 'Computer Science and Engineering', 'Sir CV Raman Block', 4),
(222, 'Shilpa Karegoudar', 'Computer Science and Engineering', 'Sir CV Raman Block', 4),
(223, 'Mrs. Joylin Priya Pinto', 'Computer Science and Engineering', 'Sir CV Raman Block', 4),
(224, 'Rashmi Hegde', 'Humanities Department', 'Sir CV Raman Block', 5),
(225, 'Dr. Vishwanatha', 'Humanities Department', 'Sir CV Raman Block', 5),
(226, 'Dr. Joy Elvine Martis', 'Humanities Department', 'Sir CV Raman Block', 5),
(227, 'Shyla Dafhny Mendonsa', 'Humanities Department', 'Sir CV Raman Block', 5),
(228, 'Mr. Bhaskar P. Achar', 'Mechanical Engineering Department', 'Sir CV Raman Block', 5),
(229, 'Mr. Venugopal', 'Mechanical Engineering Department', 'Sir CV Raman Block', 5),
(230, 'Mrs. Sandhya', 'Mechanical Engineering Department', 'Sir CV Raman Block', 5),
(231, 'Ms. Deekshitha K', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(232, 'Ms. Sankitha', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(233, 'Mr. Janakraj M.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(234, 'Mr. Jayaraj', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(235, 'Dr. I. R. Mithanthaya', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(236, 'Dr. Saranya P', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(237, 'Mr. Pushparaj A. Naik', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(238, 'Mr. Sundip Shenoy R.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(239, 'Mr. Prithviraj H. K.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(240, 'Mr. Shaik Kabeer Ahmed', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(241, 'Mr. Rakshith Kumar Shetty', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(242, 'Mr. Manjunath M.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(243, 'Mr. Janakraj M.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 0),
(244, 'Dr. Arun Kumar Bhat', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(245, 'Mr. J. K. Lokesh', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(246, 'Dr. RadhaKrishnan K.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', -1),
(247, 'Ms. Harishitha', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', -1),
(248, 'Mrs. Thangamani', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(249, 'Dr. Mithun B. M.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(250, 'Mr. Roshan Rai', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(251, 'Mr. Shriram Marathe', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', -1),
(252, 'Mr. Jagadisha Rao', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', -1),
(253, 'Mr. Ranjith A.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', -1),
(254, 'Dr. Srinath Shetty K.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(255, 'Mrs. Tanushree Hegde', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(256, 'Mr. Prashanth Kumar', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(257, 'Mr. Arjun K. Punja', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(258, 'Mr. Gururaj Acharya', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(259, 'Dr. Udayakumar G.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(260, 'Mr. Bhandage A. R.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(261, 'Dr. Bhojaraja B. E.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(262, 'Mr. Tushar S. Shetty', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(263, 'Mr. Pradeep Karanth', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(264, 'Mr. Sabyath P. Shetty', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(265, 'Mrs. Deekshitha K.', 'Civil Engineering Department', 'Sir M Visvesvaraya Block', 1),
(266, 'Dr. Nagesh Prabhu', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(267, 'Mr. Md. Abdul Raheman', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(268, 'Mr. Dinesh Shetty', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(269, 'Mr. Mahabaleshwara Sharma K.', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(270, 'Mr. Girish Joshi', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(271, 'Mr. Ravikiran Rao M.', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(272, 'Mr. Naveen J', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(273, 'Mr. Pradeep Kumar', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(274, 'Mrs. Latha Shenoy', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(275, 'Dr. Nagesh Prabhu', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(276, 'Mrs. Swathi Hatwar H.', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(277, 'Mrs. Rekha Adappa', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(278, 'Mrs. Palimaru Aparna', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(279, 'Mrs. Soumya Rani Mestha', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(280, 'Mr. K. Vasudeva Shettigar', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(281, 'Mrs. Nayana Shetty', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(282, 'Dr. Anitha Marina Colaco', 'Department of Electrical & Electronics Engineering', 'Sir M Visvesvaraya Block', 2),
(283, 'Dr. Ramakrishna B.', 'Humanities Department', 'Atal Block', 1),
(284, 'Prof. Shashank Shetty', 'Computer Science and Engineering', 'Atal Block', 1),
(285, 'Prof. Mahesh Kini', 'Computer Science and Engineering', 'APJ Kalam Block', 4),
(286, 'Prof. Sampath Kini', 'Computer Science and Engineering', 'APJ Kalam Block', 4);

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `room_name` varchar(50) NOT NULL,
  `block_name` varchar(50) NOT NULL,
  `floor_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`room_name`, `block_name`, `floor_number`) VALUES
('Accounts Section', 'APJ Kalam Block', -1),
('Administration Section ', 'APJ Kalam Block', -1),
('Admission-Academics & Exam Section', 'APJ Kalam Block', -1),
('Chief Warden Office', 'APJ Kalam Block', -1),
('Hostel Office', 'APJ Kalam Block', -1),
('Alternative Fuels Lab', 'Sir CV Raman Block', -1),
('Basic Material Testing Lab', 'Sir CV Raman Block', -1),
('Computerized 4-5 Diesel Engine MEL-04', 'Sir CV Raman Block', -1),
('Computerized Twin Plug 4-5 SI Engine MEL-05', 'Sir CV Raman Block', -1),
('Energy Conversion Engineering Lab MEL-03', 'Sir CV Raman Block', -1),
('Hydraulics & Machinery/Fluid Mechanics ', 'Sir CV Raman Block', -1),
('IC Engine Research Lab', 'Sir CV Raman Block', -1),
('Concrete & Highway Material Lab', 'Sir M Visvesvaraya Block', -1),
('Earthquake Engineering Lab', 'Sir M Visvesvaraya Block', -1),
('Structural Engineering/Research Lab', 'Sir M Visvesvaraya Block', -1),
('Board Room', 'APJ Kalam Block', 0),
('Examination Section', 'APJ Kalam Block', 0),
('President Office NET', 'APJ Kalam Block', 0),
('Principal Office', 'APJ Kalam Block', 0),
('Valuation center 1 and 2 (LH-008)', 'APJ Kalam Block', 0),
('Visitors Lounge', 'APJ Kalam Block', 0),
('Dormitory', 'Atal Block', 0),
('EDCNL-002', 'Atal Block', 0),
('ELH-001', 'Atal Block', 0),
('ELH-003', 'Atal Block', 0),
('Metallurgy Lab(Dept of Mech Engg) CNC Training Lab', 'Atal Block', 0),
('Research Lab(Dept of Basic Science) EDCNL-003', 'Atal Block', 0),
('Swarna Open Auditorium(Near Atal Block)', 'Atal Block', 0),
('Abhyuday/Seminar Hall', 'S Ramanujan Block', 0),
('Head of Counselling  & Placement', 'S Ramanujan Block', 0),
('Interview Cubicles', 'S Ramanujan Block', 0),
('LH 01-LH06', 'S Ramanujan Block', 0),
('NCC Office', 'S Ramanujan Block', 0),
('Placement Office', 'S Ramanujan Block', 0),
('Sambhram AC Auditorium', 'S Ramanujan Block', 0),
('LC-01 - LC-04', 'Sir CV Raman Block', 0),
('Skill Development/IMAC Lab', 'Sir CV Raman Block', 0),
('Xerox Center', 'Sir CV Raman Block', 0),
('Applied Engineering Geology Lab', 'Sir M Visvesvaraya Block', 0),
('Department Library', 'Sir M Visvesvaraya Block', 0),
('Environmental Engineering Lab', 'Sir M Visvesvaraya Block', 0),
('Geotechnical Engineering Lab', 'Sir M Visvesvaraya Block', 0),
('PG Lecture Hall 02', 'Sir M Visvesvaraya Block', 0),
('RS & GIS Lab', 'Sir M Visvesvaraya Block', 0),
('Survey Lab', 'Sir M Visvesvaraya Block', 0),
('Analytical Tech & Mol Bio Lab BTL-04', 'APJ Kalam Block', 1),
('Biochemistry or Microbiology Lab(BTL-01)', 'APJ Kalam Block', 1),
('Bioinformatics Lab BTL-06', 'APJ Kalam Block', 1),
('Bioprocess Control & Instrumentation Lab BTL-03', 'APJ Kalam Block', 1),
('Heat & Mass Transfer Lab BTL-05', 'APJ Kalam Block', 1),
('LH-110 LH112', 'APJ Kalam Block', 1),
('NMAMIT Alumni Association', 'APJ Kalam Block', 1),
('Shambhavi Seminar Hall', 'APJ Kalam Block', 1),
('Unit Operations Lab BTL-02', 'APJ Kalam Block', 1),
('Discussion Room', 'Atal Block', 1),
('EDCNL-101', 'Atal Block', 1),
('EDCNL-102', 'Atal Block', 1),
('ELH-102', 'Atal Block', 1),
('Entrepreneurship Development Cell', 'Atal Block', 1),
('New Age Innovation Network(NAIN)', 'Atal Block', 1),
('Science & Technology Entrepreneurs Park', 'Atal Block', 1),
('Central Library', 'S Ramanujan Block', 1),
('Chemistry Lab A&B', 'S Ramanujan Block', 1),
('E-Learning Center Sowparnika SHAL-02', 'S Ramanujan Block', 1),
('LH-108 LH-104 LH-101', 'S Ramanujan Block', 1),
('Physics Lab A & B', 'S Ramanujan Block', 1),
('Xerox Center', 'S Ramanujan Block', 1),
('Active Learning Lab on Robotics LC-13', 'Sir CV Raman Block', 1),
('Dept of AI&ML Computer Lab-1', 'Sir CV Raman Block', 1),
('Heat Transfer Lab MEL-06', 'Sir CV Raman Block', 1),
('LC-11 - LC-14', 'Sir CV Raman Block', 1),
('Student Welfare Officer', 'Sir CV Raman Block', 1),
('NC-11 - NC-15', 'Sir M Visvesvaraya Block', 1),
('PG Lecture Hall 03', 'Sir M Visvesvaraya Block', 1),
('Biokinetics Lab BTL-09', 'APJ Kalam Block', 2),
('Dept Library/Research Lab BTL-10', 'APJ Kalam Block', 2),
('Dept of Computer & Communication Engg. Comp Lab-1', 'APJ Kalam Block', 2),
('HOD Office Dept of Biotech', 'APJ Kalam Block', 2),
('Instrumentation & Project Lab BTL-08', 'APJ Kalam Block', 2),
('LH-209 - LH-212', 'APJ Kalam Block', 2),
('Metrology Lab', 'APJ Kalam Block', 2),
('PG Research Lab', 'APJ Kalam Block', 2),
('Physical Ed Director Office', 'APJ Kalam Block', 2),
('Upstream Processing/Immunology Lab BTL-07', 'APJ Kalam Block', 2),
('Center of Excellence in AI&ML', 'Atal Block', 2),
('Data Structure/Algorithm Lab CSL-11', 'Atal Block', 2),
('Dept of AI&ML/Computer Lab-2', 'Atal Block', 2),
('ELH-206', 'Atal Block', 2),
('Network Security/Project Lab ISL-06', 'Atal Block', 2),
('Web/Unix Programming Lab CSL-12', 'Atal Block', 2),
('ARM Processor Lab', 'S Ramanujan Block', 2),
('CAD/CAE/CFD LAB', 'S Ramanujan Block', 2),
('Condition monitoring Research Lab', 'S Ramanujan Block', 2),
('LH-201 - LH-208', 'S Ramanujan Block', 2),
('Mech Department Library', 'S Ramanujan Block', 2),
('VLSI Lab', 'S Ramanujan Block', 2),
('LC-21 - LC-27', 'Sir CV Raman Block', 2),
('NC-21 - NC-27', 'Sir M Visvesvaraya Block', 2),
('PG Lecture Hall NC-27', 'Sir M Visvesvaraya Block', 2),
('CFR04', 'APJ Kalam Block', 3),
('EC Staff Room', 'APJ Kalam Block', 3),
('Ladies Common Room ', 'APJ Kalam Block', 3),
('LH-306 - LH-312', 'APJ Kalam Block', 3),
('Texas Instruments Center of Excellence', 'APJ Kalam Block', 3),
('Atal Incubation Center(AIC)', 'Atal Block', 3),
('Analog EC Lab', 'S Ramanujan Block', 3),
('Communications & Microwave Lab', 'S Ramanujan Block', 3),
('DH-01 & DH-02', 'S Ramanujan Block', 3),
('Digital EC Lab', 'S Ramanujan Block', 3),
('EC Seminar Hall', 'S Ramanujan Block', 3),
('ECL-01 - ECL-07', 'S Ramanujan Block', 3),
('LH-301 - LH 305', 'S Ramanujan Block', 3),
('Phalguni', 'S Ramanujan Block', 3),
('Power Electronics Lab', 'S Ramanujan Block', 3),
('Project Lab-2', 'S Ramanujan Block', 3),
('LC-31 - LC-37', 'Sir CV Raman Block', 3),
('Analog/Power Electronics Lab NCL-32', 'Sir M Visvesvaraya Block', 3),
('Basic Electrical Engineering Lab NCL-33', 'Sir M Visvesvaraya Block', 3),
('Department Library & E-Learning Center', 'Sir M Visvesvaraya Block', 3),
('Logic Design/Microcontroller Lab NCL-31', 'Sir M Visvesvaraya Block', 3),
('NC-34 - NC-36', 'Sir M Visvesvaraya Block', 3),
('PG/Research Laboratory NCL-37', 'Sir M Visvesvaraya Block', 3),
('Advanced Programme Lab CSL-02', 'APJ Kalam Block', 4),
('App Development CSL-01', 'APJ Kalam Block', 4),
('Computer Networks/Java Lab ISL-02', 'APJ Kalam Block', 4),
('Computing & Research Lab', 'APJ Kalam Block', 4),
('Databases & Information Systems Lab', 'APJ Kalam Block', 4),
('DBMS/Computer Graphics Lab ISL-01', 'APJ Kalam Block', 4),
('High Performance Computing Lab ISL-04', 'APJ Kalam Block', 4),
('HOD Office Dept Of CSE', 'APJ Kalam Block', 4),
('Java & CGI Lab CSL-03', 'APJ Kalam Block', 4),
('Machine Learning/IOT Lab', 'APJ Kalam Block', 4),
('Microprocessor Lab CSL-04', 'APJ Kalam Block', 4),
('Networking Lab CSL-05', 'APJ Kalam Block', 4),
('Project & Research Lab PG ISL-04', 'APJ Kalam Block', 4),
('Project Lab UG ', 'APJ Kalam Block', 4),
('Python Programming/Web Programming Lab ISL-03', 'APJ Kalam Block', 4),
('Systems Programming Lab CSL-06', 'APJ Kalam Block', 4),
('UG & Research Lab CSL-07', 'APJ Kalam Block', 4),
('UPS Room CS-09', 'APJ Kalam Block', 4),
('Lecture Halls & Staff Room MCA Dept', 'S Ramanujan Block', 4),
('MCA Office', 'S Ramanujan Block', 4),
('MCAL 1-6', 'S Ramanujan Block', 4),
('Radio Nitte', 'S Ramanujan Block', 4),
('LC-41 - LC-47', 'Sir CV Raman Block', 4),
('Dept Library CSE', 'APJ Kalam Block', 5),
('LH-500 - LH-506', 'APJ Kalam Block', 5),
('Logic Design Lab CSL-08', 'APJ Kalam Block', 5),
('PG Lecture Hall LH-501', 'APJ Kalam Block', 5),
('Computer Aided Design Lab(Civil Engg)', 'Sir CV Raman Block', 5),
('Computer Aided Engg Graphics Lab(Mech Engg)', 'Sir CV Raman Block', 5),
('Computer Lab(E&E Engg)', 'Sir CV Raman Block', 5),
('Computer Programming Lab(CCP) CSL-10', 'Sir CV Raman Block', 5),
('PG & Research Lab Dept of E&C', 'Sir CV Raman Block', 5),
('PG Lab(Mech Engg)', 'Sir CV Raman Block', 5),
('Subhashini- Language Lab(English)', 'Sir CV Raman Block', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`user_name`, `password`) VALUES
('jagadeesh', 'jagadeesh'),
('shruti', 'shruti'),
('shweta', 'shweta'),
('sumukh', 'sumukh'),
('utkarsh', 'utkarsh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`block_name`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`block_name`,`dept_name`),
  ADD KEY `dept_name3` (`dept_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_number`),
  ADD KEY `dept_name` (`dept_name`),
  ADD KEY `block_name` (`block_name`),
  ADD KEY `floor_number` (`floor_number`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`floor_number`,`block_name`,`room_name`) USING BTREE,
  ADD KEY `block_name2` (`block_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_number` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `block_name3` FOREIGN KEY (`block_name`) REFERENCES `block` (`block_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `block_name4` FOREIGN KEY (`block_name`) REFERENCES `block` (`block_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dept_name3` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `block_name` FOREIGN KEY (`block_name`) REFERENCES `block` (`block_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dept_name` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `floor_number` FOREIGN KEY (`floor_number`) REFERENCES `floor` (`floor_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `floor`
--
ALTER TABLE `floor`
  ADD CONSTRAINT `block_name2` FOREIGN KEY (`block_name`) REFERENCES `block` (`block_name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
