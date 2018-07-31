$(function(){
    var zoomer = mapsZoomer(realtiesOnMap.map);
    google.maps.event.addListener(realtiesOnMap.map, 'zoom_changed', function() {
        mapsZoomer.current  = realtiesOnMap.map.getZoom();
        if ( zoomer.isMax() ) {
            $('.plusSizeMap').addClass('disabled');
        }
        if ( !zoomer.isMin() ) {
            $('.minusSizeMap').removeClass('disabled');
        }
        if ( zoomer.isMin() ) {
            $('.minusSizeMap').addClass('disabled');
        }
        if ( !zoomer.isMax() ) {
            $('.plusSizeMap').removeClass('disabled');
        }
    });
    google.maps.event.addListener(realtiesOnMap.map, 'click', function() {
        markers.closeWindows();
    });

    $('.plusSizeMap').click(function(){
        zoomer.zoomIn();
    });

    $('.minusSizeMap').click(function(){
        zoomer.zoomOut();
    });

    $('.mapDomination').click(function(){
        $('.main').toggleClass('bigMap');
        $('.imgOffersBlock').css('height', 'auto');
        google.maps.event.trigger(realtiesOnMap.map, "resize");
    });
});