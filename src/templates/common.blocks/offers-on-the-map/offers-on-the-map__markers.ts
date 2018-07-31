var markers = function() {};

markers.markersIndexes = [];
markers.markersEntities = [];
markers.clusterUssage = false;

markers.enableCluster = function () {
    markers.clusterUssage = true;
    return markers;
};
markers.disableCluster = function () {
    markers.clusterUssage = false;
    return markers;
};

markers.createMarker = function (item, map) {
    var content = "<div id='onMap-"+item.id+"'><span class='markerCur'>&euro;</span>" + item.price+"</div><div class='markerArrow'></div>";
    var labelClass = 'labels';
    if ( item.markerViewed ) {
        labelClass += ' visited';
    }

    var marker = new MarkerWithLabel({
        position: new google.maps.LatLng(item.lat, item.lng),
        map: map,
        title: item.name,
        raiseOnDrag: true,
        labelContent: content,
        labelAnchor: new google.maps.Point(3, 30),
        labelClass: labelClass
    });
    markers.addToChache(marker)
        .createInfowindow(marker, item, map);
    if ( markers.clusterUssage ) {
        markers.addToCluster(marker, map);
    }
};
markers.removeMarkers = function() {
    for (var i = 0; i < markers.markersEntities.length; i++) {
        markers.markersEntities[i].setMap(null);
    }
    markers.markersIndexes  = [];
    markers.markersEntities = [];
    if ( markers.clusterUssage ) {
        markers.getCluster().clearMarkers();
    }

    return markers;
};


markers.addToChache = function (marker) {
    markers.markersEntities.push(marker);
    markers.markersIndexes.push( markers.generateIndexForMarker(marker) );

    return markers;
};

markers.markerCluster = null;
markers.addToCluster = function (marker, map) {
    markers.getCluster(map).addMarker(marker);

    return markers;
};

markers.getCluster = function (map) {
    if ( markers.markerCluster === null )
        markers.markerCluster = new MarkerClusterer(
            map,
            [],
            {
                gridSize: 50,
                maxZoom: 15,
                styles: [
                    {
                        textColor: 'white',
                        url: '/images/realties/objects/map/m1.png',
                        height: 53,
                        width: 52
                    },
                    {
                        textColor: 'white',
                        url: '/images/realties/objects/map/m1.png',
                        height: 53,
                        width: 52
                    },
                    {
                        textColor: 'white',
                        url: '/images/realties/objects/map/m1.png',
                        height: 53,
                        width: 52
                    }
                ]
            }
        );
    return markers.markerCluster;
};

markers.generateIndexForMarker = function(marker) {
    return marker.getPosition().lat() + marker.getPosition().lng();
};

markers.isExists = function(marker){
    return markers.markersEntities.indexOf(markers.generateIndexForMarker(marker)) !== -1;
};

markers.isExistsByLatLng = function(lat, lng){
    var latLng = new google.maps.LatLng(lat, lng);
    return ( markers.markersIndexes.indexOf( latLng.lat() + latLng.lng() ) !== -1 );
};

markers.getMarkersEntities = function(){
    return markers.markersEntities;
};

markers.infoboxes = [];
markers.createInfowindow = function (marker, data, map){
    var infobox = new InfoBox({
        content  : markers.getInfowindowHtml(data),
        pixelOffset: new google.maps.Size(-136, -277),
        onOpen: function(){

        }
    });
    markers.infoboxes.push(infobox);
    google.maps.event.addListener(marker, 'click', function() {
        markers.setMarkersZIndex(marker)
            .closeWindows();
        infobox.open(map, marker);
        markers.setVisited(marker, data);

    });
    return markers;
};

markers.setVisited = function(marker, data){
    $.post('/realties/ajaxRememberMarker/', {'id':data.id}, function (){
        marker.set("labelClass", "labels visited");
    });
};

markers.setMarkersZIndex = function (marker) {
    $(markers.getMarkersEntities()).each(function(){
        this.setZIndex(google.maps.Marker.MAX_ZINDEX);
    });
    marker.setZIndex(google.maps.Marker.MAX_ZINDEX + 1);
    return markers;
};

markers.closeWindows = function () {
    $.each(markers.infoboxes, function(){
        this.close();
    });
};

