<?php
/**
* @Copyright Copyright (C) 2009-2010 - Ahmed Kandel
* @license GNU/GPL http://www.gnu.org/copyleft/gpl.html
**/

// no direct access
defined('_JEXEC') or die('Restricted access');

// Start banners render
if (count($bannerslist) > 0) : ?>
<div style="position:relative; overflow:hidden;<?php echo $paramslist['center_div']; ?> width:<?php echo $paramslist['width']; ?>px; height:<?php echo $paramslist['height']; ?>px">
	<div id="<?php echo $paramslist['slider_div_id']; ?>" style="position:absolute;">
<?php
// Start banners loop
$slider_items = array();
$slider_i = 1;

foreach($bannerslist as $value) {

	// For banner images
	if ( !empty($value->imageurl) && ($paramslist['type'] == 1) ) {
		echo '<span style="display:block;'.$paramslist['float'].' width:'.$paramslist['width'].'px; height:'.$paramslist['height'].'px">'
		.'<a href="index.php?option=com_banners&task=click&bid='.$value->bid.'"'.$paramslist['window_target'].'>'
		.'<img src="images/banners/'.$value->imageurl.'" alt="'.modInterdesignsSliderHelper::htmlFilter($value->description).'"'.$paramslist['resize_images'].' />'
		.'</a></span>'."\n";
		$slider_items[] = $slider_i;
		++$slider_i;

	// For banner custom code
	} else if ( !empty($value->custombannercode) && ($paramslist['type'] == 2) ) {
		echo '<span style="display:block;'.$paramslist['float'].' width:'.$paramslist['width'].'px; height:'.$paramslist['height'].'px">'
		.$value->custombannercode.'</span>'."\n";
		$slider_items[] = $slider_i;
		++$slider_i;
	}
}

$slider_items ='[' . implode(',', $slider_items) . ']';
?>
	</div>
<?php

// For buttons and handlers HTML over slider
if ($paramslist['buttons_position'] == 'over') echo $paramslist['buttons_html']."\n";	
if ($paramslist['handlers_position'] == 'over') echo $paramslist['handlers_html']."\n";
?>
</div>
<?php

// For buttons and handlers HTML after slider
if ($paramslist['buttons_position'] == 'after') echo $paramslist['buttons_html']."\n";
if ($paramslist['handlers_position'] == 'after') echo $paramslist['handlers_html']."\n";
?>

<!--Javascript for slider initiation-->
<script type="text/javascript">
var <?php echo $paramslist['slider_var_id']; ?> = new noobSlide({
box: $('<?php echo $paramslist['slider_div_id']; ?>'),
items: <?php echo $slider_items; ?>,
size: <?php echo $paramslist['slider_size']; ?>,
mode: '<?php echo $paramslist['mode']; ?>',
mode_dir: '<?php echo $paramslist['mode_dir']; ?>',
interval: <?php echo $paramslist['interval']; ?>,
<?php echo $paramslist['buttons_js']."\n"; ?>
<?php echo $paramslist['handlers_js']."\n"; ?>
<?php if ($paramslist['use_transition'] == 1) : ?>
fxOptions: { duration: <?php echo $paramslist['transition_duration']; ?>, transition: Fx.Transitions.<?php echo $paramslist['transition'] . $paramslist['transition_ease']; ?> },
<?php endif; ?>
startItem: <?php echo $paramslist['start_item']; ?>,
autoPlay: <?php echo $paramslist['slider_autoplay']; ?>
});
</script>
<?php endif; ?>