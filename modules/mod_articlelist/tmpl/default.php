<?php defined('_JEXEC') or die('Restricted access'); // no direct access ?>

  <ul class="menu<?php echo $params->get( 'moduleclass_sfx' ) ?>">
    <?php foreach ($items as $item) {
      $link = JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid));
    ?>
    <li class="menuitem"><a title="<?php echo $item->fulltitle; ?>" href=<?php echo $link; ?>><span><?php echo $item->title; ?></span></a></li>
    <?php } ?>
  </ul>
