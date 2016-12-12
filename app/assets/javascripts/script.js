$(document).ready(function () {
    if ($('textarea').length > 0) {
        var data = $('textarea');
        $.each(data, function(i) {
            CKEDITOR.replace(data[i].id);
        });
    }

    $('div#header-slider').owlCarousel({
        nav : true, // Show next and prev buttons
        navSpeed : 300,
        paginationSpeed : 400,
        singleItem:true,
        items: 1,
        loop: true
    });



}); // fermeture jquery