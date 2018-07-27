jQuery(document).ready(function ($) {
    var blockElement = $('.who-we-are');
    blockElement.find('.popular-cities__link').on('click', function (e) {
        e.preventDefault();
        var data = $(this).data();
        blockElement.find('.form-search-offers__cities-tabs-toggle').val(data.name);
        blockElement.find('[name="filters[cityId]"]').val(data.id);
    });
});
