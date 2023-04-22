-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 18, 2023 at 04:16 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_mgmt_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_desc` text NOT NULL,
  `course_image` varchar(150) NOT NULL,
  `course_price` int(5) NOT NULL,
  `course_discount_price` int(5) NOT NULL,
  `course_start_date` datetime NOT NULL,
  `course_end_date` datetime NOT NULL,
  `created_by_teacher_id` int(11) NOT NULL,
  `archive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_desc`, `course_image`, `course_price`, `course_discount_price`, `course_start_date`, `course_end_date`, `created_by_teacher_id`, `archive`) VALUES
(17, 'Web Programming', '<p>Web development is the work involved in developing a website for the Internet or an intranet. Web development can range from developing a simple single static page of plain text to complex web applications, electronic businesses, and social network services.</p>', '../uploads/course_thumbnails/63732ff72b57a3.24499286.jpg', 5000, 200, '2022-11-27 00:00:00', '2022-12-15 00:00:00', 11, 0),
(18, 'Cyber Security', 'Computer security, cybersecurity, or information technology security is the protection of computer systems and networks from information disclosure, theft of, or damage to their hardware, software, or electronic data, as well as from the disruption or misdirection of the services they provide.', '../uploads/course_thumbnails/63738a37a52fe5.95500428.jpeg', 4500, 3500, '2022-11-17 00:00:00', '2022-12-31 00:00:00', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `content_name` varchar(50) NOT NULL,
  `content_id` int(11) NOT NULL,
  `content_video_material` varchar(200) NOT NULL,
  `is_content_available_for_free_access` tinyint(1) NOT NULL,
  `associated_with_course` int(11) NOT NULL,
  `theory_notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_content`
--

INSERT INTO `course_content` (`content_name`, `content_id`, `content_video_material`, `is_content_available_for_free_access`, `associated_with_course`, `theory_notes`) VALUES
('Introduction', 22, '../uploads/course_content_videos/637331529ba975.94501741.mp4', 0, 17, '<ul>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;!DOCTYPE html&gt;</code>&nbsp;declaration defines this document to be HTML5</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;html&gt;</code>&nbsp;element is the root element of an HTML page</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">lang</code>&nbsp;attribute&nbsp; defines the language of the document</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;meta&gt;</code>&nbsp;element contains meta information about the document</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">charset</code>&nbsp;attribute defines the character set used in the document</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;title&gt;</code>&nbsp;element specifies a title for the document</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;body&gt;</code>&nbsp;element contains the visible page content</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;h1&gt;</code>&nbsp;element defines a large heading</li>\r\n<li>The&nbsp;<code class=\"w3-codespan\">&lt;p&gt;</code>&nbsp;element defines a paragraph</li>\r\n</ul>'),
('HTML ', 23, '../uploads/course_content_videos/63738817dff2f8.03921418.mp4', 0, 17, '<p>HTML is used to create the structure of web pages that are displayed on the World Wide Web (www). It contains Tags and Attributes that are used to design the web pages. Also, we can link multiple pages using Hyperlinks.</p>\r\n<h2>HTML Basic Format Page Structure</h2>\r\n<p>The basic structure of an HTML page is laid out below. It contains the essential building-block elements (i.e. doctype declaration, HTML, head, title, and body elements) upon which all web pages are created.</p>\r\n<ul>\r\n<li>\r\n<p><strong><a href=\"https://www.geeksforgeeks.org/html-doctypes/\" target=\"_blank\" rel=\"noopener\">&lt;DOCTYPE! html&gt;</a>&nbsp;&ndash;</strong>&nbsp;A doctype or document type declaration is an instruction that tells the web browser about the markup language in which the current page is written. It is not an element or tag. The doctype declaration is not case-sensitive.</p>\r\n</li>\r\n<li>\r\n<p><a href=\"https://www.geeksforgeeks.org/html-html-tag/\" target=\"_blank\" rel=\"noopener\"><strong>&lt;html&gt;</strong></a><strong>&nbsp;&ndash;</strong>&nbsp;This tag is used to define the root element of HTML document. This tag tells the browser that it is an HTML document. It is the second outer container element that contains all other elements within it.</p>\r\n</li>\r\n<li>\r\n<p><strong><a href=\"https://www.geeksforgeeks.org/html-head-tag/\" target=\"_blank\" rel=\"noopener\">&lt;head&gt;</a>&nbsp;&ndash;</strong>&nbsp;This tag is used to define the head portion of the HTML document that contains information related to the document. Elements within the head tag are not visible on the front-end of a webpage.</p>\r\n</li>\r\n<li>\r\n<p><strong><a href=\"https://www.geeksforgeeks.org/html-body-tag/\" target=\"_blank\" rel=\"noopener\">&lt;body&gt;</a>&nbsp;&ndash;</strong>&nbsp;The body tag is used to enclose all the visible content of a webpage. In other words, the body content is what the browser will show on the front end.</p>\r\n</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `course_content_quiz`
--

CREATE TABLE `course_content_quiz` (
  `quiz_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `asscociated_with_course_content` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_content_quiz`
--

INSERT INTO `course_content_quiz` (`quiz_id`, `is_active`, `asscociated_with_course_content`) VALUES
(33, 1, 22),
(34, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_discount` int(11) NOT NULL,
  `payment_status` varchar(15) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `payment_source` varchar(25) NOT NULL,
  `payment_server_response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `price`, `price_discount`, `payment_status`, `student_id`, `course_id`, `teacher_id`, `payment_source`, `payment_server_response`) VALUES
(15, 0, 0, 'paid', 10, 17, 11, '', ''),
(16, 0, 0, 'paid', 10, 18, 11, '', ''),
(17, 0, 0, 'paid', 11, 17, 11, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answer`
--

