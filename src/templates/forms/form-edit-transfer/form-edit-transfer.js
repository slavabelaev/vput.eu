jQuery(document).ready(function ($) {
    var blockElements = $('.form-edit-transfer');
    if (!blockElements.length)
        return false;
    blockElements.each(function (index, blockElement) {
        var $blockElement = $(blockElement), buttonEditElement = $blockElement.find('.form-edit-transfer__button-edit'), buttonDetailsElement = $blockElement.find('.form-edit-transfer__button-details'), buttonSaveElement = $blockElement.find('.form-edit-transfer__button-save'), buttonCancelElement = $blockElement.find('.form-edit-transfer__button-cancel');
        // Toggle edit State
        function toggleFormEditSatate(e) {
            e.preventDefault();
            $blockElement.toggleClass('form-edit-transfer_state_edit');
            var hasStateEdit = $blockElement.hasClass('form-edit-transfer_state_edit');
            $blockElement
                .find('input, select, textarea')
                .prop('disabled', !hasStateEdit);
            $blockElement
                .find('.form-edit-transfer__note-collapse')
                .collapse(hasStateEdit ? 'show' : 'hide');
        }
        // Toggle Details
        function toggleFormDetails(e) {
            e.preventDefault();
            $blockElement
                .find('.form-edit-transfer__note-collapse')
                .collapse('toggle');
        }
        buttonCancelElement.on('click', toggleFormEditSatate);
        buttonEditElement.on('click', toggleFormEditSatate);
        buttonSaveElement.on('click', toggleFormEditSatate);
        buttonDetailsElement.on('click', toggleFormDetails);
    });
});
