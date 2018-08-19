jQuery(document).ready(function ($) {
    var blockElement = $('.offer-item-carousel');
    if (!blockElement.length)
        return false;
    blockElement.find('.offer-item-carousel__arrow').on('click', function () {
        var arrowElement = $(this), sliderElement = arrowElement.closest('.offer-item-carousel'), slickSliderElement = sliderElement.find('.offer-item-carousel__images-list[data-slick-carousel]');
        slickSliderElement.slick({
            lazyLoad: 'ondemand',
            infinite: true,
            dots: false,
            swipe: false
        });
        slickSliderElement.find('[data-lazy]').each(function () {
            var slideElement = $(this), imageSource = slideElement.attr('data-lazy');
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
