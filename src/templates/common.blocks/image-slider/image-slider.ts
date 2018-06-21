jQuery(document).ready(function($) {
    $('.image-slider [is-slider]').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        lazyLoad: 'ondemand',
        asNavFor: '.image-slider [is-slider-nav]'
    });
    $('.image-slider [is-slider-nav]').slick({
        slidesToShow: 10,
        slidesToScroll: 1,
        asNavFor: '.image-slider [is-slider]',
        dots: false,
        arrows: false,
        focusOnSelect: true
    });
});