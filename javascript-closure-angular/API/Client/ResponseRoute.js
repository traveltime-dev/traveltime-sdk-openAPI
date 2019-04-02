goog.provide('API.Client.ResponseRoute');

/**
 * @record
 */
API.Client.ResponseRoute = function() {}

/**
 * @type {!Date}
 * @export
 */
API.Client.ResponseRoute.prototype.departureTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.ResponseRoute.prototype.arrivalTime;

/**
 * @type {!Array<!API.Client.ResponseRoutePart>}
 * @export
 */
API.Client.ResponseRoute.prototype.parts;

