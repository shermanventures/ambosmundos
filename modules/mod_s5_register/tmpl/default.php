<?php
/**
* @title		Shape 5 Register Module
* @version		1.0
* @package		Joomla
* @website		http://www.shape5.com
* @copyright	Copyright (C) 2009 Shape 5 LLC. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>
									

<form class="form-validate" name="josForm" id="josForm" method="post" action="<?php echo JRoute::_( 'index.php?option=com_user' ); ?>">

<div style="float:left;width:108px;line-height:31px;">
	<label for="name" id="namemsg">
			Name:
	</label>
</div>		
<div style="float:left;">
	<input type="text" maxlength="50" class="inputbox required" value="" size="40" id="name" name="name"/> *
</div>
<div style="clear:both;"></div>

<div style="float:left;width:108px;line-height:31px;">
		<label for="username" id="usernamemsg">
			Username:
		</label>
</div>
<div style="float:left;">
		<input type="text" maxlength="25" class="inputbox required validate-username" value="" size="40" name="username" id="username"/> *
</div>
<div style="clear:both;"></div>


<div style="float:left;width:108px;line-height:31px;">
		<label for="email" id="emailmsg">
			E-mail:
		</label>
</div>
<div style="float:left;">
		<input type="text" maxlength="100" class="inputbox required validate-email" value="" size="40" name="email" id="email"/> *
</div>
<div style="clear:both;"></div>


<div style="float:left;width:108px;line-height:31px;">
		<label for="password" id="pwmsg">
			Password:
		</label>
</div>
<div style="float:left;">
  		<input type="password" value="" size="40" name="password" id="password" class="inputbox required validate-password"/> *
</div>
<div style="clear:both;"></div>


<div style="float:left;width:108px;line-height:31px;">
		<label for="password2" id="pw2msg">
			Verify Password:
		</label>
</div>
<div style="float:left;">
		<input type="password" value="" size="40" name="password2" id="password2" class="inputbox required validate-passverify"/> *
</div>
<div style="clear:both;"></div>
<br/>
	Fields marked with an asterisk (*) are required.	
<br/><br/>
	<button type="submit" class="button validate">Register</button>
	<input type="hidden" value="register_save" name="task"/>
	<input type="hidden" value="0" name="id"/>
	<input type="hidden" value="0" name="gid"/>
	<?php echo JHTML::_( 'form.token' ); ?>
</form>
					
