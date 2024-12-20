-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 03:01 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_completed` tinyint(1) DEFAULT '0',
  `priority` enum('Low','Medium','High') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Medium',
  `due_date` date DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`, `is_completed`, `priority`, `due_date`, `user_id`, `created_at`) VALUES
('0998994f-9b2f-4d4b-a0b5-c6d12272c67b', 'Submit business intelligence assignment.', 'Complete and upload the BI module report on analytics models.', 1, 'Low', '2024-12-10', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:40'),
('ab5f7d4a-42dc-4dc1-8036-8c435bfd8c61', 'Update project documentation.', 'Ensure that all project-related documents are up to date.', 0, 'Low', '2024-12-14', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 02:10:00'),
('b1e2df34-20b5-4c98-b832-648c9a5988b3', 'Complete quarterly report.', 'Finalize and submit the quarterly financial report.', 0, 'Low', '2024-12-12', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:30'),
('b2b8e574-1b3e-4896-bec8-d6850d799dfc', 'Prepare quarterly analytics.', 'Generate a detailed report on quarterly performance metrics.', 1, 'High', '2024-12-15', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 03:15:45'),
('ba49cfc5-6f57-4016-83e4-9390f74ebf36', 'Prepare budget review.', 'Analyze and prepare data for the annual budget review.', 0, 'Medium', '2024-12-11', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 02:10:00'),
('c2e891da-5048-4649-94fa-3b03e2cc828f', 'Prepare presentation slides.', 'Design and finalize slides for the client presentation.', 0, 'Medium', '2024-12-13', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 02:10:00'),
('ceca2e8e-0edb-4ed4-b8e4-f89f72f9a352', 'Prepare presentation for client meeting.', 'Draft slides and rehearse the presentation for the Q4 performance review.', 0, 'Low', '2024-12-11', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 23:31:28'),
('d3f6a674-c1d8-42f5-8c12-3c2bfe7a6b63', 'Organize team lunch.', 'Plan and schedule a lunch outing for the team.', 0, 'Low', '2024-12-15', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:30'),
('d972c2f1-92a6-4f84-9785-c622d8e5c8ef', 'Send client follow-up email.', 'Compose and send an update email to the client.', 1, 'Medium', '2024-12-15', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 03:15:45'),
('e3dbf8f2-6c18-43b1-986a-d5469b1da4cc', 'Review vendor contracts.', 'Evaluate terms and negotiate contracts with vendors.', 1, 'Medium', '2024-12-14', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:30'),
('e910e31d-68e5-48c5-a4db-be3000642293', 'Update LinkedIn profile.', 'Add recent projects and skills to the LinkedIn profile.', 1, 'Low', '2024-12-10', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:01'),
('ea7d4c91-6c8f-44f6-b2da-53c5c86ff6b7', 'Conduct code review.', 'Review the codebase for quality and security compliance.', 0, 'High', '2024-12-12', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:30'),
('ec8d7134-50da-4e97-9c1a-1a5f5015f57e', 'Schedule performance reviews.', 'Plan and set dates for individual performance review sessions.', 0, 'Low', '2024-12-13', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 03:15:45'),
('f3d7cedb-e524-4d3a-86ad-0c1df0658d5f', 'Prepare meeting agenda.', 'Draft a detailed agenda for the project status update meeting. this is high priority work', 1, 'High', '2024-12-10', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:30'),
('f42bd4da-cf53-4a89-b56b-3f4b356e7b90', 'Fix website bug.', 'Resolve the layout issue on the homepage of the website.', 1, 'Low', '2024-12-12', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 01:27:30'),
('f5e5678d-929c-42f2-b84d-ec4e6e3f5a92', 'Prepare year-end summary.', 'Summarize and present key achievements of the year.', 1, 'High', '2024-12-11', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 02:10:00'),
('fa4bd8c7-7121-4d09-bd96-816b482d7f0a', 'Submit project proposal.', 'Draft and submit the proposal for the new project initiative.', 1, 'High', '2024-12-11', 'ba4d5e69-23da-4ec7-ae0a-d18492eeea46', '2024-12-11 02:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
('ba4d5e69-23da-4ec7-ae0a-d18492eeea46', 'Saman Perera', 'saman@gmail.com', '$2a$10$lxnHUU3GX2NwsX..IFKMXe2woFBVuZ9JudcGIH5MnUGO7qF8k8l2S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_users_fk` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_unique` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
