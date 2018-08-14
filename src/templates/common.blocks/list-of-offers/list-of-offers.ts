jQuery(document).ready(function($) {
    let blockElement = $('.list-of-offers');

    if (!blockElement.length) return false;

    if (window.outerWidth < 560) {
        $('.list-of-offers[data-slick-adaptive]').slick({
            centerMode: true,
            centerPadding: '16px',
            arrows: false,
            dots: false
        });
    }
});