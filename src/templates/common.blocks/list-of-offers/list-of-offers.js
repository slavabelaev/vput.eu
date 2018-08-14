jQuery(document).ready(function ($) {
    var blockElement = $('.list-of-offers');
    if (!blockElement.length)
        return false;
    if (window.outerWidth < 560) {
        $('[data-slick-adaptive]').slick({
            centerMode: true,
            centerPadding: '20px',
            arrows: false,
            dots: false
        });
    }
});
