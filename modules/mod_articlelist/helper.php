<?php
defined('_JEXEC') or die('Direct Access to this location is not allowed.');
 
class ModArticleList {
    
    public function getArticleList($args){
      $db = &JFactory::getDBO();

      $nullDate = $db->getNullDate();
      $date =& JFactory::getDate();
      $now = $date->toMySQL();

      $section_id = $args['section_id'];
      $category_id = $args['category_id'];
      $no_of_items = $args['no_of_items'];
      $no_of_chars = $args['no_of_chars'];
      $order_field = $args['order_field'];
      $order_by = $args['order_by'];
      
      if ($no_of_chars == 0){
        $no_of_chars=999;
      }
      
      $query  = "select cn.id, ca.id as catid, ca.alias as catalias, cn.alias as conalias, cn.sectionid, ";
			$query .= "CASE WHEN CHAR_LENGTH(cn.alias) THEN CONCAT_WS(':', cn.id, cn.alias) ELSE cn.id END as slug, ";
			$query .= "CASE WHEN CHAR_LENGTH(ca.alias) THEN CONCAT_WS(':', ca.id, ca.alias) ELSE ca.id END as catslug, ";
      $query .= "if (length(cn.title)>".$no_of_chars.",concat(substring(cn.title,1,".$no_of_chars."),'...'),cn.title) as title, ";
      $query .= "cn.title as fulltitle ";
      $query .= "from #__content as cn , #__categories as ca ";
      $query .= "where cn.id <> '' ";
      if($category_id != ""){
        $query .= " AND cn.catid in (".$category_id.") ";
      }
      if($section_id != ""){
      	$query .= " AND cn.sectionid in (".$section_id.") ";
      }
      
      $query .= " and state = 1 and ca.id=cn.catid ";

      $query .= ' and ( publish_up = '.$db->Quote($nullDate).' or publish_up <= '.$db->Quote($now).' )';
      $query .= ' and ( publish_down = '.$db->Quote($nullDate).' or publish_down >= '.$db->Quote($now).' )';
      
      if ($order_field == "random"){
      	$query .= " order by RAND() ";
      }else{
        $query .= " order by ".$order_field." ".$order_by;
      }
      
      if ($no_of_items != 0) {
        $query .= " limit ".$no_of_items;
      }
      
      $db->setQuery($query);
      $items = ($items = $db->loadObjectList())?$items:array();
      return $items;
    }
}
