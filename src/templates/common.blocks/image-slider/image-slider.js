jQuery(document).ready(function ($) {
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
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 1300,
                settings: {
                    slidesToShow: 7
                }
            },
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 5
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 4
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2
                }
            }
        ]
    });
});
