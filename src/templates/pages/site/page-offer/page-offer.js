(function () {
    var blockElement = document.querySelector('.page-offer');
    if (!blockElement)
        return false;
    function convertAsideToDrawerWindow() {
        var modalElement = $('.page-offer__modal'), modalDialogElement = $('.page-offer__modal-dialog'), asideElement = $('.page-offer__aside');
        if (window.outerWidth > 1300) {
            asideElement.removeClass('modal-content');
            modalDialogElement.removeClass('modal-dialog');
            modalElement.removeClass('modal modal-right fade');
            $('.modal-backdrop').remove();
        }
        else {
            asideElement.addClass('modal-content');
            modalDialogElement.addClass('modal-dialog');
            modalElement.addClass('modal modal-right fade');
        }
    }
    document.addEventListener('DOMContentLoaded', convertAsideToDrawerWindow);
    window.addEventListener('resize', convertAsideToDrawerWindow);
})();
