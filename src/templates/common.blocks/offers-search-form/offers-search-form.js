document.addEventListener('DOMContentLoaded', function() {
    var offerSearchFormElement = $('.offers-search-form')

    // offerSearchFormElement
    //     .find('.offers-search-form__list-of-cities-toggle')
    //     .on('click', function() {
    //         var cityNameInputElement = $(this),
    //             cityIdInputElement = offerSearchFormElement.find('[name="filters[cityId]"]'),
    //             listOfCitiesElement = offerSearchFormElement.find('.list-of-cities');
    //
    //         listOfCitiesElement.toggleClass('d-none');
    //         listOfCitiesElement.find('.list-of-cities__nav > .nav-link').on('click', function(e) {
    //             console.log('Clicked on city');
    //             e.preventDefault();
    //             var that = $(this);
    //
    //             cityNameInputElement.val(that.data('name'));
    //             cityIdInputElement.val(that.data('id'));
    //         });
    //     });


    var sliderElement = offerSearchFormElement.find('.offers-search-form__slider').get(0);
    var minPriceElement = offerSearchFormElement.find('[name="filters[prices][minPrice]"]').get(0);
    var maxPriceElement = offerSearchFormElement.find('[name="filters[prices][maxPrice]"]').get(0);

    var inputs = [minPriceElement, maxPriceElement];

    noUiSlider.create(sliderElement, {
        start: [0, 200],
        connect: true,
        tooltips: true,
        range: {
            'min': 0,
            'max': 200
        }
    });

    sliderElement.noUiSlider.on('update', function( values, handle ) {
        inputs[handle].value = values[handle];
    });
}, false);