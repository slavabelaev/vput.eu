jQuery(document).ready(function ($) {
    var blockElement = $('.offer-item-carousel');
    if (!blockElement.length)
        return false;
    blockElement.find('.offer-item-carousel__arrow').on('click', function () {
        var arrowElement = $(this), sliderElement = arrowElement.closest('.offer-item-carousel'), slickSliderElement = sliderElement.find('.offer-item-carousel__images-list[is-slick-carousel]');
        slickSliderElement.slick({
            infinite: true,
            dots: false
        });
        slickSliderElement.find('[data-src]').each(function () {
            var slideElement = $(this), imageSource = slideElement.attr('data-src');
            slideElement.css('background-image', 'url(' + imageSource + ')');
        });
        slickSliderElement.remove('.offer-item-carousel__arrow');
        if (arrowElement.hasClass('offer-item-carousel__arrow_slide_prev')) {
            slickSliderElement.slick('slickPrev');
        }
        else {
            slickSliderElement.slick('slickNext');
        }
    });
});
