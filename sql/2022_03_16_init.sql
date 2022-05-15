SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `bots`
--

CREATE TABLE `bots` (
  `BT_COD` int(11) NOT NULL,
  `BT_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cookies`
--

CREATE TABLE `cookies` (
  `CK_COD` int(11) NOT NULL,
  `CK_DMG_COD` int(11) NOT NULL,
  `CK_URL` varchar(255) NOT NULL,
  `CK_COOKIE` int(11) NOT NULL,
  `CK_DESC` text NOT NULL,
  `CK_SELF_DECLARED` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cookies_templates`
--

CREATE TABLE `cookies_templates` (
  `CKT_COD` int(11) NOT NULL,
  `CKT_NAME` varchar(255) NOT NULL,
  `CKT_PROVIDER` varchar(255) NOT NULL,
  `CKT_NATION` varchar(255) NOT NULL,
  `CKT_EXAMPLE` text NOT NULL,
  `CKT_DESC` text NOT NULL,
  `CKT_HTTP_ONLY` tinyint(1) NOT NULL,
  `CKT_SECURE` tinyint(1) NOT NULL,
  `CKT_EXPIRE` varchar(30) NOT NULL,
  `CKT_TYPE` varchar(30) NOT NULL,
  `CKT_REGEX` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `DCT_COD` int(11) NOT NULL,
  `DCT_LANGUAGE` int(11) NOT NULL,
  `DCT_TITLE` varchar(255) NOT NULL,
  `DCT_BODY` text NOT NULL,
  `DCT_BTN_DENY` varchar(255) NOT NULL,
  `DCT_BTN_OK` varchar(255) NOT NULL,
  `DCT_BTN_ALL` varchar(255) NOT NULL,
  `DCT_BTN_SEL` varchar(255) NOT NULL,
  `DCT_BTN_SHOW_DETAILS` varchar(255) NOT NULL,
  `DCT_BTN_HIDE_DETAILS` varchar(255) NOT NULL,
  `DCT_BTN_CUSTOMIZE` varchar(255) NOT NULL,
  `DCT_COOKIES_INTRO` text NOT NULL,
  `DCT_CAT_STRICT_TITLE` varchar(255) NOT NULL,
  `DCT_CAT_STRICT_BODY` text NOT NULL,
  `DCT_CAT_PREFS_TITLE` varchar(255) NOT NULL,
  `DCT_CAT_PREFS_BODY` text NOT NULL,
  `DCT_CAT_STATS_TITLE` varchar(255) NOT NULL,
  `DCT_CAT_STATS_BODY` text NOT NULL,
  `DCT_CAT_MARKE_TITLE` varchar(255) NOT NULL,
  `DCT_CAT_MARKE_BODY` text NOT NULL,
  `DCT_CAT_UNKNOWN_TITLE` varchar(255) NOT NULL,
  `DCT_CAT_UNKNOWN_BODY` text NOT NULL,
  `DCT_COOKIE_SETTINGS` varchar(255) NOT NULL,
  `DCT_CURRENT_STATE` varchar(255) NOT NULL,
  `DCT_CONSENT_DATE` varchar(255) NOT NULL,
  `DCT_CONSENT_ID` varchar(255) NOT NULL,
  `DCT_CHANGE_CONSENT` datetime NOT NULL,
  `DCT_REVOKE_CONSENT` varchar(255) NOT NULL,
  `DCT_SHOW_DETAILS` varchar(255) NOT NULL,
  `DCT_HIDE_DETAILS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dictionary_templates`
--

CREATE TABLE `dictionary_templates` (
  `DC_COD` int(11) NOT NULL,
  `DC_LANGUAGE` int(11) NOT NULL,
  `DC_TITLE` varchar(255) NOT NULL,
  `DC_BODY` text NOT NULL,
  `DC_BTN_DENY` varchar(255) NOT NULL,
  `DC_BTN_OK` varchar(255) NOT NULL,
  `DC_BTN_ALL` varchar(255) NOT NULL,
  `DC_BTN_SEL` varchar(255) NOT NULL,
  `DC_BTN_SHOW_DETAILS` varchar(255) NOT NULL,
  `DC_BTN_HIDE_DETAILS` varchar(255) NOT NULL,
  `DC_BTN_CUSTOMIZE` varchar(255) NOT NULL,
  `DC_COOKIES_INTRO` text NOT NULL,
  `DC_CAT_STRICT_TITLE` varchar(255) NOT NULL,
  `DC_CAT_STRICT_BODY` text NOT NULL,
  `DC_CAT_PREFS_TITLE` varchar(255) NOT NULL,
  `DC_CAT_PREFS_BODY` text NOT NULL,
  `DC_CAT_STATS_TITLE` varchar(255) NOT NULL,
  `DC_CAT_STATS_BODY` text NOT NULL,
  `DC_CAT_MARKE_TITLE` varchar(255) NOT NULL,
  `DC_CAT_MARKE_BODY` text NOT NULL,
  `DC_CAT_UNKNOWN_TITLE` varchar(255) NOT NULL,
  `DC_CAT_UNKNOWN_BODY` text NOT NULL,
  `DC_COOKIE_SETTINGS` varchar(255) NOT NULL,
  `DC_CURRENT_STATE` varchar(255) NOT NULL,
  `DC_CONSENT_DATE` varchar(255) NOT NULL,
  `DC_CONSENT_ID` varchar(255) NOT NULL,
  `DC_CHANGE_CONSENT` datetime NOT NULL,
  `DC_REVOKE_CONSENT` varchar(255) NOT NULL,
  `DC_SHOW_DETAILS` varchar(255) NOT NULL,
  `DC_HIDE_DETAILS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `DM_COD` int(11) NOT NULL,
  `DM_PATH` varchar(255) NOT NULL,
  `DM_FREQUENCY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `domain_groups`
--

CREATE TABLE `domain_groups` (
  `DMG_COD` int(11) NOT NULL,
  `DMG_EMAIL` varchar(255) NOT NULL,
  `DMG_DEFAULT_LANGUAGE` int(11) NOT NULL,
  `DMG_CONSENT_EXPIRE` int(11) NOT NULL,
  `DMG_MASS_CONSENT` tinyint(1) NOT NULL,
  `DMG_THEME` int(11) NOT NULL,
  `DMG_POSITION` varchar(20) NOT NULL,
  `DMG_LOGO_PATH` text NOT NULL,
  `DMG_BUTTONS` varchar(255) NOT NULL,
  `DMG_SHOW_PREFS` tinyint(1) NOT NULL,
  `DMG_SHOW_STATS` tinyint(1) NOT NULL,
  `DMG_SHOW_MARK` tinyint(1) NOT NULL,
  `DMG_WIDGET` tinyint(1) NOT NULL,
  `DMG_WIDGET_POSITION` varchar(20) NOT NULL,
  `DMG_WIDGET_THEME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `GR_COD` int(11) NOT NULL,
  `GR_ID` varchar(30) NOT NULL,
  `GR_NAME` varchar(255) NOT NULL,
  `GR_DESC` text NOT NULL,
  `GR_ENABLE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `RP_COD` int(11) NOT NULL,
  `RP_FILE` text NOT NULL,
  `RP_DATE` datetime NOT NULL,
  `RP_STATUS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `ST_COD` int(11) NOT NULL,
  `ST_KEY` varchar(50) NOT NULL,
  `ST_VAL` varchar(255) NOT NULL,
  `ST_ENABLE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supported_languages`
--

CREATE TABLE `supported_languages` (
  `SL_COD` int(11) NOT NULL,
  `SL_CODE` varchar(4) NOT NULL,
  `SL_STRING` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `TH_COD` int(11) NOT NULL,
  `TH_HTML_FILE` text NOT NULL,
  `TH_CSS_FILE` text NOT NULL,
  `TH_JS_FILE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `US_COD` int(11) NOT NULL,
  `US_PASSWORD` text NOT NULL,
  `US_TWOFA_SECRET` text NOT NULL,
  `US_EMAIL` varchar(255) NOT NULL,
  `US_DCREA` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_domain_groups`
--

CREATE TABLE `users_domain_groups` (
  `UDMG_USER` int(11) NOT NULL,
  `UDMG_DOMAIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `UG_USER` int(11) NOT NULL,
  `UG_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`BT_COD`);

--
-- Indexes for table `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`CK_COD`);

--
-- Indexes for table `cookies_templates`
--
ALTER TABLE `cookies_templates`
  ADD PRIMARY KEY (`CKT_COD`);

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD PRIMARY KEY (`DCT_COD`),
  ADD KEY `DC_LANGUAGE` (`DCT_LANGUAGE`),
  ADD KEY `DC_CONSENT_ID` (`DCT_CONSENT_ID`);

--
-- Indexes for table `dictionary_templates`
--
ALTER TABLE `dictionary_templates`
  ADD PRIMARY KEY (`DC_COD`),
  ADD KEY `DC_LANGUAGE` (`DC_LANGUAGE`),
  ADD KEY `DC_CONSENT_ID` (`DC_CONSENT_ID`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`DM_COD`);

--
-- Indexes for table `domain_groups`
--
ALTER TABLE `domain_groups`
  ADD PRIMARY KEY (`DMG_COD`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GR_COD`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`RP_COD`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`ST_COD`);

--
-- Indexes for table `supported_languages`
--
ALTER TABLE `supported_languages`
  ADD PRIMARY KEY (`SL_COD`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`TH_COD`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`US_COD`);

--
-- Indexes for table `users_domain_groups`
--
ALTER TABLE `users_domain_groups`
  ADD PRIMARY KEY (`UDMG_USER`,`UDMG_DOMAIN`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`UG_USER`,`UG_GROUP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bots`
--
ALTER TABLE `bots`
  MODIFY `BT_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookies`
--
ALTER TABLE `cookies`
  MODIFY `CK_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookies_templates`
--
ALTER TABLE `cookies_templates`
  MODIFY `CKT_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dictionary`
--
ALTER TABLE `dictionary`
  MODIFY `DCT_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dictionary_templates`
--
ALTER TABLE `dictionary_templates`
  MODIFY `DC_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `DM_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domain_groups`
--
ALTER TABLE `domain_groups`
  MODIFY `DMG_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `GR_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `RP_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `ST_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supported_languages`
--
ALTER TABLE `supported_languages`
  MODIFY `SL_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `TH_COD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `US_COD` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
