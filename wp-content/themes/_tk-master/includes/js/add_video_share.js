<!--

function apss_open_in_popup_window(url){
    event.preventDefault();
    window.open(url, 'fdadas', 'toolbars=0,width=640,height=320,left=200,top=200,scrollbars=1,resizable=1');
}

jQuery(document).on('DOMNodeInserted', function(e) {
    if (e.target.id == 'html5-text') {
      var link = jQuery('iframe#html5boxiframevideo').attr('src');
      alert("link = " + link);
      // if(link) {
        // jQuery('#html5-text').append('<a href="'+link+'" class="videoShare">SHARE</a>');
      // }

      link = 'https://www.youtube.com/embed/Z6Cw-ucxkJk';
      facebookShareLink = 'https://www.facebook.com/sharer/sharer.php?u='+link;
      jQuery('#html5-text').append('<a rel="nofollow" onclick="apss_open_in_popup_window(\''+facebookShareLink+'\');" title="Share on Facebook" target href="'+facebookShareLink+'" title="Share on Facebook">Share on Facebook</a>');
    }
});


//-->