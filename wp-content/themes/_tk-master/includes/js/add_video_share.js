jQuery(document).on('DOMNodeInserted', function(e) {
    if (e.target.id == 'html5-elem-box') {
      var link = jQuery('iframe#html5boxiframevideo').attr('src');
      alert("link = " + link);
      if(link) {
        jQuery('#html5-text').append('<a href="'+link+'" class="videoShare">SHARE</a>');
      }
    }
});