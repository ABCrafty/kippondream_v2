$(document).ready(function () {

  tinymce.init({
    selector: 'textarea',
    inline_styles : false
  });

  $('div#header-slider').owlCarousel({
      navigation : true, // Show next and prev buttons
      slideSpeed : 800,
      paginationSpeed : 1000,
      singleItem:true,
      autoPlay: 5000,
      stopOnHover: true,
      navigationText : ['<i class="fa fa-arrow-left" aria-hidden="true"></i>', '<i class="fa fa-arrow-right" aria-hidden="true"></i>']
  });

  $('div#mag-carousel').owlCarousel({
      navigation: true,
      pagination: true,
      paginationNumbers: true,
      slideSpeed : 1000,
      paginationSpeed : 1000,
      singleItem: true,
      autoPlay: 6000,
      stopOnHover: true,
      navigationText : ['<i class="fa fa-arrow-up" aria-hidden="true"></i>', '<i class="fa fa-arrow-down" aria-hidden="true"></i>']
  });


  var $animationElements = $('.kd-animate');
  var $window = $(window);

  var scroll = {
      checkView : function () {
          var windowHeight = $window.height();
          var windowTopPosition = $window.scrollTop();
          var windowBottomPosition = (windowTopPosition + windowHeight);

          $.each($animationElements, function() {
              var $element = $(this);
              var elementHeight = $element.outerHeight();
              var elementTopPosition = $element.offset().top;
              var elementBottomPosition = (elementTopPosition + elementHeight);

              //check to see if this current container is within viewport
              if ((elementBottomPosition >= windowTopPosition) &&
                  (elementTopPosition <= windowBottomPosition)) {
                  $element.addClass('in-view');
              } else {

              }
          });
      } // attribut checkView
  }; // objet scroll

//bind click events
  var $cell = $('.membre');

  $cell.find('.image-basic').click(function() {
      var $thisCell = $(this).closest('.membre');

      if ($thisCell.hasClass('is-collapsed')) {
          $cell.not($thisCell).removeClass('is-expanded').addClass('is-collapsed');
          $thisCell.removeClass('is-collapsed').addClass('is-expanded');
      } else {
          $thisCell.removeClass('is-expanded').addClass('is-collapsed');
      }
  });

  $cell.find('.expand-close').click(function(){

      var $thisCell = $(this).closest('.membre');

      $thisCell.removeClass('is-expanded').addClass('is-collapsed');
  });

  // exécution des fonctions

  $(window).on('scroll resize', scroll.checkView);
  $(window).trigger('scroll');

}); // fermeture jquery
