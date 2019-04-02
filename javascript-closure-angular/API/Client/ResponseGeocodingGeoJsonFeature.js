goog.provide('API.Client.ResponseGeocodingGeoJsonFeature');

/**
 * @record
 */
API.Client.ResponseGeocodingGeoJsonFeature = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseGeocodingGeoJsonFeature.prototype.type;

/**
 * @type {!API.Client.ResponseGeocodingGeometry}
 * @export
 */
API.Client.ResponseGeocodingGeoJsonFeature.prototype.geometry;

/**
 * @type {!API.Client.ResponseGeocodingProperties}
 * @export
 */
API.Client.ResponseGeocodingGeoJsonFeature.prototype.properties;