CREATE TABLE `quiz_answer` (
  `answer_id` int(11) NOT NULL,
  `option_text` text NOT NULL,
  `is_correct_option` tinyint(1) NOT NULL,
  `associated_with_question` int(11) NOT NULL,
  `associated_quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_answer`
--

INSERT INTO `quiz_answer` (`answer_id`, `option_text`, `is_correct_option`, `associated_with_question`, `associated_quiz_id`) VALUES
(84, 'the <head> element', 1, 32, 33),
(85, 'the <body> element', 0, 32, 33),
(86, 'HighText Machine Language', 0, 33, 34),
(87, 'HyperText and links Markup Language', 0, 33, 34),
(88, 'HyperText Markup Language', 0, 33, 34),
(89, 'None of these', 0, 33, 34),
(90, 'Head, Title, HTML, body', 1, 34, 34),
(91, 'HTML, Body, Title, Head', 0, 34, 34),
(92, 'HTML, Head, Title, Body', 0, 34, 34),
(93, 'HTML, Head, Title, Body', 0, 34, 34);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `question_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `associated_quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`question_id`, `question_text`, `associated_quiz_id`) VALUES
(32, '<p>The &lt;title&gt; element must be located inside</p>', 33),
(33, '<p>What does the abbreviation HTML stand for?</p>', 34),
(34, 'The correct sequence of HTML tags for starting a webpage is -', 34);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_phone` bigint(11) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_city` varchar(32) NOT NULL,
  `student_dob` date NOT NULL,
  `student_password` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_phone`, `student_email`, `student_city`, `student_dob`, `student_password`) VALUES
(6, 'Varsha', 98576543210, 'Varsha@gmail.com', 'Pune', '1997-12-01', '12345678'),
(7, 'Varsha', 1234567890, 'Varshasree@gmail.com', 'Atlanta', '2022-11-03', '12345'),
(8, 'Priya', 111111111111, 'Priya@gmail.com', 'Pune', '2022-11-01', '12345'),
(9, 'Priya', 9223372036854775807, 'Priyairavab@gmail.com', 'qw', '2022-11-16', '121212'),
(10, 'Ranjit', 2323232323, 'ranjit@gmail.com', 'pune', '2022-11-24', '121212'),
(11, 'Varsha', 1234567891, 'svarsha@gmail.com', 'atlanta', '2023-04-16', 'Priyanka');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolled_course`
--

