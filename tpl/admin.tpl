{footer_script require="jquery"}
jQuery('.TAT_description a[href*="piwigo.org"]').addClass("externalLink");

jQuery('.showInfo').tipTip({
  'delay' : 0,
  'fadeIn' : 200,
  'fadeOut' : 200,
  'maxWidth':'300px',
  'keepAlive':true,
  'activation':'click'
});

jQuery(".showDetails a").click(function() {
  jQuery(".pluginMiniBox, .pluginBox").toggle();

  var currentText = jQuery(this).html();
  jQuery(this).html(jQuery(this).data("alt-text")).data("alt-text", currentText);

  jQuery(this).toggleClass("icon-eye").toggleClass("icon-eye-off");

  return false;
});
{/footer_script}

{html_style}
.pluginBox {
  display:none;
}

.showDetails {
  padding:0;
  margin:-1em -1em 0.5em 0;
}
{/html_style}

<div class="titrePage">
  <h2>{'takeatour_configpage'|@translate}</h2>
</div>
<div id="helpContent">
  <p>{'TAT_descrp'|@translate}</p>

<fieldset style="text-align:left">
  <legend>List of Tours</legend>

<div class="showDetails">
  <a href="#" class="icon-eye" data-alt-text="{'hide details'|translate|escape:html}">{'show details'|translate}</a>
</div>

{foreach from=$tours item=tour name=tours_loop}
  <div id="{$tour.id}" class="pluginMiniBox">
    <div class="pluginMiniBoxNameCell">
      {$tour.name}
      <a class="icon-info-circled-1 showInfo" title="{$tour.desc|@escape:'html'}"></a>
    </div>
    <div class="pluginActions">
      <div>
        <a href="{$F_ACTION}?submited_tour_path=tours/{$tour.id}&amp;pwg_token={$pwg_token}">{'Start the Tour'|translate} <i class="icon-right"></i></a>
      </div>
    </div>
  </div> {*<!-- pluginMiniBox -->*}

  <div id="{$tour.ID}" class="pluginBox">
    <table>
      <tr>
        <td class="pluginBoxNameCell">
          {$tour.name}
        </td>
        <td rowspan="2">{$tour.desc}</td>
      </tr>
      <tr class="pluginActions">
        <td>
          <a href="{$F_ACTION}?submited_tour_path=tours/{$tour.id}&amp;pwg_token={$pwg_token}">{'Start the Tour'|translate} <i class="icon-right"></i></a>
        </td>
      </tr>
    </table>
  </div> {*<!-- pluginBox -->*}

{/foreach}
</fieldset>
</div>