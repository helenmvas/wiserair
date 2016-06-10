<!--

jQuery(document).on('DOMNodeInserted', function(e) {
    if (e.target.id == 'html5-text') {
      var link = jQuery('iframe#html5boxiframevideo').attr('src');
      alert("link = " + link);
      // if(link) {
        // jQuery('#html5-text').append('<a href="'+link+'" class="videoShare">SHARE</a>');
      // }

      link = 'https://www.youtube.com/embed/Z6Cw-ucxkJk';

      jQuery('#html5-text').append('<a rel="nofollow" onclick="apss_open_in_popup_window(\'https://www.facebook.com/sharer/sharer.php?u='+link+'\');" title="Share on Facebook">Share on Facebook</a>');
    }
});


//-->