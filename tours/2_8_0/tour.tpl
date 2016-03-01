{footer_script require='jquery.bootstrap-tour'}{literal}

var tour = new Tour({
  name: "2_8_0",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=2_8_0"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=user_list",
    title: "{/literal}{'2_8_0_title1'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_8_0_stp1'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{if isset($TAT_cat_id)}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=album-{/literal}{$TAT_cat_id}{literal}-notification",
    placement: "right",
    element: "select[name=who]",
    title: "{/literal}{'2_8_0_title2'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_8_0_stp2'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=album-{/literal}{$TAT_cat_id}{literal}-notification",
    placement: "top",
    element: "#emailCatInfo p:nth-child(6)",
    title: "{/literal}{'2_8_0_title3'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_8_0_stp3'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{/if}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=configuration&section=watermark",
    placement: "right",
    element: 'input[name="w[yrepeat]"]',
    title: "{/literal}{'2_8_0_title4'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_8_0_stp4'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{if $TAT_HAS_ORPHANS}{literal}
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=batch_manager&filter=prefilter-no_album",
    placement: "right",
    element: '#menubar dl:first .adminMenubarCounter:last',
    title: "{/literal}{'2_8_0_title5'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_8_0_stp5'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=batch_manager&filter=prefilter-no_album",
    placement: "bottom",
    element: '#delete_orphans',
    title: "{/literal}{'2_8_0_title6'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'2_8_0_stp6'|@translate|@escape:'javascript'}{literal}"
  },
{/literal}{/if}{literal}
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();

if (tour.getCurrentStep() == 3) {
  jQuery("input[value=custom]").prop("checked", true);
}

{/literal}{/footer_script}