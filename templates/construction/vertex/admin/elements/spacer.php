<?php
/**
 * @version		$Id: spacer.php 20972 2011-03-16 13:57:36Z chdemko $
 * @package		Joomla.Framework
 * @subpackage	Parameter
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access
defined('JPATH_BASE') or die;

/**
 * Renders a spacer element
 *
 * @package		Joomla.Framework
 * @subpackage	Parameter
 * @deprecated	JParameter is deprecated and will be removed in a future version. Use JForm instead.
 * @since		1.5
 */

class JElementSpacer extends JElement
{
	/**
	* Element name
	*
	* @access	protected
	* @var		string
	*/
	var	$_name = 'Spacer';

	function fetchTooltip($label, $description, &$node, $control_name, $name) {
		return '&#160;';
	}
    
    function fetchElement($name, $value, &$node, $control_name) {
        $name = explode(':', $name);
        $class1 = 'v-display';
        $class2 = 'notice';
        if (isset($name[1])) {
            $class1 = $name[1];
        }
        if (isset($name[2])) {
            $class2 = $name[2];
        }
		if ($value) {
			return '<div id="' . $name[0] . '" class="' . $class1 . ' ' . $class2 . '">' . JText::_($value) . '</div>';
		} else {
			return '&nbsp;';
		}
	}
}