jQuery(document).ready(function ($) {
    var blockElement = $('.form-renting');
    if (!blockElement.length)
        return false;
    console.log(111);
    blockElement.find('[data-target*="accordion-item_number_7"]').on('click', function () {
        var collapseElement = $(this), collapseContentSelector = collapseElement.data('target'), collapseContentElement = $(collapseContentSelector);
        collapseContentElement.on('shown.bs.collapse', function () {
            $([document.documentElement, document.body]).animate({
                scrollTop: collapseElement.offset().top - 10
            }, 300);
        });
    });
});
