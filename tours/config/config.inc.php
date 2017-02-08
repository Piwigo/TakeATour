<?php
/**********************************
 * REQUIRED PATH TO THE TPL FILE */

$TOUR_PATH = PHPWG_PLUGINS_PATH.'TakeATour/tours/config/tour.tpl';

/*********************************/

if ( defined('IN_ADMIN') and IN_ADMIN )
{
  add_event_handler('loc_end_themes_installed', 'TAT_FC_35');
}
function TAT_FC_35()
{
  global $template;
  $template->set_prefilter('themes', 'TAT_FC_35_prefilter');
}
function TAT_FC_35_prefilter ($content, &$smarty)
{
  $search = '<a href="{$set_default_baseurl}{$theme.ID}" class="tiptip"';
  $replacement = '{counter print=false assign=TAT_FC_35}<a href="{$set_default_baseurl}{$theme.ID}" class="tiptip" {if $TAT_FC_35==1}id="TAT_FC_35"{/if}';
  return str_replace($search, $replacement, $content);
}

?>