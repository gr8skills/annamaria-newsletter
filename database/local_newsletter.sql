-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2022 at 12:41 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_newsletter`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_tokens`
--

CREATE TABLE `api_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_11_000000_create_workspaces_table', 1),
(4, '2017_04_11_100000_create_invitations_table', 1),
(5, '2017_04_11_133343_create_email_service_tables', 1),
(6, '2017_04_12_6000_create_unsubscribed_table', 1),
(7, '2017_04_28_223029_create_campaign_statuses_table', 1),
(8, '2017_04_28_223840_create_subscribers_table', 1),
(9, '2017_04_28_223844_create_segments_table', 1),
(10, '2017_04_28_223854_create_segment_subscriber_table', 1),
(11, '2017_04_28_223906_create_templates_table', 1),
(12, '2017_04_28_223915_create_campaigns_table', 1),
(13, '2017_05_02_104440_create_campaign_segment_table', 1),
(14, '2019_07_10_194325_create_messages_table', 1),
(15, '2019_07_30_153117_create_message_urls_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_08_24_114758_adjust_users_table', 1),
(18, '2020_01_23_153845_create_message_failures_table', 1),
(19, '2020_06_16_072116_adjust_campaign_content', 1),
(20, '2020_06_16_072137_adjust_template_content', 1),
(21, '2020_07_17_072137_add_cancelled_campaign_status', 1),
(22, '2020_08_04_085127_add_mailjet_email_service', 1),
(23, '2020_10_02_152306_drop_segment_name_unique', 1),
(24, '2020_10_16_092234_prefix_tables', 1),
(25, '2020_11_13_120125_create_api_tokens_table', 1),
(26, '2021_01_26_151747_remove_api_token_from_users_table', 1),
(27, '2021_01_29_121118_rename_segments_to_tags', 1),
(28, '2021_02_26_110520_add_smtp_email_service_type', 1),
(29, '2021_10_22_202820_add_postal_email_service_type', 1),
(30, '2022_04_03_182850_create_jobs_table', 2);

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
-- Table structure for table `sendportal_campaigns`
--

CREATE TABLE `sendportal_campaigns` (
  `id` int UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int UNSIGNED NOT NULL DEFAULT '1',
  `template_id` int UNSIGNED DEFAULT NULL,
  `email_service_id` int UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open_tracking` tinyint(1) NOT NULL DEFAULT '1',
  `is_click_tracking` tinyint(1) NOT NULL DEFAULT '1',
  `sent_count` mediumint DEFAULT '0',
  `open_count` mediumint DEFAULT '0',
  `click_count` mediumint DEFAULT '0',
  `send_to_all` tinyint(1) NOT NULL DEFAULT '0',
  `save_as_draft` tinyint(1) NOT NULL DEFAULT '1',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_campaigns`
--

INSERT INTO `sendportal_campaigns` (`id`, `workspace_id`, `name`, `status_id`, `template_id`, `email_service_id`, `subject`, `content`, `from_name`, `from_email`, `is_open_tracking`, `is_click_tracking`, `sent_count`, `open_count`, `click_count`, `send_to_all`, `save_as_draft`, `scheduled_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test', 1, 1, 1, 'Test Campaign', '<p><span style=\"color: rgb(82, 98, 122); font-family: brownregular, sans-serif; font-size: 15px;\">Our Specialist Services include; cardiology, endocrinology, gastroenterology, pulmonology, Psychiatry, immunization for children and adults, periodic medical examination, urology, physiotherapy, general surgery, orthopaedics, and plastic surgery, obstetrics and Gynaecology, pre-employment medical check-up etc.</span><br></p>', 'AnnaMaria Hospital', 'info@annamariahospital.com', 1, 1, 0, 0, 0, 0, 1, NULL, '2022-04-03 17:52:46', '2022-04-03 17:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_campaign_statuses`
--

CREATE TABLE `sendportal_campaign_statuses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_campaign_statuses`
--

