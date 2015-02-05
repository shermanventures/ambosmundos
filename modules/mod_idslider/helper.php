<?php
/**
* @Copyright Copyright (C) 2009-2010 - Ahmed Kandel
* @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

class modInterdesignsSliderHelper
{
	// Get list of parameters
	function getParam(&$params)
	{
		$vars = array();

		// Module parameters
		$vars['moduleclass_sfx']	 = $params->get('moduleclass_sfx');
			
		$vars['banners']			 = $params->get('banners', '');
		$vars['categories']			 = $params->get('categories', '');
		$vars['clients']		 	 = $params->get('clients', '');
		$vars['limit']				 = (int) $params->get('limit', '');
		
		$vars['type']				 = $params->get('type', 1);
		$vars['ordering']			 = $params->get('ordering', 1);
		$vars['window']				 = $params->get('window', 1);

		$vars['width']				 = (int) $params->get('width', 468);
		$vars['height']				 = (int) $params->get('height', 60);
		$vars['resize']				 = $params->get('resize', 1);
		$vars['center']				 = $params->get('center', 1);
		
		$vars['autoplay']			 = $params->get('autoplay', 1);
		$vars['start_item']			 = (int) $params->get('start_item', 0);		
		$vars['mode']				 = $params->get('mode', 'horizontal');
		$vars['mode_dir']			 = $params->get('mode_dir', 'left');
		$vars['interval']			 = (int) $params->get('interval', 5000);
		$vars['use_transition']		 = $params->get('use_transition', 1);
		$vars['transition']			 = $params->get('transition', 'Bounce');
		$vars['transition_ease']	 = $params->get('transition_ease', '.easeOut');
		$vars['transition_duration'] = (int) $params->get('transition_duration', 1000);

		$vars['buttons_position']	 = $params->get('buttons_position', 'after');
		$vars['buttons_html']		 = $params->get('buttons_html');
		$vars['buttons_js']			 = $params->get('buttons_js');
		
		$vars['handlers_position']	 = $params->get('handlers_position', 'after');
		$vars['handlers_html']		 = $params->get('handlers_html');
		$vars['handlers_js']		 = $params->get('handlers_js');

		$vars['inc_mootools_js']	 = $params->get('inc_mootools_js', 0);
		$vars['track_impressions']	 = $params->get('track_impressions', 0);
		$vars['cache']				 = $params->get('cache', 0);
		$vars['cache_time']			 = (int) $params->get('cache_time', 900);

		// HTML parameters
		$vars['center_div']			 = ($vars['center'] == 1) ? ' margin:0 auto;' : '';
		$vars['slider_div_id']		 = uniqid('div');
		$vars['window_target']		 = ($vars['window'] == 1) ? ' target="_blank"' : '';
		$vars['resize_images']		 = ($vars['resize'] == 1) ? ' width="'.$vars['width'].'" height="'.$vars['height'].'"' : '';

		// JS parameters
		$vars['slider_var_id']		 = uniqid('var') ;
		$vars['slider_size']		 = ($vars['mode'] == 'horizontal') ? $vars['width'] : $vars['height'];
		if ($vars['mode'] == 'horizontal' && $vars['mode_dir'] == 'langdir') {
			global $mainframe; $doc = &JFactory::getDocument(); $vars['mode_dir'] = ($doc->getDirection() == 'rtl') ? 'right' : 'left';
		}
		if ($vars['mode'] == 'vertical' && $vars['mode_dir'] == 'left') $vars['mode_dir'] = 'top';
		if ($vars['mode'] == 'vertical' && $vars['mode_dir'] == 'right') $vars['mode_dir'] = 'bottom';
		if ($vars['mode'] == 'vertical' && $vars['mode_dir'] == 'langdir') $vars['mode_dir'] = 'top';
		$vars['float']				 = ($vars['mode_dir'] == 'right') ? ' float:right;' : ' float:left;';
		$vars['transition_ease']	 = ($vars['transition'] == 'linear') ? '' : $vars['transition_ease'];
		$vars['slider_autoplay']	 = ($vars['autoplay'] == 1) ? 'true' : 'false';

		return $vars;
	}

	// Get list of banners
	function getBanners(&$paramslist)
	{
		$where = array();
		if ($paramslist['banners'] != '') $where[] = 'bid IN (' . modInterdesignsSliderHelper::cleanIds($paramslist['banners']) . ')';
		
		if ($paramslist['categories'] != '') $where[] = 'catid IN (' . modInterdesignsSliderHelper::cleanIds($paramslist['categories']) . ')';

		if ($paramslist['clients'] != '') $where[] = 'cid IN (' . modInterdesignsSliderHelper::cleanIds($paramslist['clients']) . ')';
		
		$where = (count($where) > 0) ? ' AND (' . implode(' OR ', $where) . ')' : '';
		
		if ($paramslist['ordering'] == 1) {
			$ordering = ' ORDER BY sticky DESC, bid';
		} else if ($paramslist['ordering'] == 2) {
			$ordering = ' ORDER BY sticky DESC, RAND()';
		} else if ($paramslist['ordering'] == 3) {
			$ordering = ' ORDER BY bid';
		} else if ($paramslist['ordering'] == 4) {
			$ordering = ' ORDER BY RAND()';
		}
		
		$limit = ($paramslist['limit'] != '') ? ' LIMIT 0, ' . ($paramslist['limit']) : '';

		$query = "SELECT * FROM #__banner WHERE showBanner=1 AND (imptotal = 0 OR impmade < imptotal)"
				 . $where
				 . $ordering
				 . $limit;
		
		$db = &JFactory::getDBO();
		$db->setQuery($query);
		
		$bannerslist = $db->loadObjectList();
		
		$bannerslist = ($paramslist['mode_dir'] == 'bottom') ? array_reverse($bannerslist, true) : $bannerslist;
		
		return $bannerslist;
	}

	// Track banners impressions
	function trackImpress(&$bannerslist, $track_impressions)
	{
		$n = count($bannerslist);
		
		if ($n > 0) {
			$db = &JFactory::getDBO();

			$date = &JFactory::getDate();
			$trackdate = $date->toFormat('%Y-%m-%d');

			for ($i = 0; $i < $n; $i++) {
				$item = $bannerslist[$i];
				
				$item->impmade++;
				$expire = ($item->impmade >= $item->imptotal) && ($item->imptotal != 0);
	
				$query = 'UPDATE #__banner SET impmade=impmade+1'
						 . ($expire ? ', showBanner=0' : '')
						 . ' WHERE bid = '.(int)$item->bid;
				$db->setQuery($query);
	
				if (!$db->query()) JError::raiseError(500, $db->stderror());
	
				if ($track_impressions) {
					$query = 'INSERT INTO #__bannertrack(track_type,banner_id,track_date) VALUES'
							 . '( 1,' . (int)$item->bid . ',' . $db->Quote($trackdate) . ')';
					$db->setQuery($query);
	
					if (!$db->query()) JError::raiseError(500, $db->stderror());
				}
			}
		}
	}
	
	// Filter banners, categories and clients ID(s)
	function cleanIds($in)
	{
		if (empty($in)) return '';
		return preg_replace(array('/[^0-9,]/', '/,{2,}/', '/^,+/', '/,+$/'), array('', ',', '', ''), $in);
	}
	
	// Filter html for banner description
	function htmlFilter($in)
	{
		if (empty($in)) return '';
		$in = htmlspecialchars($in, ENT_QUOTES, 'UTF-8');
		return preg_replace('/\s+/', ' ', $in);
	}
}
?>
