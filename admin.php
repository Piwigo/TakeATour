<?php

if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');

global $template, $conf, $user, $page;

load_language('plugin.lang', PHPWG_PLUGINS_PATH .'TakeATour/');

$tat_28url = 'http://';
if (substr($user['language'],0,2) == 'fr')
{
  $tat_28url.= 'fr.';
}
$tat_28url.= 'piwigo.org/releases/2.8.0';

$template->assign(
  array(
    'F_ACTION' => get_root_url().'admin.php',
    'pwg_token' => get_pwg_token(),
    'TAT_28URL' => $tat_28url,
    )
  );

$template->func_combine_css(array(
	'path' => 'plugins/TakeATour/css/admin.css',
	)
);

if (isset($conf['TakeATour_tour_ignored']) and is_array($conf['TakeATour_tour_ignored']))
{
  $template->assign('TAT_tour_ignored', $conf['TakeATour_tour_ignored']);
}
$template->set_filename('plugin_admin_content', dirname(__FILE__) .'/tpl/admin.tpl');
$template->assign_var_from_handle('ADMIN_CONTENT', 'plugin_admin_content');

?>