INSERT INTO `sendportal_campaign_statuses` (`id`, `name`) VALUES
(1, 'Draft'),
(2, 'Queued'),
(3, 'Sending'),
(4, 'Sent'),
(5, 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_campaign_tag`
--

CREATE TABLE `sendportal_campaign_tag` (
  `id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `campaign_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_email_services`
--

CREATE TABLE `sendportal_email_services` (
  `id` int UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int UNSIGNED NOT NULL,
  `settings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_email_services`
--

INSERT INTO `sendportal_email_services` (`id`, `workspace_id`, `name`, `type_id`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Swift', 3, 'eyJpdiI6IjVybDZPcC9rUEk3MUc3NjliYzFKK1E9PSIsInZhbHVlIjoiVHdiNXd0bTJ0S2l6Y0RDV1JMd3ExWG9JdWZLZ0pnd1lBbkhmUEI0UEtDSDdOVG45eVhtbEJpcUFjVnQ3Ky8wTVNHeGpRREd6NTNOZFZ1a2J6RWJuMFhURmdWQnZHcGx6RHo4bjB4Y2pUQU1VWEVtNmNVRHVmZURuSmpiejVrS3UiLCJtYWMiOiI4OTFlMjhhZWE1ZTkzODkzZTVhMWVkODQ2NTAyODMxOGI0NTc0NzM3M2NkYzc1NmEyYzkyM2JmMGY3MTQ1YmU5IiwidGFnIjoiIn0=', '2022-04-03 17:32:10', '2022-04-03 17:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_email_service_types`
--

CREATE TABLE `sendportal_email_service_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_email_service_types`
--

INSERT INTO `sendportal_email_service_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SES', '2022-04-03 17:25:00', '2022-04-03 17:25:00'),
(2, 'SendGrid', '2022-04-03 17:25:00', '2022-04-03 17:25:00'),
(3, 'Mailgun', '2022-04-03 17:25:00', '2022-04-03 17:25:00'),
(4, 'Postmark', '2022-04-03 17:25:00', '2022-04-03 17:25:00'),
(5, 'Mailjet', '2022-04-03 17:25:11', '2022-04-03 17:25:11'),
(6, 'SMTP', '2022-04-03 17:25:13', '2022-04-03 17:25:13'),
(7, 'Postal', '2022-04-03 17:25:13', '2022-04-03 17:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_messages`
--

CREATE TABLE `sendportal_messages` (
  `id` int UNSIGNED NOT NULL,
  `hash` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `subscriber_id` int UNSIGNED NOT NULL,
  `source_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int UNSIGNED NOT NULL,
  `recipient_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_count` int UNSIGNED NOT NULL DEFAULT '0',
  `click_count` int UNSIGNED NOT NULL DEFAULT '0',
  `queued_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `bounced_at` timestamp NULL DEFAULT NULL,
  `unsubscribed_at` timestamp NULL DEFAULT NULL,
  `complained_at` timestamp NULL DEFAULT NULL,
  `opened_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_message_failures`
--

CREATE TABLE `sendportal_message_failures` (
  `id` bigint UNSIGNED NOT NULL,
  `message_id` int UNSIGNED NOT NULL,
  `severity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_message_urls`
--

CREATE TABLE `sendportal_message_urls` (
  `id` int UNSIGNED NOT NULL,
  `source_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int UNSIGNED NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_count` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_subscribers`
--

CREATE TABLE `sendportal_subscribers` (
  `id` int UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `hash` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `unsubscribed_at` timestamp NULL DEFAULT NULL,
  `unsubscribe_event_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_subscribers`
--

INSERT INTO `sendportal_subscribers` (`id`, `workspace_id`, `hash`, `email`, `first_name`, `last_name`, `meta`, `unsubscribed_at`, `unsubscribe_event_id`, `created_at`, `updated_at`) VALUES
(1, 1, '7f4ae53b-fe8d-408f-ae71-80d0e11326d2', 'nneka@annamariahospital.com', 'Nneka', 'Mrs.', NULL, NULL, NULL, '2022-04-03 20:04:36', '2022-04-03 20:04:36'),
(7, 1, '', 'temitope.joseph@myself.com', '', '', NULL, NULL, NULL, '2022-04-03 22:24:07', '2022-04-03 22:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_tags`
--

CREATE TABLE `sendportal_tags` (
  `id` int UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_tags`
--

INSERT INTO `sendportal_tags` (`id`, `workspace_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'mum2b', '2022-04-03 18:05:14', '2022-04-03 18:05:14'),
(2, 1, 'job', '2022-04-03 18:05:29', '2022-04-03 18:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_tag_subscriber`
--

CREATE TABLE `sendportal_tag_subscriber` (
  `id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `subscriber_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_tag_subscriber`
--

INSERT INTO `sendportal_tag_subscriber` (`id`, `tag_id`, `subscriber_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-04-03 20:04:36', '2022-04-03 20:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_templates`
--

CREATE TABLE `sendportal_templates` (
  `id` int UNSIGNED NOT NULL,
  `workspace_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_templates`
--

INSERT INTO `sendportal_templates` (`id`, `workspace_id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Default', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional //EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\">\r\n<head>\r\n<!--[if gte mso 9]>\r\n<xml>\r\n  <o:OfficeDocumentSettings>\r\n    <o:AllowPNG/>\r\n    <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  </o:OfficeDocumentSettings>\r\n</xml>\r\n<![endif]-->\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta name=\"x-apple-disable-message-reformatting\">\r\n  <!--[if !mso]><!--><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><!--<![endif]-->\r\n  <title></title>\r\n  \r\n    <style type=\"text/css\">\r\n      @media only screen and (min-width: 670px) {\r\n  .u-row {\r\n    width: 650px !important;\r\n  }\r\n  .u-row .u-col {\r\n    vertical-align: top;\r\n  }\r\n\r\n  .u-row .u-col-100 {\r\n    width: 650px !important;\r\n  }\r\n\r\n}\r\n\r\n@media (max-width: 670px) {\r\n  .u-row-container {\r\n    max-width: 100% !important;\r\n    padding-left: 0px !important;\r\n    padding-right: 0px !important;\r\n  }\r\n  .u-row .u-col {\r\n    min-width: 320px !important;\r\n    max-width: 100% !important;\r\n    display: block !important;\r\n  }\r\n  .u-row {\r\n    width: calc(100% - 40px) !important;\r\n  }\r\n  .u-col {\r\n    width: 100% !important;\r\n  }\r\n  .u-col > div {\r\n    margin: 0 auto;\r\n  }\r\n}\r\nbody {\r\n  margin: 0;\r\n  padding: 0;\r\n}\r\n\r\ntable,\r\ntr,\r\ntd {\r\n  vertical-align: top;\r\n  border-collapse: collapse;\r\n}\r\n\r\np {\r\n  margin: 0;\r\n}\r\n\r\n.ie-container table,\r\n.mso-container table {\r\n  table-layout: fixed;\r\n}\r\n\r\n* {\r\n  line-height: inherit;\r\n}\r\n\r\na[x-apple-data-detectors=\'true\'] {\r\n  color: inherit !important;\r\n  text-decoration: none !important;\r\n}\r\n\r\ntable, td { color: #000000; } a { color: #0000ee; text-decoration: underline; } @media (max-width: 480px) { #u_content_image_1 .v-src-width { width: auto !important; } #u_content_image_1 .v-src-max-width { max-width: 50% !important; } #u_content_heading_5 .v-container-padding-padding { padding: 20px 10px 10px !important; } #u_content_heading_5 .v-font-size { font-size: 25px !important; } #u_content_button_1 .v-size-width { width: 100% !important; } }\r\n    </style>\r\n  \r\n  \r\n\r\n<!--[if !mso]><!--><link href=\"https://fonts.googleapis.com/css?family=Lato:400,700&display=swap\" rel=\"stylesheet\" type=\"text/css\"><link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap\" rel=\"stylesheet\" type=\"text/css\"><link href=\"https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap\" rel=\"stylesheet\" type=\"text/css\"><!--<![endif]-->\r\n\r\n</head>\r\n\r\n<body class=\"clean-body u_body\" style=\"margin: 0;padding: 0;-webkit-text-size-adjust: 100%;background-color: #e8ffd0;color: #000000\">\r\n  <!--[if IE]><div class=\"ie-container\"><![endif]-->\r\n  <!--[if mso]><div class=\"mso-container\"><![endif]-->\r\n  <table style=\"border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;min-width: 320px;Margin: 0 auto;background-color: #e8ffd0;width:100%\" cellpadding=\"0\" cellspacing=\"0\">\r\n  <tbody>\r\n  <tr style=\"vertical-align: top\">\r\n    <td style=\"word-break: break-word;border-collapse: collapse !important;vertical-align: top\">\r\n    <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color: #e8ffd0;\"><![endif]-->\r\n    \r\n\r\n<div class=\"u-row-container\" style=\"padding: 0px;background-color: transparent\">\r\n  <div class=\"u-row\" style=\"Margin: 0 auto;min-width: 320px;max-width: 650px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: transparent;\">\r\n    <div style=\"border-collapse: collapse;display: table;width: 100%;background-color: transparent;\">\r\n      <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:650px;\"><tr style=\"background-color: transparent;\"><![endif]-->\r\n      \r\n<!--[if (mso)|(IE)]><td align=\"center\" width=\"650\" style=\"width: 650px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px;min-width: 650px;display: table-cell;vertical-align: top;\">\r\n  <div style=\"width: 100% !important;\">\r\n  <!--[if (!mso)&(!IE)]><!--><div style=\"padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\"><!--<![endif]-->\r\n  \r\n<table id=\"u_content_image_1\" style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n  <tbody>\r\n    <tr>\r\n      <td class=\"v-container-padding-padding\" style=\"overflow-wrap:break-word;word-break:break-word;padding:25px 10px 20px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\r\n        \r\n<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n  <tr>\r\n    <td style=\"padding-right: 0px;padding-left: 0px;\" align=\"center\">\r\n      <a href=\"https://annamariahospital.com\" target=\"_blank\">\r\n      <img align=\"center\" border=\"0\" src=\"https://annamariahospital.com/assets/images/logo.jpg\" alt=\"Logo\" title=\"Logo\" style=\"outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;clear: both;display: inline-block !important;border: none;height: auto;float: none;width: 28%;max-width: 176.4px;\" width=\"176.4\" class=\"v-src-width v-src-max-width\"/>\r\n      </a>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->\r\n  </div>\r\n</div>\r\n<!--[if (mso)|(IE)]></td><![endif]-->\r\n      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"u-row-container\" style=\"padding: 0px;background-image: url(\'images/image-5.png\');background-repeat: no-repeat;background-position: center top;background-color: transparent\">\r\n  <div class=\"u-row\" style=\"Margin: 0 auto;min-width: 320px;max-width: 650px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: transparent;\">\r\n    <div style=\"border-collapse: collapse;display: table;width: 100%;background-color: transparent;\">\r\n      <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-image: url(\'images/image-5.png\');background-repeat: no-repeat;background-position: center top;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:650px;\"><tr style=\"background-color: transparent;\"><![endif]-->\r\n      \r\n<!--[if (mso)|(IE)]><td align=\"center\" width=\"650\" style=\"width: 650px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px;min-width: 650px;display: table-cell;vertical-align: top;\">\r\n  <div style=\"width: 100% !important;\">\r\n  <!--[if (!mso)&(!IE)]><!--><div style=\"padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\"><!--<![endif]-->\r\n  \r\n<table id=\"u_content_heading_5\" style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n  <tbody>\r\n    \r\n  </tbody>\r\n</table>\r\n\r\n  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->\r\n  </div>\r\n</div>\r\n<!--[if (mso)|(IE)]></td><![endif]-->\r\n      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n\r\n<div class=\"u-row-container\" style=\"padding: 0px;background-color: transparent\">\r\n  <div class=\"u-row\" style=\"Margin: 0 auto;min-width: 320px;max-width: 650px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: transparent;\">\r\n    <div style=\"border-collapse: collapse;display: table;width: 100%;background-color: transparent;\">\r\n      <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:650px;\"><tr style=\"background-color: transparent;\"><![endif]-->\r\n      \r\n<!--[if (mso)|(IE)]><td align=\"center\" width=\"650\" style=\"width: 650px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px;min-width: 650px;display: table-cell;vertical-align: top;\">\r\n  <div style=\"width: 100% !important;\">\r\n  <!--[if (!mso)&(!IE)]><!--><div style=\"padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\"><!--<![endif]-->\r\n  \r\n<table style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n  <tbody>\r\n    <tr>\r\n      <td class=\"v-container-padding-padding\" style=\"overflow-wrap:break-word;word-break:break-word;padding:15px 30px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\r\n        \r\n  <div style=\"color: #333333; line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n    <p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-family: Montserrat, sans-serif; font-size: 14px; line-height: 22.4px;\">{{content}}</span></p>\r\n  </div>\r\n\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n<table id=\"u_content_button_1\" style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n  <tbody>\r\n    <tr>\r\n      <td class=\"v-container-padding-padding\" style=\"overflow-wrap:break-word;word-break:break-word;padding:10px 10px 50px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\r\n        \r\n<div align=\"center\">\r\n  <!--[if mso]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-spacing: 0; border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;font-family:arial,helvetica,sans-serif;\"><tr><td style=\"font-family:arial,helvetica,sans-serif;\" align=\"center\"><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"https://annamariahospital.com\" style=\"height:52px; v-text-anchor:middle; width:296px;\" arcsize=\"0%\" stroke=\"f\" fillcolor=\"#f55219\"><w:anchorlock/><center style=\"color:#FFFFFF;font-family:arial,helvetica,sans-serif;\"><![endif]-->\r\n    <a href=\"https://annamariahospital.com\" target=\"_blank\" class=\"v-size-width\" style=\"box-sizing: border-box;display: inline-block;font-family:arial,helvetica,sans-serif;text-decoration: none;-webkit-text-size-adjust: none;text-align: center;color: #FFFFFF; background-color: #f55219; border-radius: 0px;-webkit-border-radius: 0px; -moz-border-radius: 0px; width:47%; max-width:100%; overflow-wrap: break-word; word-break: break-word; word-wrap:break-word; mso-border-alt: none;\">\r\n      <span style=\"display:block;padding:16px 20px;line-height:120%;\"><span style=\"font-size: 16px; line-height: 19.2px;\"><strong><span style=\"font-family: Lato, sans-serif; line-height: 19.2px; font-size: 16px;\">Visit Us</span></strong></span></span>\r\n    </a>\r\n  <!--[if mso]></center></v:roundrect></td></tr></table><![endif]-->\r\n</div>\r\n\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->\r\n  </div>\r\n</div>\r\n<!--[if (mso)|(IE)]></td><![endif]-->\r\n      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<div class=\"u-row-container\" style=\"padding: 0px;background-color: #a311c1\">\r\n  <div class=\"u-row\" style=\"Margin: 0 auto;min-width: 320px;max-width: 650px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: transparent;\">\r\n    <div style=\"border-collapse: collapse;display: table;width: 100%;background-color: transparent;\">\r\n      <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: #a311c1;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:650px;\"><tr style=\"background-color: transparent;\"><![endif]-->\r\n      \r\n<!--[if (mso)|(IE)]><td align=\"center\" width=\"650\" style=\"width: 650px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px;min-width: 650px;display: table-cell;vertical-align: top;\">\r\n  <div style=\"width: 100% !important;\">\r\n  <!--[if (!mso)&(!IE)]><!--><div style=\"padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\"><!--<![endif]-->\r\n  \r\n<table style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\r\n  <tbody>\r\n    <tr>\r\n      <td class=\"v-container-padding-padding\" style=\"overflow-wrap:break-word;word-break:break-word;padding:30px 10px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\r\n        \r\n  <div style=\"color: #ecf0f1; line-height: 190%; text-align: center; word-wrap: break-word;\">\r\n    <p style=\"font-size: 14px; line-height: 190%;\"><span style=\"font-family: Raleway, sans-serif; font-size: 14px; line-height: 26.6px;\">You\'re receiving this email because you asked us about regular newsletter.</span></p>\r\n<p style=\"font-size: 14px; line-height: 190%;\"><span style=\"font-family: Raleway, sans-serif; font-size: 14px; line-height: 26.6px;\">&copy;2022 AnnaMaria Hospital | 6b Ogbunike St, Lekki Peninsula Scheme 1, Lekki,<br />Lagos State, Nigeria</span></p>\r\n  </div>\r\n\r\n      </td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\n\r\n  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->\r\n  </div>\r\n</div>\r\n<!--[if (mso)|(IE)]></td><![endif]-->\r\n      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n\r\n    <!--[if (mso)|(IE)]></td></tr></table><![endif]-->\r\n    </td>\r\n  </tr>\r\n  </tbody>\r\n  </table>\r\n  <!--[if mso]></div><![endif]-->\r\n  <!--[if IE]></div><![endif]-->\r\n</body>\r\n\r\n</html>', '2022-04-03 17:50:54', '2022-04-03 18:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `sendportal_unsubscribe_event_types`
--

CREATE TABLE `sendportal_unsubscribe_event_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendportal_unsubscribe_event_types`
--

INSERT INTO `sendportal_unsubscribe_event_types` (`id`, `name`) VALUES
(1, 'Bounce'),
(2, 'Complaint'),
(3, 'Manual by Admin'),
(4, 'Manual by Subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_workspace_id` int UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `current_workspace_id`, `remember_token`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'info@annamariahospital.com', '2022-04-03 17:25:57', '$2y$10$RJxo0//9CnMl/OXHyI5Z/e4vDFyHcRJmlXvBOD07oslUgYl2dM4.i', NULL, 1, NULL, 'en', '2022-04-03 17:25:57', '2022-04-03 17:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` int UNSIGNED NOT NULL,
  `owner_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workspaces`
--

INSERT INTO `workspaces` (`id`, `owner_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'AnnaMaria', '2022-04-03 17:25:57', '2022-04-03 17:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `workspace_users`
--

CREATE TABLE `workspace_users` (
  `workspace_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workspace_users`
--

INSERT INTO `workspace_users` (`workspace_id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 'owner', '2022-04-03 17:25:57', '2022-04-03 17:25:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_tokens_api_token_unique` (`api_token`),
  ADD KEY `api_tokens_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invitations_token_unique` (`token`),
  ADD KEY `invitations_workspace_id_index` (`workspace_id`),
  ADD KEY `invitations_user_id_index` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `sendportal_campaigns`
--
ALTER TABLE `sendportal_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_campaigns_status_id_foreign` (`status_id`),
  ADD KEY `sendportal_campaigns_template_id_foreign` (`template_id`),
  ADD KEY `sendportal_campaigns_email_service_id_foreign` (`email_service_id`),
  ADD KEY `sendportal_campaigns_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `sendportal_campaign_statuses`
--
ALTER TABLE `sendportal_campaign_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sendportal_campaign_tag`
--
ALTER TABLE `sendportal_campaign_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_campaign_segment_campaign_id_foreign` (`campaign_id`),
  ADD KEY `sendportal_campaign_segment_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `sendportal_email_services`
--
ALTER TABLE `sendportal_email_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_email_services_type_id_foreign` (`type_id`),
  ADD KEY `sendportal_email_services_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `sendportal_email_service_types`
--
ALTER TABLE `sendportal_email_service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sendportal_messages`
--
ALTER TABLE `sendportal_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sendportal_messages_hash_unique` (`hash`),
  ADD KEY `sendportal_messages_workspace_id_index` (`workspace_id`),
  ADD KEY `sendportal_messages_subscriber_id_index` (`subscriber_id`),
  ADD KEY `sendportal_messages_source_type_index` (`source_type`),
  ADD KEY `sendportal_messages_source_id_index` (`source_id`),
  ADD KEY `sendportal_messages_message_id_index` (`message_id`),
  ADD KEY `sendportal_messages_queued_at_index` (`queued_at`),
  ADD KEY `sendportal_messages_sent_at_index` (`sent_at`),
  ADD KEY `sendportal_messages_delivered_at_index` (`delivered_at`),
  ADD KEY `sendportal_messages_bounced_at_index` (`bounced_at`),
  ADD KEY `sendportal_messages_unsubscribed_at_index` (`unsubscribed_at`),
  ADD KEY `sendportal_messages_complained_at_index` (`complained_at`),
  ADD KEY `sendportal_messages_opened_at_index` (`opened_at`),
  ADD KEY `sendportal_messages_clicked_at_index` (`clicked_at`);

--
-- Indexes for table `sendportal_message_failures`
--
ALTER TABLE `sendportal_message_failures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_message_failures_message_id_foreign` (`message_id`);

--
-- Indexes for table `sendportal_message_urls`
--
ALTER TABLE `sendportal_message_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_message_urls_source_type_index` (`source_type`),
  ADD KEY `sendportal_message_urls_source_id_index` (`source_id`),
  ADD KEY `sendportal_message_urls_hash_index` (`hash`),
  ADD KEY `sendportal_message_urls_url_index` (`url`);

--
-- Indexes for table `sendportal_subscribers`
--
ALTER TABLE `sendportal_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sendportal_subscribers_hash_unique` (`hash`),
  ADD KEY `sendportal_subscribers_created_at_index` (`created_at`),
  ADD KEY `sendportal_subscribers_unsubscribe_event_id_foreign` (`unsubscribe_event_id`),
  ADD KEY `sendportal_subscribers_workspace_id_index` (`workspace_id`),
  ADD KEY `sendportal_subscribers_email_index` (`email`),
  ADD KEY `sendportal_subscribers_unsubscribed_at_index` (`unsubscribed_at`);

--
-- Indexes for table `sendportal_tags`
--
ALTER TABLE `sendportal_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_segments_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `sendportal_tag_subscriber`
--
ALTER TABLE `sendportal_tag_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_segment_subscriber_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `sendportal_segment_subscriber_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `sendportal_templates`
--
ALTER TABLE `sendportal_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendportal_templates_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `sendportal_unsubscribe_event_types`
--
ALTER TABLE `sendportal_unsubscribe_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspaces_owner_id_index` (`owner_id`);

--
-- Indexes for table `workspace_users`
--
ALTER TABLE `workspace_users`
  ADD UNIQUE KEY `workspace_users_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `workspace_users_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sendportal_campaigns`
--
ALTER TABLE `sendportal_campaigns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sendportal_campaign_statuses`
--
ALTER TABLE `sendportal_campaign_statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sendportal_campaign_tag`
--
ALTER TABLE `sendportal_campaign_tag`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sendportal_email_services`
--
ALTER TABLE `sendportal_email_services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sendportal_email_service_types`
--
ALTER TABLE `sendportal_email_service_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sendportal_messages`
--
ALTER TABLE `sendportal_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sendportal_message_failures`
--
ALTER TABLE `sendportal_message_failures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sendportal_message_urls`
--
ALTER TABLE `sendportal_message_urls`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sendportal_subscribers`
--
ALTER TABLE `sendportal_subscribers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sendportal_tags`
--
ALTER TABLE `sendportal_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sendportal_tag_subscriber`
--
ALTER TABLE `sendportal_tag_subscriber`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sendportal_templates`
--
ALTER TABLE `sendportal_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sendportal_unsubscribe_event_types`
--
ALTER TABLE `sendportal_unsubscribe_event_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`);

--
-- Constraints for table `sendportal_campaigns`
--
ALTER TABLE `sendportal_campaigns`
  ADD CONSTRAINT `sendportal_campaigns_email_service_id_foreign` FOREIGN KEY (`email_service_id`) REFERENCES `sendportal_email_services` (`id`),
  ADD CONSTRAINT `sendportal_campaigns_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `sendportal_campaign_statuses` (`id`),
  ADD CONSTRAINT `sendportal_campaigns_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `sendportal_templates` (`id`);

--
-- Constraints for table `sendportal_campaign_tag`
--
ALTER TABLE `sendportal_campaign_tag`
  ADD CONSTRAINT `sendportal_campaign_segment_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `sendportal_campaigns` (`id`),
  ADD CONSTRAINT `sendportal_campaign_segment_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `sendportal_tags` (`id`);

--
-- Constraints for table `sendportal_email_services`
--
ALTER TABLE `sendportal_email_services`
  ADD CONSTRAINT `sendportal_email_services_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `sendportal_email_service_types` (`id`);

--
-- Constraints for table `sendportal_message_failures`
--
ALTER TABLE `sendportal_message_failures`
  ADD CONSTRAINT `sendportal_message_failures_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `sendportal_messages` (`id`);

--
-- Constraints for table `sendportal_subscribers`
--
ALTER TABLE `sendportal_subscribers`
  ADD CONSTRAINT `sendportal_subscribers_unsubscribe_event_id_foreign` FOREIGN KEY (`unsubscribe_event_id`) REFERENCES `sendportal_unsubscribe_event_types` (`id`);

--
-- Constraints for table `sendportal_tag_subscriber`
--
ALTER TABLE `sendportal_tag_subscriber`
  ADD CONSTRAINT `sendportal_segment_subscriber_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `sendportal_subscribers` (`id`),
  ADD CONSTRAINT `sendportal_segment_subscriber_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `sendportal_tags` (`id`);

--
-- Constraints for table `workspace_users`
--
ALTER TABLE `workspace_users`
  ADD CONSTRAINT `workspace_users_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
