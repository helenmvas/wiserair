jQuery(document).ready(function() {
	jQuery("#trigger_filter_link").click(function(){
		var triggier_box_id = jQuery("#ttigger_box_names").val() ;
		if( triggier_box_id ){
			var llink = jQuery(this).attr("href") ;
			llink += "&triggerbox="+triggier_box_id;
			jQuery(this).attr("href", llink) ;
		}
	});
});