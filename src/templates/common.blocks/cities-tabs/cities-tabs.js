jQuery(document).ready(function ($) {
    var usedLetters = [];
    $('.cities-tabs [data-name]').each(function (index, element) {
        var $element = $(element), cityName = $element.data('name'), cityNameFirstLetter = cityName.substring(0, 1).toUpperCase(), usedLettersHasCurrentLetter = usedLetters.indexOf(cityNameFirstLetter) > -1;
        if (usedLettersHasCurrentLetter)
            return true;
        usedLetters.push(cityNameFirstLetter);
        $element.attr('data-letter', cityNameFirstLetter);
    });
});
