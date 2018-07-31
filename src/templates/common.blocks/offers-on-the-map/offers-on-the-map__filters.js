$(function () {
    realtiesOnMap.initialize()
        .setCenter({ 'name': $('#map-canvas').data('center') })
        .setQuery(location.search.replace('?', ''))
        .setZoom(parseInt(hashHandler.getJsonHash().zoom) || 13);
});
