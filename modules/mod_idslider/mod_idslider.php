<?php
/**
* @Copyright Copyright (C) 2009-2010 - Ahmed Kandel
* @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the helper functions
require_once(dirname(__FILE__).DS.'helper.php');

// Get list of parameters
$paramslist = modInterdesignsSliderHelper::getParam($params);

// Attache JS files to the document
$doc = &JFactory::getDocument();
if ($paramslist['inc_mootools_js'] == 1) $doc->addScript('modules/mod_idslider/tmpl/mod_idslider_mootools_1.11.js');
$doc->addScript('modules/mod_idslider/tmpl/mod_idslider_class.noobslide.js');

// Get list of banners
$bannerslist = modInterdesignsSliderHelper::getBanners($paramslist);

// Track banners impressions
modInterdesignsSliderHelper::trackImpress($bannerslist, $paramslist['track_impressions']);

// Render banners
require(JModuleHelper::getLayoutPath('mod_idslider'));
?>