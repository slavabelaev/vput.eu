jQuery(document).ready(function ($) {
    var offerItemImageSliderElement = $('[is-slick-carousel]'), offerItemAddToFavorites = $('.offer-item__add-to-favorites');
    function initOfferItemImageSlider(sliderElement) {
        sliderElement.slick({
            infinite: true,
            dots: false
        })
            .on('beforeChange', function (event, slick) {
            var currentSlide = slick.$slider.find('.slick-current'), preventSlide = currentSlide.prev(), preventSlide2 = preventSlide.prev(), nextSlide = currentSlide.next(), nextSlide2 = nextSlide.next(), slides = [preventSlide, preventSlide2, nextSlide, nextSlide2];
            slides.forEach(function (slide, index) {
                var $image = slide, imageSource = $image.attr('data-src');
                $image.css({ backgroundImage: 'url(' + imageSource + ')' });
            });
        });
        initOfferItemImageSliderFirstSlide();
    }
    function initOfferItemImageSliderFirstSlide() {
        var offerItemImageFirstImage = offerItemImageSliderElement.find('.slick-current.offer-item__image'), offerItemImageFirstImageSource = offerItemImageFirstImage.attr('data-src');
        offerItemImageFirstImage.css({ backgroundImage: 'url(' + offerItemImageFirstImageSource + ')' });
    }
    $('.offer-item__arrow').on('click', function () {
        var arrowElement = $(this), sliderElement = arrowElement.closest('.offer-item__image-slider[is-slick-carousel]');
        initOfferItemImageSlider(sliderElement);
        if (arrowElement.hasClass('offer-item__arrow_slide_prev')) {
            sliderElement.slick('slickPrev');
        }
        else {
            sliderElement.slick('slickNext');
        }
        sliderElement.remove('.offer-item__arrow');
    });
    offerItemAddToFavorites.on('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
        $(this).toggleClass('active');
    });
});
