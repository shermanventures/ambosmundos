<?php

if ($s5_javascript == "mootools") {
$s5_effectmouse = "";
}

if ($s5_javascript == "s5effects") {
$s5_mootoolsmouse = "";
}

$s5_ifvisible = 0;
if ($text1line != "" && $text2line == "" && $text3line == "" && $text4line == "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 1;
}
if ($text1line != "" && $text2line != "" && $text3line == "" && $text4line == "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 2;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line == "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 3;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line == "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 4;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line == "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 5;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line == "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 6;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line == "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 7;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line != "" && $text9line == "" && $text10line == "")  {
$s5_ifvisible = 8;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line != "" && $text9line != "" && $text10line == "")  {
$s5_ifvisible = 9;
} 
if ($text1line != "" && $text2line != "" && $text3line != "" && $text4line != "" && $text5line != "" && $text6line != "" && $text7line != "" && $text8line != "" && $text9line != "" && $text10line != "")  {
$s5_ifvisible = 10;
} 

echo "<script language=\"javascript\" type=\"text/javascript\" >var s5_ifvisible = ".$s5_ifvisible.";</script>";

?>



<?php
$br = strtolower($_SERVER['HTTP_USER_AGENT']); // what browser.
$iss_ie6 = "";
$iss_ie7 = "";
if(strrpos($br,"msie 6") > 1) {
$iss_ie6 = "yes";
} 
if(strrpos($br,"msie 7") > 1) {
$iss_ie7 = "yes";
$iss_ie6 = "no";
}
else {
$iss_ie6 = "no";
}

?>


<?php if ($iss_ie6 == "yes") { ?>	
<script language="javascript" type="text/javascript">

startList = function() {
	var sfElss = document.getElementById("s5navfs").getElementsByTagName("LI");
	for (var ii=0; ii<sfElss.length; ii++) {
		sfElss[ii].onmouseover=function() {
			this.className+=" over";
			this.className+=" sfhover";
		}
		sfElss[ii].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" over\\b"), "");
			this.className=this.className.replace(new RegExp(" sfhover\\b"), "");

		}
	}
}
if (window.attachEvent) window.attachEvent("onload", startList);

</script>
<?php } ?>



<?php if ($s5_javascript == "mootools") { 
JHTML::_('behavior.mootools');
?>
<script type="text/javascript" src="<?php echo $LiveSite?>/modules/mod_s5_tabshow/s5_tabshow/iCarousel.js"></script>
<script language="javascript" type="text/javascript" >
window.addEvent("domready", function() {
	var s5Carousel = new iCarousel("s5_button_content", {
		idPrevious: "s5_button_previous",
		idNext: "",
		idToggle: "",
		item: {
			klass: "s5_button_item",
			size: <?php echo ($width) ?>},
		animation: {
			type: "scroll",
			duration: 1000,
			amount: 1 }
	});
	<?php if ($text1line != "") { ?>
	$("thumb0").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(0)});<?php } ?>	 
	<?php if ($text2line != "") { ?>
	$("thumb1").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(1)});<?php } ?>	 
	<?php if ($text3line != "") { ?>
	$("thumb2").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(2)});<?php } ?>	 
	<?php if ($text4line != "") { ?>
	$("thumb3").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(3)});<?php } ?>	 
	<?php if ($text5line != "") { ?>
	$("thumb4").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(4)});<?php } ?>	 
	<?php if ($text6line != "") { ?>
	$("thumb5").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(5)});<?php } ?>	 
	<?php if ($text7line != "") { ?>
	$("thumb6").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(6)});<?php } ?>	 
	<?php if ($text8line != "") { ?>
	$("thumb7").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(7)});<?php } ?>	 
	<?php if ($text9line != "") { ?>
	$("thumb8").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(8)});<?php } ?>	 
	<?php if ($text10line != "") { ?>
	$("thumb9").addEvent("<?php if ($s5_mootoolsmouse == "click") { ?>click<?php } else {?>mouseover<?php }?>", function(event){new Event(event).stop();s5Carousel.goTo(9)});<?php } ?>
});	
</script>
<?php } ?>	 

<?php if ($s5_javascript == "s5effects") { ?>
<?php if ($s5_effectsani == "snap") { ?>
<script type="text/javascript" src="<?php echo $LiveSite?>/modules/mod_s5_tabshow/s5_tabshow/s5_effects_snap.js"></script>
<?php } ?>	

<?php if ($s5_effectsani == "fade") { ?>
<script type="text/javascript" src="<?php echo $LiveSite?>/modules/mod_s5_tabshow/s5_tabshow/s5_effects_fade.js"></script>
<?php } ?>	
<?php } ?>	 

