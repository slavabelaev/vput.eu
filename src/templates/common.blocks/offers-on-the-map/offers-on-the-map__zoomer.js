var mapsZoomer = function (map) {
    mapsZoomer.map = map;
    return mapsZoomer;
};
mapsZoomer.settings = {
    'maxZoom': 21,
    'minZoom': 10
};
mapsZoomer.current = 13;
mapsZoomer.zoomIn = function () {
    if (mapsZoomer.isValid(mapsZoomer.current + 1)) {
        mapsZoomer.setZoom(mapsZoomer.current + 1);
    }
};
mapsZoomer.zoomOut = function () {
    if (mapsZoomer.isValid(mapsZoomer.current - 1)) {
        mapsZoomer.setZoom(mapsZoomer.current - 1);
    }
};
mapsZoomer.setZoom = function (zoom) {
    mapsZoomer.map.setZoom(zoom);
    mapsZoomer.current = zoom;
    hashHandler.setItem('zoom', zoom);
};
mapsZoomer.isValid = function (zoom) {
    return zoom <= mapsZoomer.settings.maxZoom && zoom >= mapsZoomer.settings.minZoom;
};
mapsZoomer.isMax = function () {
    return mapsZoomer.current >= mapsZoomer.settings.maxZoom;
};
mapsZoomer.isMin = function () {
    return mapsZoomer.current <= mapsZoomer.settings.minZoom;
};
