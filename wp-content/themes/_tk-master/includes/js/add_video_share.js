jQuery(document).on('DOMNodeInserted', function(e) {
    if (e.target.id == 'html5-text') {
      var link = jQuery('#html5boxiframevideo').attr('src');
      alert("link = " + link);
      jQuery('#html5-text').append('<a href="'+link+'" class="videoShare">SHARE</a>');
    }
});