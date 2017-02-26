$(document).ready(function () {

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

    var cells = function(count) {
        // retourne faux si count n'est pas un nombre ou est supérieur à 99
        if (typeof count !== 'number' || count > 99) return false;

        // on initialise html
        var html = '',
            imageNum;

        // une boucle pour le html qui présente le contenu de l'image au clic de celle-ci
        for (i = 0; i < count; i++) {

            // imageNum inclut dans le src de l'image le numéro de l'image
            imageNum = Math.floor(Math.random() * 9) + 1;
            html += '<div class="membre is-collapsed">' +
                '<div class="image-basic">' +
                '<h4>Nom du membre</h4>' +
                '<a href="#expand-jump-'+i+'">' +
                '<img id="expand-jump-'+i+'" class="membre-img" src="img/kuro.jpg" alt="Fashion '+ imageNum +'" />' +
                '</a>' +

                '<div class="arrow-up"></div>' +
                '</div>' + // image-basic
                '<div class="image-expand">' +
                '<a href="#close-jump-'+i+'" class="expand__close"></a>' +
                '<div class="membre-presentation">' +
                '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc lobortis vestibulum enim, vitae pellentesque velit.' +
                'Pellentesque dictum in dui bibendum sagittis. Phasellus faucibus nisi ac rutrum scelerisque.' +
                'Pellentesque scelerisque felis sed pretium mollis. Etiam venenatis odio nisl. Nulla viverra luctus maximus.' +
                'Donec sollicitudin ullamcorper purus eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra,' +
                'per inceptos himenaeos. Pellentesque feugiat velit dolor, ac tempor mi accumsan ut. Proin et sem consequat,' +
                'semper turpis sit amet, volutpat arcu. Sed dapibus rhoncus malesuada. Morbi ultrices lobortis mattis.' +
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>' +
                '<div class="projets-articles">' +
                '<div class="membre-projets">' +
                '<h5>Ses projets :</h5>' +
                '<ul>' +
                '<li>Pain</li>' +
                '<li>3 coups</li>' +
                '<li>One Shot</li>' +
                '</ul>' +
                '</div>' + // membres-projets
                '<div class="articles-recents">' +
                '<h5>Ses articles récents :</h5>' +
                '<ul>' +
                '<li><a href="#"></a></li>' +
                '<li><a href="#"></a></li>' +
                '<li><a href="#"></a></li>' +
                '</ul>' +
                '</div>' + // articles-recents
                '</div>' + // projets-articles
                '</div>' + // membre-presentation
                '</div>' + // image-expand
                '</div>';
        }
        return html;
    }; // function cells

//apend cells to grid
    $('.staff').empty().html(cells(2));


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
