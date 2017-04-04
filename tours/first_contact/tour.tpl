{footer_script require='jquery.bootstrap-tour'  load="async"}{literal}

var tour = new Tour({
  name: "first_contact",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=first_contact"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: "{/literal}{$TAT_path}{literal}admin.php",
    title: "{/literal}{'first_contact_title1'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp1'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php",
    placement: "right",
    element: "#menubar a[href='./admin.php?page=photos_add']",
    reflex:true,
    title: "{/literal}{'first_contact_title2'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp2'|@translate|@escape:'javascript'}{literal}",
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=photos_add",
    placement: "bottom",
    element: ".selected_tab",
    title: "{/literal}{'first_contact_title3'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp3'|@translate|@escape:'javascript'}{literal}",
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=photos_add",
    placement: "right",
    element: "#albumSelection",
    title: "{/literal}{'first_contact_title4'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp4'|@translate|@escape:'javascript'}{literal}"
  },
  {//5
    path: "{/literal}{$TAT_path}{literal}admin.php?page=photos_add",
    placement: "top",
    element: "#addFiles",
    title: "{/literal}{'first_contact_title5'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp5'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=photos_add",
    placement: "top",
    element: "#startUpload",
    title: "{/literal}{'first_contact_title6'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp6'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=photos_add",
    placement: "top",
    element: "#afterUploadActions",
    title: "{/literal}{'first_contact_title7'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp7'|@translate|@escape:'javascript'}{literal}",
    prev:3,
    onPrev: function (tour) {window.location.reload()}
  }
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();

{/literal}{/footer_script}
