jQuery(document).ready(function ($) {
    var blockElement = $('.offer-item');
    if (!blockElement.length)
        return false;
    blockElement
        .find('.offer-item__toggle-favorites[data-toggle="button"]')
        .on('click', function () {
        $(this).toggleClass('active');
    });
});
