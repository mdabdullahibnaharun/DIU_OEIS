-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 03:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oeisv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_accounts`
--

CREATE TABLE `accounts_accounts` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_ec` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_accounts`
--

INSERT INTO `accounts_accounts` (`id`, `password`, `last_login`, `email`, `username`, `image`, `phone_number`, `fullname`, `is_active`, `is_admin`, `is_superuser`, `is_ec`) VALUES
(1, 'pbkdf2_sha256$600000$PzxB9csPjj9xr7Jw3vRd6A$NGog5aatYtFMrxZhc3RvxJAIUByk6RCzB9ZGygPpYQ0=', '2023-07-02 13:22:35.192716', 'myadmin@admin.com', 'admin', 'accounts/blank.png', '443003030266', 'Admin', 1, 1, 0, 0),
(2, 'pbkdf2_sha256$600000$Bt5k9EO6XjRgsnMzcIZXQa$6lFTxkpifdlX6JSv9HgNHCnfChO26F9nH6UFRUpBTeI=', '2023-07-02 13:26:54.360354', 'abdullah15-13426@diu.edu.bd', 'abdullah15-13426', 'accounts/Abdullahs_Formal_Pic.png', '01786287766', 'Md.Abdullah Ibna Harun', 1, 0, 0, 1),
(3, 'pbkdf2_sha256$600000$QJpLo8Gj2yPg9NIx2MqIXX$DSPuBKg+H8rIfhkexpcbKgtnmq+X6lZAGgypURixi3k=', '2023-07-02 12:12:23.818683', 'abdullah13426.cse@gmail.com', 'Noman', 'accounts/324104115_1339018910222090_6936303286886612416_n.jpg', '01786284455', 'MD Noman Hossain', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add accounts', 6, 'add_accounts'),
(22, 'Can change accounts', 6, 'change_accounts'),
(23, 'Can delete accounts', 6, 'delete_accounts'),
(24, 'Can view accounts', 6, 'view_accounts'),
(25, 'Can add club_ ec', 7, 'add_club_ec'),
(26, 'Can change club_ ec', 7, 'change_club_ec'),
(27, 'Can delete club_ ec', 7, 'delete_club_ec'),
(28, 'Can view club_ ec', 7, 'view_club_ec'),
(29, 'Can add clubs', 8, 'add_clubs'),
(30, 'Can change clubs', 8, 'change_clubs'),
(31, 'Can delete clubs', 8, 'delete_clubs'),
(32, 'Can view clubs', 8, 'view_clubs'),
(33, 'Can add member', 9, 'add_member'),
(34, 'Can change member', 9, 'change_member'),
(35, 'Can delete member', 9, 'delete_member'),
(36, 'Can view member', 9, 'view_member'),
(37, 'Can add gallery', 10, 'add_gallery'),
(38, 'Can change gallery', 10, 'change_gallery'),
(39, 'Can delete gallery', 10, 'delete_gallery'),
(40, 'Can view gallery', 10, 'view_gallery'),
(41, 'Can add academic_calendar', 11, 'add_academic_calendar'),
(42, 'Can change academic_calendar', 11, 'change_academic_calendar'),
(43, 'Can delete academic_calendar', 11, 'delete_academic_calendar'),
(44, 'Can view academic_calendar', 11, 'view_academic_calendar'),
(45, 'Can add events', 12, 'add_events'),
(46, 'Can change events', 12, 'change_events'),
(47, 'Can delete events', 12, 'delete_events'),
(48, 'Can view events', 12, 'view_events'),
(49, 'Can add perticipants_details', 13, 'add_perticipants_details'),
(50, 'Can change perticipants_details', 13, 'change_perticipants_details'),
(51, 'Can delete perticipants_details', 13, 'delete_perticipants_details'),
(52, 'Can view perticipants_details', 13, 'view_perticipants_details'),
(53, 'Can add news', 14, 'add_news'),
(54, 'Can change news', 14, 'change_news'),
(55, 'Can delete news', 14, 'delete_news'),
(56, 'Can view news', 14, 'view_news'),
(57, 'Can add notices', 15, 'add_notices'),
(58, 'Can change notices', 15, 'change_notices'),
(59, 'Can delete notices', 15, 'delete_notices'),
(60, 'Can view notices', 15, 'view_notices');

-- --------------------------------------------------------

--
-- Table structure for table `club_clubs`
--

CREATE TABLE `club_clubs` (
  `id` bigint(20) NOT NULL,
  `clubname` varchar(255) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  `clubemail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `form` date NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_clubs`
--

INSERT INTO `club_clubs` (`id`, `clubname`, `shortname`, `clubemail`, `password`, `logo`, `description`, `form`, `is_active`) VALUES
(1, 'Computer & programming Club', 'CPC', 'smcue616@gmail.com', 'lvaz qyvs prli emca', 'club_logo/cpc.png', 'DIU CPC is the most primitive and extensive club as well as the biggest club in Daffodil International University. We work together to explore every field of Computer Science', '2023-07-02', 1),
(2, 'DIU Robotics Club', 'DIURC', '', '', 'club_logo/robotic_logo.png', '', '2023-07-02', 1),
(3, 'DIU Change Together Club', 'DIUCTC', '', '', 'club_logo/EmbeddedImage.png', '', '2023-07-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `club_club_ec`
--

CREATE TABLE `club_club_ec` (
  `id` bigint(20) NOT NULL,
  `date_joined` date NOT NULL,
  `designation` varchar(64) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `ec_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_club_ec`
--

INSERT INTO `club_club_ec` (`id`, `date_joined`, `designation`, `club_id`, `ec_id`) VALUES
(1, '2023-07-02', 'Presidant', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `club_gallery`
--

CREATE TABLE `club_gallery` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `upload_date` date NOT NULL,
  `club_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_gallery`
--

INSERT INTO `club_gallery` (`id`, `image`, `upload_date`, `club_id`) VALUES
(1, 'gallery/ca2e21fdcc71c4e589b74d33544151b2.png', '2023-07-02', 1),
(2, 'gallery/2.jpg', '2023-07-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `club_member`
--

CREATE TABLE `club_member` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `std_id` varchar(13) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `semister` int(11) NOT NULL,
  `completed_credit` int(11) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `club_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_member`
--

INSERT INTO `club_member` (`id`, `name`, `std_id`, `email`, `phone_number`, `semister`, `completed_credit`, `approved`, `club_id`) VALUES
(1, 'Md Noam Hossain', '193-15-13416', 'abdullah13426.cse@gmail.com', '01786284455', 6, 96, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'accounts'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(8, 'club', 'clubs'),
(7, 'club', 'club_ec'),
(10, 'club', 'gallery'),
(9, 'club', 'member'),
(4, 'contenttypes', 'contenttype'),
(12, 'eventapp', 'events'),
(13, 'eventapp', 'perticipants_details'),
(11, 'mainadmin', 'academic_calendar'),
(14, 'newAndNotices', 'news'),
(15, 'newAndNotices', 'notices'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2023-07-02 09:54:08.565912'),
(2, 'accounts', '0002_alter_accounts_id', '2023-07-02 09:54:08.632596'),
(3, 'contenttypes', '0001_initial', '2023-07-02 09:54:08.665444'),
(4, 'admin', '0001_initial', '2023-07-02 09:54:08.809078'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-07-02 09:54:08.817764'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-02 09:54:08.827238'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-07-02 09:54:08.954056'),
(8, 'auth', '0001_initial', '2023-07-02 09:54:09.193744'),
(9, 'auth', '0002_alter_permission_name_max_length', '2023-07-02 09:54:09.245319'),
(10, 'auth', '0003_alter_user_email_max_length', '2023-07-02 09:54:09.251284'),
(11, 'auth', '0004_alter_user_username_opts', '2023-07-02 09:54:09.259217'),
(12, 'auth', '0005_alter_user_last_login_null', '2023-07-02 09:54:09.266203'),
(13, 'auth', '0006_require_contenttypes_0002', '2023-07-02 09:54:09.269204'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2023-07-02 09:54:09.276839'),
(15, 'auth', '0008_alter_user_username_max_length', '2023-07-02 09:54:09.283941'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2023-07-02 09:54:09.290995'),
(17, 'auth', '0010_alter_group_name_max_length', '2023-07-02 09:54:09.313010'),
(18, 'auth', '0011_update_proxy_permissions', '2023-07-02 09:54:09.322358'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2023-07-02 09:54:09.328245'),
(20, 'club', '0001_initial', '2023-07-02 09:54:09.567715'),
(21, 'club', '0002_alter_club_ec_id_alter_clubs_id_alter_gallery_id_and_more', '2023-07-02 09:54:10.993995'),
(22, 'eventapp', '0001_initial', '2023-07-02 09:54:11.213445'),
(23, 'eventapp', '0002_alter_events_id_alter_perticipants_details_id', '2023-07-02 09:54:11.622364'),
(24, 'mainadmin', '0001_initial', '2023-07-02 09:54:11.645953'),
(25, 'mainadmin', '0002_alter_academic_calendar_id', '2023-07-02 09:54:11.688606'),
(26, 'newAndNotices', '0001_initial', '2023-07-02 09:54:11.759812'),
(27, 'newAndNotices', '0002_alter_news_id_alter_notices_id', '2023-07-02 09:54:11.870906'),
(28, 'sessions', '0001_initial', '2023-07-02 09:54:11.914789');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2hztievne43kn2wvqz0wd1h4sydkghr7', '.eJxVjE0OwiAYBe_C2hCgQKhL956BfH9I1dCktCvj3bVJF7p9M_NeKsO21rx1WfLE6qycOv1uCPSQtgO-Q7vNmua2LhPqXdEH7fo6szwvh_t3UKHXb20TFvRFChNEL-IGKiQm-cGgjJQMBWeJbBIIHv0IbCIiUrQ2cApWvT8jbzkN:1qFx6M:UCOkx76Km7RYpCefB6P2kIzCBwIk71hW6FwNkgd2SvM', '2023-07-16 13:26:54.364415');

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_events`
--

