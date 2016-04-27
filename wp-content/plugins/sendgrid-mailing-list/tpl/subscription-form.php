<div class="SGML_form_container">
    <form name="SGML_form" class="SGML_form" action="" method="post">
        <input type="email" name="SGML_email" placeholder="Enter your Email" />
        <input name="action" type="hidden" value="the_ajax_hook" />
        <input name="SGML_action" type="hidden" value="subscribe" />
        <input name="SGML_list" type="hidden" value="<?= $list ?>" />
        <input name="SGML_redirect" type="hidden" value="<?= $redirect ?>" />
        <button name="submit" class="SGML_submit_button"> <img src="<?= plugin_dir_url(__DIR__); ?>img/arrow.png" class="emailarrow" /><img src="<?= plugin_dir_url(__DIR__); ?>img/spinner.gif" width="30" class="SGML_spinner" /></button>
    </form>
    <div class="SGML_response" style="display:none;"></div>
</div>