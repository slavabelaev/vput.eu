Utils = {
    declension: function(number, form) {
        number = number % 100;

        return (number <= 14 && number >= 11) ? form[2] :
            (number %= 10) < 5 ? number > 2 ? form[1] :
                number === 1 ? form[0] : number === 0 ? form[2] : form[1] : form[2];
    }
};