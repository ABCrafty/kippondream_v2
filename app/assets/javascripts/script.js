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
    var $membre = $('div.membre');

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

    var membre = {
        showPresentation : function() {
            if(!$membre.hasClass('active-membre')) {
                $(this).addClass('active-membre');
            }
            else if($membre.hasClass('active-membre')) {
                event.preventDefault();
            }
        },

        closePresentation : function () {
            if($membre.hasClass('active-membre')) {

            }

        }
    };

    // exécution des fonctions

    $(window).on('scroll resize', scroll.checkView);
    $(window).trigger('scroll');
    $membre.on('click', membre.showPresentation);
    $membre.on('click', membre.closePresentation);


    $(document).mouseup(function (e) {
        if (!$membre.is(e.target) // if the target of the click isn't the container...
            && $membre.has(e.target).length === 0 ) { // ... nor a descendant of the container
            $membre.removeClass('active-membre');
            $(document).unbind( 'mouseup');
        }
    });

}); // fermeture jquery
