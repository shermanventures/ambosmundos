<?php
/**
 * Helper class for Hello World! module
 * 
 * @package    Joomla.Tutorials
 * @subpackage Modules
 * @link http://dev.joomla.org/component/option,com_jd-wiki/Itemid,31/id,tutorials:modules/
 * @license        GNU/GPL, see LICENSE.php
 * mod_helloworld is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */
class modHelloWorldHelper
{
    /**
     * Retrieves the hello message
     *
     * @param array $params An object containing the module parameters
     * @access public
     */    
  function getHello( $params )
    {
    	global $mainframe;

			$database 	=& JFactory::getDBO();
    	$menu_name =  $params->get( 'menu' );
			$ordering = $params->get( 'ordering' );
			$startline = $params->get('startln');
					if (true ) {
 						// Assign ordering
 						switch ($ordering) {
  						case 'descending':
    						$orderBy = 'name DESC ';
    					break;
  						case 'ascending':
  						default:
    							$orderBy = 'name ASC ';
    					break;
							}
 
 // select the meta keywords from the item
// $query = 'SELECT * FROM #__menu WHERE menutype = '.$menu_name.' AND published =\'1\' AND parent != \'0\' ORDER BY ' . $orderBy ;
 	$query = "SELECT * FROM #__menu "
	. " WHERE menutype = '". $menu_name ."' "
	. " AND published = '1' AND parent != '0' "
	. " ORDER BY ". $orderBy;
//	echo $query;
 $database->setQuery( $query );
 
 $mymenu_content ="<form name='Lnk'><select name='GrpComp' class='inputbox'  style='width:140px;height:18px;font-size:11px; padding-left:3px'
		onchange='javascript:location.href=document.Lnk.GrpComp.options[document.Lnk.GrpComp.selectedIndex].value;' >
        <option>-- ".$startline."  --</option>";

 if ($mymenu_rows = $database->loadObjectList() ) {
 
 
	foreach($mymenu_rows as $mymenu_row) {
	
	$mymenulink = $mymenu_row->link;
	if ($mymenu_row->type != "url") {
		$mymenulink .= "&Itemid=$mymenu_row->id";
	    }
		
	if ($mymenu_row->type != "separator") {
		$mymenu_content .= " <option value=\"".($mymenulink)."\" >$mymenu_row->name</option>\r";
	    }
    }
//$mymenu_content = substr($mymenu_content,0,strlen($mymenu_content)-2);
    $mymenu_content .= "</select></form>";
        return $mymenu_content ;
    }

}
}
}
?>