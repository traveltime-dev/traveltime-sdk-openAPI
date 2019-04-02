goog.provide('API.Client.ResponseSupportedLocations');

/**
 * @record
 */
API.Client.ResponseSupportedLocations = function() {}

/**
 * @type {!Array<!API.Client.ResponseSupportedLocation>}
 * @export
 */
API.Client.ResponseSupportedLocations.prototype.locations;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.ResponseSupportedLocations.prototype.unsupportedLocations;

