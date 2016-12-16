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



}); // fermeture jquery