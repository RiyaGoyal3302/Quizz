-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 08:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(5, 12, 2, 4, 32, 1, '2020-09-07 16:59:14'),
(6, 12, 2, 5, 38, 1, '2020-09-07 16:59:14'),
(10, 13, 2, 5, 38, 1, '2022-04-04 20:22:52'),
(11, 13, 2, 6, 42, 0, '2022-04-04 20:22:52'),
(12, 13, 2, 7, 48, 0, '2022-04-04 20:22:52'),
(13, 13, 3, 9, 56, 0, '2022-04-13 21:16:22'),
(14, 13, 3, 11, 64, 0, '2022-04-13 21:16:22'),
(15, 13, 3, 12, 67, 0, '2022-04-13 21:16:22'),
(16, 13, 3, 13, 69, 0, '2022-04-13 21:16:22'),
(17, 13, 3, 14, 75, 0, '2022-04-13 21:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(2, 6, 'Math', '2020-09-07 12:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(3, 2, 12, 4, 4, '2020-09-07 16:59:14'),
(5, 2, 13, 2, 6, '2022-04-04 20:22:52'),
(6, 3, 13, 0, 5, '2022-04-13 21:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(5, 'Sample Question', 2, 0, '2020-09-07 14:00:39'),
(6, 'What is PHP?', 2, 0, '2022-03-17 20:51:57'),
(7, 'dgvjyhugb', 2, 0, '2022-03-25 19:39:45'),
(9, 'What is the general formula of alkenes?', 3, 0, '2022-04-12 07:45:37'),
(10, 'ghbjo', 2, 0, '2022-04-13 20:51:10'),
(11, 'What can you call a heavy snow that is not quite a blizzard?', 3, 0, '2022-04-13 20:58:04'),
(12, 'Which of these words refers to thin, bending ice, or to the act of running over such ice?', 3, 0, '2022-04-13 20:58:53'),
(13, 'What’s the best thing to do when you see corn snow?', 3, 0, '2022-04-13 20:59:36'),
(14, 'Which of these words refers to a wavelike ridge of hard snow formed by the wind?', 3, 0, '2022-04-13 21:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(29, 'dsfsf sdf', 4, 0, '2020-09-07 14:40:57'),
(37, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(38, 'Right', 5, 1, '2020-09-07 14:41:32'),
(39, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(40, 'Wrong', 5, 0, '2020-09-07 14:41:32'),
(41, 'tool', 6, 0, '2022-03-17 20:51:57'),
(42, 'client side language', 6, 0, '2022-03-17 20:51:58'),
(43, 'website', 6, 0, '2022-03-17 20:51:58'),
(44, 'server side language', 6, 1, '2022-04-02 22:39:15'),
(45, 'tgfhjb', 7, 0, '2022-03-25 19:39:45'),
(46, 'yguyhjni', 7, 1, '2022-04-02 22:39:44'),
(47, 'ygfjh', 7, 0, '2022-03-25 19:39:45'),
(48, 'gjiujhk', 7, 0, '2022-03-25 19:39:45'),
(49, 'CnH2n-2', 8, 0, '2022-04-12 07:45:33'),
(50, 'CnH2n+2', 8, 0, '2022-04-12 07:45:34'),
(51, 'CnH2n+1', 8, 0, '2022-04-12 07:45:34'),
(52, 'CnH2n', 8, 0, '2022-04-12 07:45:34'),
(53, 'CnH2n-2', 9, 0, '2022-04-12 07:45:37'),
(54, 'CnH2n+2', 9, 0, '2022-04-12 07:45:37'),
(55, 'CnH2n+1', 9, 0, '2022-04-12 07:45:37'),
(56, 'CnH2n', 9, 0, '2022-04-12 07:45:37'),
(57, 'tfuyhb', 10, 0, '2022-04-13 20:51:10'),
(58, 'cghbvjh', 10, 0, '2022-04-13 20:51:10'),
(59, 'tfgvhb', 10, 0, '2022-04-13 20:51:10'),
(60, 'tfvhgbjh', 10, 0, '2022-04-13 20:51:10'),
(61, 'sleet', 11, 0, '2022-04-13 20:58:04'),
(62, 'flurry', 11, 0, '2022-04-13 20:58:04'),
(63, 'skift', 11, 0, '2022-04-13 20:58:04'),
(64, 'onding', 11, 0, '2022-04-13 20:58:04'),
(65, 'duvet', 12, 0, '2022-04-13 20:58:53'),
(66, 'spindrift', 12, 0, '2022-04-13 20:58:53'),
(67, 'kittly-benders', 12, 0, '2022-04-13 20:58:53'),
(68, 'pince-nez', 12, 0, '2022-04-13 20:58:53'),
(81, 'carpaccio', 14, 0, '2022-04-16 17:24:24'),
(82, 'nemesis', 14, 0, '2022-04-16 17:24:24'),
(83, 'sastruga', 14, 1, '2022-04-16 17:24:24'),
(84, 'gondola', 14, 0, '2022-04-16 17:24:24'),
(85, 'g', 15, 0, '2022-04-16 17:25:12'),
(86, 'e', 15, 0, '2022-04-16 17:25:12'),
(87, 'w', 15, 0, '2022-04-16 17:25:12'),
(88, 'right hello', 15, 0, '2022-04-16 17:25:12'),
(89, 'grab your spoon', 13, 0, '2022-04-16 17:27:02'),
(90, 'grab your ice pick', 13, 0, '2022-04-16 17:27:02'),
(91, 'grab your wallet', 13, 1, '2022-04-16 17:27:02'),
(92, 'grab your skis', 13, 0, '2022-04-16 17:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `time` int(50) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`, `time`) VALUES
(2, 'Pre-Math', 2, 13, '2022-04-13 21:04:41', 20),
(3, 'Science Quiz', 1, 0, '2022-04-12 07:39:42', 20),
(5, 'new', 3, 0, '2022-05-31 11:41:06', 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(5, 2, 12, '2020-09-07 15:05:58'),
(6, 2, 13, '2020-09-07 15:05:58'),
(7, 2, 3, '2022-03-29 19:28:48'),
(12, 3, 13, '2022-04-13 21:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(4, 13, '2-C', '2022-04-15 15:22:57'),
(7, 17, '2-a', '2022-04-16 16:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `google_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `name`, `profile_image`, `user_type`) VALUES
(1, 'abc@gmail.com', 'demo user', 'abc.jpg', 1),
(6, 'riyaagoyal101@gmail.com', 'RIYA GOYAL', 'https://lh3.googleusercontent.com/a/AATXAJywFJCN2TUGcCaahaG13r84sAgwDRycHXdt-5mc=s96-c', 1),
(13, 'riyagoyalcs19@acropolis.in', 'RIYA GOYAL : CS19-1194', 'https://lh3.googleusercontent.com/a/AATXAJwqJWbqw-PBQSH9zfKDi5oOrn2mbBihqCDBX_s2=s96-c', 3),
(17, 'riyagoyal1233016@gmail.com', 'Riya Goyal', 'https://lh3.googleusercontent.com/a-/AOh14GjRbNd4MAhhxReT6OFMgXWliVtxKaFEm9-xTDTq=s96-c', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `google_id` (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
