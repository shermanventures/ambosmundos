<?php defined('_JEXEC') or die('Restricted access'); 
global $mainframe;
$isSef = $mainframe->getCfg( 'sef' );

$brr = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.

if(strrpos($brr,"msie 6") > 1) {
	$is_ie6 = "yes";
} 
else {
	$is_ie6 = "no";
}

$url = JURI::root().'templates/construction/html/mod_s5_live_search/';
?>
<script type="text/javascript">//<![CDATA[
document.write('<link href="<?php echo $url ?>css/s5_ls.css" rel="stylesheet" type="text/css" media="screen" />');
//]]></script>

<?php if ($is_ie6 == "yes") { ?>
<style>
#s5_ls_close {
	background:none;
	filter:progid:dximagetransform.microsoft.alphaimageloader(src='<?php echo $url ?>images/s5_exit.png', sizingmethod='crop');}
</style>
<?php } ?>		
	
	
<form name="s5_search_form" id="s5_search_form" action="<?php echo JURI::Base()?>" method="get">
<div class="search<?php echo $params->get('moduleclass_sfx') ?>">
		<?php
		    $output = '
			<input name="searchword" id="mod_search_searchword" maxlength="'.$maxlength.'" alt="'.$button_text.'" class="inputbox'.$moduleclass_sfx.'" type="text" size="'.$width.'" value="'.$text.'"  onblur="if(this.value==\'\') this.value=\''.$text.'\';" onfocus="if(this.value==\''.$text.'\') this.value=\'\';" onkeyup="s5AjaxSearch();" />
				<span>
					<img src="'.JURI::base().'templates/construction/html/mod_s5_live_search/images/loading.gif'.'" alt="" style="display:none; margin-left:'.$icon_ml.'px; margin-top:'.$icon_mt.'px; height:'.$icon_height.'px" id="loading_img" />
				</span>';
			if ($button == "Yes") :
			    if ($imagebutton) :
			        $button = '<input type="image" value="'.$button_text.'" class="button'.$moduleclass_sfx.'" src="'.$img.'" onclick="this.form.searchword.focus();"/>';
			    else :
			        $button = '<input type="submit" value="'.$button_text.'" class="button'.$moduleclass_sfx.'" onclick="this.form.searchword.focus();"/>';
			    endif;

			switch ($button_pos) :
			    case 'top' :
				    $button = $button.'<br />';
				    $output = $button.$output;
				    break;

			    case 'bottom' :
				    $button = '<br />'.$button;
				    $output = $output.$button;
				    break;

			    case 'right' :
				    $output = $output.$button;
				    break;

			    case 'left' :
			    default :
				    $output = $button.$output;
				    break;
			endswitch;
			
			endif;

			echo $output;
			
			$brr = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
			if(strrpos($brr,"msie 6") > 1) {
			$is_ie6 = "yes";
			} 
			else {
			$is_ie6 = "no";
			}
			$brr = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
			if(strrpos($brr,"msie 7") > 1) {
			$is_ie7 = "yes";
			} 
			else {
			$is_ie7  = "no";
			}

			if(strrpos($brr,"msie 8") > 1) {
			$is_ie8 = "yes";
			} 
			else {
			$is_ie8  = "no";
			}

		?>
	</div>	
	<input type="hidden" name="searchphrase" value="<?php echo $params->get("searchphrase")?>"/>
	<input type="hidden" name="limit" id="s5_live_search_limit" value="" />
	<input type="hidden" name="ordering" value="<?php echo $params->get("ordering")?>" />
	<input type="hidden" name="view" value="search" />
	<input type="hidden" name="Itemid" value="99999999" />
	<input type="hidden" name="option" value="com_search" />	
   	</form>
<div id="s5_ls_outer_wrap" style="margin-top:<?php echo $_SESSION['popup_mt'] ?>px; margin-right:<?php echo $_SESSION['popup_mr'] ?>px; margin-bottom:<?php echo $_SESSION['popup_mb'] ?>px; margin-left:<?php echo $_SESSION['popup_ml'] ?>px; border:solid <?php echo $border_size ?>px #<?php echo $border_color ?>; display:none; width: <?php echo $popupWidth; ?>px;"></div>
<div id="search_tmpdiv" style="visibility:hidden;display:none;"></div>
<script type="text/javascript" language="javascript">//<![CDATA[					
	var limit = '<?php echo $params->get('limit', '10'); ?>';
	var ordering = '<?php echo $params->get('ordering', 'newest');  ?>';
	var searchPhrase = '<?php echo $params->get('searchphrase', 'any'); ?>';
						
	function closeResultDiv() {
		var outerWrap = document.getElementById('s5_ls_outer_wrap');
		outerWrap.innerHTML = '';		
		outerWrap.style.display = "none";
	}

	function openResultDiv() {
		document.getElementById("s5_ls_outer_wrap").style.display = "block";
		s5_ls_Effects.s5_ls_fade('s5_ls_outer_wrap', 0, 100, 300, 's5_ls_Effects.s5_ls_onFaded()');
	}


	function s5AjaxSearch() {
		var curtime = new Date();
		var url = 'index2.php';
		if(document.getElementById('mod_search_searchword').value == ''){							
			closeResultDiv();
		}
		else{
			var inputTag = document.getElementById('mod_search_searchword');
			if (inputTag.value.length < 3) {
				return ;
			}			
			closeResultDiv();
			//Show the loading icon					
			var loadingImgTag = document.getElementById('loading_img') ;
			loadingImgTag.style.display = '';
			//Build the url
			<?php if ($isSef == "0") { ?>
			var url = '<?php echo  JURI::base(); ?>' + 'index.php?option=com_search' ;
			<?php } ?>
			<?php if ($isSef == "1") { ?>
			var url = '<?php echo  JURI::base(); ?>' + 'index.php?option=com_search' ;
			<?php } ?>
			url =  url + '&view=search';
			url =  url + '&layout=s5_live_search';
			url = url + '&searchphrase=' + searchPhrase;
			url = url + '&ordering=' + ordering;
			url = url + '&limit=' + limit;
			url = url + '&searchword=' + document.getElementById('mod_search_searchword').value ;
			//url = url + '&limit=' + limit;
			//url = url + '&results_text=' + '<?php echo $moreResultsText; ?>';
			//url = url + '&no_results_text=' + '<?php echo $noResultsText; ?>';
			url = url + '&r=' + curtime.getTime();
			jx.load(url, function (data) {					
					document.getElementById('loading_img').style.display = 'none' ;
					document.getElementById('search_tmpdiv').innerHTML = data ;																																									
					document.getElementById('s5_ls_outer_wrap').innerHTML = document.getElementById('s5_search_results').innerHTML;;
					openResultDiv();
				}
			) ; 									
		}	
	}								
//]]></script>