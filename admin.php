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

// automatically ignore "new features" of other version (older or newer). We
// assume the "new features" tours are always named x_y_0
if (!isset($conf['TakeATour_tour_ignored']))
{
  $conf['TakeATour_tour_ignored'] = array();
}

$tours_directory = PHPWG_PLUGINS_PATH.'TakeATour/tours';
$tour_candidates = scandir($tours_directory);

foreach ($tour_candidates as $candidate)
{
  if (preg_match('/^(\d+_\d+)_0$/', $candidate, $matches))
  {
    if (get_branch_from_version(PHPWG_VERSION) != str_replace('_', '.', $matches[1]))
    {
      $conf['TakeATour_tour_ignored'][] = $candidate;
    }
  }
}

$template->assign('TAT_tour_ignored', $conf['TakeATour_tour_ignored']);
$template->set_filename('plugin_admin_content', dirname(__FILE__) .'/tpl/admin.tpl');
$template->assign_var_from_handle('ADMIN_CONTENT', 'plugin_admin_content');

?>