markers.getInfowindowHtml = function (data) {
    var parameters = '';
    $.each(data.parameters, function(){
        parameters += '<img src="/images/realties/objects/parameters_ico/'+this+'.svg" alt="">'
    });

    var image = '<a href="'+data.url+'" target="_blank">' +
        '<img src="'+data.images[0].image+'" alt="">' +
        '</a>';

    var content = '' +
        '<div class="overlayOffers">' +
        '<div class="arrowBlock"></div>' +
        '<div class="overlayImgOffers">' +
        '<div class="overlayViewport touchslider">' +
        '<div class="touchslider-viewport"><div>' +
        image +
        '</div></div>' +
        '</div>' +
        '<div class="iconInfo">' +
        parameters +
        '</div>' +
        '<a ' +
        '   class="addToFavorites toFavorites" '+
        '   data-action="/realties/ajaxSetFavorite/" '+
        '   data-post="id='+data.id+'" '+
        '   data-method="post" '+
        '></a>'+
        '</div>' +
        '<div class="dataOffers">' +
        '<a href="'+ data.url +'" class="linkTitle" target="_blank">' +
        data.name +
        '<div class="fffColor2"></div>' +
        '</a>' +
        '<span class="addressName">' +
        data.category +
        '</span>' +
        '<span class="infoIcon">' +
        '<span><img src="/images/realties/mapInfowindow/man.svg" title="" alt=""></span>' +
        '<span class="figures">'+data.guests+'</span>' +
        '<span><img src="/images/realties/mapInfowindow/door.svg" title="" alt=""></span>' +
        '<span class="figures">'+data.rooms+'</span>' +
        '<span><img src="/images/realties/mapInfowindow/bed.svg" title="" alt=""></span>' +
        '<span class="figures">'+data.beds+'</span>' +
        '</span>' +
        '<div class="priceOffers">' +
        '<div class="presentDayPrice">' +
        '<span>€</span>' + data.price +
        '</div>' +
        '</div>' +
        '<div class="clear"></div>' +
        '</div>' +
        '</div>';

    return content;
};

var realtiesOnMap = function() {};
realtiesOnMap.map;
realtiesOnMap.loader = new loaderBlock('/images/loaders/vput/xxs.gif');
realtiesOnMap.loader.init( $('.mapSync') );

realtiesOnMap.getMarkerById = function (markerId) {
    var index = markers.markersIndexes.indexOf(markerId);
    return markers.markersEntities[index];
};

realtiesOnMap.createMarker = function (item) {
    if ( markers.isExistsByLatLng(item.lat, item.lng) )
        return;
    markers.createMarker(item, realtiesOnMap.map);
};

realtiesOnMap.setCenter = function (city) {
    if ( typeof hashHandler.getJsonHash().mapCenter == 'undefined' ) {
        if ( realtiesOnMap.isLatLngExistsInObject(city) ) {
            realtiesOnMap.setCenterByLatLng( new google.maps.LatLng( parseFloat(city.lat), parseFloat(city.lng) ) );
        } else {
            realtiesOnMap.setCenterByObjectName(city.name);
        }
    } else {
        var lat = hashHandler.getJsonHash().mapCenter.split('x')[0];
        var lng = hashHandler.getJsonHash().mapCenter.split('x')[1];
        realtiesOnMap.setCenterByLatLng( new google.maps.LatLng(lat, lng) );
    }
    return realtiesOnMap;
};

realtiesOnMap.isLatLngExistsInObject = function (object) {
    return ( (object.lat != '' && object.lng != '') && (typeof object.lat !== 'undefined' && typeof object.lng !== 'undefined') );
};

realtiesOnMap.setCenterByObjectName = function(objectName) {
    if ( typeof objectName != 'string' )
        return realtiesOnMap;

    var geocoder = new google.maps.Geocoder();
    geocoder.geocode( { 'address':objectName }, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            realtiesOnMap.map.setCenter(results[0].geometry.location);
        }
    });
    return realtiesOnMap;
};

realtiesOnMap.setCenterByLatLng = function(latLng) {
    realtiesOnMap.map.setCenter(latLng);
};

realtiesOnMap.initialize = function() {
    realtiesOnMap.map = new google.maps.Map(document.getElementById('map-canvas'), {
        maxZoom: mapsZoomer.settings.maxZoom,
        minZoom: mapsZoomer.settings.minZoom,
        scrollwheel: false,
        zoomControl: false,
        streetViewControl: false,
        scaleControl: false,
        panControl: false,
        mapTypeControl: false,
        zIndex:1
    });
    $(window).resize(function() {
        google.maps.event.trigger(realtiesOnMap.map, "resize");
    });
    google.maps.event.addListener(realtiesOnMap.map, 'dragend', realtiesOnMap.reloadRealties);
    google.maps.event.addListener(realtiesOnMap.map, 'zoom_changed', realtiesOnMap.reloadRealties);
    google.maps.event.addListener(realtiesOnMap.map, 'zoom_changed', realtiesOnMap.setCurrentZoom);
    realtiesOnMap.setSyncCheckbox();

    return realtiesOnMap;
};

realtiesOnMap.setCurrentZoom = function(){
    var zoomer = mapsZoomer(realtiesOnMap.map);
    zoomer.current = realtiesOnMap.map.getZoom();
};

