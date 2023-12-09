{footer_script require='jquery.bootstrap-tour'}{literal}

var tour = new Tour({
  name: "2_9_0",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=2_9_0"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if isset($TAT_restart) and $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: "{/literal}{$TAT_path}{literal}admin.php",
    title: "{/literal}{'2_9_0_title1'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp1'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=user_list&show_add_user",
    placement: "right",
    element: "#genPass",
    title: "{/literal}{'2_9_0_title2'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp2'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{if isset($TAT_tour29_delete_cat_id)}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=album-{/literal}{$TAT_tour29_delete_cat_id}{literal}-properties",
    placement: "right",
    element: ".deleteAlbum",
    title: "{/literal}{'2_9_0_title3'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp3'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{/if}{literal}
{/literal}{if isset($TAT_tour29_image_id)}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=photo-{/literal}{$TAT_tour29_image_id}{literal}-properties",
    placement: "bottom",
    element: 'a.icon-download',
    title: "{/literal}{'2_9_0_title4'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp4'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{/if}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=batch_manager&filter=prefilter-duplicates-checksum",
    placement: "bottom",
    element: 'label[title=md5sum]',
    title: "{/literal}{'2_9_0_title5'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp5'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{$TAT_tour29_history_url}{literal}",
    placement: "bottom",
    element: "#content h3 a:last",
    title: "{/literal}{'2_9_0_title6'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp6'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{if isset($TAT_tour29_has_tags)}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=tags",
    placement: "right",
    element: "#selectionMode",
    title: "{/literal}{'2_9_0_title7'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_9_0_stp7'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{/if}{literal}
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();

{/literal}{/footer_script}