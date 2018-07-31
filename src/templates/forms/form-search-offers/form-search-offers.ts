(function() {
    let changeCitiesTabsComponent = function() {
        let blockElement = $('.form-search-offers'),
            toggleElement = blockElement.find('.form-search-offers__cities-tabs-toggle'),
            citiesTabsElement = blockElement.find('.form-search-offers__cities-tabs');

        if (window.outerWidth > 992) {
            toggleElement.attr('data-toggle', 'collapse');
            citiesTabsElement
                .addClass('collapse')
                .removeClass('modal');
        } else {
            toggleElement.attr('data-toggle', 'modal');
            citiesTabsElement
                .addClass('modal')
                .removeClass('collapse');
        }
    };

    document.addEventListener('DOMContentLoaded', changeCitiesTabsComponent);
    window.addEventListener('resize', changeCitiesTabsComponent);
})();

document.addEventListener('DOMContentLoaded', function() {
    let blockElement = $('.form-search-offers');

    blockElement.find('.cities-tabs__link').on('click', function(e) {
        e.preventDefault();

        let data = $(this).data(),
            toggleCollapseElement = blockElement.find('.form-search-offers__cities-tabs-toggle');
        toggleCollapseElement.val(data.name);
        blockElement.find('[name="filters[cityId]"]').val(data.id);
        toggleCollapseElement.trigger('click');
    });

    blockElement
        .find('.form-search-offers__list-of-cities-toggle')
        .on('click', function() {
            let cityNameInputElement = $(this),
                cityIdInputElement = blockElement.find('[name="filters[cityId]"]'),
                listOfCitiesElement = blockElement.find('.list-of-cities');

            listOfCitiesElement.toggleClass('d-none');
            listOfCitiesElement.find('.list-of-cities__nav > .nav-link').on('click', function(e) {
                console.log('Clicked on city');
                e.preventDefault();
                let that = $(this);

                cityNameInputElement.val(that.data('name'));
                cityIdInputElement.val(that.data('id'));
            });
        });


    let sliderElement = blockElement.find('.form-search-offers__slider').get(0),
        minPriceElement = blockElement.find('[name="filters[prices][minPrice]"]').get(0),
        maxPriceElement = blockElement.find('[name="filters[prices][maxPrice]"]').get(0),
        inputs = [minPriceElement, maxPriceElement],
        minPrice = sliderElement.dataset.min ? sliderElement.dataset.min * 1 : 0,
        maxPrice = sliderElement.dataset.max ? sliderElement.dataset.max * 1 : 1000;

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

    sliderElement.noUiSlider.on('update', function( values, handle ) {
        inputs[handle].value = values[handle];
    });
}, false);