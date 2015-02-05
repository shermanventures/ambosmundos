<?php
 
// Check to ensure this file is within the rest of the framework
defined('JPATH_BASE') or die();
 
class JElementmenuitems extends JElement{

		var $_name = 'menuitems';
		
		function getTemplateParams(){
			jimport('joomla.filesystem.path');
			
			$cid		= JRequest::getVar('cid', array(), 'method', 'array');
			$cid		= array(JFilterInput::clean(@$cid[0], 'cmd'));
			$template	= $cid[0];
			$client		=& JApplicationHelper::getClientInfo(JRequest::getVar('client', '0', '', 'int'));
			$tBaseDir	= JPath::clean($client->path.DS.'templates');
	
			$ini	= $client->path.DS.'templates'.DS.$template.DS.'params.ini';
			$xml	= $client->path.DS.'templates'.DS.$template.DS.'templateDetails.xml';
	
			jimport('joomla.filesystem.file');
			// Read the ini file
			if (JFile::exists($ini)) {
				$content = JFile::read($ini);
			} else {
				$content = null;
			}
	
			$params = new JParameter($content, $xml, 'template');
			return $params;	
		}		
		
		function fetchElement($name, $value, &$node, $control_name){
			//get the default values
			$template_params = JElementmenuitems::getTemplateParams();

			// build the html select list
			$options    = JHTML::_('menu.linkoptions');
			$result     = JHTML::_('select.genericlist',   $options,
			'params[xml_s5_hide_component_items][]',
			'class="inputbox" size="15" multiple="multiple"', 'value', 'text',
			$template_params->get('xml_s5_hide_component_items') );

			return $result;
		}		
}
?>