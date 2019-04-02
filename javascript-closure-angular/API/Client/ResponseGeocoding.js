goog.provide('API.Client.ResponseGeocoding');

/**
 * @record
 */
API.Client.ResponseGeocoding = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseGeocoding.prototype.type;

/**
 * @type {!Array<!API.Client.ResponseGeocodingGeoJsonFeature>}
 * @export
 */
API.Client.ResponseGeocoding.prototype.features;

