-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 05, 2015 at 07:48 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `construction`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 1919, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 2021, 1, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 504, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 504, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla! Extensions', 'joomla-extensions', 0, 499, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla! Shop', 'joomla-shop', 0, 499, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo Shop', 'joomla-promo-shop', 0, 8, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla! Promo Books', 'joomla-promo-books', 0, 10, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(9, 1, '', 'Demo Banner', 'demo-banner', 0, 2634, 0, 'banner.jpg', '', '2009-05-27 20:14:17', 1, 0, '0000-00-00 00:00:00', '', '', 34, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Joomla! Specific Links', '', 'joomla-specific-links', 'clock.jpg', 'com_weblinks', 'left', 'A selection of links that are all related to the Joomla! Project.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Newsflash', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Ads', '', 'text-ads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Other Resources', '', 'other-resources', '', 'com_weblinks', 'left', '', 1, 62, '2009-04-07 19:56:18', NULL, 2, 0, 0, ''),
(29, 0, 'The CMS', '', 'the-cms', '', '4', 'left', 'Information about the software behind Joomla!<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Current Users', '', 'current-users', '', '3', 'left', 'Questions that users migrating to Joomla! 1.5 are likely to raise<br />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'The Project', '', 'the-project', '', '4', 'left', 'General facts about Joomla!<br />', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'New to Joomla!', '', 'new-to-joomla', '', '3', 'left', 'Questions for new users of Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'The Community', '', 'the-community', '', '4', 'left', 'About the millions of Joomla! users and Web sites<br />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Languages', '', 'languages', '', '3', 'left', 'Questions related to localisation and languages', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(34, 0, 'Demo Banner', '', 'demo-banner', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(57, 0, 'Frontpage', '', 'frontpage', '', '21', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(60, 0, 'Featured News', '', 'featured-news', '', '22', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(62, 0, 'Frontpage newsflash', '', 'frontpage-newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=1\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=1\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, '', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=0\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(35, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.7\nDEV_STATUS=stable', 1),
(127, 'JCE', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE', 'com_jce', 0, 'components/com_jce/media/img/menu/logo.png', 0, '', 1),
(128, 'WF_MENU_CPANEL', '', 0, 127, 'option=com_jce', 'WF_MENU_CPANEL', 'com_jce', 0, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 1),
(129, 'WF_MENU_CONFIG', '', 0, 127, 'option=com_jce&view=config', 'WF_MENU_CONFIG', 'com_jce', 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 1),
(130, 'WF_MENU_PROFILES', '', 0, 127, 'option=com_jce&view=profiles', 'WF_MENU_PROFILES', 'com_jce', 2, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 1),
(131, 'WF_MENU_INSTALL', '', 0, 127, 'option=com_jce&view=installer', 'WF_MENU_INSTALL', 'com_jce', 3, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(17, 'Installing The Template', 'installing-the-template', 'Installing Forever ACE 2', '<br /><ul class="bullet_list"><ul class="ul_numbers"><li class="li_number1">Download the installation package from our download section.</li><li class="li_number2">Once the download is complete go to the backend of Joomla.</li><li class="li_number3">     Navigate through your menu system to Extensions/Install Uninstall.</li>   </ul>   \r\n</ul>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n<img border="0" src="http://www.shape5.com/demo/images/general/install_menu.png" width="199" height="172"></p>\r\n<ul class="bullet_list"><ul class="ul_numbers">          <li class="li_number4">Once at the installation screen click the browse button and navigate to where you downloaded the template file.</li>     <li class="li_number5">Once you have the file selected click &#39;Upload File and Install&#39;</li>     \r\n  <p>\r\n  <img border="0" src="http://www.shape5.com/demo/images/general/browse.png" width="400" height="56"></p>\r\n  <p><b>The template is now installed, now let&#39;s set it as the default template:</b><br />     </p>     <li class="li_number6">Navigate through your menu system to Extensions/Template Manager.</li><li class="li_number7">Find the radio button next to the newly installed template.</li><li class="li_number8">Click on the Default button at the top right of the screen and you&#39;re done!</li><p>\r\n  <img border="0" src="http://www.shape5.com/demo/images/general/default.png" width="200" height="92"></ol>   </ul>   <p>&nbsp;</p>', '', -2, 1, 0, 1, '2007-12-11 19:38:14', 62, '', '2010-12-14 23:14:53', 62, 0, '0000-00-00 00:00:00', '2007-12-11 19:37:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 24, 0, 0, '', '', 0, 11200, 'robots=\nauthor='),
(18, 'The Template''s Settings', 'configuring-the-templates-settings', 'Configuring The Template''s Settings', '<p>This template comes loaded with options that you can use to customize your site exactly how you want it. Here''s how to get to these custom settings:</p>\r\n<ol>\r\n<li>In the backend of Joomla go menu item Extensions/Template Manager.</li>\r\n<li>Click on the title of the template.</li>\r\n<li>This will bring you to the template manager screen where you can edit the template''s parameters.</li>\r\n<li>Click save when you are done</li>\r\n</ol>\r\n<p><img src="http://www.shape5.com/demo/images/general/template_edit15.jpg" border="0" alt=" " width="500" height="156" /> <br /><br /><br /></p>\r\n<div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top" style="color:#1B6FC2; text-decoration:underline">JOIN TODAY</a>.</strong></div>\r\n<p> </p>', '', -2, 1, 0, 1, '2007-12-11 19:46:04', 62, '', '2011-02-15 01:00:39', 62, 0, '0000-00-00 00:00:00', '2007-12-11 19:45:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 0, '', '', 0, 11395, 'robots=\nauthor='),
(24, 'Page, Column and Row Widths', 'custom-page-column-and-row-widths', 'Custom Page and Column Widths', '<h3>Fixed or Fluid Width</h3><br />\r\nThis template has the ability to set the entire width of your set to either a \r\nfixed pixel width or a fluid percentage width. You can set the width to any size \r\nyou want.\r\n<br /><br /><h3>Column Widths</h3><br />\r\nYou may also set the widths of the following positions to any width that you \r\nneed to: left, left_inset, right, and right_inset. You may set them to any width \r\nyou need to.\r\n<br /><br /><h3>Row Widths</h3><br />\r\nThis template comes loaded with module positions, many of which appear in rows \r\nof 6 module positions. Any row that contains 6 module positions can have it''s \r\nrow columns set to automatic widths or manual. For example, in the picture below \r\nthe first row shows 4 modules published and since it''s set to automatic each is \r\nset to 25% width. The second row shows a manual calculation for each module in \r\nthe row. Again, you may do this for any row that contains 6 modules. If you \r\nsetup a manual calculation they must total to 100%. Not all 6 modules need to be \r\nused, as shown below.<p>\r\n</p>\r\n<p>All of this is done very easily in the template configuration.</p>\r\n<p align="center">\r\n<img style="border:solid 1px #333333" src="http://www.shape5.com/demo/images/general/custom_widths.png" width="600" height="432" /></p>\r\n<br />', '', -2, 1, 0, 1, '2007-12-11 21:25:09', 62, '', '2011-12-13 19:44:25', 62, 0, '0000-00-00 00:00:00', '2007-12-11 21:24:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 45, 0, 0, '', '', 0, 10816, 'robots=\nauthor='),
(211, 'followme.gr', 'followmegr', '', '<p><span style="font-family: georgia,palatino; font-size: 12pt;">Ambos Mundos</span><br /><span style="font-family: georgia,palatino;">Έχουμε τη συνταγή του πιο τέλειου cocktail Ο ταλαντούχος Head bartender του Six D.O.G.S. και φιναλίστ στον διαγωνισμό Bacardi Legacy Competition, Μάριος Ηλιόπουλος, μας δίνει τη συνταγή για ένα cocktail που μας ταξιδεύει ανάμεσα σε δύο κόσμους. </span><br /><br /><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://www.followme.gr/sites/default/files/styles/article_main_image/public/poto1.jpg?itok=UxJfRSur" alt="" width="272" height="207" />Ambos Mundos είναι το όνομα του cocktail, με το οποίο ο Μάριος Ηλιόπουλος, Head bartender του Six D.O.G.S. τα τελευταία πέντε χρόνια, διαγωνίζεται στο Bacardi Legacy Competition, που σημαίνει Δυο Κόσμοι. Η έμπνευση προήλθε από δύο κόσμους που ενώνονται και γίνονται ένα. Ο παλιός κόσμος της Κούβας που γέννησε και εξόρισε το Bacardi και ο υπόλοιπος κόσμος που κατέκτησε στη συνέχεια. Το ποτό είναι βασισμένο σε ένα κλασικό cocktail με μια πινελιά από τον σύγχρονο κόσμο ενώνοντας το παλιό με το καινούριο, τη ζωή του Μάριου ως bartender και της κοπέλας του που ενώνονται σε κάθε ευκαιρία.</span><br /><br /><span style="font-family: georgia,palatino;">Αυτά τα Χριστούγεννα ταξιδεύουμε ανάμεσα σε δύο κόσμους, με ένα cocktail που συνδυάζει αρμονικά τις γλυκές και πικρές γεύσεις και περιέχει σπιτικό ρόδι – ό,τι πρέπει για καλή τύχη! Το Ambos Mundos ταξιδεύει στην Ευρώπη με τελευταία στάση το Παρίσι, σερβίρεται στο Six D.O.G.S., αλλά μπορείς να το αναζητήσεις και σε άλλα μπαρ της πόλης. Τι θα έλεγες όμως να το φτιάξεις στο σπίτι μαζί με τους φίλους σου;</span></p>', '', 1, 1, 0, 1, '2014-12-02 23:28:26', 62, '', '2015-02-04 21:25:34', 62, 0, '0000-00-00 00:00:00', '2010-12-13 23:28:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 16, 0, 8, '', '', 0, 34, 'robots=\nauthor='),
(212, 'CSS Tableless Overrides', 'css-overrides', '', 'This template comes with CSS tabless overrides for the main Joomla content, overriding the default table layout. This makes your content much more accessible to search engines.\r\n<br /><br />\r\n<div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top">JOIN TODAY</a>.</strong></div>', '', -2, 1, 0, 1, '2010-12-13 23:29:23', 62, '', '2010-12-14 21:17:58', 62, 0, '0000-00-00 00:00:00', '2010-12-13 23:29:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 12, 'robots=\nauthor='),
(208, 'vice.com', 'vicecom', '', '<p><span style="font-family: georgia,palatino;">Η Ιστορία Πίσω από ένα Ποτό που το Έλεγαν «Μπάμπη»</span></p>\r\n<p class="has-image"><span style="font-family: georgia,palatino;">​<img style="margin: 10px; float: left;" src="http://assets2.vice.com/images/content-images/2014/12/02/almost-famous-marios-iliopoulos-body-image-1417524831.jpg" alt="" width="300" height="199" /></span></p>\r\n<p><span style="font-family: georgia,palatino;">Παίρνει μια φλούδα λεμόνι και χαϊδεύει με μαεστρία το χείλος και τη βάση του ποτηριού. Η ευωδία του περνάει το φυσικό όριο της μπάρας και φτάνει στη μύτη μου. «Το κάνω γιατί τα έλαια του λεμονιού έχουν υπέροχη μυρωδιά που θα σε ταξιδέψει και μετά το ποτό τα χέρια σου θα μυρίζουν λεμόνι. Τι καλύτερο;», μου λέει ο Μάριος και πιάνει αριστοτεχνικά με την τσιμπίδα του ένα παγάκι που θα βοηθήσει τα αρώματα του κοκτέιλ να αναδειχθούν. Το <a style="font-size: 1em;" href="https://www.facebook.com/ambosmundos.m.iliopoulos?fref=ts">Ambos&nbsp;Mundos</a> μου, είναι έτοιμο προς πόση και είναι το κοκτέιλ με το οποίο ο Μάριος έχει φτάσει στον τελικό του Bacardi&nbsp;Legacy. Θεωρεί πως το κύριο συστατικό των κοκτέιλ του είναι η αγάπη.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong style="font-style: normal;">Πότε ξεκίνησες να εργάζεσαι ως </strong><strong style="font-style: normal;">bartender</strong><strong style="font-style: normal;">;<br /> ​</strong>Εργάζομαι ως bartender τα τελευταία είκοσι χρόνια. Μπορεί να φαίνομαι μικρός, αλλά είμαι 39 χρονών.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Ποιο ήταν το πρώτο μαγαζί που δούλεψες ποτέ;<br /> ​</strong>Ήταν το Piccadilly στο Αίγιο, όπου γεννήθηκα και μεγάλωσα.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Αποφάσισες να κάνεις την δουλεία του </strong><strong>bartender</strong><strong> σαν μια παράλληλη δουλειά ή ήταν μια συνειδητή απόφαση;<br /> ​</strong>Ο πατέρας μου είχε κάβα ποτών, άρα έμαθα τα ποτά από πολύ μικρός, καθώς τα καλοκαίρια που δεν είχα σχολείο τον βοηθούσα πολύ στο μαγαζί. Μετά θέλησα να μπω πίσω απ'' την μπάρα. Είναι η δουλειά μου. Θέλω και ελπίζω να κάνω μόνο αυτή τη δουλειά για όλη μου τη ζωή. Να φτιάχνω κοκτέιλ και να σερβίρω τον κόσμο.</span></p>\r\n<p class="has-image"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: right;" src="http://assets2.vice.com/images/content-images/2014/12/02/almost-famous-marios-iliopoulos-body-image-1417524867.jpg" alt="" width="300" height="200" /></span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Το επάγγελμα του </strong><strong>barman</strong><strong> όμως δεν έχει συνήθως ημερομηνία λήξης;<br /> ​</strong>Πριν αρκετά χρόνια ναι, πλέον όμως έχουν μπει πολλά πράγματα σε αυτή τη δουλειά. Είναι η παρασκευή των κοκτέιλ, η θεατρικότητα που πρέπει να έχεις. Πολλά παιδιά στην ηλικία μου συνεχίζουν ως barmen ή ανοίγουν δικά τους μαγαζιά. Κάθε μέρα εξελισσόμαστε, επειδή κάθε μέρα είναι ωραία.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Εσύ θα ήθελες να ανοίξεις ένα δικό σου μπαρ κάποια στιγμή;<br /> ​</strong>Ναι, αλλά επειδή θέλω να το κάνω ακριβώς όπως το έχω σκεφτεί, δε βιάζομαι. Μπορεί να φτάσω και εξήντα χρονών δηλαδή, αλλά θέλω να είναι όπως το έχω φανταστεί.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Υποθέτω πως ακόμα και να κάνεις ένα δικό σου μαγαζί, θα είσαι και πάλι πίσω απ'' τη μπάρα, σωστά;<br /> ​</strong>Φυσικά. Είναι αυτό που λατρεύω. Την αγαπάω πολύ τη δουλειά μου.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Πέρα απ'' τον πατέρα σου που σε έφερε σε επαφή με τα ποτά, υπάρχει κάποιος </strong><strong>barman</strong><strong> δίπλα στον οποίο να μαθήτευσες στο ξεκίνημά σου και να σου έμαθε πολλά πράγματα;<br /> ​</strong>Όταν ξεκίνησα να δουλεύω πιο επαγγελματικά, με βοήθησε στα πρώτα μου βήματα ο Νίκος Ζήσης, ο ιδιοκτήτης του Dos&nbsp;Agaves. Μετά άρχισα να την ψάχνω μόνος μου και πήγα σε πολλά σεμινάρια εδώ στην Ελλάδα, αλλά και στο Λονδίνο. Έμαθα και για κρασιά και για τα ποτά, τα αποστάγματα και παρακολουθώ διαρκώς ό,τι καινούριο συμβαίνει στον κόσμο του ποτού. Τώρα ετοιμάζομαι να πάω σε ένα σεμινάριο στο Μιλάνο.</span><br /><br /></p>\r\n<p class="has-image"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://assets2.vice.com/images/content-images/2014/12/02/almost-famous-marios-iliopoulos-body-image-1417524921.jpg" alt="" width="300" height="200" /></span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Η δουλειά του </strong><strong>barman</strong><strong> δηλαδή είναι τέχνη;<br /> ​</strong>Πλέον η δουλειά του barman είναι κάτι παραπάνω από αυτό που νομίζουμε. Πάνω απ'' όλα είναι η εξυπηρέτηση. Το να κάνεις τον κόσμο να χαρεί, να περάσει καλά, ειδικά τώρα που κανένας μας δεν έχει πολλά λεφτά. Να περάσει όμορφα ακόμα και με ένα ποτό. Είναι λίγο τέχνη, έχει θεατρικότητα και είναι και πολύ καλύτερα για εμάς. Όταν μου λες θέλω να μου φτιάξεις κάτι, πειραματίζομαι κι εγώ πάνω σε ''σένα. Θέλω να σου θυμίσω κάτι με την πρώτη γουλιά.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Θα σταθώ λίγο στη θεατρικότητα που ανέφερες. Εννοείς στις κινήσεις σου και στον τρόπο που σερβίρεις; Ότι πρέπει να είναι εντυπωσιακός;<br /> ​</strong>Είναι στις κινήσεις, είναι σε αυτό που θα σου πω. Αν μου ζητήσεις για παράδειγμα ένα κοκτέιλ με ρούμι, θα σου μιλήσω για αυτό, θα σου πω λίγο την ιστορία από πίσω, από πού εμπνεύστηκα και γιατί το έφτιαξα. Συνηθίζεται γενικά τώρα τελευταία, αλλά προσωπικά εγώ το έκανα πάντα. Θέλω με τις γεύσεις μου να σε ταξιδέψω, να χαλαρώσεις ακόμα περισσότερο μετά από μια έντονη μέρα.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Αν σου πει κάποιος «φτιάξε μου ό,τι θες» και σε αφήσει να πειραματιστείς, θα φτιάξεις ένα ποτό σύμφωνα με αυτό που σου βγάζει ο άλλος ή εμπνευσμένος από την εξωτερική του εμφάνιση; Τι σου δίνει έρεισμα;<br /> ​</strong>Συνήθως έτσι γίνεται, αλλά δεν πετυχαίνει πάντα. Προσπαθώ να καταλάβω τι αρέσει στον άλλο με την πρώτη κουβέντα. Θα ρωτήσω αν του αρέσουν τα γλυκά ή τα ξινά και θα προσπαθήσω να φέρω το ποτό κοντά σε ''σένα.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Πώς αντιδράς αν δεν πετύχει και σε κάποιον δεν αρέσει το κοκτέιλ σου;<br /> ​</strong>Θα το πάρω πίσω και θα του φτιάξω άλλο.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Ποιο είναι το </strong><strong>signature</strong><strong> κοκτέιλ σου;<br /> ​</strong>Είναι αυτό με το οποίο διακρίθηκα στον τελικό του διαγωνισμού του Bacardi&nbsp;Legacy, το Ambos&nbsp;Mundos, το οποίο σερβίρουμε αποκλειστικά εδώ στο six&nbsp;d.o.g.s. Περιέχει Bacardi, Punte&nbsp;Mes, ένα βερμούτ απ'' το Μιλάνο, Elderflower, ένα λικέρ από τις Γαλλικές Άλπεις, ένα σπιτικό σιρόπι ρόδι που φτιάχνω μόνος μου και bitter λεβάντα. Είναι και αρκετά χριστουγεννιάτικο. Αν σου αρέσουν τα Χριστούγεννα, δε σου αρέσει και αυτό. Αν κάποιος βέβαια μου το ζητήσει Ιούλιο, θα με κάνει τον πιο ευτυχισμένο άνθρωπο στον κόσμο.</span><br /><br /></p>\r\n<p class="has-image"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://assets2.vice.com/images/content-images/2014/12/02/almost-famous-marios-iliopoulos-body-image-1417524957.jpg" alt="" width="300" height="200" /></span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Όταν δε δουλεύεις, που σου αρέσει να βγαίνεις στην Αθήνα;<br /> ​</strong>Η αλήθεια είναι πως δε βγαίνω αρκετά. Δουλεύω πολλές μέρες την εβδομάδα και όταν έχω ρεπό προτιμώ να κάτσω σπίτι και να διαβάσω, να δω μια ταινία. Μου αρέσει να βγάζω βόλτα τον σκύλο μου στην παραλία. Έχω βέβαια κάποια αγαπημένα cocktail&nbsp;bars, όπως το Dos&nbsp;Agaves δίπλα και το Gin&nbsp;Joint -μου αρέσει πολύ το τζιν -, αλλά είμαι σπιτόγατος. Συνειδητά ή υποσυνείδητα ίσως θέλω να ξεφύγω και λίγο απ'' το bar, από τι στιγμή που δουλεύω σε ένα. Ενώ, όταν ξυπνάω λέω «απόψε θα βγω», όταν πάει οκτώ η ώρα τελικά το μετανιώνω και προτιμώ να κάτσω σπίτι να χαλαρώσω. Μπορεί καμιά φορά να πεταχτώ για ένα γρήγορο ποτό με το ποδήλατο.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Μίλησε μου λίγο για τους διαγωνισμούς στους οποίους έχεις συμμετάσχει.<br /> ​</strong>Ο πιο πρόσφατος είναι το Bacardi&nbsp;Legacy που ανέφερα και πριν. Έχω περάσει στον ελληνικό τελικό, μαζί με άλλα τρία άτομα. Ο νικητής θα πάει στην Αυστραλία και θα προσπαθήσει να κερδίσει το παγκόσμιο. Ελπίζω να κερδίσω, γιατί νομίζω έχω φτιάξει ένα πολύ καλό κοκτέιλ και να πάω Αυστραλία. Έχω συμμετάσχει επίσης στο World&nbsp;Class, πέρσι και ήμουν στους δώδεκα φιναλίστ, εδώ στην Ελλάδα. Γενικά, ό,τι διαγωνισμός γίνεται λαμβάνω μέρος. Δε με ενδιαφέρει πάντα να κερδίσω. Με ενδιαφέρει να δω αν τελικά η ιδέα μου ήταν έξυπνη, αν αρέσει το κοκτέιλ μου, να σκεφτώ κάτι άλλο πέρα απ'' τη ρουτίνα της δουλειάς. Συμμετέχω πιο πολύ για το ταξίδι, παρά για τη νίκη. Είτε βγεις, πρώτος είτε τελευταίος είναι η εμπειρία. Βλέπεις τι κάνει κάποιος συνάδελφός σου και λες «Κοίτα να δεις, το είχα αυτό τρία χρόνια στο bar μου και δεν το έχω χρησιμοποιήσει ποτέ;».</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Τι σημαίνει όμως μια τέτοια διάκριση για ένα </strong><strong>bartender</strong><strong>;<br /> ​</strong>Πολλά. Πρώτα απ'' όλα πας έξω και γνωρίζεις κόσμο, θα τελειοποιήσεις ακόμα περισσότερο το ποτό σου, θα γίνεις ακόμα πιο επαγγελματίας.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Πίνεις κατά τη διάρκεια της δουλειάς;<br /> ​</strong>Γενικά δεν πίνω. Θα πιώ ένα ποτό στο ρεπό στο σπίτι μου. Μου αρέσει να δοκιμάζω όμως. Σπάνια θα με δεις να κάτσω να πιω ένα ποτό και αν το κάνω θα πιο ένα Daiquiri&nbsp;Classic που είναι το αγαπημένο μου. Αλλά δεν κάνω κατανάλωση. Όλα τα αφεντικά με αγαπάνε γι αυτό.</span></p>\r\n<p class="has-image"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: right;" src="http://assets2.vice.com/images/content-images/2014/12/02/almost-famous-marios-iliopoulos-body-image-1417524977.jpg" alt="" width="300" height="200" /></span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Θυμάσαι την πρώτη φορά που ήπιες ποτέ;<br /> ​</strong>Ναι και είναι και αστεία ιστορία. Λόγω της κάβας του πατέρα μου ήπια πρώτη φορά όταν ήμουν πέντε χρονών. Τα καλοκαίρι βοηθούσαμε με τον αδερφό μου στην κάβα και τότε κάναμε κάτι που μας φαίνονταν αστείο και πολύ ενδιαφέρον. Σαν παιδιά φυσικά κανείς δεν μας επέτρεπε να πιούμε. Οπότε όταν ο πατέρας μου μας έλεγε να πάμε στην αποθήκη να φέρουμε το τάδε ποτό, εμείς ανοίγαμε τα μπουκάλια, βάζαμε λίγο ποτό στο καπάκι δοκιμάζαμε, τα ξανακλείναμε και μετά τα πουλάγαμε. Έτσι δοκίμασα γρεναδίνες, Malibu, Partida, το οποίο νομίζω ότι ήταν και το πρώτο ποτό που ήπια ποτέ, γιατί μου είχε κάνει εντύπωση το μπουκάλι. Αυτό και το Kiwi, γιατί έμοιαζε με μαγικό φίλτρο.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Τα κορίτσια γιατί κολλάνε με τους </strong><strong>barmen</strong><strong>;<br /> ​</strong>Εντυπωσιάζονται νομίζω. Λέμε κι εμείς τις ιστορίες μας. Το φλερτ είναι κομμάτι αυτής της δουλειάς. Μας θεωρούν λίγο ψεύτες. Ξέρεις, αυτή η μπάρα που μας χωρίζει έχει μεγάλη σημασία. Εδώ που με βλέπεις μπορεί να μιλάω ασταμάτητα και να φαίνομαι κοινωνικός, αλλά όταν βγω έξω απ'' τη μπάρα, είμαι πιο συνεσταλμένος.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Πόσα χρόνια εργάζεσαι στο </strong><strong>six&nbsp;</strong><strong>d</strong><strong>.</strong><strong>o</strong><strong>.</strong><strong>g</strong><strong>.</strong><strong>s</strong><strong>.;<br /> ​</strong>Στο six&nbsp;d.o.g.s. είμαι πέντε χρόνια και στον Κήπο δουλεύω τα τελευταία τρία. Μου αρέσει πολύ ο κήπος. Τώρα είμαι ο head&nbsp;bartender του six&nbsp;d.o.g.s. και καμιά φορά ανεβαίνω και πάνω να βοηθήσω με κάποια punch που φτιάχνουμε.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Δηλαδή ο «Μπάμπης» είναι δικής σου έμπνευσης;<br /> ​</strong>Ναι, ο «Μπάμπης» είναι δικό μου punch. Βέβαια το όνομα το βρήκε ο Κωνσταντίνος Δαγριτζίκος και έχει καταφέρει να γίνει το πιο γνωστό punch στην Αθήνα.</span><br /><br /></p>\r\n<p class="has-image"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://assets2.vice.com/images/content-images/2014/12/02/almost-famous-marios-iliopoulos-body-image-1417525012.jpg" alt="" width="300" height="200" /></span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Η χαμηλή του τιμή ήταν επίσης κάτι που αποφασίσατε μαζί; Γενικά, το πρεσβεύεις το πιο προσιτό ποτό;<br /> ​</strong>Ναι, το αποφασίσαμε μαζί και γενικά μου αρέσει να είναι όλα προσιτά. Πήγε να μας ξεφύγει λίγο αυτό, όχι μόνο σε εμάς, σε όλα τα μαγαζιά της Αθήνας, αλλά ευτυχώς το μαζέψαμε. Δε χρειάζεται να έρθει ο άλλος για ένα κοκτέιλ και να του πάρεις 15 ευρώ. Καλύτερα να έχει πέντε, γιατί ο άλλος θα μπορέσει να πάρει δύο κοκτέιλ, ή να ξαναέρθει την επόμενη μέρα και μην είναι αναγκασμένος να βγει μόνο μια φορά την εβδομάδα για να απολαύσει κάτι ιδιαίτερο. Είμαι πολύ υπέρ του φθηνού ποτού και πάντα έλεγα ότι μαγαζιά του κέντρου πρέπει να το προωθήσουν αυτό. Να κάνουν περισσότερα happy&nbsp;hours, cocktail&nbsp;weeks, όπου θα μπορεί επί μια βδομάδα κάποιος να πιει κοκτέιλ με 5 ή 6 ευρώ σε όλα τα μαγαζιά της Αθήνας, foodpairing το οποίο να μη χρεώνεται έξτρα. Λεφτά δε θα κάνουμε ποτέ εδώ που φτάσαμε, οπότε ας περάσουμε καλά.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Μπορείς να μου πεις ένα αντίδοτο για το </strong><strong>hangover</strong><strong>;<br /> ​</strong>Το hangover το έχω μελετήσει αρκετά και έχει να κάνει κυρίως με τον οργανισμό του κάθε ανθρώπου, αλλά και με το τι έχεις πιει το προηγούμενο βράδυ. Κάτι με ντομάτα, ένα Bloody&nbsp;Mary ας πούμε το πρωί, είναι ό,τι πρέπει. Το κάνουν πολύ οι Λονδρέζοι αυτό. Γενικά θέλει λίγη συνέχεια απ'' ό,τι έχεις πιει το προηγούμενο βράδυ, σε μια πολύ μικρή δόση, γιατί έτσι γίνεται σταδιακά ο μεταβολισμός στο συκώτι σου του οινοπνεύματος της προηγούμενης νύχτας. Πολύ σωστό πρωινό επίσης -το αυγό κάνει πολύ καλό -, για να τραβήξει το στομάχι τα υγρά και πολύ νερό. Πρέπει πάντως να πειραματιστείς κι εσύ ο ίδιος για να δεις σε τι αντιδρά καλύτερα ο οργανισμός σου. Επίσης δεν πρέπει να κοιμηθείς πολλές ώρες, γιατί τότε τον πονοκέφαλο δεν τον αποφεύγεις.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Τι κοκτέιλ προτιμά πιο πολύ ο κόσμος; Τι είναι πιο δημοφιλές;<br /> ​</strong>Το Negroni φεύγει πάρα πολύ τώρα τελευταία. Mojito φυσικά. Αλλά για πάντα πιο δημοφιλές θα μείνει το Martini. Είναι ένα κοκτέιλ που θα βρεις από το καλύτερο cocktail&nbsp;bar μέχρι το τελευταίο μπαρ της γειτονιάς.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Βλέπεις διαφορά στα κοκτέιλ που προτιμούν οι άντρες και στα κοκτέιλ που προτιμούν οι γυναίκες;<br /> ​</strong>Αυτή είναι μια πάρα πολύ ωραία ερώτηση. Θεωρώ ότι οι γυναίκες πίνουν πιο σκληρά ποτά, απ'' τους άντρες. Πειραματίζονται πιο εύκολα, θα δοκιμάσουν περίεργα ποτά. Τα περίεργα ποτά μπαίνουν συνήθως σε ποτήρι κουπέ, στυλ Martini. Ένας άντρας μόλις το δει αυτό θα πει δε το θέλω. Επίσης η ηλικία παίζει ρόλο. Τα αγόρια συνήθως εκεί στα 20-21, θα πιούν μια μπύρα, ενώ τα κορίτσια θα δοκιμάσουν αμέσως ένα περίεργο ποτό.</span></p>\r\n<p><span style="font-family: georgia,palatino;"><strong><br />Υπάρχει κάποιο ποτό που δεν υπάρχει στην Ελλάδα και θες να το φέρεις πολύ;<br /> ​</strong>Είχα πάει πριν 4 χρόνια στο Rum&nbsp;Festival στο Λονδίνο και δοκίμασα ένα ρούμι, που σου μιλάω ειλικρινά μου μύρισε ελιά. Δε θυμάμαι την ονομασία του όμως και όσο κι αν έχω ψάξει δεν έχω καταφέρει να το βρω. Όταν με ρώτησε ο barman πως μου φαίνεται, του είπα ότι μου μύρισε ελιά και μου λέει «Τι ελιά ρε φίλε; Από που είσαι;» και όταν του είπα ότι είμαι απ'' την Ελλάδα μου λέει, «Ε, ελιά σου μυρίζει, τι θα σου μύριζε;». Ήταν και Σκοτσέζος και δεν έπαιρνε από πολλά-πολλά.</span></p>', '', 1, 1, 0, 1, '2012-12-02 23:35:25', 62, '', '2015-02-04 21:59:50', 62, 0, '0000-00-00 00:00:00', '2010-02-06 23:35:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 9, '', '', 0, 45, 'robots=\nauthor='),
(173, 'Search Engine Optimized ', 'search-engine-optimized-', '', '<br/>\r\n<h3>SEO - Get your site noticed!</h3>\r\n<p><br /> Not only is this template beautifully designed but it is great for search engine optimization as well! What is SEO? It is simple the act of altering a web site so that it does well in the organic, crawler-based listings of search engines such as google.com. How does this template accomplish this? It''s simple, the majority of your most valuable content is found in the main body of your site, through css we are able to alter the layout of the site and call the main content before the left and right columns are called. This allows for your content to be found first by search engines before it reaches your other content, which is vital in search engine optimization. This is a common feature this can be done with almost all of Shape 5 templates as well.</p>\r\n<p> </p>\r\n<div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top">JOIN TODAY</a>.</strong></div>', '', -2, 1, 0, 1, '2010-02-11 17:28:55', 62, '', '2010-08-13 18:55:05', 62, 0, '0000-00-00 00:00:00', '2010-02-11 17:28:55', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 0, '', '', 0, 84, 'robots=\nauthor='),
(39, 'Site Shapers', 'site-shapers', 'SQL Dumps/Site Shapers', '<p><br />So what are Site Shapers? They are quick installs of Joomla combined with all the modules, images, etc used on our demo. Within a few minutes you can have your site up, running and looking just like our demo. No more importing SQL dumps and installing modules.  Just head on over to the download section of this template and grab a Site Shaper.  Simply install the Site Shaper like any other Joomla installation, it''s that easy!<br /><br /></p>\r\n<h3>How to setup a Site Shaper</h3>\r\n<p><br /> <strong>Note</strong> - please read the entire tutorial. Virtuemart requires one extra step at the bottom of this tutorial. <br /><br /></p>\r\n<ul class="ul_bullet">\r\n<li>Login to your cpanel or your server admin panel.</li>\r\n<li>Locate the area where your databases are    (usually labeled Mysql Databases)</li>\r\n<li>Create a new database</li>\r\n<li>Next create a new database user and assign    it to this newly created database in the previous step</li>\r\n<li>You will then    need to extract the site shaper to either a folder on your server or the root    directory such as WWW. NOTE: if you already have a website in the root of your    WWW folder, we suggest creating a new folder and extract the site shaper    there. If your cpanel does not have an extract option or you cannot find it,    you may also extract the contents of your site shaper in to a folder on your    desktop and upload all the files via an ftp client to your server.</li>\r\n<li>Next, navigate to the url where you extracted the site shaper via your web browser.</li>\r\n<li>Continue through each screen until you reach the below screenshot:</li>\r\n<br /> <img src="http://www.shape5.com/demo/images/general/siteshaper.png" border="0" /> <br /><br />\r\n<li>At the above screen be sure to enter localhost as shown, continue to fill in the following text fields with your newly created database and username information</li>\r\n<li>Follow through the rest of the site shaper setup and click the install sample data at the last screen and the installation is complete! (be sure to rename/remove the installation directory after finishing the install)</li>\r\n</ul>\r\n<p><br /><br /></p>', '', -2, 1, 0, 1, '2008-08-13 18:43:32', 62, '', '2011-12-13 20:09:10', 62, 0, '0000-00-00 00:00:00', '2008-08-13 18:42:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 37, 0, 0, '', '', 0, 8974, 'robots=\nauthor='),
(249, 'Ambos Mundos in the media', 'ambos-mundos-in-the-media', '', '<p><img class="boxed" src="images/content1.jpg" alt="" /> <img class="boxed" src="images/content2.jpg" alt="" /> <br /><br /> Libero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris mi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.</p>\r\n', '\r\n<p><br /><br /> Nunc rutrum scelerisque ipsum ut aliquet. Duis et augue nunc, gravida fermentum mi. Quisque sed dui enim. Mauris ultricies, tellus ac semper consequat, enim tellus convallis lacus, sit amet tempus mauris nibh non turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 1, 21, 0, 57, '2011-11-30 00:00:00', 62, '', '2015-02-04 17:27:07', 62, 0, '0000-00-00 00:00:00', '2011-12-10 00:56:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 3, '', '', 0, 25, 'robots=\nauthor='),
(12, 'Typography Options', 'typography-options', 'Typography Options', '<blockquote><p>This is a sample blockquote. Use <strong>&lt;blockquote&gt;&lt;p&gt;Your content goes \r\nhere!&lt;/p&gt;&lt;/blockquote&gt;</strong> to create a blockquote.</p></blockquote>\r\n\r\n\r\n\r\n\r\n<div class="s5_greenbox">\r\n<div class="point">\r\n\r\n\r\n&lt;div class="s5_greenbox"&gt;\r\n&lt;div class="point"&gt;\r\nYour text here\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n<br/>\r\n<br/>\r\n\r\n<div class="s5_redbox">\r\n<div class="point">\r\n\r\n\r\n&lt;div class="s5_redbox"&gt;\r\n&lt;div class="point"&gt;\r\nYour text here\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n<br/>\r\n<br/>\r\n\r\n\r\n<div class="s5_bluebox">\r\n<div class="point">\r\n\r\n\r\n&lt;div class="s5_bluebox"&gt;\r\n&lt;div class="point"&gt;\r\nYour text here\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n<br/>\r\n<br/>\r\n\r\n\r\n<div class="s5_graybox">\r\n<div class="point">\r\n\r\n\r\n&lt;div class="s5_graybox"&gt;\r\n&lt;div class="point"&gt;\r\nYour text here\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n<br />\r\n\r\n<div class="black_box">This is a styled box. Use <strong>&lt;div class=&quot;black_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class="gray_box">This is a styled box. Use <strong>&lt;div class=&quot;gray_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class="red_box">This is a styled box. Use <strong>&lt;div class=&quot;red_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class="blue_box">This is a styled box. Use <strong>&lt;div class=&quot;blue_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class="green_box">This is a styled box. Use <strong>&lt;div class=&quot;green_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class="yellow_box">This is a styled box. Use <strong>&lt;div class=&quot;yellow_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n<div class="orange_box">This is a styled box. Use <strong>&lt;div class=&quot;orange_box&quot;&gt;Your content \r\ngoes here!&lt;/div&gt;</strong></div>\r\n\r\n<br />\r\n\r\n\r\n\r\nThis is an image with the "boxed" class applied:<br /><br />\r\n\r\n<img class="boxed" src="http://www.shape5.com/demo/images/small1.jpg" alt=""></img>\r\n<br /><br /><br /><br />\r\n<br />\r\n\r\n\r\n\r\n\r\nThis is an image with the "boxed_black" class applied:<br /><br />\r\n\r\n<img class="boxed_black" src="http://www.shape5.com/demo/images/small1.jpg" alt=""></img>\r\n<br /><br />\r\n\r\n\r\n\r\n\r\nThis is an image with the "padded" class applied:<br /><br />\r\n\r\n<img class="padded" src="http://www.shape5.com/demo/images/small1.jpg" alt=""></img>\r\n<br /><br />\r\n\r\n\r\n\r\n\r\n<h1>Heading 1</h1>\r\n<h2>Heading 2</h2>\r\n<h3>Heading 3</h3>\r\n<h4>Heading 4</h4>\r\n<h5>Heading 5</h5>\r\n\r\n<br />\r\n\r\n<div class="code">This is a sample code div. Use <strong>&lt;div \r\n  class=&quot;code&quot;&gt;Your content goes here!&lt;/div&gt;</strong> to create a code div.<br /><br />#s5_code { width: 30px; color: #fff; line-height: 45px; } </div>\r\n\r\n<br />\r\n\r\n<ol>\r\n<li>This is an <strong>Ordered List</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ol>\r\n\r\n<br />\r\n\r\n<ul>\r\n<li>This is an <strong>Unordered List</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<ul class="ul_arrow">\r\n<li>This is an <strong>Unordered List with class ul_arrow</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n\r\n<br />\r\n\r\n<ul class="ul_star">\r\n<li>This is an <strong>Unordered List with class ul_star</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<ul class="ul_bullet">\r\n<li>This is an <strong>Unordered List with class ul_bullet</strong></li>\r\n<li>Congue Quisque augue elit dolor nibh.</li>\r\n<li>Condimentum elte quis.</li>\r\n<li>Opsum dolor sit amet consectetuer.</li>\r\n</ul>\r\n\r\n\r\n<br />\r\n\r\n<ul class="s5_features_list">\r\n<li>This is an <strong>Unordered List with class s5_features_list</strong></li>\r\n<li>Lorem ipsum dolor sit amet, consectetur es \r\nelit. In rhoncus lobortis orci, sed vestibulum \r\net. Fusce in dolor velit, sit amet vehicul.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur es \r\nelit. In rhoncus lobortis orci, sed vestibulum \r\net. Fusce in dolor velit, sit amet vehicul.</li>\r\n<li>Lorem ipsum dolor sit amet, consectetur es \r\nelit. In rhoncus lobortis orci, sed vestibulum \r\net. Fusce in dolor velit, sit amet vehicul.</li>\r\n</ul>\r\n\r\n\r\n<br />\r\n\r\nThe following list will support lists up to number 9, add the following class to the UL wrapping the below LI elements, class="ul_numbers":\r\n<br /><br />\r\n\r\n<ul class="ul_numbers">\r\n\r\n<li class="li_number1">This is a sample styled number list <strong>&lt;li class=&quot;li_number1&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n<li class="li_number2">This is a sample styled number list <strong>&lt;li class=&quot;li_number2&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n<li class="li_number3">This is a sample styled number list <strong>&lt;li class=&quot;li_number3&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n<li class="li_number4">This is a sample styled number list <strong>&lt;li class=&quot;li_number4&quot;&gt;Your content \r\ngoes here!&lt;/li&gt;</strong></li>\r\n\r\n</ul>\r\n\r\n<br />', '', -2, 1, 0, 1, '2007-12-05 11:25:14', 62, '', '2011-12-13 20:10:21', 62, 0, '0000-00-00 00:00:00', '2007-12-05 11:24:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=1\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 45, 0, 0, '', '', 0, 25407, 'robots=\nauthor='),
(13, 'S5 Flex Menu - Menu System', 's5-flex-menu-advanced-menu-system', 'S5 No-MooMenu With Multiple Effects', 'The S5 Flex Menu system is a very powerful plugin that provides functionality \r\nfar beyond what the standard Joomla menu system can provide. This plugin \r\nis intended to be as an extension of the existing menu system in Joomla to add many new features! Please see the full list of features below. \r\n\r\n<br /><br />\r\n\r\nThis menu system works off of the core Joomla mootools script so no extra javascript library is needed and keep download sizes to a minimum. Also, if you do not want to use this menu you can simply turn it it off from the template configuration page.\r\n<br /><br />\r\n\r\nTake your website to  the next design level by using the robust and feature\r\nrich S5 Flex Menu System. Organize your links with ease and show content \r\nin places you never could before!\r\n<br /><br />\r\n\r\nPlease note - this template does not support sub text on the first level links. However, all sub menus do.\r\n\r\n<br /><br />\r\n<h3>Menu Features:</h3>\r\n<br />\r\n\r\n\r\n<ul class="ul_star">\r\n<li>Multiple javascript effects with core mootools</li>\r\n<li>Multiple columns for menu items or modules</li>\r\n<li>Modules load directly into the menu</li>\r\n<li>Group sub menu items into the same column or fly out</li>\r\n<li>Optional sub texts for each menu item</li>\r\n<li>Optional menu icon images for each menu item</li>\r\n<li>And much more!</li>\r\n</ul>\r\n\r\n\r\n<br /><br />\r\n<h3>Menu Screenshot:</h3>\r\n<br />\r\n<img class="boxed" src="images/flexmenu.jpg" alt=""></img>\r\n<br /><br />\r\n\r\n<div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top">JOIN TODAY</a>.</strong></div><br /></ul>', '', -2, 1, 0, 1, '2007-12-05 11:32:41', 62, '', '2012-01-11 22:21:06', 62, 0, '0000-00-00 00:00:00', '2007-12-05 11:32:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 80, 0, 0, '', '', 0, 30842, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(14, 'Module Positions and Styles', 'module-positions-and-styles', '17 Positions and 6 Styles', '<br />\r\n<h3>All modules are fully collapsible</h3>\r\n<br />\r\nWhat exactly is a collapsing module? It''s quite simple, whenever a module is not published to a postion that position does not appear on the frontend of the template. Consider the example below:\r\n<br /><br />\r\n<img src="http://www.shape5.com/demo/images/general/modules_6.png"></img>\r\n<br /><br />\r\nThis particular row has 6 module positions available to publish to. Let''s say you only want to publish to 4 of these positions. The template will automatically collapse the modules you do not want to use and adjust the size of the modules accordingly:\r\n<br /><br />\r\n<img src="http://www.shape5.com/demo/images/general/modules_4.png"></img>\r\n<br /><br />\r\nIf no modules are published to the row the entire row itself will not show. The best feature of this is every module can be published to its own unique pages so the layout of your site can change on every page!\r\n<br /><br /><br />\r\n<h3>Infinite Layouts</h3>\r\n<br />\r\nBecause there are so many module positions available in so many different areas, the number of layouts you can create are limitless! For example, if you would like to show your main content area on the right side of your site but still have a column of modules, simply published your modules to the right or right_inset positions or both. The same would be true for the opposite, if you want a column on the left simply publish modules to left or left_inset. Of course you can always choose to not have a column at all. Remember, any module not published to will automatically collapse and the remaining area will automatically adjust. There is no need to choose a pre-defined layout for your entire site, simply use the power of collpasing module positions and take advantage of the numerous amount of module positions to create any layout you can dream of! Be sure to checkout the layout of modules below.\r\n<br /><br /><br />\r\n<h3>Dozens of Modules</h3>\r\n<br />\r\nBelow is a complete list of all the module positions available for this template.\r\n<br /><br />\r\n<img src="http://www.shape5.com/images/products/2012/construction/construction_layout.png"></img>\r\n<br /><br /><br />\r\n\r\n<h3>How to install and setup module styles:</h3></p> <ol> <li>   Download any module you wish to publish to your site.</li> <li>In the backend of Joomla    navigate to the menu item Extensions/Install Uninstall</li> <br />   <img style="margin-bottom:14px" src="http://www.shape5.com/demo/images/general/install_menu.png" border="0" width="199" height="172" /><br /> <li>Browse for the module''s install file and click Upload File & Install.</li>  <li>   Once the module has be installed navigate to the menu item Extensions/Module    Manager (same menu as above)</li>  <li>Find the Module just installed and click on it''s title.</li>  <li>   Change any parameters that you wish and be sure to set it to published and    publish it to your desired module position.</li><li>To apply a module style simply fill in the module class suffix field with any of this template''s included module styles. This parameter setting is found under Module Parameters on the right side of the screen. </li> <br />   <img style="margin-bottom:14px" src="http://www.shape5.com/demo/images/general/module_suffix.png" border="0" width="200" height="72" /><br /> <li>Assign what pages you would like the module to appear on and finally click Save.</li><br />   <img src="http://www.shape5.com/demo/images/general/page_assignment.png" border="0" width="200" height="144" /><br />   </ol>            <p>&nbsp;</p>', '', -2, 1, 0, 1, '2007-12-05 13:16:18', 62, '', '2012-01-12 00:41:52', 62, 0, '0000-00-00 00:00:00', '2007-12-05 13:16:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 65, 0, 0, '', '', 0, 26896, 'robots=\nauthor='),
(36, 'How To Setup the Search Box and Menus', 'how-to-setup-the-search-box-and-menus', 'How To Setup the Search Box and Menus', '<p> <h3>1. Search Setup</h3></p>\r\n<p><span style="font-size: medium;"><strong> <img src="images/search.png" class="padded" /></strong></span></p>\r\n<ul class="ul_arrow">\r\n<li>Publish the default Joomla search module to the ''right'' position.</li>\r\n<li>Change any of the module''s parameters you wish, and that''s it.</li>\r\n</ul>\r\n\r\n<br />\r\n\r\n<p><h3>2. Column Menu Setup</h3></p>\r\n<p><span style="font-size: medium;"><strong> <img src="images/column_menu.png" class="padded" /></strong></span></p>\r\n<ul class="ul_arrow">\r\n<li>Publish any menu module to the main body module positions on your site. </li>\r\n<li>There should be no menu style suffixes applied under advanced parameters.</li>\r\n<li>You may apply any module class suffix. Shown above is the -line suffix.</li>\r\n<li> The menu style should be set to list.</li>\r\n<li>You may assign any of this template''s module class suffixes.</li>\r\n</ul>\r\n\r\n\r\n\r\n<br />\r\n<p><h3>3. Bottom Menu Setup</h3></p>\r\n<p><img src="images/bottom_menu.png" class="padded" /></p>\r\n<ul class="ul_arrow">\r\n<li>Publish any menu to the ''bottom_menu'' position.</li>\r\n<li> There are no menu style suffixes applied under advanced parameters.</li>\r\n<li> The menu style should be set to list</li>\r\n</ul>\r\n<p> </p>', '', -2, 1, 0, 1, '2008-02-14 15:10:56', 62, '', '2011-12-13 19:59:05', 62, 0, '0000-00-00 00:00:00', '2008-02-14 15:10:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 61, 0, 0, '', '', 0, 8179, 'robots=\nauthor='),
(37, 'Tool Tips Setup', 'tool-tips-setup', 'Tool Tips Setup', '<br /><div class="blue_box"><strong>Note - The tool tips script is by default disabled. If you wish to use it you must enable this script in the template''s configuration area. This also includes site shaper installations.</strong></div>\r\n\r\n\r\n<br/>\r\n<strong>\r\nDemo 1:\r\n</strong>\r\n<br />\r\n<div class="code">\r\n&lt;a onmouseover="Tip(''This is a sample tooltip.'', WIDTH, 140, OPACITY, 80, ABOVE, true, OFFSETX, 1, FADEIN, 200, FADEOUT, 300,SHADOW, true, SHADOWCOLOR, ''#000000'',SHADOWWIDTH, 2, BGCOLOR, ''#000000'',BORDERCOLOR, ''#000000'',FONTCOLOR, ''#FFFFFF'', PADDING, 9)" href="http://www.shape5.com/demo/etensity/"><br/><br/>\r\n&lt;img class="boxed2" alt="" src="http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg"/><br/><br/>\r\n&lt;/a>\r\n</div>\r\n\r\n<br/>\r\n\r\n\r\n\r\n\r\n<a onmouseover="Tip(''This is a sample tooltip.'', WIDTH, 140, OPACITY, 80, ABOVE, true, OFFSETX, 1, FADEIN, 200, FADEOUT, 300,SHADOW, true, SHADOWCOLOR, ''#000000'',SHADOWWIDTH, 2, BGCOLOR, ''#000000'',BORDERCOLOR, ''#000000'',FONTCOLOR, ''#FFFFFF'', PADDING, 9)" href="http://www.shape5.com/demo/etensity/">\r\n\r\n<img class="boxed2" alt="" src="http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg"/>\r\n\r\n</a>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<br/>\r\n\r\n\r\n<br/><br />\r\n<strong>\r\nDemo 2:\r\n</strong>\r\n<br />\r\n\r\n\r\n\r\n<div class="code">\r\n&lt;a href="index.htm" onmouseover="Tip(''Image Demo<br /> <br />&lt;img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>'')">Demo 2 Image Tool Tip &lt;/a> \r\n</div>\r\n<br/>\r\n<a href="index.htm" onmouseover="Tip(''Image Demo<br /> <br /><img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>'')"><strong>Demo 2 Image Tool Tip</strong></a><br/><br/> \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<br/>\r\n<strong>\r\nDemo 3:\r\n</strong>\r\n<br />\r\n\r\n\r\n<div class="code">\r\n&lt;a href="#" onmouseover="Tip(''Image Demo&lt;br /> &lt;br />&lt;img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>'',SHADOW, true,  BGCOLOR, ''#000000'', FADEIN, 400, FADEOUT, 400, SHADOWCOLOR, ''#000000'', BORDERCOLOR, ''#000000'',OPACITY, 90,FONTCOLOR, ''#FFFFFF'')">&lt;strong>Demo 3 Image Tool Tip&lt;/strong>&lt;/a>\r\n</div>\r\n\r\n\r\n<a href="#" onmouseover="Tip(''Image Demo<br /> <br /><img src=http://www.shape5.com/demo/smart_blogger/images/tooltip.jpg width=220 height=147>'',SHADOW, true,  BGCOLOR, ''#000000'', FADEIN, 400, FADEOUT, 400, SHADOWCOLOR, ''#000000'', BORDERCOLOR, ''#000000'', OPACITY, 90,FONTCOLOR, ''#FFFFFF'')"><strong>Demo 3 Image Tool Tip</strong></a>\r\n<br/><br/>', '', -2, 1, 0, 1, '2008-08-13 18:09:50', 62, '', '2011-06-13 14:57:45', 62, 0, '0000-00-00 00:00:00', '2008-08-13 18:09:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 4828, 'robots=\nauthor='),
(233, 'athinorama.gr', 'athinoramagr', '', '<p><span style="font-family: georgia,palatino;">Οι "Δύο Κόσμοι" του Μάριου Ηλιόπουλου</span></p>\r\n<p><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://www.athinorama.gr/lmnts/articles/2504499/Iliopoulos.jpg" alt="" width="277" height="185" /></span></p>\r\n<p><span style="font-family: georgia,palatino;">Σεμνός και δημιουργικός ο Μάριος Ηλιόπουλος είναι ένας ευφυής bartender που αγαπάει να συνδυάζει υλικά, που αρχικά φαίνονται αταίριαστα και, πιστέψτε μας, το καταφέρνει πολύ καλα! Μεγάλωσε μέσα στα ποτά, αφού ο πατέρας του λειτουργεί κάβα και συνειδητά επέλεξε να ασχοληθεί με αυτά πίσω από τη μπάρα. Αγαπά πολύ αυτό που κάνει και όταν τον δείτε εν δράσει θα το περάσει και σ'' εσάς.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;">Θα τον βρείτε πίσω από τη μπάρα του Six Dogs και σύντομα στον ελληνικό τελικό του Bacardi Legacy. Ο Μάριος είναι ένας από τους τέσσερις φετινούς φιναλίστ και προκρίθηκε με το cocktail του Ambos Mundos, που σημαίνει Δύο Κόσμοι. Όπως μας είπε, αυτό που τον δελέασε στον συγκεκριμένο διαγωνισμό είναι η πρόκληση να δημιουργήσεις μια συνταγή, που θα προστεθεί στα ιστορικά cocktails του Bacardi -και σε αυτά εννοούμε τις κλασικές αξίες, Daquiri, Mojito και Cuba Libre. Δεν είναι επομένως και λίγο πράγμα ούτε το να συμμετέχεις ούτε το να προκρίνεσαι...&nbsp; H έμπνευση του Μάριου για το Δύο Κόσμοι έχει πολλές πτυχές. Σε πρώτη ανάγνωση, αναφέρεται στην ίδια την ιστορία του Bacardi, που ξεκίνησε από την Κούβα, εξορίστηκε και τελικά κατέκτησε τον υπόλοιπο κόσμο. <span style="font-family: georgia,palatino;"><img style="margin: 10px; float: right;" src="http://www.athinorama.gr/lmnts/articles/2504499/cocktail.jpg" alt="" width="307" height="190" /></span>Σε επόμενη όμως εξήγηση, εκφράζει τους διαφορετικούς κόσμους που, τελικά ενώνονται, όπως στο cocktail του ενώνονται αντιφατικά υλικά, το γλυκό και το πικρό και δημιουργούν ένα αρμονικό αποτέλεσμα.</span><br /><span style="font-family: georgia,palatino;">&nbsp;</span></p>\r\n<p><span style="font-family: georgia,palatino;">Το Ambos Mundos του Μάριου έχει ήδη κερδίσει τον κόσμο και έχει συμμετάσχει σε πρωτότυπες και ιδιαίτερες ενέργειες, όπως οι παρουσιάσεις βιβλίου και soundtrack ταινίας. Επίσης, υπηρετώντας το τίτλο του, ταξίδεψε στο εξωτερικό και στην επαρχία και κατάφερε να&nbsp; ενώσει διαφορετικές κουλτούρες.&nbsp; Όσον αφορά τώρα τα υλικά του, είναι απλά και ιδιαίτερα μαζί. Το Bacardi Superior ενώνεται με το Bacardi Gold και ενισχύονται από την πικράδα του St. Germain, τη δροσιά της λεβάντας και τη γλύκα από το σπιτικό σιρόπι ρόδι. Δοκιμάστε το κι εσείς και φέρτε κοντά τους δικούς σας αντίθετους κόσμους…</span></p>', '', 1, 1, 0, 1, '2015-01-30 00:00:00', 62, '', '2015-02-04 22:13:09', 62, 0, '0000-00-00 00:00:00', '2011-08-13 14:54:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 20, 0, 2, '', '', 0, 37, 'robots=\nauthor='),
(195, 'Multibox Setup Tutorial', 'multibox-setup-tutorial', '', '<br/><h3>Features:</h3><br/>\r\n\r\n<ul class="ul_bullet_small">\r\n<li>Supports a range of multimedia formats: images, flash, video, mp3s, html!</li>\r\n<li>Auto detects formats or you can specify the format</li>\r\n<li>Html descriptions</li>\r\n<li>Enable/Disable page overlay when multibox pops up (via template parameters)</li>\r\n<li>Enable/Disable controls (via template parameters)</li>\r\n\r\n\r\n\r\n\r\n<br/>\r\n\r\n\r\n\r\n<p><strong><font size="2">Images Example</font></strong></p>          \r\n\r\n<a href="http://www.shape5.com/demo/images/multibox1_lrg.jpg" id="mb1" class="s5mb" title="Image #1:">\r\n<img src="http://www.shape5.com/demo/images/multibox1.jpg" style="margin-right:20px" class="boxed" alt="" />\r\n</a>\r\n<div class="s5_multibox mb1">Image #1. It can support <strong>html</strong>.</div>\r\n&nbsp;&nbsp;\r\n<a href="http://www.shape5.com/demo/images/multibox2_lrg.jpg" id="mb2" class="s5mb" title="Image #2:">\r\n<img src="http://www.shape5.com/demo/images/multibox2.jpg" style="margin-right:20px" class="boxed" alt="" />\r\n</a>\r\n<div class="s5_multibox mb2">Image #2. It can support <strong>html</strong>.</div>\r\n&nbsp;&nbsp;\r\n<a href="http://www.shape5.com/demo/images/multibox3_lrg.jpg" id="mb3" class="s5mb" title="Image #3:">\r\n<img src="http://www.shape5.com/demo/images/multibox3.jpg" class="boxed" alt="" />\r\n</a>\r\n<div class="s5_multibox mb3">Image #3. It can support <strong>html</strong>.</div>\r\n\r\n\r\n\r\n<br /><br /><br /><br /><br /><br /><br />\r\n\r\n <p>To enable use the following around any group of images:</p>\r\n<div style="clear:both"></div><div class="code">\r\n\r\n&lt;a href="http://www.shape5.com/demo/images/multibox1_lrg.jpg" id="mb2" class="s5mb" title="Grouped Image Example #1:"&gt;\r\n&lt;img src="http://www.shape5.com/demo/images/multibox1.jpg" class="boxed" alt="" /&gt;\r\n&lt;/a&gt;\r\n&lt;div class="s5_multibox mb2"&gt;Multiple Image #1. It can support &lt;strong&gt;html&lt;/strong&gt;.&lt;/div&gt;\r\n<br/>\r\n<br/>\r\n&lt;a href="http://www.shape5.com/demo/images/multibox2_lrg.jpg" id="mb3" class="s5mb" title="Grouped Image Example #2:"&gt;\r\n&lt;img src="http://www.shape5.com/demo/images/multibox2.jpg" class="boxed" alt="" /&gt;\r\n&lt;/a&gt;\r\n&lt;div class="s5_multibox mb3"&gt;Multiple Image #2. It can support &lt;strong&gt;html&lt;/strong&gt;.&lt;/div&gt;\r\n<br/>\r\n<br/>\r\n&lt;a href="http://www.shape5.com/demo/images/multibox3_lrg.jpg" id="mb4" class="s5mb" title="Grouped Image Example #3:"&gt;\r\n&lt;img src="http://www.shape5.com/demo/images/multibox3.jpg" class="boxed" alt="" /&gt;\r\n&lt;/a&gt;\r\n&lt;div class="s5_multibox mb4"&gt;Multiple Image #3. It can support &lt;strong&gt;html&lt;/strong&gt;.&lt;/div&gt;\r\n\r\n\r\n</div>\r\n\r\n\r\n\r\n<br/>\r\n\r\n\r\n<p><strong><font size="2">Video Example:</font></strong></p>   \r\n\r\n<a href="http://www.youtube.com/v/VGiGHQeOqII" id="youtube" class="s5mb" title="Youtube.com Video">\r\nYoutube.com Video - CLICK ME\r\n</a>\r\n<div class="s5_multibox youtube">UP: Carl and Ellie </div>\r\n\r\n<br/>\r\n<br/>\r\nYou can use the following video formats: flv, mov, wmv, real and swf.  Just insert the URL to the videos in the href of the hyperlink, here is an example of how we did this for a Youtube video:<br/>\r\n\r\n<div class="code">\r\n&lt;a href="http://www.youtube.com/v/VGiGHQeOqII" id="youtube" class="s5mb" title="Youtube.com Video"&gt;\r\nYoutube.com Video  - CLICK ME\r\n&lt;/a&gt;\r\n&lt;div class="s5_multibox youtube"&gt;UP: Carl and Ellie &lt;/div&gt;\r\n</div>\r\n\r\n\r\n<br/>\r\nYouTube Tutorial:  Simply right click on a youtube video and copy the embed code, then paste into a text editor and look for the embed src and use that URL in your hyperlink.\r\n\r\n<div class="code">\r\n&lt;embed src= http://www.youtube.com/v/VGiGHQeOqII\r\n</div>\r\n\r\n\r\n\r\n<br/>\r\n\r\n\r\n<p><strong><font size="2">MP3 Example:</font></strong></p>   \r\n\r\n<a href="http://www.shape5.com/demo/images/music.mp3"  id="mb8" class="s5mb" title="Music">MP3 example - CLICK ME</a>\r\n<div class="s5_multibox mb8">mp3 example</div><br />\r\n\r\n<div class="code">\r\n&lt;a href="http://www.shape5.com/demo/images/music.mp3"  id="mb8" class="s5mb" title="Music">MP3 example&lt;/a&gt;\r\n&lt;div class="s5_multibox mb8">mp3 example - CLICK ME&lt;/div&gt;\r\n</div>\r\n\r\n\r\n<br/>\r\n\r\n\r\n<p><strong><font size="2">iFrame:</font></strong></p>   \r\n\r\n<a href="http://www.google.com" rel="width:790,height:600" id="mb28" class="s5mb" title="Google.com">iFrame/HTML Example - CLICK ME</a>\r\n<div class="s5_multibox mb28">Google.com</div><br />\r\n\r\n<div class="code">\r\n&lt;a href="http://www.google.com" rel="width:790,height:600" id="mb28" class="s5mb" title="Google.com"&gt;iFrame/HTML Example - CLICK ME&lt;/a&gt;\r\n&lt;div class="s5_multibox mb28"&gt;Google.com&lt;/div&gt;\r\n\r\n</div>\r\n\r\n\r\n<br/><br/>\r\n\r\n\r\n\r\n\r\n\r\n \r\n\r\n\r\n<div class="blue_box">\r\nI like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top"><strong>JOIN TODAY</strong></a>. </div>\r\n <br />', '', -2, 1, 0, 1, '2010-08-13 18:18:32', 62, '', '2011-12-13 19:38:59', 62, 0, '0000-00-00 00:00:00', '2010-08-13 18:18:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 18, 0, 0, '', '', 0, 88, 'robots=\nauthor='),
(197, 'Template Specific Options', 'template-specific-options', '', 'This template is built on the very powerful S5 Vertex Framework, which comes packed with amazing features! <a href="http://www.shape5.com/joomla/framework/vertex_framework.html" target="blank">Learn More About Vertex...</a> \r\n<br /><br />\r\nEvery template built on Vertex also comes with it''s own unique template specific options applicable to that particular template such as highlight colors, social icons, and much more. These features are in addition to the standard functions of Vertex, and are still controlled through the very user friendly interface of Vertex. This page will document the features specific to this template.\r\n\r\n<br /><br /><br />\r\n<h2>Template Specific Configuration Interface of Vertex</h2><br />\r\nBelow is a screenshot that shows all the template specific features available in the user friendly Vertex admin:<br /><br />\r\n<img class="boxed" src="images/template_specific.png"></img>\r\n\r\n\r\n\r\n<br /><br /><br />\r\n<h2>Custom Highlight Colors</h2><br />\r\nNeed your own custom color scheme? This can easily be set in the template configuration area. Below are some examples of custom color schemes created through the custom highlight color option.  \r\n<br /><br />\r\n<img class="boxed" src="images/example1.jpg"></img><br /><br /><br />\r\n<img class="boxed" src="images/example2.jpg"></img><br />\r\n\r\n\r\n<br /><br /><br />\r\n<h2>Social Icons</h2><br />\r\nEasily link to a social media site with the built in social icons found in the header of this template. Simply enter the url of your social site in the configuration and the icon will automatically appear. To disable an icon simply leave the url blank for that particular icon. \r\n<br /><br />\r\n<img class="boxed" src="images/dates.jpg"></img><br />\r\n\r\n\r\n\r\n\r\n\r\n<br /><br /><br />\r\n<h2>Phone Number</h2><br />\r\nEasily add your company''s phone number via the admin area.  The following is what we used for the demo:<br/>\r\n<div class="code">\r\nCall Today!&lt;br/&gt;&lt;h2&gt;123-123-1232&lt;/h2&gt;</div>\r\n<br />\r\n<img class="boxed" src="images/logo_size.jpg"></img><br />', '', -2, 1, 0, 1, '2010-08-13 18:57:50', 62, '', '2012-01-11 23:25:19', 62, 0, '0000-00-00 00:00:00', '2010-08-13 18:57:50', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 51, 0, 0, '', '', 0, 130, 'robots=\nauthor='),
(110, 'Shape 5 CSS and JS Compressor Plugin', 'shape-5-css-and-js-compressor-plugin', '', '<p><strong>The Shape 5 CSS and JS Compressor plugin is the most revolutionary and flexible compressor plugin available for Joomla! This plugin can be used on any Joomla template. Read the full description below to see why. </strong></p>\r\n<p>The CSS and JS Compressor increases speed and performance by compressing your site''s CSS and Javascript files to much smaller sizes than the original and places them in a cache folder on your server. No data is lost during this process, just simply made smaller.   So what makes our''s better than the rest? One word, FLEXIBILITY! Read below for  a full description:</p>\r\n<ul class="ul_star">\r\n<br />\r\n<li>All other plugins force all CSS and JS to be combined into one file of JS and file of CSS. Our compressor plugin gives you the option to: 	 \r\n<ul class="ul_star">\r\n<li>Only compress module files</li>\r\n<li>Only compress component files</li>\r\n<li>Only compress non-module and non-component files</li>\r\n<li>Or combine any of the above</li>\r\n</ul>\r\nThe point is you can control what gets compressed independent of each other. </li>\r\n<li>All other compressor plugins combine javascript files into one large file, called at the top of the page. The problem is javascript almost always needs to be called in a certain order or it will cause page errors. Calling a file at the top of the page that was originally intended to be called in a certain order will cause unwanted results. So we''ve fixed this and given you three options: 	 \r\n<ul class="ul_star">\r\n<li>Call the compressed javascript at the top of the page in a combined file</li>\r\n<li>Call the compressed javascript at the bottom of the page in a combined file</li>\r\n<li>Call the compressed javascript in their original locations as individual files</li>\r\n</ul>\r\nThe first two ways will generate three files (module js, component js, and other js files) and will create less calls to your server. However, we HIGHLY recommend the use of the third option. This option will generate the same amount of calls to your server as without the plugin but will still compress your javascript to a much smaller size all while still being called in the original location to avoid  script errors, in other words less download time for your viewers and no script  errors! </li>\r\n<li>Need to exclude certain files? Not a problem! This plugin will allow you to specify certain file names to be excluded from compression despite any previous settings.</li>\r\n<li>Specify in the backend how long you want your cache to stay on your server. After the time has completed a new cached version of your files will be created.</li>\r\n<li>Eliminate unwanted white space in your files be enabling CSS Optimization. This feature will remove any un-used white space to reduce the size of each CSS file.</li>\r\n</ul>\r\n<p> </p><br />\r\n<div class="red_box"><span class="alert">Note: Because this plugin uses cached versions of your javascript and css this plugin should not be used while developing your site and should only be enabled after you have completed your site. <br /><br /> Gzip must be installed on your server and enabled in PHP in order to function.</span></div><br />\r\n<p><strong><span style="font-size: large;">See This Plugin in Action!</span></strong></p>\r\n<p>Without the Shape 5 CSS and JS Compressor Enabled:</p>\r\n<p><img src="http://www.shape5.com/demo/images/general/gzip_without.jpg" border="0" width="600" height="224" /></p>\r\n<p>With the Shape 5 CSS and JS Compressor Enabled a <strong>72% DECREASE IN DOWNLOAD  SIZE!</strong></p>\r\n<p><img src="http://www.shape5.com/demo/images/general/gzip_with.jpg" border="0" width="600" height="224" /></p>\r\n<p><br /><br /></p>\r\n<div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top">JOIN TODAY</a>.</strong></div>', '', -2, 1, 0, 1, '2009-08-13 18:44:06', 62, '', '2011-12-13 20:06:45', 62, 0, '0000-00-00 00:00:00', '2009-08-13 18:44:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=1\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 14, 0, 0, '', '', 0, 60, 'robots=\nauthor='),
(97, 'Shape 5 Tab Show', 'shape-5-tab-show', '', 'The S5 Tab Show module can be demo''d at the right of this page. This version of the module is customized specifically for this template and cannot be used with any other templates. We do have another version that can be used on any Joomla template.\r\n<br /><br />\r\nThe module holds up to 10 actual module positions so you can publish any of your favorite modules to one of the slides and keep your site clean and consolidated while giving it some eye candy. So simply publish the s5 tab show module to your desired module position and pages. Then start publishing modules to the positions in the tab show (s5_tab1, s5_tab2, etc); these modules will become the slides.', '', -2, 1, 0, 1, '2009-06-15 23:25:04', 62, '', '2011-12-13 18:54:42', 62, 0, '0000-00-00 00:00:00', '2009-06-15 23:25:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 16, 0, 0, '', '', 0, 63, 'robots=\nauthor='),
(143, 'S5 Accordion Menu', 's5-accordion-menu', '', '<br />The S5 Accordion menu is demo''d on the right of this page. This version was built specifically for this template and cannot be transferred to another template. We do have another version that can be used on any Joomla template.<br /><br />   \r\n\r\nThis module is based off the Joomla main menu system module so you can still specify which Joomla menu you want to use with the S5 Accordion menu. The menu is powered off of the Mootools Javascript library but detects to see if the library is already initialized, if so then it doesn''t load its own library to stop any conflicts from arising.\r\n\r\n<br /><br />   <div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top">JOIN TODAY</a>.</strong></div>', '', -2, 1, 0, 1, '2009-10-12 22:29:01', 62, '', '2011-02-14 20:19:24', 62, 0, '0000-00-00 00:00:00', '2009-10-12 22:29:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 173, 'robots=\nauthor='),
(146, 'Login and Register Setup', 'login-and-register-setup', '', '<p>The S5 Box can be demo''d by clicking on either the Login or Register buttons found towards the top of this page.  <br /> <br /> The module allows for up to 10 different S5 Box''s on one page all via 10 module  positions. You simply add a class to any HTML element on your site and enable  the corresponding box and you are good to go!<br /><br /></p>\r\n<p><h3>To enable the login and register modules:</h3></p>\r\n<p>1. Install the S5 Box module and publish it to all pages on your site. Try  to publish it to a position where a module already exists on all pages, but  don''t worry it won''t change the layout of your site, the script is automatically  hidden on your site.</p>\r\n<p>2. Install and publish the S5 Register module to the ''register'' module  position</p>\r\n<p>3. Publish the default Joomla login module to the ''login'' module position.</p>\r\n<p>4. In your template parameters area of Joomla you can change the text for login, register and logout.</p>\r\n<p>5. That''s it, you''re all done!</p>\r\n<br />\r\n<p>The S5 Box runs  off of the jQuery Javascript library in a no conflictions mode so you should not receive any problems with other third party extensions you may be running on your site. Alternatively you can also the core Joomla mootools script. <br /> <br /> <h3>Features:</h3></p>\r\n<ul class="ul_star">\r\n<li>Powered by no conflict mode jQuery Javascript or mootools</li>\r\n<li>Choose, elastic, fade or none for the popup effect</li>\r\n<li>Up to 10 S5 Box''s throughout your site or on any one page!</li>\r\n<li>Set the percentage of width of each box according to overall screen size</li>\r\n</ul>\r\n<p> </p>\r\n<p><br /></p>\r\n<div class="gray_box">\r\nTutorial on how to get the s5 box working and use all 10 module positions it includes\r\n</div><br /><br />\r\n<p> <strong>1. Adding the S5 Box positions:</strong></p>\r\n<ul class="ul_bullet_small">\r\n<li>Open up the templateDetails.xml file included with the template you are using.</li>\r\n<li>Locate the positions area.</li>\r\n<li>Start adding new positions s5_box1, s5_box2, s5_box3, etc all the way up to s5_box10.</li>\r\n</ul>\r\n<p><strong>2. Adding the S5 Box classes:</strong></p>\r\n<ul class="ul_bullet_small">\r\n<li>The S5 Box class name of the corresponding position must be added to the link that will open the box. For example the following code will display a link that says Click Here and will open the S5 Box and display whatever module is published to the s5_box3 module position: <br /><br /> <img src="http://www.shape5.com/demo/get_reserved/images/box_link.png" border="0" /> <br /><br /> </li>\r\n<li>These classes can be added to any element, ie: divs, spans, etc., but the common use will be to add this into content with a link similar to the one shown in the picture above. To enter this link you must do so from the HTML edit screen on your content editor:  <br /><br /> Once you have clicked the HTML button the HTML code window will appear much like the first image. </li>\r\n<li>You can continue adding these classes throughout your site just be sure to have published a module to the corresponding position or the box will not work correctly. So if you add the class s5box_two you will also have to publish a module to the s5_box2 position.</li>\r\n<li> Module positions and their corresponding classes:<br /><br /> s5_box1 = s5box_one<br /> s5_box2 = s5box_two<br /> s5_box3 = s5box_three<br /> s5_box4 = s5box_four<br /> s5_box5 = s5box_five<br /> s5_box6 = s5box_six<br /> s5_box7 = s5box_seven<br /> s5_box8 = s5box_eight<br /> s5_box9 = s5box_nine<br /> s5_box10 = s5box_ten</li>\r\n</ul>\r\n<p><strong>3. Lastly, publish your modules to the S5 Box positions:</strong></p>\r\n<ul class="ul_bullet_small">\r\n<li>Now that you have added the s5 box positions just go to your site modules area and publish modules to those positions</li>\r\n<li>Make sure that you have added a class to an HTML element as described above or the s5 box will have no activation button </li>\r\n<li>Also make sure to publish the actual s5 box to a non s5 box position, perhaps publish it to the "debug" position or a similar one in your template.</li>\r\n</ul>\r\n<p><br /><br /> <h3>Main S5 Box Module Settings:</h3></p>\r\n<ul class="ul_bullet_small">\r\n<li>In the backend of the S5 Box module you can adjust the width of each box independent of each other. </li>\r\n<li>Make sure that the S5 Box module is published to all pages, it can be published to any template position. Also make sure that the module opening in the box is published to the page the link is on. </li>\r\n</ul>', '', -2, 1, 0, 1, '2009-10-12 22:44:23', 62, '', '2011-10-11 18:07:20', 62, 0, '0000-00-00 00:00:00', '2009-10-12 22:44:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 32, 0, 0, '', '', 0, 95, 'robots=\nauthor='),
(204, 'bitterbooze.com', 'bitterboozecom', '', '<div class="article-single">\r\n<p><span style="font-size: 12pt; font-family: georgia,palatino;">Bacardi Legacy 2015 – ημιτελικοί</span><br /><br /><span style="font-family: georgia,palatino;">Σχεδόν ένα μήνα μετά την διεξαγωγή των τελικών του ελληνικού BACARDI Legacy 2015, οι τέσσερεις διακριθέντες έχουν μπει ήδη για τα καλά σε ρυθμό προώθησης του ποτού τους. Ο Χάρης Δάρρας από το Mona’s στο Χαλάνδρι, ο Μάριος Ηλιόπουλος από το six D.O.G.S. στο Μοναστηράκι, ο Ξαβιέ Μισαηλίδης από το Holy Spirit της Γλυφάδας και ο Αλέξανδρος Γκικόπουλος από το Hide &amp; Seek στο Χαλάνδρι, σύμφωνα με τις απαιτήσεις του παγκόσμιου διαγωνισμού, έχουν ξεκινήσει και εφαρμόζουν το πλάνο προώθησης του κοκτέιλ τους, το οποίο και θα παρουσιάσουν στον μεγάλο τελικό του Φεβρουαρίου και φυσικά θα αξιολογηθούν για αυτό.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;">Αλλά ας πάρουμε τα πράγματα από την αρχή. Στον ημιτελικό της 20<sup>ης</sup> Οκτωβρίου που διοργανώθηκε με μεγάλη επιτυχία στο θέατρο Άλμα, ξεχωρίσαμε τέσσερα ποτά. Αξίζει να σημειωθεί, αν μου επιτρέπετε, ότι για πρώτη φορά έπρεπε να επιλέξουμε, ανάμεσα σε τόσο σπουδαίες παρουσιάσεις που ξεχώρισαν μεν, αλλά δεν κατάφεραν τελικά να διακριθούν. Χρησιμοποιώ πρώτο πληθυντικό, διότι είχα την τιμή να είμαι ένα από τα μέλη της κριτικής επιτροπής παρέα με την νικήτρια του BACARDI Legacy 2013, Ελισαβέτα Ευδοκίμοβα και τον Φίλιπ Μπίσοφ επικεφαλής μπαρτέντερ του Amano bar στο Βερολίνο.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Όπως έγραψα και παραπάνω, και χωρίς να είναι καθόλου κλισέ, ο ανταγωνισμός ήταν πολύ δύσκολος. Από τις παρουσιάσεις που δεν πέρασαν στον τελικό προσωπικά ξεχώρισα ιδιαίτερα αυτή του Χρήστου Κωνσταντινίδη, περσινού φιναλίστ με ένα γευστικότατο κοκτέιλ με Bacardi Superior, σιρόπι βανίλιας, λευκό μπαλσάμικο και ρόκα. Επίσης, αυτή του Ζάχου Κυρίτση, με το κοκτέιλ του Elegande που χρησιμοποίησε ένα μεγάλο κομμάτι πάγου με ιβίσκο. Τέλος, ειδική μνεία χρειάζεται και η παρουσία της Κωνσταντίνας Φερφίρη, που αν και πρωτάρα σε διαγωνισμούς και πολύ νεαρή, ξεχώρισε για την άνεση, τις τεχνικές ικανότητες και την δημιουργικότητά της.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Τα τέσσερα ποτά που τελικά ξεχώρισαν και θα διαγωνιστούν στην επόμενη, τελική φάση του Bacardi Legacy 2015, είναι το Ambos Mundos του Μάριου, το Clandestino του Χάρη, το Chameleon του Ξαβιέ και το Supernature του Αλέξανδρου.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Ο Μάριος «έπαιξε» στην παρουσίαση του με τους αντιθετικούς κόσμους που συχνά συναντιούνται και γίνονται ένας και συνέδεσε την προσωπική του ιστορία με την ιστορία του Bacardi. Όσο για το ποτό του, χρησιμοποίησε Bacardi Superior και Bacardi Gold μαζί st.Germain Elderflower, Punt e Mes, σιρόπι ροδιού και μπίτερς από λεβάντα.</span><br /><br /></p>\r\n</div>', '', 1, 1, 0, 1, '2014-11-14 19:08:51', 62, '', '2015-02-04 22:03:19', 62, 0, '0000-00-00 00:00:00', '2010-10-08 19:08:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 10, '', '', 0, 26, 'robots=\nauthor='),
(214, 'oinoxoos.net', 'oinoxoosnet', '', '<p><img style="margin: 10px; float: left;" src="http://m.oinoxoos.net/images/WINE/Cocktail/m3.jpg" alt="" width="285" height="190" /><span style="font-family: georgia,palatino; font-size: 12pt;"><br />Ambos Mundos</span><br /><span style="font-family: georgia,palatino;"><br />Ένα συναρπαστικό κοκτέιλ, γευστικό παιχνίδι ισορροπιών που οδήγησε τον δημιουργό του, Μάριο Ηλιόπουλο του six d.o.g.s., στον τελικό του ελληνικού Bacardi Legacy 2015.</span></p>', '', 1, 1, 0, 1, '2014-12-19 23:40:43', 62, '', '2015-02-04 21:16:16', 62, 0, '0000-00-00 00:00:00', '2010-12-13 23:40:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 7, '', '', 0, 13, 'robots=\nauthor='),
(246, 'Muse Takes To The Stage in London', 'muse-takes-to-the-stage-in-london', '', '<img alt="" class="boxed" src="images/article1.jpg"></img>\r\n\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n<br /><br />\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.\r\n', '\r\n<br /><br />\r\nNunc rutrum scelerisque ipsum ut aliquet. Duis et augue nunc, gravida fermentum mi. Quisque sed dui enim. Mauris ultricies, tellus ac semper consequat, enim tellus convallis lacus, sit amet tempus mauris nibh non turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', -2, 21, 0, 57, '2011-12-10 00:46:49', 62, '', '2011-12-10 02:05:06', 62, 0, '0000-00-00 00:00:00', '2011-12-10 00:46:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(247, 'David Guetta''s Tour Starts Soon', 'david-guettas-new-tour-starts-soon', '', '<img alt="" class="boxed" src="images/article2.jpg"></img>\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.\r\n<br /><br />\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n\r\n', '\r\n<br /><br />\r\nNunc rutrum scelerisque ipsum ut aliquet. Duis et augue nunc, gravida fermentum mi. Quisque sed dui enim. Mauris ultricies, tellus ac semper consequat, enim tellus convallis lacus, sit amet tempus mauris nibh non turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', -2, 21, 0, 57, '2011-12-07 00:00:00', 62, '', '2011-12-10 02:05:13', 62, 0, '0000-00-00 00:00:00', '2011-12-10 00:56:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(248, 'Maroon 5 Nominated For a Grammy', 'maroon-5-nominated-for-a-grammy', '', '<img alt="" class="boxed" src="images/article3.jpg"></img>\r\n\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n<br /><br />\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.\r\n', '\r\n<br /><br />\r\nNunc rutrum scelerisque ipsum ut aliquet. Duis et augue nunc, gravida fermentum mi. Quisque sed dui enim. Mauris ultricies, tellus ac semper consequat, enim tellus convallis lacus, sit amet tempus mauris nibh non turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', -2, 21, 0, 57, '2011-12-02 00:00:00', 62, '', '2011-12-10 02:05:22', 62, 0, '0000-00-00 00:00:00', '2011-12-10 01:00:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(227, 'dailysecret.com', 'menu-scrollto', '', '<p><span style="font-family: georgia,palatino;">Cocktail "Ambos Mundos" απο τον Μαριο Ηλιοπουλο</span><br /><em><span style="font-family: georgia,palatino;">Ουδέν πικρό αμιγές γλυκού</span></em><br /><br /><span style="font-family: georgia,palatino;"><img src="http://static.dailysecret.com/uploads/banner/3990/banner/crop_1_cocktail29.jpg?ts=1421066309" alt="" /></span><br /><br /><span style="font-family: georgia,palatino;">Πάει κάπως έτσι: ένας κυνικός τύπος συναντά μια τελείως αταίριαστη και γλυκιά κοπέλα αλλά σαν από θαύμα ανακαλύπτουν ότι είναι πλασμένοι ο ένας για τον άλλο. Κι όμως δεν είναι συνταγή για love story - είναι η συνταγή του σπέσιαλ cocktail του αγαπημένου μας Μάριου Ηλιόπουλου. Το Ambos Mundos (δύο κόσμοι στα ισπανικά) συνδυάζει το πικρό με το γλυκό και μάλλον το κάνει πολύ πετυχημένα, αφού έφτασε στους 4 φιναλιστ του παγκόσμιου διαγωνισμού Bacardi Legacy! Αν έχετε μπροστά σας ένα σέικερ, ανακατέψτε: 40ml Bacardi Superior, 10ml Bacardi Gold, 7,5ml σιρόπι ροδιού, 25ml Punt e Mes, 10ml Saint Germaine και 2 στάλες bitter λεβάντας. Αλλιώς ζητήστε το από τον Μάριο - θα τον βρείτε στο six d.o.g.s.</span> </p>', '', 1, 1, 0, 1, '2015-01-09 21:35:45', 62, '', '2015-02-04 20:38:23', 62, 0, '0000-00-00 00:00:00', '2011-06-10 21:35:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 6, '', '', 0, 14, 'robots=\nauthor='),
(228, 'lifo.gr', 'lifogr', '', 'Τι είναι το Ambos Mundos;<br />O bartender Μάριος Ηλιόπουλος μας μιλάει για το κοκτέιλ που δημιούργησε.<br /><br /></p>\r\n<p>Η αρχική ιδέα ήταν να δημιουργήσω ένα κοκτέιλ στο οποίο το καθετί που σχετίζεται με αυτό να έχει μια συγκεκριμένη λειτουργία και όλα μαζί να αποτελούν ένα αρμονικό σύνολο...<br /><br /><br /></p>', '', -2, 1, 0, 1, '2015-01-15 21:37:19', 62, '', '2015-02-04 20:52:00', 62, 0, '0000-00-00 00:00:00', '2011-06-10 21:37:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 1, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(230, 'protagon.gr', 'protagongr', '', '<p><span style="font-family: georgia,palatino;">Οι "Δύο Κόσμοι" του Μάριου Ηλιόπουλου</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://s.protagon.gr/resources/2015-01/bar_papad3-thumb-large.jpg" alt="" width="319" height="212" />Μπροστά μου, στο τιρκουάζ πλακάκι της μπάρας του SIX D.O.G.S, προσγειώθηκε ένα τετράγωνο κομμάτι ξύλου, σαν εναλλακτικό σερβίτσιο. Πάνω του, μια ολόκληρη φέτα ρόδι, δίπλα της δυο κλωναράκια λεβάντας και, σχεδόν στο κέντρο, ένα σκαλιστό ημί-κοντο ποτήρι. Πρώτη γουλιά: ούτε γλυκό ούτε πικρό. Δεύτερη γουλιά: και γλυκό και πικρό. Καταλαβαίνω το ρούμι, υποθέτω ότι έχει ρόδι και λεβάντα από τα συνοδευτικά, ρωτάω για τα υπόλοιπα υλικά. «Βερμούτ από το Μιλάνο και λικέρ λουλουδιών από τις γαλλικές Άλπεις για ισορροπία», μου απαντάει ο μπάρμαν Μάριος Ηλιόπουλος.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Το συγκεκριμένο κοκτέιλ, ηλικίας μόλις δύο μήνων, θα ταξιδέψει στον παγκόσμιο διαγωνισμό της Bacardi στο Σίδνεϊ που θα πραγματοποιηθεί το πρώτο τριήμερο του Μαρτίου. Η ιστορία του ενδιαφέρουσα, όσο και η γεύση του. Το όνομα του, «Ambos Mundos», σημαίνει δύο κόσμοι στα ισπανικά. Μάλιστα, η πρώτη λέξη προέρχεται από τη διάλεκτο των μιγάδων στην Κούβα. Ταιριάζει στην ιστορία της Bacardi, που αρχικά ήταν εγκατεστημένη στην Κούβα και αργότερα εξορίστηκε. Ταιριάζει τους δυο δικούς του διαφορετικούς κόσμους, το να βρίσκεσαι πίσω και μπροστά από την μπάρα. Συνδυάζει την προσωπική του ζωή, εκείνος να εργάζεται τη νύχτα, η σύντροφός του το πρωί. Δυο κόσμοι σε ένα ποτό, όπως η αγάπη - μια ψυχή που κατοικεί σε δυο σώματα.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Μπάρμαν-μανάβης, όχι ψυχολόγος</strong></span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Μεγαλωμένος στην κάβα του πατέρα του, στο Αίγιο, από μικρός επισκεπτόταν τοπικά οινοποιεία, μάθαινε για τα βαρέλια και τα λογιών-λογιών αποστάγματα, μύριζε τα μπουκάλια και γνώριζε τα ποτά από πρώτο χέρι. Με την πατρική κληρονομιά να του χαράζει το μέλλον, σπούδασε στη «Le Monde» μπάρμαν, συμμετείχε σε διάφορα σεμινάρια «mixology» στην Ελλάδα και στο εξωτερικό, και σιγά-σιγά βρήκε το χώρο του πίσω από την μπάρα. Ανδρώθηκε σε μια εποχή όπου τα ποτήρια χωρίζονταν στα χαμηλά και στους σωλήνες -«έπινες και κολλούσε η μύτη στο ποτήρι», θα μου πει γελώντας- και όπου έφτιαχνε μαργαρίτα με χυμό «Amita» λεμόνι.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Σήμερα, σχεδόν σαράντα ετών, αισθάνεται ευγνώμων για την εξέλιξη στα εργαλεία των κοκτέιλ, που του έκαναν τη δουλειά ευκολότερη και με περισσότερο γούστο, του αρέσει να ψάχνει στα μανάβικα και στα μπαχαράδικα για καινούργια υλικά, και εξακολουθεί να θεωρεί ότι η βελτίωση στην ποιότητα του πάγου άλλαξε ριζικά τον τρόπο που σερβίρονται τα ποτά. Αν και αποδέχεται ότι ένας μπάρμαν οφείλει να «κόβει» τον πελάτη του για να του προτείνει ένα κοκτέιλ που θα του ταιριάζει, απορρίπτει την έννοια του μπάρμαν-ψυχολόγου και πιστεύει ότι ένας καλός μπάρμαν πρέπει κυρίως να είναι καλός «μανάβης». «Ο μπάρμαν δίνει ευχαρίστηση σε όσους παραγγέλνουν. Κι ευχαρίστηση χωρίς να γνωρίζεις τον καλό ανανά ή να αγνοείς την εποχικότητα των φρούτων/μυρωδικών, δεν μπορείς να προσφέρεις», σημειώνει.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;"><strong>Ειλικρίνεια, αρχή των πάντων<br /><br /></strong></span></p>\r\n<p><span style="font-family: georgia,palatino;">Στα είκοσι χρόνια που βρίσκεται πίσω από την μπάρα έμαθε πως η ειλικρίνεια είναι η αρχή των πάντων. Και την ειλικρίνεια μάλλον την αντιλαμβάνεται όπως την καθαριότητα. Παγάκι που το πιάνεις με το χέρι απαγορεύεται, σαν να λέμε «βρώμικα» από προδοσία χέρια να αγγίζουν το κορμί που αγαπούν. Καθαριότητα στην ψυχή ίσον ταπεινότητα. Με την ίδια χαρά σερβίρει ένα τζιν τόνικ ή μια μπύρα, με τον ίδιο σεβασμό φτιάχνει ένα από τα κοκτέιλ του. Γιατί σωστός μπάρμαν δεν είναι αυτός που φέρνει βότανα από τη Σελήνη για να σε εντυπωσιάσει, ούτε εκείνος που ξενερώνει επειδή του ζητάς ένα «τζόνι κόλα». «Ακόμη και τα απλά ποτά, μια μπύρα ή ένα τζιν τόνικ, έχεις την υποχρέωση να τα σερβίρεις κατάλληλα. Η μπύρα να μην είναι ξεθυμασμένη, το ποτό να μη νερώσει στο ένα λεπτό, το λάιμ να μην έχει ξινίσει τέσσερις μέρες στο ψυγείο», λέει, με μια δόση συνεσταλμένης κι όχι επιτηδευμένης ντροπής.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Απόγευμα Πρωτοχρονιάς, το πρώτο ποτό του 2015, ήταν το «Ambos Mundos», γλυκό και πικρό, πικρό και γλυκό. Αρωματισμένη ζωή, να την πιεις στο ποτήρι, σεβασμός που σε κάνει να νιώθεις ξεχωριστός, ιδιαιτερότητα που σου αρέσει να αναζητάς αλλά τη φοβάσαι. Κι όλα αυτά, από τους δυο κόσμους του Μάριου Ηλιόπουλου. Στην υγεία μας, στην υγειά του. Γιατί άμα κάθε μέρα κάνεις αυτό που αγαπάς, υψώνεις πάντα το ποτήρι σου με περηφάνια κι όχι με προσβλητική αλαζονεία.</span></p>', '', 1, 1, 0, 1, '2015-01-17 18:35:45', 62, '', '2015-02-04 20:29:02', 62, 0, '0000-00-00 00:00:00', '2011-08-12 18:35:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 18, 0, 4, '', '', 0, 32, 'robots=\nauthor='),
(231, 'popaganda.gr', 'popagandagr', '', '<div class="post-main-content">\r\n<p><span style="font-family: georgia,palatino;"><em>Ο Μάριος Ηλιόπουλος και ο φανταστικός κόσμος της μπάρας. Μας σερβίρει ένα Bacardi και μας προσκαλεί να τον γνωρίσουμε.</em></span></p>\r\n<p><br /><span style="font-family: georgia,palatino;"><img class="alignnone size-large wp-image-103586" style="display: inline; margin: 10px; float: left;" src="http://popaganda.gr/wp-content/uploads/2015/01/MYRT5104-639x960.jpg" alt="MYRT5104" width="247" height="371" data-lazy-loaded="true" />Όταν ο <strong>Μάριος</strong> μικρός έμπαινε στην κάβα του πατέρα του δεν πίστευε ότι όλα αυτά τα μπουκάλια που τον περιτριγυρίζανε, είκοσι χρόνια μετά θα γινόντουσαν το πάθος του και η ζωή του. Ακόμη και πολύ μετά, όταν πρωτοέπιασε στα χέρια του τα πρώτα shaker ούτε που πέρασε από το μυαλό του ότι μία μέρα ολόκληρη η Αθήνα θα μιλούσε για το punch «Μπάμπη» που σερβίρεται στο Six Dogs δια χειρός Μάριου&nbsp;Ηλιόπουλου. Νονός του «Μπάμπη» είναι ο Κωνσταντίνος Δαγριτζίκος. Η ιδέα να δώσουν στο punch&nbsp;ένα αντρικό όνομα θυμίζει κάτι από την εποχή της ποτοαπαγόρευσης. Τότε για να ζητήσει ο ενδιαφερόμενος ένα ποτό έλεγε για παράδειγμα όλο νόημα στο μπάρμαν «Ο Tom είπε κάτι για σένα.» και αυτόματα του σέρβιραν το κοκτέιλ Tom&nbsp;Collins. Σήμερα ο Μάριος με εισιτήριο το κοκτέιλ Ambos Mundos που σε κάνει να νομίζεις ότι η συνταγή του προέρχεται από τα βάθη της Κούβας, βρίσκεται ανάμεσα στους τέσσερις Έλληνες φιναλίστ διεκδικώντας μία θέση στον παγκόσμιο διαγωνισμό BACARDI Legacy Global Cocktail Competition που διοργανώνεται στη μακρινή Αυστραλία προσπαθώντας να χωρέσει στο ποτήρι ένα μύθο τόσο μεγάλο όσο αυτό του <strong>BACARDI.</strong></span></p>\r\n<p><span style="font-family: georgia,palatino;">Η παιδικότητα και η σπιρτάδα στο βλέμμα του όταν μιλάει για τη δουλειά του ξεγελάνε και δε σε βοηθάνε να εξακριβώσεις τα τριάντα εννέα χρόνια που κουβαλάει στην πλάτη του πόσο μάλλον τα είκοσι εκ των οποίων τα έχει περάσει πίσω από τη μπάρα. Σου θυμίζει πιτσιρικά που μόλις έπιασε δουλειά.&nbsp;</span></p>\r\n<p><span style="font-family: georgia,palatino;"><img class="alignnone size-large wp-image-103584" style="display: inline; margin: 10px; float: right;" src="http://popaganda.gr/wp-content/uploads/2015/01/MYRT5100-960x639.jpg" alt="MYRT5100" width="351" height="233" data-lazy-loaded="true" /></span></p>\r\n<p><span style="font-family: georgia,palatino;">«Πίσω από τη μπάρα βρίσκομαι είκοσι χρόνια, είκοσι ωραία χρόνια! Είναι το πάθος μου. Άμα με βγάλεις από εδώ τελείωσα. Ο πατέρας μου είχε κάβα ποτών στο Αίγιο άρα πάντα με τριγύριζαν τα ποτά. Ξεκίνησα στα δεκαοχτώ και δούλευα σε ένα μπαρ. Η νύχτα δεν με τράβαγε, με τράβαγε όμως να ασχοληθώ με το αλκοόλ, να δω τι υπάρχει πίσω από αυτό, πως φτιάχνονται όλα αυτά. Γουστάρω να φτιάχνω πράγματα για τον κόσμο. Να έρχομαι εδώ, πίσω από την μπάρα και να στήνω, να έρχεται ο κόσμος να μιλάμε αλλά όταν το ρολόι δείξει δύο θα ήθελα να γυρίζω σπίτι.»</span></p>\r\n<p><span style="font-family: georgia,palatino;">Ο <strong>Μάριος</strong> μπορεί πια να μη μεθάει εύκολα αλλά γυρίζοντας το χρόνο πίσω γελάει αναπολώντας το πρώτο του μεθύσι, τότε που ήταν στο Αίγιο ακόμη. Αφού τα ήπιε με το κολλητό του, το πρωί τους βρήκε αγουροξυπνημένους μέσα στο αμάξι που ήταν παρκαρισμένο σε κεντρικό δρόμο της πόλης και περιτριγυρισμένους από κόσμο που τους κοιτούσε περίεργα.</span></p>\r\n<p><span style="font-family: georgia,palatino;">«Σίγουρα ένα ποτό μπορεί να είναι έργο τέχνης αλλά δεν είμαστε και θεοί, δε δουλεύουμε στη <strong>NASA.</strong> Εμένα μου αρέσει πολύ η δουλειά μου γιατί και βλακεία να πεις, όταν είσαι πίσω από την μπάρα θα κεράσεις ένα σφηνάκι και θα ξεχαστεί. Υπάρχει αυτή η απόσταση της μπάρας που είναι ωραία και δημιουργεί ένα μυστήριο. Σε κάνει να δείχνεις πιο ιδιαίτερος.»</span></p>\r\n<p><span style="font-family: georgia,palatino;">Συγχρόνως ενώ μιλάει τον βλέπεις να ελίσσεται με μεγάλη ευκολία στήνοντας το πόστο του ενώ ξέρει επακριβώς τι βρίσκεται και που. Το κάνει με τέτοια σβελτάδα που πιστεύεις ότι θα μπορούσε να το κάνει ακόμη και με τα μάτια κλειστά ενώ στο μεταξύ οι εκφράσεις του όταν μιλάει για το επάγγελμα φανερώνουν έναν άνθρωπο ο οποίος πραγματικά δουλεύει για να ζει και ζει για να δουλεύει.&nbsp;</span></p>\r\n<p><span style="font-family: georgia,palatino;">«Ο πατέρας μου έλεγε, πως ότι και να επιλέξεις να κάνεις φρόντισε να το κάνεις καλά. Θα το αγαπήσεις και θα στο ανταποδώσει. Αυτό για μένα είναι και το πρώτο επίπεδο για να γίνει κάποιος από ερασιτέχνης, επαγγελματίας barman. Από εκεί και πέρα, κάποιοι σαν εμένα θα ερωτευτούν όλο αυτό το μαγικό που γίνεται με το αλκοόλ, τη μπάρα, τον κόσμο και θα θέλουν να συνεχίσουν, να μην τελειώσει ποτέ.»</span></p>\r\n<p><span style="font-family: georgia,palatino;">&nbsp;<img class="alignnone size-large wp-image-103584" style="display: inline; margin: 10px; float: left;" src="http://popaganda.gr/wp-content/uploads/2015/01/MYRT5100-960x639.jpg" alt="MYRT5100" width="256" height="170" data-lazy-loaded="true" /></span></p>\r\n<p><span style="font-family: georgia,palatino;">&nbsp;Ο λόγος που μετά από τόσα χρόνια στο κουρμπέτι έχει λοξοδρομήσει από την πεπατημένη και δεν έχει ανοίξει δικό του μαγαζί είναι γιατί θέλει να είναι ακριβώς όπως το φαντάζεται, με την παραμικρή λεπτομέρεια.</span></p>\r\n<p><span style="font-family: georgia,palatino;">«Θα ήθελα να είναι σε ένα τέλειο μέρος, ίσως σε ένα υπόγειο κάποιας μεγαλούπολης. Θέλω να μπαίνει κόσμος, όχι για την κίνηση αλλά για την διαφορετικότητα για να είναι όλο αυτό πιο έντονο, πιο διαδραστικό. Θέλω από την αρχή μέχρι το τέλος να είναι δικό μου, να αποτυπώσω το μεράκι μου. Να έχει μέσα παλιά αντικείμενα και να χωρίζεται κατά κάποιον τρόπο σε δύο εικόνες. Να γυρίζει η μπάρα για παράδειγμα και να βλέπεις δύο διαφορετικά πράγματα συγχρόνως.»</span></p>\r\n<p><span style="font-family: georgia,palatino;">Όσοι από εσάς πιστεύετε ότι το επάγγελμα του&nbsp;barman&nbsp;είναι μία εύκολη υπόθεση σας προσκαλούμε και προκαλούμε να σπεύσετε στο Six Dogs&nbsp;και να παραγγείλετε το&nbsp;Ambos Mundos&nbsp;ή αλλιώς τους δύο κόσμους του Μάριου&nbsp;Ηλιόπουλου, ένα κοκτέιλ με βάση <strong>το BACARDI Superior και το BACARDI Gold</strong> και του χάρισε την ελπίδα στο διαγωνισμό <strong>BACARDI Legacy Global Cocktail Competition.</strong> Όσο ιδιότροποι και αν νομίζετε πως είστε σίγουρα θα σας θαμπώσουν και εσάς τόσο οι μοναδικές γεύσεις όσο και το αδάμαστο ταλέντο του Μάριου σε συνδυασμό πάντα με το διαχρονικό λευκό και χρυσό ρούμι του BACARDI.</span></p>\r\n</div>', '', 1, 1, 0, 1, '2015-01-23 18:37:35', 62, '', '2015-02-04 20:12:08', 62, 0, '0000-00-00 00:00:00', '2011-08-12 18:37:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 14, 0, 3, '', '', 0, 27, 'robots=\nauthor='),
(245, 'Newsflash Article 1', 'newsflash-article-1', '', '<img src="images/nf_1.jpg" style="float:left" class="padded" alt=""></img>\r\n\r\nLorem ipsum dolor sit amet, consectetur\r\nscing elit. Fusce a sollicitudin ligula vesti\r\nhoncus sollicitudin elementum. ipsum do \r\nsit amet Nulla a erat et lectus venenatis\r\nlectus ut odio.', '\r\n<br />\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n<br />\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.', 1, 1, 0, 62, '2011-12-09 23:53:51', 62, '', '2011-12-09 23:59:25', 62, 0, '0000-00-00 00:00:00', '2011-12-09 23:53:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 1, '', '', 0, 1, 'robots=\nauthor='),
(234, 'Sample Article', 'sample-article', '', 'Lorem domec sit amet nibh. Viva lacer elitem mus lorem etnon arcu. Lorem amet via\r\nipsum dolor sit amet, lacer sit emru consectetur adipiscing elit.', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Viva mus non arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, consectetur adipiscing elit. id faEtiam dapibus, sit ame tellus a ucibus. tristique urna, id faucibus lectus erat ut pede. Maecenas varius neque nec libero laoreet faucibus. id faEtiam dapibus, tellus a ucibus. Donec sit amet nibh. Viva mus non arcu. Lorem ipsum dolor sit amet, consectetur. Donec sit am et nibh. Viva mus arcu. Lorem ipsu.', -2, 1, 0, 3, '2010-02-06 23:35:25', 62, '', '2011-10-10 20:50:46', 62, 0, '0000-00-00 00:00:00', '2010-02-06 23:35:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=1\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(235, 'Sample Article', 'sample-article', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Viva mus non arcu. Lorem ipsum dolor sit amet, consectetur.', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Viva mus non arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, consectetur adipiscing elit. id faEtiam dapibus, sit ame tellus a ucibus. tristique urna, id faucibus lectus erat ut pede. Maecenas varius neque nec libero laoreet faucibus. id faEtiam dapibus, tellus a ucibus. Donec sit amet nibh. Viva mus non arcu. Lorem ipsum dolor sit amet, consectetur. Donec sit am et nibh. Viva mus arcu. Lorem ipsu.', -2, 1, 0, 3, '2010-02-06 23:35:25', 62, '', '2011-10-10 20:50:33', 62, 0, '0000-00-00 00:00:00', '2010-02-06 23:35:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=1\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(236, '3', '3', '', '<p><img src="images/fp/2.jpg" border="0" width="869" height="382" /></p>', '', 1, 1, 0, 3, '2010-02-06 23:35:25', 62, '', '2015-02-02 23:16:06', 62, 0, '0000-00-00 00:00:00', '2010-02-06 23:35:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=1\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(237, '2', '2', '', '<p><img src="images/fp/3.jpg" border="0" width="869" height="382" /></p>', '', 1, 1, 0, 3, '2010-02-06 23:35:25', 62, '', '2015-02-02 23:15:54', 62, 0, '0000-00-00 00:00:00', '2010-02-06 23:35:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(243, 'Newsflash Article 3', 'newsflash-article-3', '', '<img src="images/nf_3.jpg" style="float:left;margin-bottom:0px" class="padded" alt=""></img>\r\n\r\nIpsum lorem dolor sit amet, consectetur\r\nscing elit. Fusce a sollicitudin ligula vesti\r\nhoncus sollicitudin elementum. ipsum do \r\nsit amet Nulla a erat et lectus venenatis\r\nlectus ut telus.\r\n\r\n\r\n\r\n', '\r\n<br />\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n<br />\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.', 1, 1, 0, 62, '2011-12-09 23:53:51', 62, '', '2011-12-12 23:54:18', 62, 0, '0000-00-00 00:00:00', '2011-12-09 23:53:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(244, 'Newsflash Article 2', 'newsflash-article-2', '', '<img src="images/nf_2.jpg" style="float:left" class="padded" alt=""></img>\r\n\r\n\r\nNibh aliquam parturient proin convallis nunc  dui suspendisse maecenas nascetur. In Pellentesque tempor auctor semper eu sit Aenean ut odio gravida. Auctor urna convallis curabitur ipsum.\r\n\r\n\r\n', '\r\n<br />\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n<br />\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.', 1, 1, 0, 62, '2011-12-09 23:53:51', 62, '', '2011-12-12 23:53:53', 62, 0, '0000-00-00 00:00:00', '2011-12-09 23:53:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(242, '1', '1', '', '<p><img src="images/fp/1.jpg" border="0" width="869" height="382" /></p>', '', 1, 1, 0, 3, '2010-02-06 23:35:25', 62, '', '2015-02-02 23:15:37', 62, 0, '0000-00-00 00:00:00', '2010-02-06 23:35:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=1\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 0, 'robots=\nauthor='),
(250, 'All New Music For 2012', 'all-new-music-for-2012', '', '<img alt="" class="boxed" src="images/article5.jpg"></img>\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.\r\n<br /><br />\r\nLorem ipsum dolor sit amet consectetuer lacus vel dui leo enim. Nibh aliquam parturient Proin \r\nconvallis Nunc a dui Suspendisse Maecenas nascetur. In Pellentesque tempor auctor semper \r\neu sit Aenean ut odio gravida. Auctor urna convallis Curabitur interdum ipsum tellus ornare \r\nVivamus augue tellus. Metus enim iaculis et interdum quis habitasse lacinia habitant metus id. \r\nLibero ac justo lorem Vivamus purus lacus lobortis leo nec.\r\n\r\n', '\r\n<br /><br />\r\nNunc rutrum scelerisque ipsum ut aliquet. Duis et augue nunc, gravida fermentum mi. Quisque sed dui enim. Mauris ultricies, tellus ac semper consequat, enim tellus convallis lacus, sit amet tempus mauris nibh non turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, 21, 0, 57, '2011-11-22 00:00:00', 62, '', '2011-12-10 01:13:25', 62, 0, '0000-00-00 00:00:00', '2011-12-10 01:12:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(251, 'Brakered Custom Home', 'brakered-custom-home', '', '<img alt="" class="boxed" src="images/content1.jpg"></img>\r\n\r\n<img alt="" class="boxed" src="images/content2.jpg"></img>\r\n\r\n<br/><br/>\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris \r\nmi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut.\r\n\r\n\r\n', '\r\n<br /><br />\r\nNunc rutrum scelerisque ipsum ut aliquet. Duis et augue nunc, gravida fermentum mi. Quisque sed dui enim. Mauris ultricies, tellus ac semper consequat, enim tellus convallis lacus, sit amet tempus mauris nibh non turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1, 21, 0, 57, '2011-11-29 00:00:00', 62, '', '2012-01-04 22:26:55', 62, 0, '0000-00-00 00:00:00', '2011-12-10 00:56:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 3, 'robots=\nauthor='),
(252, 'justcoktails.org', 'justcoktailsorg', '', '<h1><span style="font-size: medium; font-family: georgia,palatino;">Meet our #FeatureBartender Marios Iliopoulos.</span></h1>\r\n<p><span style="font-family: georgia,palatino;">He is participating in the global <strong>Bacardi Legacy Challenge</strong> that has inspired the creative efforts of fine bartenders around the globe. Currently, Marios is in the final four for Greece. The competition has led many talented bartenders to reach out to us to showcase their drinks. We’ve decided that we’ll have a routine feature for global bartenders, with one of their drinks, in a new section on our website.</span></p>\r\n<div id="attachment_5822" class="wp-caption alignnone" style="width: 583px;"><span style="font-family: georgia,palatino;"><a href="http://i2.wp.com/justcocktails.org/wp-content/uploads/2015/01/Ambos-Mundos-Cocktail.jpg"><img class="wp-image-5822 size-full" style="margin: 10px; float: left;" src="http://i2.wp.com/justcocktails.org/wp-content/uploads/2015/01/Ambos-Mundos-Cocktail.jpg?resize=573,859" alt="Ambos Mundos Cocktail Image credit Myrto Panteloglou" width="203" height="303" /></a></span></div>\r\n<blockquote><span style="font-family: georgia,palatino;">In his own words, “I work at Six D.O.G.S in Monastiraki, in the center of Athens. It is an art-space and I work as head bartender in the Secret Handshake. I’ve worked as a bartender for 20 years.</span><br /><br /><span style="font-family: georgia,palatino;">The story behind the cocktail is interesting because the result fits the name. Ambos Mundos means “two worlds” in Spanish and my inspiration came from the two worlds of Bacardi. There was Bacardi of Cuba and Bacardi of the world, after deportation from Cuba.</span><br /><span style="font-family: georgia,palatino;"><br />Personally, my night lifestyle and my girlfriends as an artist forms two worlds. Last but not least, my cocktail comes from classic cocktail construction but it combines the old and the new,” relates Iliopoulos.</span><br /><br /><a href="http://justcocktails.org/2015/01/30/ambos-mundos-marios-iliopoulos/" target="_blank">source</a></blockquote>', '', 1, 1, 0, 1, '2015-01-30 00:00:00', 62, '', '2015-02-04 22:41:36', 62, 0, '0000-00-00 00:00:00', '2009-06-15 23:25:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 29, 0, 1, '', '', 0, 86, 'robots=\nauthor='),
(253, 'S5 Map it with Google', 's5-map-it-with-google', '', 'Map it with Google was one of the first free extensions that we released.  After about 4 years of its being around we decided this months template would make for a great update to it.  You now can choose between the old version or the new one display at the bottom of the homepage of this design (also scroll down and its at the bottom of this page too).  The new version uses Google API to display a map with a marker to the address that you enter in the module admin.  A user simply clicks the marker and they are prompted with a popup box to get directions.  Clicking "Get Directions" will take you to google maps with your business address already entered so all they have to do is enter their address to get directions.  \r\n<br/><br/><br/>\r\n<h3>Screenshot of Ver2 Frontend:</h3><br/>\r\n<img src="images/mapit.jpg" alt="mapit"/>\r\n<br/><br/>\r\n<h3>Screenshot of Ver1 Frontend:</h3><br/><br/>\r\n<img src="images/mapit2.jpg" class="boxed" alt="mapit"/>\r\n<br/><br/><br/>\r\n<h3>Screenshot of admin:</h3><br/>\r\n<img src="images/mapitadmin.jpg" alt="mapit"/>', '', 1, 0, 0, 0, '2012-01-11 22:47:44', 62, '', '2012-01-12 04:21:17', 62, 62, '2012-01-12 04:21:19', '2012-01-11 22:47:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 1, '', '', 0, 11, 'robots=\nauthor='),
(254, 'Google Fonts Enabled', 'google-fonts-enabled', '', 'Do you want your own custom font? Not a problem, this template comes with Google Fonts enabled, allowing you to pick from over a dozen font families for your website. In the template parameters area of the template you can choose your own custom font, and preview it from the Vertex interface. Below are some examples of the fonts available.<br/><br/>\r\n\r\n<img alt="" src="http://www.shape5.com/demo/images/general/google_fonts.png"></img>\r\n\r\n<br />\r\n<br /><br />\r\n\r\n<div class="blue_box"><strong>I like what I see! I want to <a href="http://www.shape5.com/join-now.html" target="_top">JOIN TODAY</a>.</strong></div><br /></ul>', '', 1, 1, 0, 1, '2010-10-08 19:08:51', 62, '', '2011-12-13 19:44:03', 62, 0, '0000-00-00 00:00:00', '2010-10-08 19:08:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 13, '', '', 0, 0, 'robots=\nauthor='),
(255, 'allyou.gr', 'allyougr', '', '<p><span style="font-family: georgia,palatino;">Ο Μάριος Ηλιόπουλος, barman του six d.o.g.s, μοιράζεται αποκλειστικά μαζί μας τη μυστική συνταγή του νέου cocktail-hit του πλέον αγαπημένου (μας) μαγαζιού</span><br /><br /><span style="font-family: georgia,palatino;">Να το πιεις στο ποτήρι!&nbsp;</span><br /><br /></p>\r\n<div class="item_img img-full img-full__none item-image"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://www.allyou.gr/images/cooking/Marios_Iliopoulos1100.jpg" alt="" width="312" height="194" /></span></div>\r\n<p><span style="font-family: georgia,palatino;">Έχει κάνει αίσθηση στη νυχτερινή Αθήνα κι έχει προκαλέσει χαμό στα social media, όπου&nbsp;όλοι σχολιάζουν την εντυπωσιακή όψη του και μιλούν για την <strong>ιδιαίτερη, γλυκόπικρη γεύση</strong>&nbsp;του και το <strong>μοναδικό άρωμά</strong>&nbsp;του.</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;">Ο λόγος για το cocktail <strong>Ambos Mundos</strong> (Δύο Κόσμοι, στα ισπανικά), μία δημιουργία του αγαπημένου μας <strong>mixologist Μάριου Ηλιόπουλου</strong>,&nbsp;τον οποίο θα βρεις πίσω από τη μπάρα του <strong>Κήπου του six d.o.g.s</strong>.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Το cocktail, το οποίο&nbsp;παρουσιάστηκε για πρώτη φορά στα πλαίσια του<strong> παγκοσμίου φήμης διαγωνισμού&nbsp;</strong><strong style="line-height: 15.808px;">Bacardi&nbsp;Legacy</strong>, είναι εμπνευσμένο από τον τρόπο με τον οποίο δύο διαφορετικοί κόσμοι μπορεί να&nbsp;συναντηθούν, να συνδυαστούν και, τελικά, να γίνουν ένα.</span></p>', '', 1, 1, 0, 1, '2014-11-03 19:08:51', 62, '', '2015-02-04 22:09:46', 62, 0, '0000-00-00 00:00:00', '2010-10-08 19:08:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 12, '', '', 0, 0, 'robots=\nauthor='),
(256, 'alternactive.gr', 'alternactivegr', '', '<p style="text-align: justify;"><span style="font-size: 12pt; font-family: georgia,palatino;">Ambos Mundos| Δύο κόσμοι… σ΄ένα cocktail</span><br /><br /><span style="font-family: georgia,palatino;">O Mάριος Ηλιόπουλος μας υποδέχεται στον κήπο του six d.o.g.s, όπου μας δίνεται η ευκαιρία να γνωρίσουμε και να δοκιμάσουμε το νέο του cocktail <a href="https://www.facebook.com/ambosmundos.m.iliopoulos">Ambos_Mundos</a> (2 κόσμοι στα Ισπανικά), το οποίο παρουσιάστηκε πρώτη φορά στο Bacardi Legacy Global Cocktail Competition.</span></p>\r\n<div id="gallery-mh_el54d29757270fe" class="maha-wp-gallery galleryid-2308 clearfix" data-gallery-layout="21"><span style="font-family: georgia,palatino;">&nbsp;</span></div>\r\n<p style="text-align: justify;"><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://alternactive.gr/wp-content/uploads/2014/11/MYRT5116-514x276.jpg" alt="" width="306" height="164" />Ποια είναι όμως η ιστορία του;</span></p>\r\n<p style="text-align: justify;"><span style="font-family: georgia,palatino;">Ο Μάριος, λοιπόν, κρύβεται κάπου ανάμεσα σε <em>δύο κόσμους…</em>&nbsp;τον δικό του και τον κόσμο εκείνης. Κρύβεται όμως και εκεί που το Κουβανέζικο παρελθόν διεκδικεί το παρόν και το μέλλον γεύεται κάτι από τις διαρκείς απολαύσεις του τώρα. Ανάσες ποτισμένες με έναν πρωτόλειο συνδυασμό από την ισχυρή απλότητα που κρύβει το ρούμι Bacardi, μαζί με την gold εκδοχή του και πολύ φαντασία στα μοναδικά συστατικά που αναμειγνύονται στο ποτήρι.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: georgia,palatino;"><br />Ο εμπνευστής του σκέφτεται διαχρονικά και η ρομαντική Cuba διακτινίζεται στην εντυπωσιακή Costa Rica… εκεί που το ρούμι είναι απλά ρούμι. Αλλά η ιδέα του γίνεται πραγματικότητα και συνοδεύει όλους μας στα bars, λίγο μετά το φαγητό, ακόμα όμως και στιγμές πιο μοναχικές… έτσι όπως ήταν και ο ίδιος όταν το φαντάστηκε. Και αν ο καθένας μας έχει τον κόσμο του, τότε μόνο ο Μάριος μπορεί να τους ενώσει…</span></p>\r\n<div id="gallery-mh_el54d2975729e75" class="maha-wp-gallery galleryid-2308 clearfix" data-gallery-layout="312"><span style="font-family: georgia,palatino;">&nbsp;</span></div>\r\n<p style="text-align: justify;"><span style="font-family: georgia,palatino;">Ένα κλασσικό χειμωνιάτικο cocktail που ο Μάριος στην βάση του, έχει αναδείξει τα αρώματα του μέσω του Bacardi, που είναι καθαρό στην γεύση και στο άρωμα του, συνεχίζοντας με Βacardi Gold και δίνοντας την αίσθηση του ξύλου και της αποξηραμένης μπανάνας. Στο σώμα του cocktail προσθέτει Punt e Mes, δίνοντας γλυκιά και πικρή γεύση ταυτόχρονα, προσθέτει άρωμα λεβάντας και λίγες σταγόνες από homemade σιρόπι ροδιού, για να εξισορροπήσει την γεύση.</span></p>', '', 1, 1, 0, 1, '2014-11-08 19:08:51', 62, '', '2015-02-04 22:06:56', 62, 0, '0000-00-00 00:00:00', '2010-10-08 19:08:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 11, '', '', 0, 2, 'robots=\nauthor='),
(257, 'lifo.gr', 'lifo', '', '<p><span style="font-family: georgia,palatino; font-size: 12pt;">Τι είναι το Ambos Mundos;</span><br /><span style="font-family: georgia,palatino;"><span style="font-size: 12pt;">O bartender Μάριος Ηλιόπουλος μας μιλάει για το κοκτέιλ που δημιούργησε.</span><br /><br /></span></p>\r\n<p><em><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: left;" src="http://www.lifo.gr/icache/520/343/1/776734__MG_4145.jpg" alt="" width="299" height="197" />Η αρχική ιδέα ήταν να δημιουργήσω ένα κοκτέιλ στο οποίο το καθετί που σχετίζεται με αυτό να έχει μια συγκεκριμένη λειτουργία και όλα μαζί να αποτελούν ένα αρμονικό σύνολο...</span></em></p>\r\n<p><span style="font-family: georgia,palatino;">&nbsp;</span></p>\r\n<p><span style="font-family: georgia,palatino;">Πόσο καιρό εργάζεσαι ως bartender; Πώς ξεκίνησες;</span><br /><span style="font-family: georgia,palatino;">Εργάζομαι ως bartender εδώ και είκοσι χρόνια. Ο πατέρας μου είχε κάβα ποτών και από μικρός ψαχούλευα τις ετικέτες των ποτών, τα αρώματα και τα περίεργα μπουκάλια. Μεγαλώνοντας, αποφάσισα να μπω πίσω από την μπάρα. Επιλογή ή απλώς τύχη, δεν ξέρω...</span><br /><br /></p>\r\n<p><span style="font-family: georgia,palatino;">Σε έχει κουράσει καθόλου να δουλεύεις νύχτα;</span><br /><span style="font-family: georgia,palatino;">Επειδή το βλέπω κυρίως ως μια δουλειά που αγαπώ, δεν με έχει κουράσει με αυτή την έννοια. Μου αρέσει πολύ και προσπαθώ να το κάνω όσο καλύτερα μπορώ.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Τι περιέχει το κοκτέιλ που δημιούργησες;</span><br /><span style="font-family: georgia,palatino;">40 ml Bacardi Superior, 10 ml Bacardi Gold, 25 ml Punt e Mes, 10 ml St.Germain, 7,5 ml σπιτικό σιρόπι ρόδι και 2 σταγόνες bitter λεβάντα.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Πώς σου ήρθε η ιδέα;</span><br /><span style="font-family: georgia,palatino;">Η αρχική ιδέα ήταν να δημιουργήσω ένα κοκτέιλ στο οποίο το καθετί που σχετίζεται με αυτό να έχει μια συγκεκριμένη λειτουργία και όλα μαζί να αποτελούν ένα αρμονικό σύνολο. Ακόμα και το όνομα, κατά κάποιον τρόπο «επεξηγεί» αυτή την αρμονία.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;"><img style="margin: 10px; float: right;" src="http://www.lifo.gr/icache/520/347/1/776733__MG_4149.jpg" alt="" width="272" height="181" />Πού έχεις ταξιδέψει μέχρι σήμερα με αφορμή το κοκτέιλ που δημιούργησες; Σε διάφορα μέρη στην Ελλάδα και στο Παρίσι μέχρι στιγμής, αλλά προγραμματίζω κι άλλα δύο ταξίδια-έκπληξη! Αν μέσα στο ταξίδι βάλουμε και την πορεία αυτού του κοκτέιλ, αυτό που μου έχει κάνει περισσότερη εντύπωση είναι πώς μερικοί άνθρωποι σε υποδέχονται στον χώρο τους, στη δουλειά τους, και προσπαθούν με κάθε τρόπο να σε βοηθήσουν και να σε κάνουν να νιώσεις οικεία.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Πες μας λίγα λόγια για τον διαγωνισμό στον οποίο συμμετέχεις;</span><br /><span style="font-family: georgia,palatino;">Ο διαγωνισμός ονομάζεται «Bacardi Legacy», είναι παγκόσμιος και στην Ελλάδα γίνεται για δεύτερη φορά. Είναι από τους μεγαλύτερους διαγωνισμούς στον κόσμο κι έχει διάφορες φάσεις. Ο τελικός έχει τέσσερις φιναλίστ (όπως είμαστε τώρα) και μένει ο ένας που θα εκπροσωπήσει τη χώρα στο εξωτερικό.</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Σου έχουν πει ποτέ πελάτες ότι δεν τους άρεσε κάποιο κοκτέιλ που έκανες; Πώς αντέδρασες;</span><br /><span style="font-family: georgia,palatino;">Ναι, μου το έχουν πει! Για μένα είναι πολύ φυσικό. Γεύση δίνουμε και αποκλείεται να μην υπάρχουν αποκλίσεις. Η αντίδραση; Ένα χαμόγελο, λίγο χιούμορ, για να αποφύγουμε την αμηχανία, και ένα καινούργιο κοκτέιλ (ή μια μπίρα που είναι σίγουρη «συνταγή»).</span></p>\r\n<p><br /><span style="font-family: georgia,palatino;">Ποιο είναι το αγαπημένο σου κοκτέιλ (εκτός από το δικό σου); Daiquiri Classic! Είμαι λάτρης του κλασικού κοκτέιλ και γι'' αυτόν το λόγο και το δικό μου έχει μια τάση προς αυτή την κατεύθυνση.</span></p>', '', 1, 1, 0, 1, '2015-01-15 19:08:51', 62, '', '2015-02-04 22:38:07', 62, 0, '0000-00-00 00:00:00', '2010-10-08 19:08:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=1\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 5, '', '', 0, 3, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(45, 6),
(6, 7),
(44, 8),
(9, 9),
(30, 10),
(249, 2),
(251, 1),
(248, 3),
(247, 4),
(246, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=345 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(2, 'mainmenu', 'News', 'news-mainmenu-2', 'index.php?option=com_content&view=section&id=1', 'component', 0, 26, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\nshow_page_title=1\npageclass_sfx=\nback_button=\ndescription_sec=1\ndescription_sec_image=1\norderby=\nother_cat_show_section=1\nempty_cat_show_section=0\nshow_category_description=1\ndescription_cat_image=1\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\ncat_show_description=1\ndate_format=\nshow_date=\nshow_author=\nshow_hits=\nshow_headings=1\nshow_item_navigation=1\norder_select=1\nshow_pagination_limit=1\ndisplay_num=50\nfilter=1\nfilter_type=title\nunpublished=1\nshow_title=1\n', 0, 0, 0),
(23, 'mainmenu', 'Links', 'links-mainmenu-23', 'index.php?option=com_weblinks&view=categories', 'component', 0, 26, 4, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nshow_headings=1\nshow_hits=\nitem_show_description=1\nother_cat_show_section=1\nshow_categories=1\nshow_description=1\ndescription_text=\nimage=-1\nimage_align=right\nweblink_icons=\nshow_title=1\n', 0, 0, 0),
(5, 'mainmenu', 'Search', 'search-mainmenu-5', 'index.php?option=com_search', 'component', 0, 26, 15, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nshow_title=1\n', 0, 0, 0),
(113, 'mainmenu', 'Search and Menus Setup', 'search-and-menus-setup', 'index.php?option=com_content&view=article&id=36', 'component', 0, 48, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(7, 'mainmenu', 'News Feeds', 'news-feeds-mainmenu-7', 'index.php?option=com_newsfeeds&view=categories', 'component', 0, 26, 11, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nother_cat_show_section=1\nshow_categories=1\ncat_show_description=1\nshow_cat_num_articles=1\nshow_description=1\ndescription_text=\nimage=-1\nimage_align=right\nshow_headings=1\nname=1\narticles=1\nnum_links=0\nfeed_image=1\nfeed_descr=1\nitem_descr=1\nword_count=0\nshow_title=1\n', 0, 0, 0),
(1, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nnum_leading_articles=0\nnum_intro_articles=0\nnum_columns=0\nnum_links=0\norderby_pri=\norderby_sec=rdate\nmulti_column_order=1\nshow_pagination=0\nshow_pagination_results=0\nshow_feed_link=1\nshow_noauth=\nshow_title=1\nlink_titles=1\nshow_intro=\nshow_section=0\nlink_section=\nshow_category=0\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=1\nshow_vote=\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(8, 'mainmenu', 'Wrapper', 'wrapper-mainmenu-8', 'index.php?option=com_wrapper&view=wrapper', 'component', 0, 26, 17, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\nshow_page_title=1\npage_title=\nscrolling=auto\nwidth=100%\nheight=600\nheight_auto=0\nadd=1\nurl=http://www.mozilla.com/en-US/firefox/\nshow_title=1\n', 0, 0, 0),
(9, 'mainmenu', 'Blog', 'blog-mainmenu-9', 'index.php?option=com_content&view=section&layout=blog&id=0', 'component', 0, 23, 20, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=A blog of all sections with no images\nshow_page_title=1\nnum_leading_articles=0\nnum_intro_articles=6\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nimage=0\nshow_description=0\nshow_description_image=0\nshow_category=0\ncategory_num_links=0\nshow_title=1\nlink_titles=\nshow_readmore=\nshow_vote=\nshow_author=\nshow_create_show_date=\nshow_modify_show_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nunpublished=0\nsectionid=0\nshow_title=1\n', 0, 0, 0),
(26, 'mainmenu', 'J! Stuff', 'joomla-stuff-mainmenu-26', 'javascript:;', 'url', 0, 47, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Default Joomla Items\ns5_group_child=0\nmenu_image=joomla.png\n\n', 0, 0, 0),
(27, 'mainmenu', 'Typography', 'typography-mainmenu-27', 'index.php?option=com_content&view=article&id=12', 'component', 0, 309, 20, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'mainmenu', 'the recipe', 's5-flex-menu', 'index.php?option=com_content&view=article&id=13', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=2\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(327, 'mainmenu', 'Virtuemart Styling', 'virtuemart-styling', 'index.php?option=com_virtuemart', 'component', 1, 309, 117, 2, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\nproduct_id=\ncategory_id=\nflypage=\npage=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(32, 'mainmenu', 'Drop Down Menu', 'sample-menu', 'javascript:;', 'url', 0, 28, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Unlimited Level Options\ns5_group_child=0\nmenu_image=application_put.png\n\n', 0, 0, 0),
(33, 'mainmenu', 'Dummy Item', 'dummy-item-mainmenu-33', 'javascript:;', 'url', 0, 32, 0, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nshow_title=1\nshow_page_title=1\n', 0, 0, 0),
(34, 'mainmenu', 'Dummy Item', 'dummy-item-mainmenu-34', 'javascript:;', 'url', 0, 32, 0, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nshow_title=1\nshow_page_title=1\n', 0, 0, 0),
(35, 'mainmenu', 'Dummy Item', 'dummy-item-mainmenu-35', 'javascript:;', 'url', 0, 32, 0, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nshow_title=1\nshow_page_title=1\n', 0, 0, 0),
(36, 'mainmenu', 'Dummy Item', 'dummy-item-mainmenu-36', 'javascript:;', 'url', 0, 35, 0, 3, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nshow_title=1\nshow_page_title=1\n', 0, 0, 0),
(37, 'mainmenu', 'Dummy Item', 'dummy-item-mainmenu-37', 'javascript:;', 'url', 0, 35, 0, 3, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nshow_title=1\nshow_page_title=1\n', 0, 0, 0),
(38, 'mainmenu', 'Dummy Item', 'dummy-item-mainmenu-38', 'javascript:;', 'url', 0, 35, 0, 3, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nshow_title=1\nshow_page_title=1\n', 0, 0, 0),
(88, 'mainmenu', 'Site Shaper Available', 'site-shaper-available', 'index.php?option=com_content&view=article&id=39', 'component', 0, 309, 20, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(47, 'mainmenu', 'the story', 'features-mainmenu-47', 'javascript:;', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=2\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(48, 'mainmenu', 'etqtq', 'etqtq', 'index.php?option=com_content&view=article&id=204', 'component', 0, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(49, 'mainmenu', '92 Module Positions', '92-module-positions', 'index.php?option=com_content&view=article&id=14', 'component', 0, 142, 20, 2, 1, 62, '2012-01-12 21:30:06', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Thousands of Layout Options\ns5_group_child=0\nshow_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(81, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 0, 26, 7, 2, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(264, 'mainmenu', 'CSS Tableless Overrides', 'css-tableless-overrides', 'index.php?option=com_content&view=article&id=212', 'component', 0, 309, 20, 2, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(89, 'mainmenu', 'Site Shaper Setup', 'site-shaper-setup', 'index.php?option=com_content&view=article&id=39', 'component', 0, 48, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Site Shapers Are Highly Recommended\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(90, 'mainmenu', 'Setting Up Module Styles', 'setting-up-module-styles', 'index.php?option=com_content&view=article&id=14', 'component', 0, 48, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(93, 'mainmenu', 'Fluid and Fixed Layouts', 'fluid-and-fixed-layouts', 'index.php?option=com_content&view=article&id=24', 'component', 0, 309, 20, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(228, 'mainmenu', 'Template Specific Features', 'template-specific-features', 'index.php?option=com_content&view=article&id=197', 'component', 0, 47, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Options Specific To This Template\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=color_wheel.png\nsecure=0\n\n', 0, 0, 0),
(96, 'mainmenu', 'Tool Tips Enabled', 'tool-tips-enabled', 'index.php?option=com_content&view=article&id=37', 'component', 0, 142, 20, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(97, 'mainmenu', 'Tool Tips Setup', 'tool-tips-setup', 'index.php?option=com_content&view=article&id=37', 'component', 0, 48, 20, 1, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(99, 'mainmenu', 'Installing The Template', 'installing-the-template', 'index.php?option=com_content&view=article&id=17', 'component', 0, 48, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(100, 'mainmenu', 'Configuring The Template', 'configuring-the-template', 'index.php?option=com_content&view=article&id=18', 'component', 0, 48, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(120, 'mainmenu', 'S5 Tab Show', 's5-tab-show', 'index.php?option=com_content&view=article&id=97', 'component', 0, 141, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Sliding Tab Module\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(129, 'mainmenu', 'S5 CSS / JS Compressor', 's5-css-a-js-compressor', 'index.php?option=com_content&view=article&id=110', 'component', 0, 141, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Optimize Your Site''s Performance\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(141, 'mainmenu', 'In the Press', 'extensions', 'index.php?option=com_content&view=article&id=252', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=2\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(142, 'mainmenu', 'S5 Vertex Features', 'template-features', 'javascript:;', 'url', 0, 47, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Powerful Template Settings\ns5_group_child=1\nmenu_image=application_split.png\n\n', 0, 0, 0),
(230, 'mainmenu', 'Google Fonts Enabled', 'google-fonts-enabled', 'index.php?option=com_content&view=article&id=204', 'component', 0, 309, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(268, 'mainmenu', 'S5 Login and Register Setup', 's5-login-and-register-setup', 'index.php?option=com_content&view=article&id=146', 'component', 0, 48, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(214, 'second-menu', 'Blog', 'blog', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(210, 'second-menu', 'About us', 'about-us', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(211, 'second-menu', 'FAQs', 'faqs', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(213, 'second-menu', 'News', 'news', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(201, 'mainmenu', 'LTR Language', 'ltr-language', '?lang=ltr', 'url', 0, 142, 0, 2, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(202, 'mainmenu', 'RTL Language', 'rtl-language', '?lang=rtl', 'url', 0, 142, 0, 2, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(225, 'mainmenu', 'Multibox Enabled', 'multibox-enabled', 'index.php?option=com_content&view=article&id=195', 'component', 0, 142, 20, 2, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(226, 'mainmenu', 'Multibox Setup', 'multibox-setup', 'index.php?option=com_content&view=article&id=195', 'component', 0, 48, 20, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(207, 'mainmenu', 'SEO Optimized', 'seo-optimized', 'index.php?option=com_content&view=article&id=173', 'component', 0, 142, 20, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(266, 'mainmenu', 'S5 Box', 's5-box', 'index.php?option=com_content&view=article&id=146', 'component', 0, 141, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Popup Box for Login\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(341, 'mainmenu', 'Download Joomla Tutorials', 'joomla-tutorials', 'http://www.shape5.com/joomla_tutorials.html', 'url', 0, 48, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Practical Help For Joomla\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(233, 'mainmenu', 'K2 Item Styling', 'k2-item', 'index.php?option=com_k2&view=item&layout=item&id=2', 'component', 1, 309, 0, 2, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(234, 'mainmenu', 'K2 Category Styling', 'k2-category', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 309, 0, 2, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(276, 'Bottom-Menu-1', 'Updates', 'updates', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(277, 'Bottom-Menu-1', 'Addons', 'addons', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(309, 'mainmenu', 'Continued Vertex Features', 'style-and-layout-options', '', 'separator', 0, 47, 0, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=More Great S5 Vertex Options\ns5_group_child=1\nmenu_image=application_view_tile.png\n\n', 0, 0, 0),
(310, 'mainmenu', 'Fixed Side Tabs', 'fixed-side-tabs', 'index.php?option=com_content&view=article&id=214', 'component', 0, 309, 20, 2, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(250, 'mainmenu', 'Page, Row and Column Widths', 'page-row-and-column-widths', 'index.php?option=com_content&view=article&id=24', 'component', 0, 309, 20, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(270, 'second-menu', 'Site Map', 'site-map', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(252, 'mainmenu', 'Mobile Device Ready', 'mobile-device-ready', 'index.php?option=com_content&view=article&id=211', 'component', 0, 142, 20, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(269, 'mainmenu', 'S5 Accordion Menu', 's5-accordion-menu', 'index.php?option=com_content&view=article&id=143', 'component', 0, 141, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Accordion Column Menu\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(318, 'mainmenu', 'Dummy Sample Link 4', 'dummy-link-4', '', 'separator', 1, 314, 0, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(319, 'mainmenu', 'Dummy Sample Link 5', 'dummy-link-5', '', 'separator', 1, 314, 0, 2, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(320, 'mainmenu', 'Dummy Sample Link 6', 'dummy-link-6', '', 'separator', 1, 314, 0, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(259, 'mainmenu', 'Contact', 'home', '#', 'url', 1, 0, 0, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(275, 'second-menu', 'Site Terms', 'site-terms', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(278, 'Bottom-Menu-1', 'Knowledge Base', 'knowledge-base', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(279, 'Bottom-Menu-1', 'Designs', 'designs', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(280, 'Bottom-Menu-2', 'Careers', 'careers', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(281, 'Bottom-Menu-2', 'Our Forum', 'our-forum', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(282, 'Bottom-Menu-2', 'Listings', 'listings', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(283, 'Bottom-Menu-2', 'Community', 'community', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(284, 'Bottom-Menu-1', 'Learn More', 'learn-more', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(285, 'Bottom-Menu-2', 'Learn How', 'learn-how', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(286, 'Bottom-Menu-1', 'Mobile', 'mobile', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(287, 'Bottom-Menu-4', 'Affiliates', 'affiliates', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(288, 'Bottom-Menu-1', 'Specials', 'specials', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(289, 'Bottom-Menu-4', 'Supplies', 'supplies', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(290, 'Bottom-Menu-2', 'Where To', 'where-to', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(291, 'Bottom-Menu-4', 'Careers', 'careers', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(292, 'Bottom-Menu-4', 'Our Forum', 'our-forum', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(293, 'Bottom-Menu-4', 'Listings', 'listings', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(294, 'Bottom-Menu-4', 'Designs', 'designs', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(295, 'Bottom-Menu-2', 'Learn How', 'learn-how', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(315, 'mainmenu', 'Dummy Sample Link 1', 'dummy-link-1', '', 'separator', 1, 314, 0, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(316, 'mainmenu', 'Dummy Sample Link 2', 'dummy-link-2', '', 'separator', 1, 314, 0, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(317, 'mainmenu', 'Dummy Sample Link 3', 'dummy-link-3', '', 'separator', 1, 314, 0, 2, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(314, 'mainmenu', 'Grouped Child Menu', 'sample-grouped-child-menu', '', 'separator', 0, 28, 0, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Group Children Together\ns5_group_child=1\nmenu_image=application_side_boxes.png\n\n', 0, 0, 0),
(311, 'second-menu', 'Learn More', 'learn-more', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(312, 'second-menu', 'Updates', 'updates', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(313, 'mainmenu', 'S5 Flex Menu', 's5-flex-menu', 'index.php?option=com_content&view=article&id=13', 'component', 0, 141, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Advanced Menu System\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(321, 'mainmenu', 'Menu Module Example', 'menu-module-example', '', 'separator', 0, 28, 0, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=1\ns5_position=s5_menu1\ns5_columns=1\ns5_subtext=Publish Any Module to Any Menu\ns5_group_child=1\nmenu_image=cog_edit.png\n\n', 0, 0, 0),
(322, 'mainmenu', 'Menu With No Menu Icon', 'item-with-menu-icon', '', 'separator', 0, 28, 0, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Standard Sub Menu Link\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(339, 'mainmenu', 'S5 CSS/JS Compressor', 's5-cssjs-compressor', 'index.php?option=com_content&view=article&id=110', 'component', 0, 141, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Optimize Your Site''s Performance\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(328, 'mainmenu', 'S5 Vertex Framework', 'shape-5-vertex-framework', 'http://www.shape5.com/joomla/framework/vertex_framework.html', 'url', 0, 47, 0, 1, 1, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Lear More About Vertex\ns5_group_child=0\nmenu_image=application_link.png\n\n', 0, 0, 0),
(324, 'mainmenu', 'Menu Scroll To', 'menu-scroll-to', 'index.php?option=com_content&view=article&id=227', 'component', 0, 142, 20, 2, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(325, 'mainmenu', 'IE7 and 8 CSS3 Support', 'ie7-and-8-css3-support', 'index.php?option=com_content&view=article&id=228', 'component', 1, 309, 20, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(330, 'Bottom-Menu-4', 'Addons', 'addons', 'index.php?option=com_content&view=article&id=208', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(331, 'mainmenu', 'Hide Article Component Area', 'hide-article-component-area', 'index.php?option=com_content&view=article&id=231', 'component', 0, 142, 20, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(332, 'mainmenu', 'Lazy Load Enabled', 'lazy-load-enabled', 'index.php?option=com_content&view=article&id=230', 'component', 0, 142, 20, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(334, 'mainmenu', 'Lazy Load Setup', 'lazy-load-setup', 'index.php?option=com_content&view=article&id=230', 'component', 0, 48, 20, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(338, 'mainmenu', 'S5 Image and Content Fader', 's5-image-and-content-fader', 'index.php?option=com_content&view=article&id=252', 'component', 0, 141, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Image Rotating Extension\ns5_group_child=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(336, 'mainmenu', 'Drop Down Panel', 'drop-down-panel', 'index.php?option=com_content&view=article&id=233', 'component', 0, 142, 20, 2, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(340, 'mainmenu', 'Download Joomla Tutorials', 'joomla-tutorials', 'http://www.shape5.com/joomla_tutorials.html', 'url', 0, 47, 0, 1, 5, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Practical Help For Joomla\ns5_group_child=0\nmenu_image=help.png\n\n', 0, 0, 0),
(342, 'mainmenu', 'S5 Map it with Google V2', 's5-map-it-with-google-v2', 'index.php?option=com_content&view=article&id=253', 'component', 0, 141, 20, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=Directions for Vistors\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(343, 'mainmenu', 'In the Bars', 'in-the-bars', 'javascript:;', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=2\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0),
(344, 'mainmenu', 'upcoming events', 'upcoming-events', 'javascript:;', 'url', 1, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 's5_load_mod=0\ns5_columns=1\ns5_subtext=\ns5_group_child=0\nmenu_image=-1\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(23, 'second-menu', 'Second Menu', 'Second Menu'),
(27, 'Bottom-Menu-1', 'Bottom Menu 1', 'Bottom Menu 1'),
(28, 'Bottom-Menu-2', 'Bottom-Menu-2', ''),
(29, 'Bottom-Menu-3', 'Bottom-Menu-3', ''),
(30, 'Bottom-Menu-4', 'Bottom-Menu-4', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=763 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Main Menu', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Our Poll', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=14\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(711, 'image slide 1', '<div onclick="window.document.location.href=''index.php?option=com_content&amp;view=article&amp;id=208&amp;Itemid=312''" style="cursor:pointer; background:url(images/is_1.jpg);width:583px;height:305px">\r\n\r\n<div class="s5_image_slide_text_large">\r\nThirty Seconds to Mars - This is War\r\n</div>\r\n<div style="clear:both;height:0px"></div>\r\n<div class="s5_image_slide_text_small">\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit sed gravida amite ait.\r\n</div>\r\n\r\n</div>', 0, 'imageslide_1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(712, 'image slide 2', '<div onclick="window.document.location.href=''index.php?option=com_content&amp;view=article&amp;id=208&amp;Itemid=312''" style="cursor:pointer; background:url(images/is_2.jpg);width:583px;height:305px">\r\n\r\n<div class="s5_image_slide_text_large">\r\nSwitchfoot - New Record In 2012\r\n</div>\r\n<div style="clear:both;height:0px"></div>\r\n<div class="s5_image_slide_text_small">\r\nPhasellus adipiscing lobortis nulla ut elit lorem ipsum tellus.\r\n</div>\r\n\r\n</div>', 0, 'imageslide_2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(18, 'Login', '', 0, 'login', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 1, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', 1, 0, ''),
(20, 'Statistics', '', 13, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(21, 'Guests Online', '', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n', 0, 0, ''),
(22, 'Popular Articles', '', 0, 'bottom_row1_2', 0, '0000-00-00 00:00:00', 0, 'mod_mostread', 0, 0, 1, 'moduleclass_sfx=-style5\nshow_front=1\ncount=4\ncatid=\nsecid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(23, 'Archive', '', 2, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'count=10\nmoduleclass_sfx=-blue tester\ncache=1\n\n', 1, 0, ''),
(24, 'Sections', '', 4, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'count=5\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(26, 'Related Items', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Search', '', 0, 'search', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=34\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=\nbutton_text=find\nset_itemid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(28, 'Random Image', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_random_image', 0, 0, 1, 'type=jpg\nfolder=\nlink=\nwidth=\nheight=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(30, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=13\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(32, 'Wrapper', '', 4, 'bottom_row_1', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, 'moduleclass_sfx=\nurl=\nscrolling=auto\nwidth=100%\nheight=200\nheight_auto=1\nadd=1\ntarget=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(34, 'Feed Display', '', 4, 'above_body_2', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, 'moduleclass_sfx=\nrssurl=\nrssrtl=0\nrsstitle=1\nrssdesc=1\nrssimage=1\nrssitems=3\nrssitemdesc=1\nword_count=0\ncache=0\ncache_time=15\n\n', 1, 0, ''),
(35, 'Breadcrumbs', '', 0, 'breadcrumb', 0, '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 0, 0, 1, 'showHome=1\nhomeText=Home\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 1, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(38, 'Advertisement', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'target=1\ncount=4\ncid=0\ncatid=14\ntag_search=0\nordering=0\nheader_text=Featured Links:\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\nmoduleclass_sfx=_text\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(486, 'Mobile Bottom 2', 'This is the default mobile_bottom_2 position and is shown only on mobile devices.', 1, 'mobile_bottom_2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(487, 'LOGO', '<table style="width: 100%;">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;<a href="index.php"><img src="images/stories/logo.jpg" alt="" width="820" height="189" border="0" /></a></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 'logo', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(120, 'debug', '<p>This is the default debug module style.</p>', 1, 'debug', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(478, 'home text', '<p style="text-align: center;"><span style="font-size: 12pt;"><em>"...where the new and the old world </em></span><span style="font-size: 12pt;"><em>softly blend.."</em></span></p>', 0, 'top_row1_1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=-none\n\n', 0, 0, ''),
(435, 'S5 Accordion Menu', '', 0, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_s5_accordion_menu', 0, 0, 1, 'menutype=second-menu\nshowAllChildren=1\nparentlinks=0\nmoduleclass_sfx=\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\n\n', 0, 0, ''),
(754, 'Map It with Google V2', '', 0, 'bottom_row1_1', 0, '0000-00-00 00:00:00', 0, 'mod_S5MapIt', 0, 0, 1, 'moduleclass_sfx=\ntext=\naddresss=6399 North Wells Road\ncityy=Bigtownville\nstatee=Co\nzipp=80022\ns5mapitver=ver2\ns5miwidth=308\ns5miheight=200\nzoomlev=12\ns5mapcontrol=dis\ngetdirections=Get Directions\n\n', 0, 0, ''),
(755, 'Shape 5 Live Search', '', 0, 'search', 0, '0000-00-00 00:00:00', 0, 'mod_s5_live_search', 0, 0, 0, 'moduleclass_sfx=\nicon_ml=-28\nicon_mt=11\nicon_height=16\nbar_font_color=ffffff\nbar_font_size=12\nbar_bg_color=E4E4E3\nbar_border_color=9F9E9E\nbar_padding_lr=10\nbar_padding_tb=6\nresult_font_size=12\nresult_padding_lr=14\nresult_padding_tb=6\nsearchword_color=E2E1E1\nresult1_font_color=333333\nresult2_font_color=000000\nresult1_link_font_color=506E88\nresult2_link_font_color=333333\nresult1_readmore_font_color=A13939\nresult2_readmore_font_color=A13939\nresult1_bg_color=FFFFFF\nresult2_bg_color=F5F5F5\nresult1_bg_hover_color=E6F8F8\nresult2_bg_hover_color=EAEAEA\nresult1_border_color=CCCCCC\nresult2_border_color=BFBFBF\nwidth=20\npopup_width=400\npopup_mt=5\npopup_mb=10\npopup_ml=-178\npopup_mr=0\nborder_color=9F9E9E\nborder_size=0\ntext=Live Search...\nbutton_text=\nmore_results_text=Search Results - Click Here For Full Results\nno_results_text=No results found\nreadmore_text=Read More...\nbutton=Yes\nbutton_pos=right\nsearchphrase=any\nordering=newest\nlimit=5\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(716, 'Our Services', '<p>Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dosectetur adipisicing elit, sed do.</p>', 0, 'top_row3_1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-black2\n\n', 0, 0, ''),
(717, 'Affordable Pricing', '<p>Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dosectetur adipisicing elit, sed do.</p>', 0, 'top_row3_2', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(718, 'Our qualifications', '<p>Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labolore magna aliqua. Ut enim ad minim veniam. Lorem ipsum dosectetur adipisicing elit, sed do.</p>', 0, 'top_row3_3', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-blackfull\n\n', 0, 0, ''),
(752, 'S5 Quick Contact', '', 0, 'bottom_row1_3', 0, '0000-00-00 00:00:00', 0, 'mod_s5_quick_contact', 0, 0, 1, 'moduleclass_sfx=\npretext=\nadminemail=test@test.com\nsubjectprefix=Website Submission -\nnametext=Name...\nemailtext=Email...\nsubjecttext=Subject...\nbodytext=Your Message...\nspamtext=Enter The Code\nsendtext=Send Message\nwidth=90%\nheight=55px\nthankyou=Your email is now being submitted - Thank you!\nemailerror=Your email address is not valid, please check again - Thank you!\nnotcomplete=All fields are required, please complete the form - Thank you!\nspamerror=Your spam verification answer is incorrect.\nex1=\nex2=\nex3=\nex4=\nex5=\nex6=\nex7=\nex8=\nex9=\nex10=\nex11=\nex12=\nex13=\nex14=\nex15=\nex16=\nex17=\nex18=\nex19=\nex20=\nex21=\nex22=\nex23=\nex24=\nex25=\nex26=\nex27=\nex28=\nex29=\nex30=\n\n', 0, 0, ''),
(751, 'Our Fans', '<div class="likeboxwrap" style="padding:0px; margin:0px; overflow:hidden; width:189px; height:262px">\r\n<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fshape5.templates&amp;width=189&amp;colorscheme=light&amp;show_faces=true&amp;border_color&amp;stream=false&amp;header=false&amp;height=256" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:189px; height:256px;" allowTransparency="true"></iframe>\r\n</div>', 0, 'right_inset', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(748, 'Our Promise', '<img src="images/symbol.png" border="0" style="margin-left:15px;" />\r\n<br/><br/><br/>\r\n<div style="margin-left:10px;">\r\nWe work until you’re happy</div>', 0, 'right_inset', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-solidcolor\n\n', 0, 0, ''),
(747, 'FP Slideshow', '', 0, 'top_row1_1', 0, '0000-00-00 00:00:00', 0, 'mod_s5_image_and_content_fader', 0, 0, 0, 'pretext=\nmoduleclass_sfx=-none\nheight=380px\nwidth=869px\nbackground=\njslibrary=mootools124\njseffect=fade\ns5_dropdowntext=Open Gallery\ns5_delay=4000\ns5_hidecar=falsee\ns5_hidebut=falsee\ns5_hidetext=falsee\ntitle1=Over 30 years of Experience\ntitle2=Edited Image and Content Fader\ntitle3=S5 Map it with Google V2\ntitle4=\ntitle5=\ntitle6=\ntitle7=\ntitle8=\ntitle9=\ntitle10=\npicture1=images/fp/1.jpg\npicture1link=\npicture1text=Let us help you get your next project off the ground.\npicture2=images/fp/2.jpg\npicture2link=\npicture2text=Let us help you get your next project off the ground.\npicture3=images/fp/3.jpg\npicture3link=\npicture3text=Let us help you get your next project off the ground.\npicture4=\npicture4link=\npicture4text=\npicture5=\npicture5link=\npicture5text=\npicture6=\npicture6link=\npicture6text=\npicture7=\npicture7link=\npicture7text=\npicture8=\npicture8link=\npicture8text=\npicture9=\npicture9link=\npicture9text=\npicture10=\npicture10link=\npicture10text=\n\n', 0, 0, ''),
(488, 'Right', 'This is an example of a module published to the right position. There is also a left position and many others, be sure to read the full description. This is the default style that will appear for most modules.', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(489, 'Right Inset', 'This is an example of a module published to the right_inset position. There is also a left_inset position and many others, be sure to read the full description.', 0, 'right_inset', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(252, 'Our Latest News', '', 0, 'bottom_row1_2', 0, '0000-00-00 00:00:00', 0, 'mod_latestnews', 0, 0, 1, 'count=4\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=1\ncatid=1\nmoduleclass_sfx=-style5\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(505, 'Demo Information', '<div style=" float: left;        width: 143px;">\r\n6399 North Wells Road<br/>\r\nBigtownville, CO, USA 12345\r\n</div>\r\n\r\n<div style="float: right;\r\n    margin-right: 0px;\r\n    width: 142px">\r\nMon. to Fri. 9am to 5pm<br/>\r\nWeekends 9am to 12am\r\n</div>\r\n<div style="clear:both;"></div>', 0, 'bottom_row1_1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(597, 'S5 Box', '', 0, 'bottom_menu', 0, '0000-00-00 00:00:00', 1, 'mod_s5_box', 0, 0, 1, 's5_jsversion=mootools\ns5_moover=moo124\ns5_boxeffect=elastic\ns5boxwidth1=35\ns5boxwidth2=35\ns5boxwidth3=35\ns5boxwidth4=35\ns5boxwidth5=35\ns5boxwidth6=35\ns5boxwidth7=35\ns5boxwidth8=35\ns5boxwidth9=35\ns5boxwidth10=35\nmoduleclass_sfx=-s5_box\n\n', 0, 0, ''),
(504, 'Register', '', 0, 'register', 0, '0000-00-00 00:00:00', 0, 'mod_s5_register', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(561, 'Featured News', '', 0, 'right_inset', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 0, 'catid=60\nlayout=vert\nimage=0\nlink_titles=1\nshowLastSeparator=0\nreadmore=0\nitem_title=1\nitems=6\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(484, 'Mobile Top 1', 'This is the default mobile_top_1 position and is shown only on mobile devices.', 2, 'mobile_top_1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(485, 'Mobile Top 2', 'This is the default mobile_top_2 position and is shown only on mobile devices.', 2, 'mobile_top_2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(476, 'Middle Menu', '', 1, 'middle_menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=second-menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(477, 'Top Menu', '', 0, 'top_menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=Bottom-Menu-4\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(479, 'Top Row2 Modules', 'This is an example of a module published to the top_row_2 row. This row contains 6 modules, read below for a full description.', 0, 'top_row1_1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(480, 'Top Row3 Modules', '<p>This is an example of a module published to the top_row_3 row. This row contains 6 modules, read below for a full description.</p>', 3, 'top_row3_1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(481, 'Bottom Row1 Modules', 'This is an example of a module published to the bottom_row_1 row. This row contains 6 modules, read above for a full description.', 4, 'bottom_row1_1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(482, 'Bottom Row2 Modules', 'This is an example of a module published to the bottom_row_2 row. This row contains 6 modules, read above for a full description.', 0, 'bottom_row2_1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(483, 'Bottom Row3 Modules', 'This is an example of a module published to the bottom_row_3 row. This row contains 6 modules, read above for a full description.', 1, 'bottom_row3_1', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(585, 'Quick Menu', '', 0, 'bottom_row3_2', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=Bottom-Menu-1\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=-style2\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(611, 'This is -black2', 'This is the -black2 module style and can be applied to most positions.', 5, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-black2\n\n', 0, 0, ''),
(612, 'This is -blackfull', 'This is the -blackfull module style and can be applied to most positions.', 6, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-blackfull\n\n', 0, 0, ''),
(750, 'Client Testimonials', '<blockquote>Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labolore magna aliqua. Ut enim ad minim veniam. </blockquote>\r\n\r\n<blockquote>Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labol</blockquote>', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(548, 'Bottom Menu', '', 2, 'bottom_menu', 62, '2011-04-06 00:31:56', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=second-menu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(549, 'Faq List', '', 0, 'bottom_row3_3', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=Bottom-Menu-2\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=-style1\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(587, 'Who We Are', '', 0, 'bottom_row3_3', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=Bottom-Menu-3\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(608, 'S5 Flex Menu Sample Module', '<div style="width:182px;font-size:0.85em"><div style="float:left;height: 65px;width: 99px;"><img style="height:58px" src="http://www.shape5.com/demo/images/multibox3.jpg" class="boxed" alt=""></img></div>This is a sample module to showcase the functionality of the S5 Flex Menu system. This menu system contains up to 40 module positions and you can publish any module to any of these positions under any menu item.</div>', 0, 's5_menu1', 62, '2012-01-10 21:48:53', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, ''),
(609, 'This is -solidcolor', 'This is the -solidcolor module style and can be applied to most positions.', 7, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-solidcolor\n\n', 0, 0, ''),
(724, 'S5 Tab Show', '', 17, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_s5_tabshow', 0, 0, 0, 'pretext=\nmoduleclass_sfx=\ns5_width=230\ns5_buttonheight=27px\ns5_lineheight=2.2em\ns5_buttoncolor=transparent\ns5_buttonimage=../modules/mod_s5_tabshow/s5_tabshow/s5_tab_show_nonactive.png\ns5_hovercolor=#FFFFFF\ns5_hoverimage=../modules/mod_s5_tabshow/s5_tabshow/s5_tab_show_active.png\ns5_fontcolor=#000000\ns5_javascript=mootools\ns5_mootoolsmouse=mouse\ns5_effectsani=fade\ns5_effectmouse=mouse\ntext1line=When to Restore?\ntext2line=Building Costs\ntext3line=\ntext4line=\ntext5line=\ntext6line=\ntext7line=\ntext8line=\ntext9line=\ntext10line=\n\n', 0, 0, ''),
(730, 'tab2', '<ul class="ul_star">\r\n\r\n<li>Lorem ipsum dolor sit amet consec tetuer lacus vel dui leo enim.</li> <li>Nibh aliquam partur ient Proin convallis Nunc a dui Suspe ndisse Maecenas nascetur.</li> <li>In Pelle ntesque tempor.<br/><br/>Lorem ipsum dolor sit amet consec tetuer lacus vel dui leo enim.</li>\r\n\r\n</ul>', 0, 's5_tab2', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(729, 'tab1', '<iframe src="http://player.vimeo.com/video/29777584?title=0&amp;byline=0&amp;portrait=0" width="210" height="160" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>\r\n<br/><br/>\r\nSuspe ndisse Maecenas nascetur. In Pelle ntesque tempor. Lorem ipsum dosectetur adipisicing elit, sed do.', 0, 's5_tab1', 62, '2012-01-10 04:59:44', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(741, 'Banner Position', 'This is a custom html module published to the ''banner'' position with the suffix -style1 applied.', 2, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-style1\n\n', 0, 0, ''),
(740, 'image slide 3', '<div onclick="window.document.location.href=''index.php?option=com_content&amp;view=article&amp;id=208&amp;Itemid=312''" style="cursor:pointer; background:url(images/is_3.jpg);width:583px;height:305px">\r\n\r\n<div class="s5_image_slide_text_large">\r\nNewsboys - New 2012 Tour Starting Soon\r\n</div>\r\n<div style="clear:both;height:0px"></div>\r\n<div class="s5_image_slide_text_small">\r\nFusce a sollicitudin ligula vesti honcus solli citudin lipsum elementum.\r\n</div>\r\n\r\n</div>', 0, 'imageslide_3', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(723, 'Connect With Us', '<ul class="s5_tweet">\r\n\r\n<li>\r\nLorem ipsum dolor sit amet, Phasellus \r\nadipiscing lobortis nulla ut egestas. Etiam \r\net dolor neque, et aliquet nulla. Phasellus \r\nadipiscing lobortis nulla ut egestas. \r\n</li>\r\n\r\n\r\n<li>\r\nEtiam et dolor neque, et aliquet nulla. Phasellus adipiscing lobortis nulla ut egestas. Etiam et dolor neque, et aliquet nulla lorem ipsum.\r\n</li>\r\n\r\n\r\n<li>\r\nLibero tellus sit ipsum ante eu Curabitur nibh Sed Pellentesque nisl. Nibh quis laoreet mauris mi est quis nibh porttitor ac pulvinar. Condimentum facilisi Phasellus tempus wisi facilisi ut. \r\n</li>\r\n\r\n</ul>', 0, 'bottom_row1_3', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(749, 'Recent Tweets', 'Ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt \r\n\r\n<br/><br/>\r\nadipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labolor\r\n<br/><br/>\r\nIpsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labolor', 1, 'bottom_row1_2', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(701, 'Sample Drop Down Module', 'This is an example of a module published to the drop_down row. This row contains 6 modules. To enable the drop down simple publish any module to any of the drop_down_x positions.', 0, 'drop_down_1', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, ''),
(702, 'S5 Vertex Framework', 'OUR FRAMEWORK IS A SET OF FUNCTIONS THAT CREATES THE CORE STRUCTURE OF A TEMPLATE. <a target="blank" href="http://www.shape5.com/joomla/framework/vertex_framework.html">READ MORE...</a>', 3, 'banner', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=-style1\n\n', 0, 0, ''),
(757, 'Interdesigns Slider', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_idslider', 0, 0, 1, 'type=1\nordering=1\nwindow=1\nwidth=468\nheight=60\nresize=1\ncenter=1\nautoplay=1\nmode=horizontal\nmode_dir=left\ninterval=5000\nuse_transition=1\ntransition=Bounce\ntransition_ease=easeOut\ntransition_duration=1000\n', 0, 0, ''),
(762, 'Article List', '', 9, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_articlelist', 0, 0, 1, 'moduleclass_sfx=\nsection_id=\ncategory_id=1\nno_of_items=20\nno_of_chars=0\norder_field=cn.ordering\norder_by=asc\nuse_cache=N\n\n', 0, 0, ''),
(759, 'frontpage slideshow', '', 0, 'top_row1_1', 0, '0000-00-00 00:00:00', 1, 'mod_yoo_carousel', 0, 0, 0, 'catid=3\nstyle=slideshow\nmodule_width=869\nmodule_height=380\ntab_width=0\nautoplay=on\nslide_interval=5000\ntransition_duration=1000\ntransition_effect=crossfade\ncontrol_panel=none\nrotate_action=none\nrotate_duration=200\nrotate_effect=scroll\nbuttons=0\norder=o_asc\nreadmore=0\nitems=3\nmoduleclass_sfx=-none\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(761, 'JCE File Browser', '', 100, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_jcefilebrowser', 0, 2, 1, '', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 0),
(17, 0),
(18, 0),
(20, 0),
(21, 2),
(21, 5),
(21, 7),
(21, 8),
(21, 23),
(21, 27),
(21, 28),
(21, 81),
(21, 88),
(21, 89),
(21, 93),
(21, 96),
(21, 97),
(21, 99),
(21, 113),
(21, 120),
(21, 207),
(21, 225),
(21, 226),
(21, 230),
(21, 252),
(21, 266),
(21, 269),
(21, 310),
(21, 313),
(21, 324),
(21, 331),
(21, 332),
(21, 336),
(21, 338),
(21, 339),
(22, 1),
(22, 2),
(22, 5),
(22, 7),
(22, 8),
(22, 23),
(22, 26),
(22, 27),
(22, 28),
(22, 32),
(22, 33),
(22, 34),
(22, 35),
(22, 36),
(22, 37),
(22, 38),
(22, 47),
(22, 48),
(22, 81),
(22, 88),
(22, 89),
(22, 93),
(22, 96),
(22, 97),
(22, 99),
(22, 100),
(22, 113),
(22, 120),
(22, 141),
(22, 142),
(22, 201),
(22, 202),
(22, 207),
(22, 210),
(22, 211),
(22, 213),
(22, 214),
(22, 225),
(22, 226),
(22, 228),
(22, 230),
(22, 232),
(22, 233),
(22, 234),
(22, 250),
(22, 252),
(22, 259),
(22, 264),
(22, 266),
(22, 268),
(22, 269),
(22, 270),
(22, 275),
(22, 276),
(22, 277),
(22, 278),
(22, 279),
(22, 280),
(22, 281),
(22, 282),
(22, 283),
(22, 284),
(22, 285),
(22, 286),
(22, 287),
(22, 288),
(22, 289),
(22, 290),
(22, 291),
(22, 292),
(22, 293),
(22, 294),
(22, 295),
(22, 309),
(22, 310),
(22, 311),
(22, 312),
(22, 313),
(22, 314),
(22, 315),
(22, 316),
(22, 317),
(22, 318),
(22, 319),
(22, 320),
(22, 321),
(22, 322),
(22, 324),
(22, 325),
(22, 327),
(22, 328),
(22, 330),
(22, 331),
(22, 332),
(22, 334),
(22, 336),
(23, 0),
(24, 0),
(27, 1),
(27, 2),
(27, 5),
(27, 7),
(27, 8),
(27, 23),
(27, 26),
(27, 27),
(27, 28),
(27, 32),
(27, 33),
(27, 34),
(27, 35),
(27, 36),
(27, 37),
(27, 38),
(27, 47),
(27, 48),
(27, 81),
(27, 88),
(27, 89),
(27, 93),
(27, 96),
(27, 97),
(27, 99),
(27, 100),
(27, 113),
(27, 120),
(27, 141),
(27, 142),
(27, 201),
(27, 202),
(27, 207),
(27, 210),
(27, 211),
(27, 213),
(27, 214),
(27, 225),
(27, 226),
(27, 228),
(27, 230),
(27, 233),
(27, 234),
(27, 250),
(27, 252),
(27, 259),
(27, 264),
(27, 266),
(27, 268),
(27, 269),
(27, 270),
(27, 275),
(27, 276),
(27, 277),
(27, 278),
(27, 279),
(27, 280),
(27, 281),
(27, 282),
(27, 283),
(27, 284),
(27, 285),
(27, 286),
(27, 287),
(27, 288),
(27, 289),
(27, 290),
(27, 291),
(27, 292),
(27, 293),
(27, 294),
(27, 295),
(27, 309),
(27, 310),
(27, 311),
(27, 312),
(27, 313),
(27, 314),
(27, 315),
(27, 316),
(27, 317),
(27, 318),
(27, 319),
(27, 320),
(27, 321),
(27, 322),
(27, 324),
(27, 325),
(27, 327),
(27, 328),
(27, 330),
(27, 331),
(27, 332),
(27, 334),
(27, 336),
(27, 338),
(27, 339),
(27, 340),
(27, 341),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(34, 0),
(35, 2),
(35, 5),
(35, 7),
(35, 8),
(35, 23),
(35, 26),
(35, 27),
(35, 28),
(35, 32),
(35, 33),
(35, 34),
(35, 35),
(35, 36),
(35, 37),
(35, 38),
(35, 47),
(35, 48),
(35, 81),
(35, 88),
(35, 89),
(35, 93),
(35, 96),
(35, 97),
(35, 99),
(35, 100),
(35, 113),
(35, 120),
(35, 141),
(35, 142),
(35, 201),
(35, 202),
(35, 207),
(35, 210),
(35, 211),
(35, 213),
(35, 214),
(35, 225),
(35, 226),
(35, 228),
(35, 230),
(35, 233),
(35, 234),
(35, 250),
(35, 252),
(35, 259),
(35, 264),
(35, 266),
(35, 268),
(35, 269),
(35, 270),
(35, 275),
(35, 276),
(35, 277),
(35, 278),
(35, 279),
(35, 280),
(35, 281),
(35, 282),
(35, 283),
(35, 284),
(35, 285),
(35, 286),
(35, 287),
(35, 288),
(35, 289),
(35, 290),
(35, 291),
(35, 292),
(35, 293),
(35, 294),
(35, 295),
(35, 309),
(35, 310),
(35, 311),
(35, 312),
(35, 313),
(35, 314),
(35, 315),
(35, 316),
(35, 317),
(35, 318),
(35, 319),
(35, 320),
(35, 321),
(35, 322),
(35, 324),
(35, 325),
(35, 327),
(35, 328),
(35, 330),
(35, 331),
(35, 332),
(35, 334),
(35, 336),
(35, 338),
(35, 339),
(35, 340),
(35, 341),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(60, 0),
(120, 49),
(120, 90),
(131, 0),
(219, 0),
(220, 0),
(248, 1),
(249, 1),
(252, 1),
(252, 2),
(252, 5),
(252, 7),
(252, 8),
(252, 23),
(252, 26),
(252, 27),
(252, 28),
(252, 32),
(252, 33),
(252, 34),
(252, 35),
(252, 36),
(252, 37),
(252, 38),
(252, 47),
(252, 48),
(252, 81),
(252, 88),
(252, 89),
(252, 93),
(252, 96),
(252, 97),
(252, 99),
(252, 100),
(252, 113),
(252, 120),
(252, 141),
(252, 142),
(252, 201),
(252, 202),
(252, 207),
(252, 210),
(252, 211),
(252, 213),
(252, 214),
(252, 225),
(252, 226),
(252, 228),
(252, 230),
(252, 232),
(252, 233),
(252, 234),
(252, 250),
(252, 252),
(252, 259),
(252, 264),
(252, 266),
(252, 268),
(252, 269),
(252, 270),
(252, 275),
(252, 276),
(252, 277),
(252, 278),
(252, 279),
(252, 280),
(252, 281),
(252, 282),
(252, 283),
(252, 284),
(252, 285),
(252, 286),
(252, 287),
(252, 288),
(252, 289),
(252, 290),
(252, 291),
(252, 292),
(252, 293),
(252, 294),
(252, 295),
(252, 309),
(252, 310),
(252, 311),
(252, 312),
(252, 313),
(252, 314),
(252, 315),
(252, 316),
(252, 317),
(252, 318),
(252, 319),
(252, 320),
(252, 321),
(252, 322),
(252, 324),
(252, 325),
(252, 327),
(252, 328),
(252, 330),
(252, 331),
(252, 332),
(252, 334),
(252, 336),
(258, 1),
(259, 1),
(435, 1),
(435, 28),
(435, 47),
(435, 48),
(435, 141),
(435, 343),
(435, 344),
(476, 0),
(477, 0),
(478, 1),
(480, 49),
(480, 90),
(481, 49),
(481, 90),
(481, 251),
(482, 49),
(482, 90),
(482, 251),
(483, 49),
(483, 90),
(483, 251),
(484, 1),
(485, 1),
(486, 1),
(487, 0),
(488, 49),
(488, 90),
(489, 0),
(504, 0),
(505, 1),
(505, 2),
(505, 5),
(505, 7),
(505, 8),
(505, 23),
(505, 26),
(505, 27),
(505, 28),
(505, 32),
(505, 33),
(505, 34),
(505, 35),
(505, 36),
(505, 37),
(505, 38),
(505, 47),
(505, 48),
(505, 81),
(505, 88),
(505, 89),
(505, 93),
(505, 96),
(505, 97),
(505, 99),
(505, 100),
(505, 113),
(505, 120),
(505, 141),
(505, 142),
(505, 201),
(505, 202),
(505, 207),
(505, 210),
(505, 211),
(505, 213),
(505, 214),
(505, 225),
(505, 226),
(505, 228),
(505, 230),
(505, 233),
(505, 234),
(505, 250),
(505, 252),
(505, 259),
(505, 264),
(505, 266),
(505, 268),
(505, 269),
(505, 270),
(505, 275),
(505, 276),
(505, 277),
(505, 278),
(505, 279),
(505, 280),
(505, 281),
(505, 282),
(505, 283),
(505, 284),
(505, 285),
(505, 286),
(505, 287),
(505, 288),
(505, 289),
(505, 290),
(505, 291),
(505, 292),
(505, 293),
(505, 294),
(505, 295),
(505, 309),
(505, 310),
(505, 311),
(505, 312),
(505, 313),
(505, 314),
(505, 315),
(505, 316),
(505, 317),
(505, 318),
(505, 319),
(505, 320),
(505, 321),
(505, 322),
(505, 324),
(505, 325),
(505, 327),
(505, 328),
(505, 330),
(505, 331),
(505, 332),
(505, 334),
(505, 336),
(548, 0),
(549, 1),
(549, 2),
(549, 5),
(549, 7),
(549, 8),
(549, 23),
(549, 26),
(549, 27),
(549, 28),
(549, 32),
(549, 33),
(549, 34),
(549, 35),
(549, 36),
(549, 37),
(549, 38),
(549, 47),
(549, 48),
(549, 81),
(549, 88),
(549, 89),
(549, 93),
(549, 96),
(549, 97),
(549, 99),
(549, 100),
(549, 113),
(549, 120),
(549, 141),
(549, 142),
(549, 201),
(549, 202),
(549, 207),
(549, 210),
(549, 211),
(549, 213),
(549, 214),
(549, 225),
(549, 226),
(549, 228),
(549, 230),
(549, 232),
(549, 233),
(549, 234),
(549, 250),
(549, 252),
(549, 259),
(549, 264),
(549, 266),
(549, 268),
(549, 269),
(549, 270),
(549, 275),
(549, 276),
(549, 277),
(549, 278),
(549, 279),
(549, 280),
(549, 281),
(549, 282),
(549, 283),
(549, 284),
(549, 285),
(549, 286),
(549, 287),
(549, 288),
(549, 289),
(549, 290),
(549, 291),
(549, 292),
(549, 293),
(549, 294),
(549, 295),
(549, 309),
(549, 310),
(549, 311),
(549, 312),
(549, 313),
(549, 314),
(549, 315),
(549, 316),
(549, 317),
(549, 318),
(549, 319),
(549, 320),
(549, 321),
(549, 322),
(549, 324),
(549, 325),
(549, 327),
(549, 328),
(549, 330),
(549, 331),
(549, 332),
(549, 334),
(549, 336),
(561, 1),
(585, 1),
(585, 2),
(585, 5),
(585, 7),
(585, 8),
(585, 23),
(585, 26),
(585, 27),
(585, 28),
(585, 32),
(585, 33),
(585, 34),
(585, 35),
(585, 36),
(585, 37),
(585, 38),
(585, 47),
(585, 48),
(585, 81),
(585, 88),
(585, 89),
(585, 93),
(585, 96),
(585, 97),
(585, 99),
(585, 100),
(585, 113),
(585, 120),
(585, 141),
(585, 142),
(585, 201),
(585, 202),
(585, 207),
(585, 210),
(585, 211),
(585, 213),
(585, 214),
(585, 225),
(585, 226),
(585, 228),
(585, 230),
(585, 232),
(585, 233),
(585, 234),
(585, 250),
(585, 252),
(585, 259),
(585, 264),
(585, 266),
(585, 268),
(585, 269),
(585, 270),
(585, 275),
(585, 276),
(585, 277),
(585, 278),
(585, 279),
(585, 280),
(585, 281),
(585, 282),
(585, 283),
(585, 284),
(585, 285),
(585, 286),
(585, 287),
(585, 288),
(585, 289),
(585, 290),
(585, 291),
(585, 292),
(585, 293),
(585, 294),
(585, 295),
(585, 309),
(585, 310),
(585, 311),
(585, 312),
(585, 313),
(585, 314),
(585, 315),
(585, 316),
(585, 317),
(585, 318),
(585, 319),
(585, 320),
(585, 321),
(585, 322),
(585, 324),
(585, 325),
(585, 327),
(585, 328),
(585, 330),
(585, 331),
(585, 332),
(585, 334),
(585, 336),
(587, 1),
(587, 2),
(587, 5),
(587, 7),
(587, 8),
(587, 23),
(587, 26),
(587, 27),
(587, 28),
(587, 32),
(587, 33),
(587, 34),
(587, 35),
(587, 36),
(587, 37),
(587, 38),
(587, 47),
(587, 48),
(587, 81),
(587, 88),
(587, 89),
(587, 93),
(587, 96),
(587, 97),
(587, 99),
(587, 100),
(587, 113),
(587, 120),
(587, 129),
(587, 141),
(587, 142),
(587, 201),
(587, 202),
(587, 207),
(587, 210),
(587, 211),
(587, 213),
(587, 214),
(587, 225),
(587, 226),
(587, 228),
(587, 230),
(587, 232),
(587, 233),
(587, 234),
(587, 250),
(587, 252),
(587, 259),
(587, 264),
(587, 266),
(587, 268),
(587, 269),
(587, 270),
(587, 275),
(587, 276),
(587, 277),
(587, 278),
(587, 279),
(587, 280),
(587, 281),
(587, 282),
(587, 283),
(587, 284),
(587, 285),
(587, 286),
(587, 287),
(587, 288),
(587, 289),
(587, 290),
(587, 291),
(587, 292),
(587, 293),
(587, 294),
(587, 295),
(587, 310),
(587, 313),
(587, 323),
(587, 324),
(587, 325),
(587, 327),
(589, 0),
(590, 1),
(590, 2),
(590, 5),
(590, 7),
(590, 8),
(590, 23),
(590, 26),
(590, 27),
(590, 28),
(590, 29),
(590, 30),
(590, 31),
(590, 32),
(590, 33),
(590, 34),
(590, 35),
(590, 36),
(590, 37),
(590, 38),
(590, 47),
(590, 48),
(590, 81),
(590, 88),
(590, 89),
(590, 93),
(590, 96),
(590, 97),
(590, 99),
(590, 100),
(590, 113),
(590, 118),
(590, 120),
(590, 129),
(590, 141),
(590, 142),
(590, 177),
(590, 198),
(590, 201),
(590, 202),
(590, 207),
(590, 210),
(590, 211),
(590, 213),
(590, 214),
(590, 225),
(590, 226),
(590, 228),
(590, 230),
(590, 232),
(590, 233),
(590, 234),
(590, 250),
(590, 252),
(590, 255),
(590, 256),
(590, 258),
(590, 259),
(590, 264),
(590, 265),
(590, 266),
(590, 268),
(590, 269),
(590, 270),
(590, 275),
(590, 276),
(590, 277),
(590, 278),
(590, 279),
(590, 280),
(590, 281),
(590, 282),
(590, 283),
(590, 284),
(590, 285),
(590, 286),
(590, 287),
(590, 288),
(590, 289),
(590, 290),
(590, 291),
(590, 292),
(590, 293),
(590, 294),
(590, 295),
(590, 301),
(590, 302),
(590, 303),
(590, 304),
(590, 305),
(590, 306),
(590, 307),
(597, 0),
(608, 0),
(609, 49),
(609, 90),
(611, 49),
(611, 90),
(612, 49),
(612, 90),
(701, 49),
(701, 90),
(701, 336),
(702, 1),
(702, 2),
(702, 5),
(702, 7),
(702, 8),
(702, 23),
(702, 26),
(702, 27),
(702, 28),
(702, 32),
(702, 33),
(702, 34),
(702, 35),
(702, 36),
(702, 37),
(702, 38),
(702, 47),
(702, 48),
(702, 81),
(702, 88),
(702, 89),
(702, 93),
(702, 96),
(702, 97),
(702, 99),
(702, 100),
(702, 113),
(702, 120),
(702, 141),
(702, 142),
(702, 201),
(702, 202),
(702, 207),
(702, 210),
(702, 211),
(702, 213),
(702, 214),
(702, 225),
(702, 226),
(702, 228),
(702, 230),
(702, 233),
(702, 234),
(702, 250),
(702, 252),
(702, 259),
(702, 264),
(702, 266),
(702, 268),
(702, 269),
(702, 270),
(702, 275),
(702, 276),
(702, 277),
(702, 278),
(702, 279),
(702, 280),
(702, 281),
(702, 282),
(702, 283),
(702, 284),
(702, 285),
(702, 286),
(702, 287),
(702, 288),
(702, 289),
(702, 290),
(702, 291),
(702, 292),
(702, 293),
(702, 294),
(702, 295),
(702, 309),
(702, 310),
(702, 311),
(702, 312),
(702, 313),
(702, 314),
(702, 315),
(702, 316),
(702, 317),
(702, 318),
(702, 319),
(702, 320),
(702, 321),
(702, 322),
(702, 324),
(702, 325),
(702, 327),
(702, 328),
(702, 330),
(702, 331),
(702, 332),
(702, 334),
(702, 336),
(702, 338),
(702, 339),
(702, 340),
(702, 341),
(711, 0),
(712, 0),
(716, 1),
(717, 1),
(718, 1),
(723, 1),
(723, 2),
(723, 5),
(723, 7),
(723, 8),
(723, 23),
(723, 26),
(723, 27),
(723, 28),
(723, 32),
(723, 33),
(723, 34),
(723, 35),
(723, 36),
(723, 37),
(723, 38),
(723, 47),
(723, 48),
(723, 81),
(723, 88),
(723, 89),
(723, 93),
(723, 96),
(723, 97),
(723, 99),
(723, 100),
(723, 113),
(723, 120),
(723, 141),
(723, 142),
(723, 201),
(723, 202),
(723, 207),
(723, 210),
(723, 211),
(723, 213),
(723, 214),
(723, 225),
(723, 226),
(723, 228),
(723, 230),
(723, 233),
(723, 234),
(723, 250),
(723, 252),
(723, 259),
(723, 264),
(723, 266),
(723, 268),
(723, 269),
(723, 270),
(723, 275),
(723, 276),
(723, 277),
(723, 278),
(723, 279),
(723, 280),
(723, 281),
(723, 282),
(723, 283),
(723, 284),
(723, 285),
(723, 286),
(723, 287),
(723, 288),
(723, 289),
(723, 290),
(723, 291),
(723, 292),
(723, 293),
(723, 294),
(723, 295),
(723, 309),
(723, 310),
(723, 311),
(723, 312),
(723, 313),
(723, 314),
(723, 315),
(723, 316),
(723, 317),
(723, 318),
(723, 319),
(723, 320),
(723, 321),
(723, 322),
(723, 324),
(723, 325),
(723, 327),
(723, 328),
(723, 330),
(723, 331),
(723, 332),
(723, 334),
(723, 336),
(724, 1),
(724, 120),
(729, 0),
(730, 0),
(740, 0),
(741, 49),
(741, 90),
(747, 1),
(748, 1),
(749, 1),
(750, 1),
(751, 1),
(752, 1),
(754, 1),
(754, 342),
(755, 0),
(757, 0),
(759, 1),
(761, 0),
(762, 141);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 62, '2008-09-14 00:24:25', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:37', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:25:51', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:11', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 62, '2008-09-14 00:26:51', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=271 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'VirtueMart Product Snapshot', 'vmproductsnapshots', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nshowname=n\nshowimage=n\nshowdesc=n\nshowprice=n\nquantity=1\nshowaddtocart=n\ndisplayeach=h\ndisplaylist=v\n'),
(35, 'Virtuemart Extended Search Plugin', 'vmxsearch.plugin', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'density_flag=1\nname_flag=1\nsku_flag=1\ndesc_flag=1\nsdesc_flag=1\nurl_flag=1\nreview_flag=1\nmanufacturer_flag=1\ncategory_flag=1\nparent_filter=both\n'),
(44, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(167, 'System - S5 Flex Menu', 'S5FlexMenu', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(270, 'Editor - JCE', 'jce', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, '', 0),
(5, 14, '', 0),
(6, 14, '', 2),
(7, 14, '', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Select a news topic from the list below, then select a news article to read.', 1, 0, '0000-00-00 00:00:00', 3, 0, 5, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'About Joomla!', '', 'about-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 19, ''),
(21, 'Frontpage', '', 'frontpage', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 1, ''),
(22, 'Featured News', '', 'featured-news', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 7, 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('admin', '1423089793', 'ft2j483g2lfpslgitll7qqegt3', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:15:"session.counter";i:140;s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:4:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:11:"com_content";a:1:{s:4:"data";O:8:"stdClass":8:{s:23:"viewcontentfilter_order";s:12:"section_name";s:27:"viewcontentfilter_order_Dir";s:0:"";s:23:"viewcontentfilter_state";s:0:"";s:16:"viewcontentcatid";i:1;s:26:"viewcontentfilter_authorid";i:0;s:27:"viewcontentfilter_sectionid";i:-1;s:17:"viewcontentsearch";s:0:"";s:21:"viewcontentlimitstart";i:0;}}s:6:"global";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:0;}}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:16:"admin@rouamat.gr";s:8:"password";s:65:"86a37f3282773e1dc1e45c646dbac2b2:lVvSt2QQYDyti3q768R5ibysQmjNRAEN";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2012-03-27 16:38:21";s:13:"lastvisitDate";s:19:"2015-02-04 21:09:08";s:10:"activation";s:0:"";s:6:"params";s:59:"admin_language=\nlanguage=\neditor=jce\nhelpsite=\ntimezone=0\n\n";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:60:"C:\\wamp\\www\\magazine\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":5:{s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:3:"jce";s:8:"helpsite";s:0:"";s:8:"timezone";s:1:"0";}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"9e22c453f587d16bb3ee212113e20982";s:19:"session.timer.start";i:1423086260;s:18:"session.timer.last";i:1423089792;s:17:"session.timer.now";i:1423089793;}__wf|a:1:{s:13:"session.token";s:32:"8f9c7d7337d4e5a335d4c0f11009d45f";}'),
('', '1423089775', 'f0aeadbddadea181c80e825039a07cde', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:29;s:19:"session.timer.start";i:1423086963;s:18:"session.timer.last";i:1423089699;s:17:"session.timer.now";i:1423089775;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:60:"C:\\wamp\\www\\magazine\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('construction', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'admin@rouamat.gr', '86a37f3282773e1dc1e45c646dbac2b2:lVvSt2QQYDyti3q768R5ibysQmjNRAEN', 'Super Administrator', 0, 1, 25, '2012-03-27 16:38:21', '2015-02-04 21:44:20', '', 'admin_language=\nlanguage=\neditor=jce\nhelpsite=\ntimezone=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Home of Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'The language that Joomla! is developed in', '2004-07-07 11:33:24', 8, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'The database that Joomla! uses', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Home of OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', 'Joomla! Forums', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', 'Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_wf_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_wf_profiles`
--

INSERT INTO `jos_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '19,20,21,23,24,25', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '19,20,21', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '19,20,21,23,24,25', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '19,20,21,23,24,25', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');
