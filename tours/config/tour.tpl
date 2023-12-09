{footer_script require='jquery.bootstrap-tour'  load="async"}{literal}

var tour = new Tour({
  name: "config",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=config"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if isset($TAT_restart) and $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=configuration",
    placement: "top",
    element: "",
    title: "{/literal}{'first_contact_title29'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp29'|@translate|@escape:'javascript'}{literal}"
  },
  {//30
    path: "{/literal}{$TAT_path}{literal}admin.php?page=configuration",
    placement: "right",
    element: "#gallery_title",
    title: "{/literal}{'first_contact_title30'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp30'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=configuration",
    placement: "right",
    element: "#page_banner",
    title: "{/literal}{'first_contact_title31'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp31'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=configuration",
    reflex: true,
    placement: "top",
    element: ".formButtons input",
    title: "{/literal}{'first_contact_title32'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp32'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=configuration",
    placement: "bottom",
    element: "li.normal_tab:nth-child(6) > a:nth-child(1)",
    title: "{/literal}{'first_contact_title33'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp33'|@translate|@escape:'javascript'}{literal}",
    prev:30
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=themes",
    placement: "top",
    element: "",
    title: "{/literal}{'first_contact_title34'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp34'|@translate|@escape:'javascript'}{literal}"
  },
  {//35
    path: "{/literal}{$TAT_path}{literal}admin.php?page=themes",
    placement: "top",
    element: "#TAT_FC_35",
    title: "{/literal}{'first_contact_title35'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp35'|@translate|@escape:'javascript'}{literal}"
  }
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();

{/literal}{/footer_script}
