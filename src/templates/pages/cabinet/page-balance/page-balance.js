$(document).ready(function () {
    $('[data-plugin=data-table]').DataTable({
        searching: false,
        lengthChange: false,
        language: {
            url: '//cdn.datatables.net/plug-ins/1.10.19/i18n/Russian.json'
        }
    });
});
