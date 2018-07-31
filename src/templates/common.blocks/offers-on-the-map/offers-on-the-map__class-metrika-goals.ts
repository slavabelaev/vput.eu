var MetrikaGoals = function () {

    var goals = {
        0 : 'reservation_prepay_clk', //Reservation_Prepay_Link_Click
        1 : 'reservation_prepay_sel', //Reservation_Prepay_Selected
        2 : 'reservation_trust_clk', //Reservation_Trust_Block_Click
        3 : 'reservation_trust_hover',  //Reservation_Trust_Block_Hover
        4 : 'reservation_warn_link_clk', //Reservation_Warning_Links_Block_Click
        5 : 'reservation_complete_clk', //Reservation_Complete_Button_Click
        6 : 'reservation_smo_clk', //Reservation_SMO_Bottons_Click
        7 : 'reservation_manual_profile_clk', //Reservation_Manual_Profile_Form_Click
        8 : 'objects_list_view', //Objects List View

        9 : 'conv_prep_clk', //Conversation Prepay Link Click
        10 : 'conv_prep_sel', //Conversation Prepay Selected
        11: 'conv_trust_clk', //Conversation Trust Block Click
        12: 'conv_trust_hover', //Conversation Trust Block Hover
        13: 'conv_warn_link_clk', //Conversation Warning Links Block Click
        14: 'conv_complete_btn_clk', //Conversation Complete Button Click
        15: 'conv_smo_btn_clk', //Conversation SMO Bottons Click
        16: 'conv_profile_manual_clk', //Conversation Manual Profile Form Click

        17: 'filter_sveti_vlas', //Filtering Sveti Vlas
        18: 'filter_sunny_beach',//Filtering Sunny Beach
        19: 'filter_sozopol',    //Filtering Sozopol
        20: 'filter_nesebr',     //Filtering Nesebr
        21: 'filter_varna',      //Filtering Varna
        22: 'filter_golden_sands',//Filtering Golden Sands
        23: 'filter_biala',      //Filtering Biala
        24: 'filter_pomorie',     //Filtering Pomorie

        25: 'land_top_destination',     //Landing Top Destinations
        26: 'land_mov_how_it_works',     //Landing Movie HowItWorks
        27: 'land_how_to_get',     //Landing Block Routes
        28: 'land_attractions',     //Landing Block Attractions

        29: 'search_2guests',     //Filter 2 Guests
        30: 'search_3guests',     //Filter 3 Guests
        31: 'search_4guests',     //Filter 4 Guests
        32: 'search_5guests',     //Filter 5 Guests
        33: 'search_date_june',   //Filter Dates June
        34: 'search_date_july',   //Filter Dates July
        35: 'search_date_aug',    //Filter Dates August
        36: 'search_date_sept',   //Filter Dates September

        37: 'booking_paid',       //Booking Paid

        38: 'search_6guests',     //Filter 6 Guests
        39: 'search_m6_guests',   //Filter >6 Guests

        40: 'authorization',
        41: 'registration',

        42: 'auth_page_visit',

        43: 'reviews_login_action',
        44: 'reviews_publish_action',

        45: 'calendar_actuality_action',
        46: 'no_occupied_click'
    };

    var counterNm = {};

    this.reachGoal = function(goalName){
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

    var goalExist = function(goalName){
        if(typeof goals[goalName] === 'undefined') {
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