CREATE TABLE `eventapp_events` (
  `id` bigint(20) NOT NULL,
  `event_cover_photo` varchar(100) NOT NULL,
  `eventname` varchar(255) NOT NULL,
  `eventlocation` longtext NOT NULL,
  `description` longtext NOT NULL,
  `startdate` datetime(6) NOT NULL,
  `enddate` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventapp_events`
--

INSERT INTO `eventapp_events` (`id`, `event_cover_photo`, `eventname`, `eventlocation`, `description`, `startdate`, `enddate`, `created_at`, `created_by_id`) VALUES
(1, 'event_cover/event-mb8dh8rph7fo.jpeg', 'Webinar on Importance of digital awareness for smart career', 'Google Meet and Facebook live', 'DIU CPC is arranging a webinar on 30th September, 2022 conveniently Importance of digital awareness for smart career collaborating with \nYouth in Digital Awareness; \n<br>\nDuring this webinar, we will be hearing about career journeys, experiences with digital platforms, and some suggestions about what to do for a smart career and how to use digital platforms for safer life from our Special guest speakers. <br>\n\n\nSpeaker, Juel Rana co-founder SmartB and TravnTour Ex-GS at eCab Youth \nForum\nRegistration link: https://cutt.ly/lVQUy8p \n<br>\n\nNote: You can talk with our speakers and clear your query by joining directly on google meet. You have to register to join in google meet. So hurry up to do registration and grab the opportunities.\n\n<br>\nDate: 30th September, 2022 ⏰ Time: 08:00 pm ♻️ Platform: Google Meet and Facebook live To know more about the webinar, visit DIU CPC official FB page: https://fb.me/e/1Rqnh11fl', '2023-09-22 04:09:00.000000', '2023-09-22 02:09:00.000000', '2023-07-02 10:33:19.550710', 1),
(2, 'event_cover/event-eiapszkiiwln.jpeg', 'Workshop on Design Thinking and Innovation', 'Mini International Conference Room (ICR)', 'DIU CPC is arranging a workshop on 18th September 2022 conveniently titled &ldquo;Workshop on Design Thinking and Innovation <br>Registration link: https://cutt.ly/jCGDtn2 <br>Date: 18th September 2022 ⏰Time: 11.00 am ♻️Venue: Mini International Conference Room (ICR), Daffodil International University <br>Visit our facebook event to know more details: https://fb.me/e/3OVS20asJ</span></p>', '2023-09-18 04:00:00.000000', '2023-09-18 04:00:00.000000', '2023-07-02 10:34:21.616148', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eventapp_perticipants_details`
--

CREATE TABLE `eventapp_perticipants_details` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eventapp_perticipants_details`
--

INSERT INTO `eventapp_perticipants_details` (`id`, `name`, `std_id`, `email`, `phone`, `club_id`, `event_id`) VALUES
(1, 'Md Noam Hossain', '193-15-13416', 'abdullah13426.cse@gmail.com', '01786284455', 1, 2),
(2, 'Md. Abdur Rahman Ibna Harun', '193-15-13426', 'abdullah.cse.yt@gmail.com', '01975287766', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mainadmin_academic_calendar`
--

CREATE TABLE `mainadmin_academic_calendar` (
  `id` bigint(20) NOT NULL,
  `calendar_label` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mainadmin_academic_calendar`
--

INSERT INTO `mainadmin_academic_calendar` (`id`, `calendar_label`, `file`, `uploaded_at`) VALUES
(1, 'Spring-Fall-2023', 'academic_calendar/spring-fall-2023.pdf', '2023-07-02'),
(2, 'Fall 2022', 'academic_calendar/Fall_2022.pdf', '2023-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `newandnotices_news`
--

CREATE TABLE `newandnotices_news` (
  `id` bigint(20) NOT NULL,
  `newstitle` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newandnotices_news`
--

INSERT INTO `newandnotices_news` (`id`, `newstitle`, `description`, `created_at`) VALUES
(1, 'AWS Cloud Day Bangladesh 2023 will be held on June 17 for the first time in Bangladesh', 'The AWS Cloud Day Bangladesh 2023 is a highly anticipated event that will bring together entrepreneurs, students, teachers, educators, and practitioners. The event will feature three parallel tracks:\r\n\r\nTechnical Track for hands on workshops on building cloud-native applications and monetizing them using data driven machine learning.\r\nBusiness Track for a hands-on workshop on building the next generation of billion dollar unicorns and the AWS partner program to extend your customer reach.\r\nCareer Track for educators will learn about AWS student programs, and specific incentives for institutions.\r\nIt was informed at the Meet the Press that anyone from Bangladesh can join the program through registration. The registration deadline is on June 10, 2023. Registration Fee is Tk. 500/=. Registration Link : https://aws.dipti.com.bd\r\n\r\nThe participants will get the opportunity to Interact with AWS representatives, Unleashing the Power of Cloud Innovation, Discover Next-Gen Cloud Solutions, Hands-on Experience, Network with Industry Experts, Learn from Real-World Use Cases, Embrace the Cloud Revolution and finally achieving AWS Certifications.\r\n\r\nFor more details, please visit: https://aws.dipti.com.bd', '2023-07-02'),
(2, '\"Helping the Helps\": Art of Giving Celebrates 10th Anniversary with a Heartwarming Gesture of Appreciation', 'Under the theme of \"Helping the Help,\" the event was organized at various locations, including Daffodil Family in Chandpur and Dhanmondi Dhaka, DISS Ashulia Savar, and Daffodil International University Ashulia in Savar Dhaka. The Art of Giving community believes that by extending support to those who tirelessly contribute to our cause, we can create a ripple effect of positivity and compassion.\r\n\r\nTo join the Art of Giving community and become a part of this social movement dedicated to serving humanity and promoting peace, joy, and harmony, interested individuals are encouraged to register at https://artofgiving.in.net/register/.\r\n\r\nAs the Art of Giving community marks a decade of spreading happiness through selfless acts, this heartwarming initiative stands as a testament to the transformative power of giving. It is through these small yet significant gestures of appreciation that we cultivate a spirit of unity, compassion, and love in our society.\r\n\r\nThe Art of Giving is a social movement dedicated to serving humanity and promoting peace, joy, and harmony in the world. Through selfless', '2023-07-02'),
(3, 'International Virtual AI Summit 2023 held at Daffodil International University', 'As computer literacy has become essential in modern society, so too has AI literacy. More than eighty registered participants from around the world took part in the International Virtual AI Summit 2023. Through interactive workshops, attendees learned to efficiently use AI tools in research and teaching. These workshops also demonstrated techniques for using AI tools in daily and professional settings. The summit contributed to the promotion of learning to use AI tools effectively and applying them in teaching, research, and daily life for improved speed, quality, and efficiency.\r\n\r\nIn the closing session of the International Virtual AI Summit 2023, Professor Dr. Ujjwal K Chowdhury illustrated the use of AI with examples and shared his experience using AI tools. The Head of the Department of Computer Science and Engineering at Daffodil International University, Professor Dr. Touhid Bhuiyan, provided closing remarks, emphasizing the importance of developing a skill set for using AI tools. Lastly, Dr. Fazle Elahe, Assistant Professor and Associate Head of the Department of Software Engineering at Daffodil International University, concluded the International Virtual AI Summit 2023 by delivering a vote of thanks.', '2023-07-02'),
(4, '“Meet the Leader; Career Talk” held at Daffodil International University', 'Daffodil International University\'s Career Development Center organized a \"Meet the Leader; Career Talk\" event to help students develop their professional skills, receive career guidance and counseling, and become competent to face future employment challenges. The event featured Chief Executive Officer of bdjobs.com, A.K.M Fahim Mashroor, as the keynote speaker, who emphasized the need to adapt to rapid technological changes to succeed in the field of employment or entrepreneurship.\r\n\r\nMr. Mashroor praised Daffodil International University and the Daffodil Family for leading the IT supply chain in Bangladesh and producing successful IT professionals who are working in many IT institutes in the country and abroad. Special guest Mr. Mohammad Nuruzzaman, CEO of Daffodil Family, expressed hope that BDJobs and Daffodil Family\'s concern SkillJobs will work together to solve the unemployment problem in Bangladesh, acknowledging the vital role that job portals play in addressing this issue.\r\n\r\nMr. Tanveer Abir, Director of Career Development Center, Daffodil International University, presided over the program, which saw the participation of about three hundred students. The speakers answered various questions about the students\' career prospects, providing valuable insights and advice. The event was a success in promoting career development and professional growth among the students.', '2023-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `newandnotices_notices`
--

CREATE TABLE `newandnotices_notices` (
  `id` bigint(20) NOT NULL,
  `noticetitle` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newandnotices_notices`
--

INSERT INTO `newandnotices_notices` (`id`, `noticetitle`, `description`, `created_at`) VALUES
(1, 'Publication of Semester Result of Spring 2023', 'The semester Result of Spring 2023 has been published. The students are requested to see their results from the Student Portal.', '2023-07-02'),
(2, 'FEES PAYMENT SCHEDULE FOR FALL-2023 SEMESTER REGISTRATION', 'This is hereby notified that the students of CSE program of FSIT should receive the Registration Clearance of Fall 2023         semester by paying the 1st installment with previous dues(If any). Unless the installment is paid in time, no student will be allowed for the Registration.\r\n\r\nLate fee Tk 500/- will be applicable from July 12,2023', '2023-07-02'),
(3, 'Overlap Related', 'Dear Students, \r\n\r\nGreetings from the examination committee!\r\n\r\nFinal Examination Routine of Spring-2023 is attached herewith. Find the attachment below.\r\n\r\nIn case of the Overlap (Only Same Time Slot on the Same Day) Exam, fill up the Google form by visiting the following link, before 09/06/2023. If you fill-up the google form in time, then you can collect your overlap token from the CSE Department office after 10th July 2023. \r\n\r\n \r\n\r\nOverlap Form Link: https://forms.gle/rHgXDBjAB4m2hg7u5', '2023-07-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_accounts`
--
ALTER TABLE `accounts_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `club_clubs`
--
ALTER TABLE `club_clubs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clubname` (`clubname`);

--
-- Indexes for table `club_club_ec`
--
ALTER TABLE `club_club_ec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_club_ec_ec_id_d7f96265_fk_accounts_accounts_id` (`ec_id`),
  ADD KEY `club_club_ec_club_id_72d50398_fk` (`club_id`);

--
-- Indexes for table `club_gallery`
--
ALTER TABLE `club_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_gallery_club_id_a07f735a_fk` (`club_id`);

--
-- Indexes for table `club_member`
--
ALTER TABLE `club_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_member_club_id_a1892159_fk` (`club_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_accounts_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `eventapp_events`
--
ALTER TABLE `eventapp_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eventname` (`eventname`),
  ADD KEY `eventapp_events_created_by_id_bb97ff3a_fk_club_clubs_id` (`created_by_id`);

--
-- Indexes for table `eventapp_perticipants_details`
--
ALTER TABLE `eventapp_perticipants_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventapp_perticipants_details_club_id_d7597494_fk_club_clubs_id` (`club_id`),
  ADD KEY `eventapp_perticipants_details_event_id_ef162a10_fk` (`event_id`);

--
-- Indexes for table `mainadmin_academic_calendar`
--
ALTER TABLE `mainadmin_academic_calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calendar_label` (`calendar_label`);

--
-- Indexes for table `newandnotices_news`
--
ALTER TABLE `newandnotices_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newstitle` (`newstitle`);

--
-- Indexes for table `newandnotices_notices`
--
ALTER TABLE `newandnotices_notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noticetitle` (`noticetitle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_accounts`
--
ALTER TABLE `accounts_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `club_clubs`
--
ALTER TABLE `club_clubs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `club_club_ec`
--
ALTER TABLE `club_club_ec`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `club_gallery`
--
ALTER TABLE `club_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club_member`
--
ALTER TABLE `club_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `eventapp_events`
--
ALTER TABLE `eventapp_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eventapp_perticipants_details`
--
ALTER TABLE `eventapp_perticipants_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mainadmin_academic_calendar`
--
ALTER TABLE `mainadmin_academic_calendar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newandnotices_news`
--
ALTER TABLE `newandnotices_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `newandnotices_notices`
--
ALTER TABLE `newandnotices_notices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `club_club_ec`
--
ALTER TABLE `club_club_ec`
  ADD CONSTRAINT `club_club_ec_club_id_72d50398_fk` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`),
  ADD CONSTRAINT `club_club_ec_ec_id_d7f96265_fk_accounts_accounts_id` FOREIGN KEY (`ec_id`) REFERENCES `accounts_accounts` (`id`);

--
-- Constraints for table `club_gallery`
--
ALTER TABLE `club_gallery`
  ADD CONSTRAINT `club_gallery_club_id_a07f735a_fk` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`);

--
-- Constraints for table `club_member`
--
ALTER TABLE `club_member`
  ADD CONSTRAINT `club_member_club_id_a1892159_fk` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_accounts_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_accounts` (`id`);

--
-- Constraints for table `eventapp_events`
--
ALTER TABLE `eventapp_events`
  ADD CONSTRAINT `eventapp_events_created_by_id_bb97ff3a_fk_club_clubs_id` FOREIGN KEY (`created_by_id`) REFERENCES `club_clubs` (`id`);

--
-- Constraints for table `eventapp_perticipants_details`
--
ALTER TABLE `eventapp_perticipants_details`
  ADD CONSTRAINT `eventapp_perticipants_details_club_id_d7597494_fk_club_clubs_id` FOREIGN KEY (`club_id`) REFERENCES `club_clubs` (`id`),
  ADD CONSTRAINT `eventapp_perticipants_details_event_id_ef162a10_fk` FOREIGN KEY (`event_id`) REFERENCES `eventapp_events` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