realtiesOnMap.reloadRealties = function() {
    if ( !realtiesOnMap.isSyncWithList() )
        return;

    var bounds = realtiesOnMap.map.getBounds();
    if ( typeof bounds != 'undefined' ) {
        var center = realtiesOnMap.map.getCenter();
        var ne = bounds.getNorthEast();
        var sw = bounds.getSouthWest();

        $('#neLat').val( ne.lat() );
        $('#neLng').val( ne.lng() );

        $('#swLat').val( sw.lat() );
        $('#swLng').val( sw.lng() );

        $('#mapCenter').val( center.lat()+'x'+center.lng() );
        realtiesOnMap.startLoader();
        filtersForm.startSearchByMap();
    }
    return realtiesOnMap;
};

realtiesOnMap.isSyncWithList = function() {
    return $('#mapSync').is(':checked');
};

realtiesOnMap.setSyncCheckbox = function() {
    if ( typeof hashHandler.getJsonHash().mapCenter != 'undefined' ) {
        $('#mapSync').attr('checked', 'true');
    }
};

realtiesOnMap.setTiles = function() {
    realtiesOnMap.map.overlayMapTypes.insertAt(0, new realtiesOnMap.serverFetchMapType() );
    return realtiesOnMap;
};

realtiesOnMap.setZoom = function(zoom) {
    var zoomer = mapsZoomer(realtiesOnMap.map);
    zoomer.setZoom(zoom);

    return realtiesOnMap;
};

realtiesOnMap.serverFetchedTiles = [];
realtiesOnMap.serverFetchMapType = function() {};

realtiesOnMap.serverFetchMapType.prototype.tileSize = new google.maps.Size(256,256);
realtiesOnMap.serverFetchMapType.prototype.maxZoom  = 16;

realtiesOnMap.serverFetchMapType.prototype.getTile  = function(coord, zoom, ownerDocument) {
    var addr = this.getLatLng(coord, zoom);
    var div  = ownerDocument.createElement('div');
    div.style.width = this.tileSize.width + 'px';
    div.style.height = this.tileSize.height + 'px';

    if(realtiesOnMap.serverFetchedTiles[addr]){
        return div;
    }

    $.get("/loadMapTile?"+addr, function(data){
        realtiesOnMap.serverFetchedTiles[addr]=data;
        realtiesOnMap.createMarkers(data);
    });

    return div;

};

realtiesOnMap.query = '';
realtiesOnMap.setQuery = function(query) {
    realtiesOnMap.query = query;

    return realtiesOnMap;
};

realtiesOnMap.getQuery = function() {
    if ( realtiesOnMap.query ) {
        return '&' + realtiesOnMap.query;
    }
    return realtiesOnMap.query;
};

realtiesOnMap.reset = function () {
    markers.removeMarkers();

    return realtiesOnMap;
};

realtiesOnMap.createMarkers = function (data) {
    $.each(data, function(){
        markers.createMarker(this);
    });
};

realtiesOnMap.serverFetchMapType.prototype.getAddrLatLng = function(coord, zoom){
    var point1={
        x: coord.x,
        y: coord.y,
        z: zoom
    };
    var point2={
        x: (coord.x+1),
        y: (coord.y+1),
        z: zoom
    };

    var ne = realtiesOnMap.getLatLngByPoint(point1);
    var sw = realtiesOnMap.getLatLngByPoint(point2);
    return "NE="+ne.toString()+"&SW="+sw.toString()+"&z="+zoom+realtiesOnMap.getQuery();
};

realtiesOnMap.serverFetchMapType.prototype.getLatLng = function(coord, zoom){
    var point1={
        x: coord.x,
        y: coord.y,
        z: zoom
    };
    var point2={
        x: (coord.x+1),
        y: (coord.y+1),
        z: zoom
    };

    var ne = realtiesOnMap.getLatLngByPoint(point1);
    var sw = realtiesOnMap.getLatLngByPoint(point2);
    return "neLat="+ne.lat()+"&neLng="+ne.lng()+"&swLat="+sw.lat()+"&swLng="+sw.lng()+"&z="+zoom+realtiesOnMap.getQuery();
};

realtiesOnMap.showGridMarker = function(point){
    new google.maps.Marker({
        position: realtiesOnMap.getLatLngByPoint(point),
        map: realtiesOnMap.map,
        title: 'Test marker'
    });
};

realtiesOnMap.getLatLngByPoint = function(point) {
    return new google.maps.LatLng(
        this.tile2lat(point.y, point.z),
        this.tile2lng(point.x, point.z)
    );
};

realtiesOnMap.tile2lng = function(x,z) {
    return (x/Math.pow(2,z)*360-180);
};

realtiesOnMap.tile2lat = function (y,z) {
    var n=Math.PI-2*Math.PI*y/Math.pow(2,z);
    return (180/Math.PI*Math.atan(0.5*(Math.exp(n)-Math.exp(-n))));
};

realtiesOnMap.startLoader = function () {
    if ( realtiesOnMap.isSyncWithList() ) {
        realtiesOnMap.loader.start();
    }

};

realtiesOnMap.stopLoader = function () {
    if ( realtiesOnMap.isSyncWithList() ) {
        realtiesOnMap.loader.stop();
    }
};

