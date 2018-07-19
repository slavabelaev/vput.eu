jQuery(document).ready(function ($) {
    $('.offer-item__arrow').on('click', function () {
        var arrowElement = $(this), sliderElement = arrowElement.closest('.offer-item__image-slider'), slickSliderElement = sliderElement.find('.offer-item__list-of-images[is-slick-carousel]');
        slickSliderElement.slick({
            infinite: true,
            dots: false
        });
        slickSliderElement.find('[data-src]').each(function () {
            var slideElement = $(this), imageSource = slideElement.attr('data-src');
            slideElement.css('background-image', 'url(' + imageSource + ')');
        });
        slickSliderElement.remove('.offer-item__arrow');
        if (arrowElement.hasClass('offer-item__arrow_slide_prev')) {
            slickSliderElement.slick('slickPrev');
        }
        else {
            slickSliderElement.slick('slickNext');
        }
    });
    $('.offer-item__add-to-favorites[data-toggle="button"]').on('click', function () {
        $(this).toggleClass('active');
    });
});
