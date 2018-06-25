document.addEventListener('DOMContentLoaded', function () {
    var offerSearchFormElement = $('.offers-search-form');
    offerSearchFormElement
        .find('.offers-search-form__list-of-cities-toggle')
        .on('click', function () {
        var cityNameInputElement = $(this), cityIdInputElement = offerSearchFormElement.find('[name="filters[cityId]"]'), listOfCitiesElement = offerSearchFormElement.find('.list-of-cities');
        listOfCitiesElement.toggleClass('d-none');
        listOfCitiesElement.find('.list-of-cities__nav > .nav-link').on('click', function (e) {
            console.log('Clicked on city');
            e.preventDefault();
            var that = $(this);
            cityNameInputElement.val(that.data('name'));
            cityIdInputElement.val(that.data('id'));
        });
    });
    var sliderElement = offerSearchFormElement.find('.offers-search-form__slider').get(0), minPriceElement = offerSearchFormElement.find('[name="filters[prices][minPrice]"]').get(0), maxPriceElement = offerSearchFormElement.find('[name="filters[prices][maxPrice]"]').get(0), inputs = [minPriceElement, maxPriceElement], minPrice = sliderElement.dataset.min ? sliderElement.dataset.min * 1 : 0, maxPrice = sliderElement.dataset.max ? sliderElement.dataset.max * 1 : 1000;
    console.log(minPrice, maxPrice);
    noUiSlider.create(sliderElement, {
        start: [minPrice, maxPrice],
        connect: true,
        tooltips: true,
        range: {
            'min': minPrice,
            'max': maxPrice
        },
        format: wNumb({
            decimals: 0,
            prefix: '€'
        })
    });
    sliderElement.noUiSlider.on('update', function (values, handle) {
        inputs[handle].value = values[handle];
    });
}, false);
