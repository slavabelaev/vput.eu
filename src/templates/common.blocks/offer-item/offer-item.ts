jQuery(document).ready(function($) {
    let blockElement = $('.offer-item');

    blockElement.find('.offer-item__arrow').on('click', function() {
        let arrowElement = $(this),
            sliderElement = arrowElement.closest('.offer-item__image-slider'),
            slickSliderElement = sliderElement.find('.offer-item__list-of-images[is-slick-carousel]');

        slickSliderElement.slick({
            infinite: true,
            dots: false
        });

        slickSliderElement.find('[data-src]').each(function() {
            let slideElement = $(this),
                imageSource = slideElement.attr('data-src');

            slideElement.css('background-image', 'url(' + imageSource + ')');
        });

        slickSliderElement.remove('.offer-item__arrow');

        if (arrowElement.hasClass('offer-item__arrow_slide_prev')) {
            slickSliderElement.slick('slickPrev');
        } else {
            slickSliderElement.slick('slickNext');
        }
    });

    blockElement
        .find('.offer-item__toggle-favorites[data-toggle="button"]')
        .on('click', function() {
           $(this).toggleClass('active');
        });
});