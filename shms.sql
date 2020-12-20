-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 05:15 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shms`
--

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_treatment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`, `basic_treatment`, `created_at`, `updated_at`) VALUES
(1, 'Skin, Sex & Allergy Specialist', 'Avoid contact. It might sound obvious, but it\'s worth a reminder. ...\r\nChill out. A cool compress or shower can help calm a fiery rash. ...\r\nSoak it. ...\r\nAdd anti-itch cream. ...\r\nGo baggy. ...\r\nFor severe symptoms, try a damp dressing.', '2020-09-21 03:37:38', '2020-11-01 14:46:12'),
(5, 'Fever', 'Drink plenty of fluids. Fever can cause fluid loss and dehydration, so drink water, juices or broth. Rest. You need rest to recover, and activity can raise your body temperature. Stay cool. Dress in light clothing, keep the room temperature cool and sleep with only a sheet or light blanket.', '2020-10-03 23:56:51', '2020-10-04 23:45:47'),
(6, 'Polio', 'Once the virus that causes polio has infected a person, there is no treatment that will cure polio. Early diagnosis and supportive treatments such as bed rest, pain control, good nutrition, and physical therapy to prevent deformities from occurring over time can help reduce the long-term symptoms due to muscle loss.', '2020-10-04 08:59:39', '2020-10-04 23:44:52'),
(8, 'Mental Illness', 'Psychotherapy. Psychotherapy is the therapeutic treatment of mental illness provided by a trained mental health professional. Psychotherapy explores thoughts, feelings, and behaviors, and seeks to improve an individual\'s well-being. Psychotherapy paired with medication is the most effective way to promote recovery.', '2020-10-04 23:47:43', '2020-10-04 23:47:43'),
(9, 'Behavior Issue', 'Formerly known as talk therapy, cognitive behavioral therapy treatment (CBT) is by far the most commonly used mechanism for managing the symptoms of behavioral disorders. CBT is usually administered in hour-long sessions by a single therapist who will engage the patient on a deep level.', '2020-10-04 23:58:02', '2020-10-04 23:58:02'),
(10, 'mental issue', 'The defining symptoms for each mental illness are detailed in the Diagnostic and Statistical Manual of Mental Disorders (DSM-5), published by the American Psychiatric Association. This manual is used by mental health professionals to diagnose mental conditions and by insurance companies to reimburse for treatment.', '2020-10-05 00:33:14', '2020-11-02 04:40:13'),
(11, 'ENT', 'Otolaryngologists are physicians trained in the medical and surgical management and treatment of patients with diseases and disorders of the ear, nose, throat (ENT), and related structures of the head and neck. They are commonly referred to as ENT physicians.', '2020-11-01 14:41:09', '2020-11-01 14:41:09'),
(12, 'Cancer', 'Any cancer treatment can be used as a primary treatment, but the most common primary cancer treatment for the most common types of cancer is surgery. If your cancer is particularly sensitive to radiation therapy or chemotherapy, you may receive one of those therapies as your primary treatment. Adjuvant treatment.', '2020-11-02 04:38:45', '2020-11-02 04:38:45'),
(13, 'heart specelist', 'n general, treatment for heart disease usually includes: Lifestyle changes. These include eating a low-fat and low-sodium diet, getting at least 30 minutes of moderate exercise on most days of the week, quitting smoking, and limiting alcohol intake. Medication', '2020-11-02 04:48:30', '2020-11-02 04:48:30'),
(14, 'Liver Disease', 'Some liver problems can be treated with lifestyle modifications, such as stopping alcohol use or losing weight, typically as part of a medical program that includes careful monitoring of liver function. Other liver problems may be treated with medications or may require surgery', '2020-11-02 05:00:29', '2020-11-02 05:00:29'),
(15, 'Crohn\'s & Colitis', 'IBD also includes indeterminate colitis. Crohn\'s disease and ulcerative colitis are diseases that inflame the lining of the GI (gastrointestinal) tract and disrupt your body\'s ability to digest food, absorb nutrition, and eliminate waste in a healthy manner.', '2020-11-02 05:06:10', '2020-11-02 05:06:10'),
(16, 'Heart Disease', 'In general, treatment for heart disease usually includes: Lifestyle changes. These include eating a low-fat and low-sodium diet, getting at least 30 minutes of moderate exercise on most days of the week, quitting smoking, and limiting alcohol intake. Medications', '2020-11-02 05:19:45', '2020-11-02 05:19:45'),
(17, 'ENT', 'Otolaryngologists are physicians trained in the medical and surgical management and treatment of patients with diseases and disorders of the ear, nose, throat (ENT), and related structures of the head and neck. They are commonly referred to as ENT physicians.', '2020-11-02 05:34:26', '2020-11-02 05:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `disease_doctor`
--

CREATE TABLE `disease_doctor` (
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `disease_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disease_doctor`
--

INSERT INTO `disease_doctor` (`doctor_id`, `disease_id`) VALUES
(1, 1),
(4, 6),
(5, 5),
(5, 8),
(5, 9),
(3, 5),
(9, 11),
(7, 11),
(1, 12),
(10, 10),
(13, 13),
(14, 14),
(15, 15),
(21, 16),
(19, 16),
(24, 17);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `phone`, `address`, `gender`, `degree`, `specialist`, `serial_phone_no`, `created_at`, `updated_at`) VALUES
(1, 'Dr Jahangir Kabir', 'jahangir@gmail.com', '01478542255', 'Feni', 'male', 'MBBS, FCBS', 'Dermatology Specialist', '01874125899', '2020-09-21 03:29:02', '2020-11-02 04:32:17'),
(3, 'Reza Chowdhory', 'reza@gmail.com', '01587412566', 'Kandirpar', 'male', 'MBBS, FCBS', 'Medicine', '01478569856', '2020-09-24 22:57:07', '2020-11-01 14:32:39'),
(4, 'Mahbubul Alam', 'mahbub@gmail.com', '01478596535', 'Jhawtala', 'female', 'MBBS, FCBS', 'Sishu Bisesshogo', '01784496586', '2020-10-04 08:58:42', '2020-10-04 23:37:46'),
(5, 'Dr. Khorshed Alam', 'khorshed@gmail.com', '01845555478', 'Ranir dighir par, Cumilla', 'male', 'MBBS', 'Pediatrician', '01843848448', '2020-10-04 23:42:17', '2020-10-04 23:42:17'),
(7, 'Dr. Jebin', 'jebin@gmail.com', '01846666425', 'North Guyam bagica,Domoria chanpur,Cumilla', 'female', 'MBBS', 'child specialist', '01843848443', '2020-10-05 00:35:07', '2020-10-05 00:35:07'),
(8, 'Dr. Hasna Fahmima Haque', 'fahmima@gmail.com', '10606', 'Labaid, Dhanmondi,Dhaka.', 'femail', 'MBBS, FCPS(Medi)', 'Medicine & Diabetic Specialist', '10606', '2020-11-01 14:24:55', '2020-11-01 14:24:55'),
(9, 'Dr Abul Kalam Azad', 'kalam@gmail.com', '01714245558', 'Nator', 'male', 'MBBS,FICS', 'ENT', '16664', '2020-11-01 14:38:34', '2020-11-01 14:38:34'),
(10, 'Dr. Aysha Akter', 'aysha1@gmail.com', '01740603809', 'cumilla,cantonment', 'femail', 'MBBS,Frcs', 'eye specialist', '16002', '2020-11-02 04:31:11', '2020-11-02 04:31:11'),
(11, 'Dr mojibur Rahman', 'mojib32@gmail.com', '01823157646', 'cumilla tower hospital', 'male', 'MBBS, FCPS', 'Ophthalmologists.', '16777', '2020-11-02 04:35:30', '2020-11-02 04:35:30'),
(12, 'Dr Sofikur Rahman', 'sofik5646@gmail.com', '01644844784', 'cumilla modern hospital', 'male', 'MBBS, FCPS', 'Cardiologists. .', '16005', '2020-11-02 04:43:29', '2020-11-02 04:43:29'),
(13, 'Dr sukumar', 'sukumar@gmail.com', '01712345679', 'Cumilla moon Hospital', 'male', 'MBBS,FRCS', 'heart specialist', '154345', '2020-11-02 04:47:59', '2020-11-02 04:47:59'),
(14, 'Dr Ismail hossain', 'Ismail@gmail.com', '01710819195', 'cumilla medical college hospital', 'male', 'MBBS,FCPS', 'Liver Specialist', '16999', '2020-11-02 04:59:31', '2020-11-02 04:59:31'),
(15, 'Dr fahmida sharmin', 'fahmida1662@gmail.com', '01744267876', 'cumilla medinova', 'femail', 'MBBS,BCS', 'Crohn\'s & Colitis', '416877', '2020-11-02 05:04:45', '2020-11-02 05:04:45'),
(19, 'Dr shuvra', 'shuvrapaul2250@gmail.com', '01647510823', 'chouddagram family helthcare', 'male', 'MBBS', 'Heart Disease', '160003', '2020-11-02 05:15:44', '2020-11-02 05:15:44'),
(21, 'Dr.snigdha kor', 'snigdha@gmail.com', '01753251144', 'cumilla Adarsha Hospital', 'femail', 'MBBS,FCPS', 'Heart Disease', '16543', '2020-11-02 05:18:31', '2020-11-02 05:18:31'),
(24, 'Dr shahana parvin', 'parvin@gmail.com', '01717890987', 'chouddagram medilove', 'male', 'MBBS,FICS', 'Medicine', '16119', '2020-11-02 05:32:25', '2020-11-02 05:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2020_09_21_052022_create_doctor_disease_table', 2),
(12, '2014_10_12_000000_create_users_table', 3),
(13, '2014_10_12_100000_create_password_resets_table', 3),
(14, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(15, '2019_08_19_000000_create_failed_jobs_table', 3),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(17, '2020_09_20_193558_create_sessions_table', 3),
(18, '2020_09_21_051231_create_doctors_table', 3),
(19, '2020_09_21_051645_create_diseases_table', 3),
(20, '2020_09_21_053914_create_disease_doctor_table', 3),
(21, '2014_10_12_000000_create_roles_table', 4),
(22, '2020_09_24_155619_create_role_user_table', 5),
(25, '2020_09_26_121432_create_serials_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-09-23 18:00:00', NULL),
(2, 'assistant_of_doctor', NULL, NULL),
(3, 'end_user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(6, 1),
(9, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `serials`
--

CREATE TABLE `serials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serials`
--

INSERT INTO `serials` (`id`, `doctor_id`, `name`, `email`, `phone`, `gender`, `age`, `problem`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, 'Naimur Rahman', 'naimur@gmail.com', '01845555477', 'male', '23', 'Last few months i\'m not feeling well with my mental health.\r\nI\'m feeling stressed & tired too.', 0, '2020-10-05 00:03:49', '2020-10-05 00:03:49'),
(5, 5, 'Sazzadul Islam', 'Sazzad@gmail.com', '01845555474', 'male', '20', 'Last few days i\'m suffering from fever. Body temparature 100 - 102 C.', 0, '2020-10-05 00:08:53', '2020-10-05 00:08:53'),
(6, 5, 'MD Hanif', 'hanif@gmail.com', '01846666414', 'male', '22', 'suffering from fever', 1, '2020-10-05 00:28:15', '2020-10-05 00:29:52'),
(8, 3, 'mr majnu', 'majnu@gmail.com', '013036666454', 'male', '22', 'had serious fever', 0, '2020-10-28 13:12:48', '2020-10-28 13:12:48'),
(10, 4, 'boga mia', 'bogamia@gmail.com', '018454455477', 'male', '33', 'polio', 1, '2020-10-30 13:38:19', '2020-10-30 13:40:40'),
(11, 5, 'Amaz', 'amaz@gmail.com', '01223', 'male', '23', 'dahkakakk', 1, '2020-11-01 11:52:52', '2020-11-01 11:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0OBhCXnYK942CXpqfirlG4oOXhGmTkgiGipv1xMR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOXpBZTBNZXo1RXpmRlhGZldTOHhpTkduMjJtQTJhRlN4bWNYRkZuWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyX2xpc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkcVhqVUIuaTRDWG1rWlBjR3ltd0QzZW1INGxNLlEuM0RSVG1FVTVxVm9RMmpzVmtoeDMxcGkiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHFYalVCLmk0Q1hta1pQY0d5bXdEM2VtSDRsTS5RLjNEUlRtRVU1cVZvUTJqc1ZraHgzMXBpIjt9', 1604321578),
('IMosCcxaJGKSYNGGokndJC8gnJPZm8zgqKXdNgf1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS29XaGpoMno4Q0VHWnh4R0M0VTJDY2dHcWl6VlZhNGJOTFNXMDFtbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1604333309);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Rahad Arefin', 'rahad@baiust.edu.bd', NULL, '$2y$10$qXjUB.i4CXmkZPcGymwD3emH4lM.Q.3DRTmEU5qVoQ2jsVkhx31pi', NULL, NULL, 'KwdMth2jtViv8xUUSQ9HKF4tcwhVtcQcwsweST63g52aisGTVT4jyywNunU9', NULL, NULL, '2020-09-21 03:26:18', '2020-10-04 23:34:20'),
(6, 'Jahid Hasan', 'jahid7873@gmail.com', NULL, '$2y$12$mXE0sTQY3IKavLgfTBhRTeYKjdLUX4yUcQdVAA/8P./RWKN8lo3i6', NULL, NULL, NULL, NULL, NULL, '2020-10-04 08:03:09', '2020-11-02 06:52:57'),
(9, 'Akash', 'akash@gmail.com', NULL, '$2y$10$la.kX4X35dGvIl.fJUXNGOdDEtpkcshpNwvDPi1mmp4YC4L5sMc3i', NULL, NULL, NULL, NULL, NULL, '2020-10-05 00:36:42', '2020-10-05 00:36:42'),
(10, 'Dr Abul Kalam Azad', 'kalam@gmail.com', NULL, '$2y$10$DkUWr/WtCrZfEq81Opuu7Oz18dv3hkI.D5JnhnP7Jw8uUpnD3muo2', NULL, NULL, NULL, NULL, NULL, '2020-11-01 14:48:24', '2020-11-01 14:48:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_doctor`
--
ALTER TABLE `disease_doctor`
  ADD KEY `disease_doctor_doctor_id_foreign` (`doctor_id`),
  ADD KEY `disease_doctor_disease_id_foreign` (`disease_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD UNIQUE KEY `doctors_phone_unique` (`phone`),
  ADD UNIQUE KEY `doctors_serial_phone_no_unique` (`serial_phone_no`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `serials`
--
ALTER TABLE `serials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serials_email_unique` (`email`),
  ADD UNIQUE KEY `serials_phone_unique` (`phone`),
  ADD KEY `serials_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `serials`
--
ALTER TABLE `serials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease_doctor`
--
ALTER TABLE `disease_doctor`
  ADD CONSTRAINT `disease_doctor_disease_id_foreign` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `disease_doctor_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serials`
--
ALTER TABLE `serials`
  ADD CONSTRAINT `serials_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
