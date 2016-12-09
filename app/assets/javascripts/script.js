$(document).ready(function () {
    if ($('textarea').length > 0) {
        var data = $('textarea');
        $.each(data, function(i) {
            CKEDITOR.replace(data[i].id);
        });
    }

/*    $("header").backstretch([
        "/uploads/magazines/1/do_it.jpg",
        "/uploads/magazines/1/Happy_Souriant.jpg",
        "/uploads/magazines/1/do_it.jpg"
    ], {duration: 4000});*/
}); // fermeture jquery