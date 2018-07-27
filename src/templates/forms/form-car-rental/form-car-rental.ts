jQuery(document).ready(function($) {
    let blockElement = $('.form-car-rental');

    blockElement.on('submit', function(e) {
        e.preventDefault();

        let isValidForm = blockElement[0].checkValidity();

        function hideAlerts() {
            setTimeout(() => {
                blockElement.find('.form-car-rental__alert').fadeOut();
            }, 5000);
        }

        if (isValidForm) {
            $.ajax({
                url: blockElement.attr('action'),
                method: blockElement.attr('method'),
                data: blockElement.serialize()
            })
            .done(function() {
                blockElement[0].reset();
                blockElement.find('.form-car-rental__alert_is_success')
                    .removeClass('d-none')
                    .css('display', 'none')
                    .fadeIn();
                hideAlerts();
            })
            .fail(function() {
                blockElement.find('.form-car-rental__alert_is_danger')
                    .removeClass('d-none')
                    .css('display', 'none')
                    .fadeIn();
                hideAlerts();
            });
        }
    });
});