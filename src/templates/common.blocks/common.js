jQuery(document).ready(function ($) {
    $('[data-toggle=tooltip]').tooltip();
    $('[data-toggle=popover]').popover();
    setTimeout(function () {
        $('.page-preloader').fadeOut(700);
    }, 1);
});
