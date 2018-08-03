jQuery(document).ready(function ($) {
    var blockElement = $('.page-offer'), stickedElement = blockElement.find('[is-sticked]');
    stickedElement.stick_in_parent({
        parent: '.page-offer__article'
    });
});
