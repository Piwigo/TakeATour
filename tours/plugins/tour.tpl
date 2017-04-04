{footer_script require='jquery.bootstrap-tour'  load="async"}{literal}

var tour = new Tour({
  name: "plugins",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=plugins"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=plugins",
    placement: "left",
    element: "",
    title: "{/literal}{'first_contact_title38'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp38'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=plugins",
    placement: "left",
    element: "#content",
    title: "{/literal}{'first_contact_title39'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp39'|@translate|@escape:'javascript'}{literal}"
  },
  {//40
    path: "{/literal}{$TAT_path}{literal}admin.php?page=plugins",
    placement: "bottom",
    element: "#TakeATour",
    title: "{/literal}{'first_contact_title40'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp40'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=plugins",
    placement: "right",
    element: ".tabsheet",
    title: "{/literal}{'first_contact_title41'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp41'|@translate|@escape:'javascript'}{literal}"
  }
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();

{/literal}{/footer_script}
