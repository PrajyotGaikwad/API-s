-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 06:48 PM
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
-- Database: `laraveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_pending`
--

CREATE TABLE `acc_pending` (
  `Voc_Pnd_Id` int(11) NOT NULL,
  `S_No` int(11) NOT NULL,
  `Voucher_No` int(11) NOT NULL,
  `BILL_REF_NO` varchar(500) NOT NULL,
  `Bill_Amt` varchar(500) NOT NULL,
  `Invoice_No` varchar(500) NOT NULL,
  `CR_DR` varchar(500) NOT NULL,
  `Trans_Type` varchar(500) NOT NULL,
  `Payable` varchar(500) NOT NULL,
  `Amt` varchar(500) NOT NULL,
  `Firm_Code` varchar(500) NOT NULL,
  `APP_KEY_CODE` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_voucher_dtl`
--

CREATE TABLE `acc_voucher_dtl` (
  `Vou_D_Id` int(11) NOT NULL,
  `TS_ID` int(11) NOT NULL,
  `Voucher_No` int(11) NOT NULL,
  `Ledger_Code` int(11) NOT NULL,
  `CR_DR` varchar(500) NOT NULL,
  `Amount` varchar(500) NOT NULL,
  `Firm_Code` varchar(500) NOT NULL,
  `APP_KEY_CODE` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acc_voucher_dtl`
--

INSERT INTO `acc_voucher_dtl` (`Vou_D_Id`, `TS_ID`, `Voucher_No`, `Ledger_Code`, `CR_DR`, `Amount`, `Firm_Code`, `APP_KEY_CODE`, `created_at`, `updated_at`) VALUES
(100, 8800, 579, 1, '9093', '15000', '111', '11111', '2022-06-28 01:37:07', '2022-06-28 01:37:07'),
(200, 8800, 579, 2, '9093', '18000', '222', '22222', '2022-06-29 02:23:46', '2022-06-29 02:23:46'),
(300, 8800, 574, 3, '9093', '20000', '333', '33333', '2022-06-29 02:23:46', '2022-06-29 02:23:46'),
(400, 8803, 9471, 4, '9099', '25000', '444', '44444', '2022-06-29 02:23:46', '2022-06-29 02:23:46'),
(500, 2333, 398, 5, '8460', '10000', '555', '55555', '2022-06-29 02:23:46', '2022-06-29 02:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `acc_voucher_mtr`
--

CREATE TABLE `acc_voucher_mtr` (
  `Vou_Id` int(11) NOT NULL,
  `Voucher_No` int(11) NOT NULL,
  `Voucher_Dt` date NOT NULL,
  `Amount` varchar(500) NOT NULL,
  `Narration` varchar(500) NOT NULL,
  `BILL_REF_NO` varchar(500) NOT NULL,
  `Invoice_No` varchar(500) NOT NULL,
  `Narration1` varchar(500) NOT NULL,
  `Firm_Code` varchar(500) NOT NULL,
  `APP_KEY_CODE` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amc_license_key_info`
--

CREATE TABLE `amc_license_key_info` (
  `Id` int(11) NOT NULL,
  `Comapy_Name` varchar(1000) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `License_Key` varchar(100) NOT NULL,
  `Package_Name` varchar(100) NOT NULL,
  `bg_Date` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Vendor` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bg_demo`
--

CREATE TABLE `bg_demo` (
  `Bg_Id` int(11) NOT NULL,
  `Comapy_Name` varchar(500) NOT NULL,
  `Mobile_No` varchar(15) NOT NULL,
  `Package_Name` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `bg_Date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bg_demo`
--

INSERT INTO `bg_demo` (`Bg_Id`, `Comapy_Name`, `Mobile_No`, `Package_Name`, `City`, `bg_Date`) VALUES
(17, 'CRAZY CRAFTS HOUSE', '9610044789', 'Standard', 'JAIPUR', '14-Dec-2021'),
(13, 'NISHANT OFFICE MAVERICK', '9822293567', 'Standard', 'Pune', '19-Jul-2021'),
(16, 'OM SAI TELECOM', '9156915050', 'Standard', 'Pune', '10-Dec-2021'),
(9, 'VARUN PLYWOODS ', '9214302859', 'Standard', 'Pune', '06-Jul-2021'),
(10, 'PRASHANT DABI', '9730581187', 'Basic', 'Pune', '08-Jul-2021'),
(12, 'ARPAN MONDAL- OFFICE PUNE DEMO', '7468975396', 'Standard', 'Pune', '19-Jul-2021');

-- --------------------------------------------------------

--
-- Table structure for table `bg_support`
--

CREATE TABLE `bg_support` (
  `Id` int(11) NOT NULL,
  `Cllient_Id` varchar(500) NOT NULL,
  `Comapy_Name` varchar(500) NOT NULL,
  `City` varchar(500) NOT NULL,
  `Mobile_No` varchar(500) NOT NULL,
  `Vendor` varchar(500) NOT NULL,
  `Date` varchar(500) NOT NULL,
  `Support_Type` varchar(300) NOT NULL,
  `in_Time` varchar(53) NOT NULL,
  `out_Time` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_Id` int(11) NOT NULL,
  `Cust_Name` varchar(500) NOT NULL,
  `Cust_Mobile` varchar(500) NOT NULL,
  `GST` varchar(500) NOT NULL,
  `Cust_Address` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('M','F','O') DEFAULT NULL,
  `address` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `gender`, `address`, `country`, `state`, `dob`, `password`, `status`, `points`, `created_at`, `updated_at`) VALUES
(1, 'prajyot gaikwad', 'prajyotgaikwad8800@gmail.com', 'M', 'loni-kalbhor,pune', 'India', 'maharastra', '2000-09-28', '202cb962ac59075b964b07152d234b70', 1, 0, '2022-06-16 02:17:03', '2022-06-22 01:57:27'),
(2, 'shivam dodmise', 'shivamdodmise7707@gmail.com', 'M', 'wadgaon,pune', 'india', 'maharastra', '2000-10-25', 'sd@7707', 1, 0, NULL, '2022-06-20 06:56:43'),
(3, 'Amresh Kumar', 'akumar4446@gmail.com', 'M', 'aundh.pune', 'india', 'maharastra', '1998-06-24', '6ab6bed3ce43e3b53e2149655b17c149', 1, 0, '2022-06-16 02:31:43', '2022-09-06 04:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enq_Id` int(11) NOT NULL,
  `comapny_Name` varchar(500) NOT NULL,
  `Client_Name` varchar(500) NOT NULL,
  `Mobile_1` varchar(500) NOT NULL,
  `MObile_3` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `describe_Business` varchar(500) NOT NULL,
  `reference_From` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `use_Software` varchar(500) NOT NULL,
  `requirement` varchar(500) NOT NULL,
  `interest_Levle` varchar(500) NOT NULL,
  `Followup_Date` date NOT NULL,
  `enq_Date` date NOT NULL,
  `executive_Id` int(11) NOT NULL,
  `product_Type` varchar(500) NOT NULL,
  `enq_Amount` float NOT NULL,
  `Status` varchar(33) NOT NULL,
  `user_Id` int(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ledger_master`
--

CREATE TABLE `ledger_master` (
  `Lg_id` int(11) NOT NULL,
  `Ledger_Code` int(11) NOT NULL,
  `Ledger_Name` varchar(500) NOT NULL,
  `Group_Code` int(11) NOT NULL,
  `Firm_Code` int(11) NOT NULL,
  `Alias_Name` varchar(500) NOT NULL,
  `Alias_Code` int(11) NOT NULL,
  `Addr1` varchar(500) NOT NULL,
  `Phone_No` varchar(500) NOT NULL,
  `GST` varchar(500) NOT NULL,
  `APP_KEY_CODE` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ledger_master`
--

INSERT INTO `ledger_master` (`Lg_id`, `Ledger_Code`, `Ledger_Name`, `Group_Code`, `Firm_Code`, `Alias_Name`, `Alias_Code`, `Addr1`, `Phone_No`, `GST`, `APP_KEY_CODE`, `created_at`, `updated_at`) VALUES
(1, 1, 'abc', 11, 111, 'ABC', 1111, 'pune', '12345', '100', '11111', '2022-06-24 02:36:17', '2022-06-24 02:36:17'),
(2, 2, 'abc', 22, 222, 'ABC', 2222, 'pune', '12345', '100', '22222', '2022-06-26 23:55:10', '2022-06-26 23:55:10'),
(3, 3, 'abc', 33, 333, 'PQR', 3333, 'hadapsar', '12345', '300', '33333', '2022-06-27 00:12:57', '2022-06-27 00:12:57'),
(4, 4, 'xyZ', 44, 444, 'XYZ', 4444, 'magarpatta', '12345678', '400', '44444', '2022-06-27 00:36:54', '2022-06-27 00:36:54'),
(5, 5, 'xyz', 55, 555, 'XYZ', 5555, 'kharadi', '54321', '500', '55555', '2022-06-27 01:34:41', '2022-06-27 01:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `license_key_info`
--

CREATE TABLE `license_key_info` (
  `Id` int(11) NOT NULL,
  `License_Key` varchar(1000) NOT NULL,
  `Comapy_Name` varchar(500) NOT NULL,
  `Mobile_No` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Package_Name` varchar(50) DEFAULT NULL,
  `bg_Date` varchar(100) NOT NULL,
  `Vendor` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginbgcrm`
--

CREATE TABLE `loginbgcrm` (
  `loginId` int(11) NOT NULL,
  `loginUsername` varchar(500) NOT NULL,
  `loginPassword` varchar(500) NOT NULL,
  `loginUserType` varchar(500) NOT NULL,
  `loginStatus` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `loginbgcrm`
--

INSERT INTO `loginbgcrm` (`loginId`, `loginUsername`, `loginPassword`, `loginUserType`, `loginStatus`) VALUES
(1, 'jagdish769', '3939', 'Admin', ''),
(2, 'maverick786', '3399', 'User', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_16_073903_create_customers_table', 1),
(6, '2022_06_22_102524_create_products_table', 2),
(7, '2022_06_24_061528_create_ledger_master_table', 3),
(8, '2022_06_24_075100_create_ledger_master_table', 4),
(9, '2022_06_27_100109_create_acc_voucher_dtl', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_app_key_code_info`
--

CREATE TABLE `mobile_app_key_code_info` (
  `APP_ID` int(11) NOT NULL,
  `APP_KEY_CODE` varchar(500) NOT NULL,
  `Comapy_Name` varchar(500) NOT NULL,
  `Mobile_No` varchar(500) NOT NULL,
  `City` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mobile_app_key_code_info`
--

INSERT INTO `mobile_app_key_code_info` (`APP_ID`, `APP_KEY_CODE`, `Comapy_Name`, `Mobile_No`, `City`, `Status`) VALUES
(6, '3333', 'MAVERICK IT INDUSTRIES PVT.LTD.', '9035155555', 'Pune', 'Activ'),
(5, '3939', 'GANESH GARMENT AND SADI', '976534345988', 'SHEOGANJ', 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'This is Mobile description', '15000', '10', '2022-06-22 06:08:07', '2022-06-23 00:56:48'),
(2, 'laptop', 'This is laptop', '45000', '2', '2022-06-22 06:12:02', '2022-06-23 02:19:36'),
(4, 'macbook', 'This is macbook', '50000', '3', '2022-06-23 01:35:52', '2022-06-23 01:35:52'),
(5, 'earphone', 'This is earphone', '4000', '2', '2022-06-23 04:43:35', '2022-06-23 04:43:35'),
(6, 'phone', 'this is phone', '25000', '3', '2022-06-23 23:56:01', '2022-06-23 23:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `update_key_info`
--

CREATE TABLE `update_key_info` (
  `Id` int(11) NOT NULL,
  `License_Key` varchar(100) NOT NULL,
  `Comapy_Name` varchar(500) NOT NULL,
  `Mobile_No` varchar(500) NOT NULL,
  `City` varchar(500) NOT NULL,
  `bg_Date` varchar(500) NOT NULL,
  `up_Date` varchar(500) NOT NULL,
  `Package_Name` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `Vendor` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_pending`
--
ALTER TABLE `acc_pending`
  ADD PRIMARY KEY (`Voc_Pnd_Id`);

--
-- Indexes for table `acc_voucher_mtr`
--
ALTER TABLE `acc_voucher_mtr`
  ADD PRIMARY KEY (`Vou_Id`);

--
-- Indexes for table `amc_license_key_info`
--
ALTER TABLE `amc_license_key_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bg_demo`
--
ALTER TABLE `bg_demo`
  ADD PRIMARY KEY (`Bg_Id`);

--
-- Indexes for table `bg_support`
--
ALTER TABLE `bg_support`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_Id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enq_Id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `license_key_info`
--
ALTER TABLE `license_key_info`
  ADD PRIMARY KEY (`Id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
