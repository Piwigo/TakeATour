{footer_script require='jquery.bootstrap-tour'  load="async"}{literal}

var tour = new Tour({
  name: "manage_albums",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=manage_albums"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=cat_list",
    title: "{/literal}{'first_contact_title19'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{if $TAT_FTP}{'first_contact_stp19'|@translate|@escape:'javascript'}{else}{'first_contact_stp19_b'|@translate|@escape:'javascript'}{/if}{literal}",
    onPrev: function (tour) {window.location = "admin.php?page=photo-{/literal}{$TAT_image_id}{literal}";},

  },
  {//20
    path: "{/literal}{$TAT_path}{literal}admin.php?page=cat_list",
    placement: "top",
    element: "#categoryOrdering",
    title: "{/literal}{'first_contact_title20'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp20'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: "{/literal}{$TAT_path}{literal}admin.php?page=cat_list",
    placement: "left",
    element: "#tabsheet:first-child",
    title: "{/literal}{'first_contact_title21'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp21'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=album-[0-9]+(|-properties)$/,
    redirect:function (tour) {window.location = "admin.php?page=album-{/literal}{$TAT_cat_id}{literal}";},
    placement: "top",
    element: ".selected_tab",
    title: "{/literal}{'first_contact_title22'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp22'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=album-[0-9]+(|-properties)$/,
    redirect:function (tour) {window.location = "admin.php?page=album-{/literal}{$TAT_cat_id}{literal}";},
    placement: "top",
    element: "#TAT_FC_23",
    title: "{/literal}{'first_contact_title23'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp23'|@translate|@escape:'javascript'}{literal}"
  }
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();

jQuery( "p.albumActions > a:nth-child(1)" ).click(function() {
  if (tour.getCurrentStep()==20)
  {
    tour.goTo(21);
  }
});


{/literal}{/footer_script}
