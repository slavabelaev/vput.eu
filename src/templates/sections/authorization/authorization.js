jQuery(document).ready(function ($) {
    var blockElement = $('.authorization'), cardFront = blockElement.find('.authorization__card-front');
    cardFront.on('click', function () {
        cardFront.toggleClass('d-none');
    });
});
