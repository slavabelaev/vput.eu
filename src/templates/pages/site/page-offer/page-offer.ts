jQuery(document).ready(function($) {
    let blockElement = $('.page-offer'),
        stickedElement = blockElement.find('[is-sticked]');

    stickedElement.stick_in_parent({
        parent: '.page-offer__article'
    });
});