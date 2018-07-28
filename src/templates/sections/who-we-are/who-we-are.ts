jQuery(document).ready(function($) {
    let blockElement = $('.who-we-are');

    blockElement.find('.popular-cities__link').on('click', function(e) {
        e.preventDefault();

        let data = $(this).data();

        blockElement.find('.form-search-offers__cities-tabs-toggle').val(data.name);
        blockElement.find('.form-search-offers__cities-dropdown').collapse('hide');
        blockElement.find('[name="filters[cityId]"]').val(data.id);
    });
});