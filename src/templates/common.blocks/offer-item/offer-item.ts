jQuery(document).ready(function($) {
    let offerItemImageSliderElement = $('[offer-item__image-slider]'),
        offerItemAddToFavorites = $('.offer-item__add-to-favorites');

    function initOfferItemImageSlider() {
        offerItemImageSliderElement.slick({
            dots: false,
        })
        .on('beforeChange', function(event, slick) {
            let currentSlide = slick.$slider.find('.slick-current'),
                preventSlide = currentSlide.prev(),
                preventSlide2 = preventSlide.prev(),
                nextSlide = currentSlide.next(),
                nextSlide2 = nextSlide.next(),
                slides = [ preventSlide, preventSlide2, nextSlide, nextSlide2 ];

            slides.forEach(function(slide, index) {
                let $image = slide,
                    imageSource = $image.attr('data-src');

                $image.css({ backgroundImage: 'url(' + imageSource + ')' });
            });
        });

        initOfferItemImageSliderFirstSlide();
    }

    function initOfferItemImageSliderFirstSlide() {
        let offerItemImageFirstImage = offerItemImageSliderElement.find('.slick-current.offer-item__image'),
            offerItemImageFirstImageSource = offerItemImageFirstImage.attr('data-src');

        offerItemImageFirstImage.css({ backgroundImage: 'url(' + offerItemImageFirstImageSource + ')' });
    }

    initOfferItemImageSlider();
    offerItemAddToFavorites.on('click', function() {
        $(this).toggleClass('active');
    });
});