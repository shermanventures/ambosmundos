<?php
/**
 * @package     Vertex Framework
 * @version		1.0
 * @author		Shape 5 http://www.shape5.com
 * @copyright 	Copyright (C) 2007 - 2010 Shape 5, LLC
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 */
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.html.html');
jimport('joomla.form.formfield');//import the necessary class definition for formfield

$dir = dirname(dirname(dirname(dirname(__FILE__))));
if (file_exists($dir . '/templateDetails.xml')) {
    $template_xml = simplexml_load_file($dir . '/templateDetails.xml', 'SimpleXMLElement', LIBXML_NOCDATA);
    $template_name = $template_xml->name;
} else {
    $template_name = 'blank';
}

define('VERTEX_TEMPLATE_NAME', $template_name);

/**
 * Supports an HTML select list of articles
 * @since  1.6
 */
class JElementVertex extends JElement
{
	protected $type = 'Vertex'; //the form field type
    
    function fetchElement($name, $value, &$node, $control_name) {
        
        if(!defined('VERTEX_LOADED')) {
			$vertex_admin_path = JURI::root(true) . '/templates/' . VERTEX_TEMPLATE_NAME . '/vertex/admin';
            $template_path = JURI::root(true) . '/templates/' . VERTEX_TEMPLATE_NAME;
            $document = &JFactory::getDocument();
            JFactory::getApplication()->set('MooToolsVersion', '1.2.4 +Compat');
            JHTML::addIncludePath(JPATH_PLUGINS.DS.'system'.DS.'mtupgrade');
            //replace mootools with our own moo1.3 version
            $moo11 = JURI::root(true) .'/media/system/js/mootools.js';
            $moo12 = JURI::root(true) .'/plugins/system/mtupgrade/mootools.js';
            //$moo13 = '/js/mootools.js';
            $moo13 = '/js/blank.js';
            $moo14 = JURI::root(true) .'/administrator/templates/khepri/js/index.js';
            
            unset($document->_script['text/javascript']);
			
			$document->addStyleSheet($vertex_admin_path . '/vertex.css');
            $document->addScript($vertex_admin_path . '/js/jquery.min.js');
            $document->addScript($vertex_admin_path . '/js/jquery.ui.core.js');
            $document->addScript($vertex_admin_path . '/js/jquery.ui.widget.js');
            $document->addScript($vertex_admin_path . '/js/jquery.ui.mouse.js');
            $document->addScript($vertex_admin_path . '/js/jquery.ui.position.js');
            $document->addScript($vertex_admin_path . '/js/jquery.ui.autocomplete.js');
            
            $document->addScript("$vertex_admin_path/vertexScript.php?path=$vertex_admin_path&template_path=$template_path&template_name=" . VERTEX_TEMPLATE_NAME);
			
            //$document->addStyleSheet(JURI::root(true) . '/templates/simplex/vertex/admin/style.css');
            //$document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.js');
            //$document->addScript('http://jquery-ui.googlecode.com/svn/tags/latest/ui/minified/jquery-ui.min.js');
            $stylelink = '<script type="text/javascript">jQuery.noConflict();</script>';
            //$document->addScript(JURI::root(true) . '/templates/simplex/vertex/admin/jquery.vertexAdmin.min.js');
            
            $document->addCustomTag($stylelink);
            
            $a = array();
            foreach ($document->_scripts as $k => $v) {if ($k == $moo11 || $k == $moo12) { unset($a[$moo13]); } else { $a[$k] = $v; }}
            //foreach ($document->_scripts as $k => $v) {if ($k == $moo14) { unset($a[$moo14]); } else { $a[$k] = $v; }}
            $document->_scripts = $a;
            
            // Initialize variables.
            $session = JFactory::getSession();
            $options = array();
            $attr = '';
            $attr .= $node->attributes('type') ? ' class="'.(string) $node->attributes('type').'"' : '';
            define('VERTEX_LOADED', true);
            // Output
            return '';
        }
	}
}
