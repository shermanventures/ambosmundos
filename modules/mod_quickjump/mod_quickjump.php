<?php
/**
 * Quick Jump for Joomla 1.5! Module Entry Point
 * 
 * @package   
 * @subpackage Modules
 * @link http://nehmewalid.com/
 * @license        GNU/GPL, see LICENSE.php
 * mod_quickjump is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// Include the syndicate functions only once
require_once( dirname(__FILE__).DS.'helper.php' );


$hello = modHelloWorldHelper::getHello( $params );

require( JModuleHelper::getLayoutPath( 'mod_quickjump' ) );

//////////////////////////////////////////////////////////

 

/////////////////////////////////////////////////////////////
?>