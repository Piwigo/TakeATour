{footer_script require='jquery.bootstrap-tour'  load="async"}{literal}

var tour = new Tour({
  name: "edit_photos",
  orphan: true,
  onEnd: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=plugin-TakeATour&tour_ended=edit_photos"},
  template: "<div class='popover'>          <div class='arrow'></div>          <h3 class='popover-title'></h3>          <div class='popover-content'></div>          <div class='popover-navigation'>            <div class='btn-group'>              <button class='btn btn-sm btn-default' data-role='prev'>&laquo; {/literal}{'Prev'|@translate|@escape:'javascript'}{literal}</button>              <button class='btn btn-sm btn-default' data-role='next'>{/literal}{'Next '|@translate|@escape:'javascript'}{literal} &raquo;</button>            </div>            <button class='btn btn-sm btn-default' data-role='end'>{/literal}{'End tour'|@translate|@escape:'javascript'}{literal}</button>          </div>        </div>",
});
{/literal}{if $TAT_restart}tour.restart();{/if}{literal}

tour.addSteps([
  {
    path: /admin\.php\?page=(photos_add|batch_manager&filter=prefilter-last_import|batch_manager&filter=prefilter-caddie)/,
    redirect:function (tour) {window.location = "admin.php?page=batch_manager&filter=prefilter-last_import";},
    placement: "bottom",
    element: "#filter_prefilter select",
    title: "{/literal}{'first_contact_title9'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp9'|@translate|@escape:'javascript'}{literal}",
    prev:3,
    onPrev: function (tour) {window.location = "{/literal}{$ABS_U_ADMIN}{literal}admin.php?page=photos_add"}
 },
  {//10
    path: /admin\.php\?page=batch_manager&filter=(prefilter-caddie|prefilter-last_import)/,
    redirect:function (tour) {window.location = "admin.php?page=batch_manager&filter=prefilter-last_import";},
    placement: "right",
    element: "a[href='./admin.php?page=batch_manager&filter=prefilter-caddie']",
    title: "{/literal}{'first_contact_title10'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp10'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=batch_manager&filter=(prefilter-caddie|prefilter-last_import)/,
    redirect:function (tour) {window.location = "admin.php?page=batch_manager&filter=prefilter-last_import";},
    placement: "left",
    element: "#checkActions",
    title: "{/literal}{'first_contact_title11'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp11'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=batch_manager&filter=(prefilter-caddie|prefilter-last_import)/,
    redirect:function (tour) {window.location = "admin.php?page=batch_manager&filter=prefilter-last_import";},
    placement: "top",
    element: "#action",
    title: "{/literal}{'first_contact_title12'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp12'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=batch_manager&filter=(prefilter-caddie|prefilter-last_import)/,
    redirect:function (tour) {window.location = "admin.php?page=batch_manager&filter=prefilter-last_import";},
    placement: "bottom",
    element: "#tabsheet .normal_tab",
    title: "{/literal}{'first_contact_title13'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp13'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=batch_manager&filter=(prefilter-caddie|prefilter-last_import)/,
    redirect:function (tour) {window.location = "admin.php?page=batch_manager&filter=prefilter-last_import";},
    placement: "top",
    element: "#TAT_FC_14",
    reflex:true,
    title: "{/literal}{'first_contact_title14'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp14'|@translate|@escape:'javascript'}{literal}",
    onNext:function (tour) {window.location = "admin.php?page=photo-{/literal}{$TAT_image_id}{literal}";}
  },
  {//15
    path: /admin\.php\?page=photo-/,
    redirect:function (tour) {window.location = "admin.php?page=photo-{/literal}{$TAT_image_id}{literal}";},
    placement: "bottom",
    element: ".selected_tab",
    title: "{/literal}{'first_contact_title15'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp15'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=photo-/,
    redirect:function (tour) {window.location = "admin.php?page=photo-{/literal}{$TAT_image_id}{literal}";},
    placement: "top",
    element: "#TAT_FC_16",
    title: "{/literal}{'first_contact_title16'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp16'|@translate|@escape:'javascript'}{literal}"
  },
  {
    path: /admin\.php\?page=photo-/,
    redirect:function (tour) {window.location = "admin.php?page=photo-{/literal}{$TAT_image_id}{literal}";},
    placement: "top",
    element: "#TAT_FC_17",
    title: "{/literal}{'first_contact_title17'|@translate|@escape:'javascript'}{literal}",
    content: "{/literal}{'first_contact_stp17'|@translate|@escape:'javascript'}{literal}"
  }
]);

// Initialize the tour
tour.init();

// Start the tour
tour.start();




{/literal}{/footer_script}
