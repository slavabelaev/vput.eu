jQuery(document).ready(function ($) {
    var blockElement = $('.cities-tabs');
    if (!blockElement.length)
        return false;
    function setCitiesLetters(contentElement) {
        var usedLetters = [];
        contentElement.find('[data-name]').each(function (index, element) {
            var $element = $(element), cityName = $element.data('name'), cityNameFirstLetter = cityName.substring(0, 1).toUpperCase(), usedLettersHasCurrentLetter = usedLetters.indexOf(cityNameFirstLetter) > -1;
            if (usedLettersHasCurrentLetter)
                return true;
            usedLetters.push(cityNameFirstLetter);
            $element.attr('data-letter', cityNameFirstLetter);
        });
    }
    blockElement.find('.tab-pane').each(function (index, element) {
        setCitiesLetters($(element));
    });
});
