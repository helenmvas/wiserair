<!--

function apss_open_in_popup_window(url){
    event.preventDefault();
    window.open(url, 'fdadas', 'toolbars=0,width=640,height=320,left=200,top=200,scrollbars=1,resizable=1');
}

function getFacebookShareHTML( link ) {
  var facebookShareLink = 'https://www.facebook.com/sharer/sharer.php?u='+link;
  return '<a rel="nofollow" onclick="apss_open_in_popup_window(\''+facebookShareLink+'\');" title="Share on Facebook" target href="'+facebookShareLink+'" title="Share on Facebook"><div class="apss-icon-block clearfix"><i class="fa fa-facebook"></i></div></a>';
}

function getTwitterShareURL( link ) {
  var twitterLink = 'https://twitter.com/home?status=' + link;
  return '<a rel="nofollow" onclick="apss_open_in_popup_window(\''+twitterLink+'\');" title="Share on Twitter" target="" href="'+twitterLink+'"><div class="apss-icon-block clearfix"><i class="fa fa-twitter"></i></div></a>';
}

// function getGooglePlusShareURL( link ) {

// }

// function getLinkedInShareURL( link ) {


// }

// function getEmailShareURL( link ) {

// }

jQuery(document).on('DOMNodeInserted', function(e) {
    if (e.target.id == 'html5-text') {
      var link = jQuery('iframe#html5boxiframevideo').attr('src');
      // alert("link = " + link);
      // if(link) {
        // jQuery('#html5-text').append('<a href="'+link+'" class="videoShare">SHARE</a>');
      // }

      link = 'https://www.youtube.com/embed/Z6Cw-ucxkJk';
      
      jQuery('#html5-text').append( getFacebookShareHTML(link)  + getTwitterShareURL(link) /** + getGooglePlusShareURL() + getLinkedInShareURL() + getEmailShareURL() **/ );
    }
});


//-->