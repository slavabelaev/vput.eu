jQuery(document).ready(function($) {
    $('.form-car-rental').on('submit', function(e) {
        e.preventDefault();
        let formElement = $(this),
            isValidForm = formElement[0].checkValidity();

        function hideAlerts() {
            setTimeout(() => {
                formElement.find('.form-car-rental__alert').fadeOut();
            }, 5000);
        }

        if (isValidForm) {
            $.ajax({
                url: formElement.attr('action'),
                method: formElement.attr('method'),
                data: formElement.serialize()
            })
            .done(function() {
                formElement[0].reset();
                formElement.find('.form-car-rental__alert_is_success')
                    .removeClass('d-none')
                    .css('display', 'none')
                    .fadeIn();
                hideAlerts();
            })
            .fail(function() {
                formElement.find('.form-car-rental__alert_is_danger')
                    .removeClass('d-none')
                    .css('display', 'none')
                    .fadeIn();
                hideAlerts();
            });
        }
    });
});