var MetrikaGoals = function () {
    var goals = {
        0: 'reservation_prepay_clk',
        1: 'reservation_prepay_sel',
        2: 'reservation_trust_clk',
        3: 'reservation_trust_hover',
        4: 'reservation_warn_link_clk',
        5: 'reservation_complete_clk',
        6: 'reservation_smo_clk',
        7: 'reservation_manual_profile_clk',
        8: 'objects_list_view',
        9: 'conv_prep_clk',
        10: 'conv_prep_sel',
        11: 'conv_trust_clk',
        12: 'conv_trust_hover',
        13: 'conv_warn_link_clk',
        14: 'conv_complete_btn_clk',
        15: 'conv_smo_btn_clk',
        16: 'conv_profile_manual_clk',
        17: 'filter_sveti_vlas',
        18: 'filter_sunny_beach',
        19: 'filter_sozopol',
        20: 'filter_nesebr',
        21: 'filter_varna',
        22: 'filter_golden_sands',
        23: 'filter_biala',
        24: 'filter_pomorie',
        25: 'land_top_destination',
        26: 'land_mov_how_it_works',
        27: 'land_how_to_get',
        28: 'land_attractions',
        29: 'search_2guests',
        30: 'search_3guests',
        31: 'search_4guests',
        32: 'search_5guests',
        33: 'search_date_june',
        34: 'search_date_july',
        35: 'search_date_aug',
        36: 'search_date_sept',
        37: 'booking_paid',
        38: 'search_6guests',
        39: 'search_m6_guests',
        40: 'authorization',
        41: 'registration',
        42: 'auth_page_visit',
        43: 'reviews_login_action',
        44: 'reviews_publish_action',
        45: 'calendar_actuality_action',
        46: 'no_occupied_click'
    };
    var counterNm = {};
    this.reachGoal = function (goalName) {
        if (goalExist(goalName)) {
            var goalIdentifier = goals[goalName];
            if (typeof yaCounter25232657 !== 'undefined') {
                counterNm = yaCounter25232657;
                counterNm.reachGoal(goalIdentifier);
            }
            if (typeof ga !== 'undefined') {
                ga('send', 'event', 'General', goalIdentifier);
            }
        }
    };
    var goalExist = function (goalName) {
        if (typeof goals[goalName] === 'undefined') {
            return false;
        }
        else {
            return true;
        }
    };
    function dump(obj) {
        var out = '';
        for (var i in obj) {
            out += i + ": " + obj[i] + "\n";
        }
        alert(out);
    }
};
