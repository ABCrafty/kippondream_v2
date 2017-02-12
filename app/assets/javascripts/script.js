$(document).ready(function () {
    if ($('textarea').length > 0) {
        var data = $('textarea');
        $.each(data, function(i) {
            CKEDITOR.replace(data[i].id);
        });
    }

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
                    $element.removeClass('in-view');
                }
            });
        } // attribut checkView
    }; // objet scroll

    $(window).on('scroll resize', scroll.checkView);
    $(window).trigger('scroll');


    // var news = {
    //     showNews : function () {
    //         $('div.actu-lien').css('transform', 'rotateY(-30deg)');
    //         $('div.actu:first-child').delay(500).css('opacity', '1', 'margin-left', '0');
    //         $('div.actu:nth-child(2)').delay(1000).css('opacity', '1', 'margin-left', '0');
    //         $('div.actu:nth-child(3)').delay(1500).css('opacity', '1', 'margin-left', '0');
    //         // $('div.actu-lien').delay(1600).css('transform', 'rotateY(0deg)');
    //     }
    // };

    // exécution des fonctions


    // Capture scroll events




}); // fermeture jquery