<div id="s5_button_wrap0" style="width:<?php echo $width ?>px">
<div id="s5_button_wrap1">
<div id="s5_button_wrap2">
	<div id="s5_button_frame">  
       <ul id="s5navfs">  	 
		<?php if ($text1line != "") { ?>
             <li id="thumb0" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb0op();shiftOpacity_ts('s5_button_item1');<?php } ?>s5thumb0();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active1()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active1()"<?php } ?> href="#"><?php echo $text1line ?></a></li>  
		<?php } ?>  
		<?php if ($text2line != "") { ?>
			<li id="thumb1" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb1op();shiftOpacity_ts('s5_button_item2');<?php } ?>s5thumb1();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active2()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active2()"<?php } ?> href="#"><?php echo $text2line ?></a></li>  
        <?php } ?>
		<?php if ($text3line != "") { ?>
			<li id="thumb2" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb2op();shiftOpacity_ts('s5_button_item3');<?php } ?>s5thumb2();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active3()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active3()"<?php } ?> href="#"><?php echo $text3line ?></a></li>  
        <?php } ?>
		<?php if ($text4line != "") { ?> 
			<li id="thumb3" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb3op();shiftOpacity_ts('s5_button_item4');<?php } ?>s5thumb3();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active4()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active4()"<?php } ?> href="#"><?php echo $text4line ?></a></li>  
        <?php } ?>
		<?php if ($text5line != "") { ?>
			<li id="thumb4" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb4op();shiftOpacity_ts('s5_button_item5');<?php } ?>s5thumb4();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active5()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active5()"<?php } ?> href="#"><?php echo $text5line ?></a></li>  
        <?php } ?>
		<?php if ($text6line != "") { ?>
			<li id="thumb5" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb5op();shiftOpacity_ts('s5_button_item6');<?php } ?>s5thumb5();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active6()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active6()"<?php } ?> href="#"><?php echo $text6line ?></a></li>  
        <?php } ?>
		<?php if ($text7line != "") { ?> 
			<li id="thumb6" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb6op();shiftOpacity_ts('s5_button_item7');<?php } ?>s5thumb6();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active7()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active7()"<?php } ?> href="#"><?php echo $text7line ?></a></li>  
		<?php } ?>
		<?php if ($text8line != "") { ?>
			<li id="thumb7" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb7op();shiftOpacity_ts('s5_button_item8');<?php } ?>s5thumb7();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active8()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active8()"<?php } ?> href="#"><?php echo $text8line ?></a></li>  
		<?php } ?>
		<?php if ($text9line != "") { ?>
			<li id="thumb8" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb8op();shiftOpacity_ts('s5_button_item9');<?php } ?>s5thumb8();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active9()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active9()"<?php } ?> href="#"><?php echo $text9line ?></a></li>  
		<?php } ?>
		<?php if ($text10line != "") { ?>
			<li id="thumb9" class="s5_ts_not_active" <?php if ($s5_javascript == "s5effects") { ?><?php if ($s5_effectmouse == "click") { ?>onclick<?php } else {?>onmouseover<?php }?>="<?php if ($s5_effectsani == "fade") { ?>s5thumb9op();shiftOpacity_ts('s5_button_item10');<?php } ?>s5thumb9();"<?php } ?>><a <?php if ($s5_effectmouse == "click" || $s5_mootoolsmouse == "click") { ?>onclick="s5_active10()"<?php } ?><?php if ($s5_effectmouse == "mouse" || $s5_mootoolsmouse == "mouse") { ?>onmouseover="s5_active10()"<?php } ?> href="#"><?php echo $text10line ?></a></li>  
        <?php } ?>
		</ul>  
     </div>  
</div>
</div>
</div>

<div style="clear:both;"></div>

