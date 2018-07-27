jQuery(document).ready(function($) {
    let blockElement = $('.authorization'),
        cardFront = blockElement.find('.authorization__card-front');

    cardFront.on('click', function() {
        cardFront.toggleClass('d-none');
    });
});