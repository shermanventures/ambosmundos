<?php
//no direct access
defined('_JEXEC') or die('Direct Access to this location is not allowed.');
 
// include the helper file
require_once(dirname(__FILE__).DS.'helper.php');
require_once(JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');

// get a parameter from the module's configuration
$args['moduleclass_sfx'] = $params->get('moduleclass_sfx');
$args['section_id'] = $params->get('section_id');
$args['category_id'] = $params->get('category_id');
$args['no_of_items'] = $params->get('no_of_items');
$args['no_of_chars'] = $params->get('no_of_chars');
$args['order_field'] = $params->get('order_field');
$args['order_by'] = $params->get('order_by');
$args['use_cache'] = $params->get('use_cache');

$cache = & JFactory::getCache();

if ($use_cache) {
  $items = $cache->call(array('ModArticleList','getArticleList'),$args);
}else{
  $items = ModArticleList::getArticleList($args);
}

// include the template for display
require(JModuleHelper::getLayoutPath('mod_articlelist'));
?>