<div id="s5_tabshow_left" style="width:<?php echo $width ?>px">
<div id="s5_tabshow_right" style="width:<?php echo $width ?>px;">
	<div style="width:<?php echo $width ?>px;overflow:hidden;">
	 <div id="s5_button" style="width:<?php echo $width-2 ?>px">  
	     <ul id="s5_button_content">  
			<?php if ($text1line != "") { ?>
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item1" style="left:0px;display:block;"<?php } ?>><div style="width:<?php echo$width ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab1' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div> </li> 
			<?php } ?>
			<?php if ($text2line != "") { ?>		 
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item2" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab2' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text3line != "") { ?>        
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item3" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab3' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text4line != "") { ?>        
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item4" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab4' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text5line != "") { ?>        
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item5" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px">
				<?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab5' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text6line != "") { ?>        
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item6" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab6' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text7line != "") { ?>        
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item7" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab7' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text8line != "") { ?>		
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item8" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab8' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text9line != "") { ?>		
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item9" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab9' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
			<?php if ($text10line != "") { ?>		
				<li class="s5_button_item" <?php if ($s5_javascript == "s5effects") { ?>id="s5_button_item10" style="<?php if ($s5_effectsani == "fade") { ?>opacity:.0; <?php if ($iss_ie6 == "yes" || $iss_ie7 == "yes") { ?>filter: alpha(opacity=0); -moz-opacity: 0;<?php } ?><?php } ?>left:0px;display:none;"<?php } ?>><div style="width:<?php echo ($width) ?>px;margin-left:0px;padding:0px"><?php
$myblurb_modules = &JModuleHelper::getModules( 's5_tab10' );
foreach ($myblurb_modules as $myblurb) {
$_options = array( 'style' => 'xhtml' );
echo JModuleHelper::renderModule( $myblurb, $_options );
}
?></div></li>  
			<?php } ?>
	     </ul>  
	 </div>
	</div>
</div>
</div>

<script type="text/javascript">

var s5_active_id = "";

	if (document.getElementById("thumb10")) {
		s5_active_id = "thumb10";
	}
	if (document.getElementById("thumb9")) {
		s5_active_id = "thumb9";
	}
	if (document.getElementById("thumb8")) {
		s5_active_id = "thumb8";
	}
	if (document.getElementById("thumb7")) {
		s5_active_id = "thumb7";
	}
	if (document.getElementById("thumb6")) {
		s5_active_id = "thumb6";
	}
	if (document.getElementById("thumb5")) {
		s5_active_id = "thumb5";
	}
	if (document.getElementById("thumb4")) {
		s5_active_id = "thumb4";
	}
	if (document.getElementById("thumb3")) {
		s5_active_id = "thumb3";
	}
	if (document.getElementById("thumb2")) {
		s5_active_id = "thumb2";
	}
	if (document.getElementById("thumb1")) {
		s5_active_id = "thumb1";
	}
	if (document.getElementById("thumb0")) {
		s5_active_id = "thumb0";
	}
	document.getElementById(s5_active_id).className = "s5_ts_active";
	
	function s5_clear_ts_others() {
	if (document.getElementById("thumb0")) {
		document.getElementById("thumb0").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb1")) {
		document.getElementById("thumb1").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb2")) {
		document.getElementById("thumb2").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb3")) {
		document.getElementById("thumb3").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb4")) {
		document.getElementById("thumb4").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb5")) {
		document.getElementById("thumb5").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb6")) {
		document.getElementById("thumb6").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb7")) {
		document.getElementById("thumb7").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb8")) {
		document.getElementById("thumb8").className = "s5_ts_not_active";
	}
	if (document.getElementById("thumb9")) {
		document.getElementById("thumb9").className = "s5_ts_not_active";
	}
}

function s5_active1() {
s5_clear_ts_others();
document.getElementById("thumb0").className = "s5_ts_active";
}

function s5_active2() {
s5_clear_ts_others();
document.getElementById("thumb1").className = "s5_ts_active";
}

function s5_active3() {
s5_clear_ts_others();
document.getElementById("thumb2").className = "s5_ts_active";
}

function s5_active4() {
s5_clear_ts_others();
document.getElementById("thumb3").className = "s5_ts_active";
}

function s5_active5() {
s5_clear_ts_others();
document.getElementById("thumb4").className = "s5_ts_active";
}

function s5_active6() {
s5_clear_ts_others();
document.getElementById("thumb5").className = "s5_ts_active";
}

function s5_active7() {
s5_clear_ts_others();
document.getElementById("thumb6").className = "s5_ts_active";
}

function s5_active8() {
s5_clear_ts_others();
document.getElementById("thumb7").className = "s5_ts_active";
}

function s5_active9() {
s5_clear_ts_others();
document.getElementById("thumb8").className = "s5_ts_active";
}

function s5_active10() {
s5_clear_ts_others();
document.getElementById("thumb9").className = "s5_ts_active";
}
	
</script>