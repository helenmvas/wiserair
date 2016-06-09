jQuery(document).ready(

  function($) {
    
 
    // $('.wplightbox').click(
    //   function() {
    //     //$('#html5-text').append('<div class="share_link">Share</div>');
    //     alert('a');
    //   }
    // );

    // $('#html5-text').load(
    //   function() {
    //     alert('b');
    //   }

    // );

    // function createMarkeup() {
    //   alert('a');
    // }


  }



);


jQuery(document).on('DOMNodeInserted', function(e) {
    if (e.target.id == 'html5box-html5-lightbox') {
       jQuery(e).append('<div class="videoShare">APPEND</div>');
    }
});