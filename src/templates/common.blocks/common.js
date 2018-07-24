jQuery(document).ready(function ($) {
    $('[data-toggle=tooltip]').tooltip();
    $('[data-toggle=popover]').popover();
    setTimeout(function () {
        $('.page-preloader').fadeOut(700);
    }, 1);
});
// let app = new Vue({
//     el: '#app',
//     methods: {
//         getLocalStorageItem: function(keyName) {
//             return JSON.parse(localStorage.getItem(keyName));
//         },
//         setLocalStorageItem: function(keyName, value) {
//             localStorage.setItem(keyName, JSON.stringify(value));
//         },
//         addToFavorites: function(offerId) {
//             let favorites = this.getLocalStorageItem('favorites');
//             favorites = Array.isArray(favorites) ? favorites : [];
//             favorites.push(offerId);
//             this.setLocalStorageItem('favorites', favorites);
//         },
//         removeFromFavorites: function(offerId) {
//             let favorites = this.getLocalStorageItem('favorites');
//             favorites = Array.isArray(favorites) ? favorites : [];
//
//             let indexOfRemovedElement = favorites.indexOf(offerId);
//             favorites.splice(indexOfRemovedElement, 1);
//
//             this.setLocalStorageItem('favorites', favorites);
//         },
//         toggleFavorites: function(offerId) {
//             this.addToFavorites(offerId);
//         }
//     }
// });