CREATE TABLE `student_enrolled_course` (
  `enrolled_course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `payment_status` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `course_content_watched_count` int(11) NOT NULL,
  `number_of_quizzes_attempted` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_enrolled_course`
--

INSERT INTO `student_enrolled_course` (`enrolled_course_id`, `student_id`, `course_id`, `teacher_id`, `payment_status`, `is_active`, `course_content_watched_count`, `number_of_quizzes_attempted`, `payment_id`) VALUES
(58, 10, 17, 11, 0, 1, 1, 0, 0),
(59, 10, 18, 11, 0, 1, 0, 0, 0),
(60, 11, 17, 11, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolled_course_content`
--

CREATE TABLE `student_enrolled_course_content` (
  `enrolled_course_content_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_content_id` int(11) NOT NULL,
  `is_completed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_enrolled_course_content`
--

INSERT INTO `student_enrolled_course_content` (`enrolled_course_content_id`, `student_id`, `course_content_id`, `is_completed`) VALUES
(24, 10, 22, 1),
(25, 11, 22, 0),
(26, 11, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolled_quiz`
--

CREATE TABLE `student_enrolled_quiz` (
  `enrolled_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `content_quiz_id` int(11) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `number_of_attempts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_enrolled_quiz`
--

INSERT INTO `student_enrolled_quiz` (`enrolled_quiz_id`, `student_id`, `content_quiz_id`, `is_completed`, `number_of_attempts`) VALUES
(29, 10, 33, 1, 1),
(30, 11, 34, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_quiz_answers`
--

CREATE TABLE `student_quiz_answers` (
  `answer_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_given_id` int(11) NOT NULL,
  `answer_given_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_quiz_answers`
--

INSERT INTO `student_quiz_answers` (`answer_id`, `student_id`, `question_given_id`, `answer_given_id`) VALUES
(17, 10, 32, 84),
(18, 11, 33, 88),
(19, 11, 33, 88),
(20, 11, 33, 88),
(21, 11, 34, 91);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_phone` int(10) NOT NULL,
  `teacher_email` varchar(50) NOT NULL,
  `teacher_city` varchar(25) NOT NULL,
  `teacher_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_phone`, `teacher_email`, `teacher_city`, `teacher_password`) VALUES
(11, 'Priyanka', 2147483647, 'priyanka@gmail.com', 'Atlanta', '1234'),
(12, 'varsha', 1234123412, 'pghare1@student.gsu.edu', 'Atlanta', 'Priyanka@1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `created_by_teacher_id` (`created_by_teacher_id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `associated_with_course` (`associated_with_course`);

--
-- Indexes for table `course_content_quiz`
--
ALTER TABLE `course_content_quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `asscociated_with_course_content` (`asscociated_with_course_content`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `associated_quiz_id` (`associated_quiz_id`),
  ADD KEY `associated_with_question` (`associated_with_question`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `associated_quiz_id` (`associated_quiz_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_phone` (`student_phone`);

--
-- Indexes for table `student_enrolled_course`
--
ALTER TABLE `student_enrolled_course`
  ADD PRIMARY KEY (`enrolled_course_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `student_enrolled_course_content`
--
ALTER TABLE `student_enrolled_course_content`
  ADD PRIMARY KEY (`enrolled_course_content_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_content_id` (`course_content_id`);

--
-- Indexes for table `student_enrolled_quiz`
--
ALTER TABLE `student_enrolled_quiz`
  ADD PRIMARY KEY (`enrolled_quiz_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `content_quiz_id` (`content_quiz_id`);

--
-- Indexes for table `student_quiz_answers`
--
ALTER TABLE `student_quiz_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `answer_given_id` (`answer_given_id`),
  ADD KEY `question_given_id` (`question_given_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `teacher_phone` (`teacher_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `course_content_quiz`
--
ALTER TABLE `course_content_quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `quiz_answer`
--
ALTER TABLE `quiz_answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_enrolled_course`
--
ALTER TABLE `student_enrolled_course`
  MODIFY `enrolled_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `student_enrolled_course_content`
--
ALTER TABLE `student_enrolled_course_content`
  MODIFY `enrolled_course_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_enrolled_quiz`
--
ALTER TABLE `student_enrolled_quiz`
  MODIFY `enrolled_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student_quiz_answers`
--
ALTER TABLE `student_quiz_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`created_by_teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `course_content`
--
ALTER TABLE `course_content`
  ADD CONSTRAINT `course_content_ibfk_1` FOREIGN KEY (`associated_with_course`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `student_enrolled_course`
--
ALTER TABLE `student_enrolled_course`
  ADD CONSTRAINT `student_enrolled_course_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_enrolled_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `student_enrolled_course_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `student_enrolled_course_content`
--
ALTER TABLE `student_enrolled_course_content`
  ADD CONSTRAINT `student_enrolled_course_content_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_enrolled_course_content_ibfk_2` FOREIGN KEY (`course_content_id`) REFERENCES `course_content` (`content_id`);

--
-- Constraints for table `student_enrolled_quiz`
--
ALTER TABLE `student_enrolled_quiz`
  ADD CONSTRAINT `student_enrolled_quiz_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_enrolled_quiz_ibfk_2` FOREIGN KEY (`content_quiz_id`) REFERENCES `course_content_quiz` (`quiz_id`);

--
-- Constraints for table `student_quiz_answers`
--
ALTER TABLE `student_quiz_answers`
  ADD CONSTRAINT `student_quiz_answers_ibfk_1` FOREIGN KEY (`answer_given_id`) REFERENCES `quiz_answer` (`answer_id`),
  ADD CONSTRAINT `student_quiz_answers_ibfk_2` FOREIGN KEY (`question_given_id`) REFERENCES `quiz_question` (`question_id`),
  ADD CONSTRAINT `student_quiz_answers_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
