jQuery(document).ready(function($) {
    $('.offer-image-slider [is-slider]').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        asNavFor: '.offer-image-slider [is-slider-nav]'
    });
    $('.offer-image-slider [is-slider-nav]').slick({
        slidesToShow: 10,
        slidesToScroll: 1,
        asNavFor: '.offer-image-slider [is-slider]',
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