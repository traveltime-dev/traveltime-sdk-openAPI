goog.provide('API.Client.ResponseRoutesProperties');

/**
 * @record
 */
API.Client.ResponseRoutesProperties = function() {}

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseRoutesProperties.prototype.travelTime;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseRoutesProperties.prototype.distance;

/**
 * @type {!API.Client.ResponseFares}
 * @export
 */
API.Client.ResponseRoutesProperties.prototype.fares;

/**
 * @type {!API.Client.ResponseRoute}
 * @export
 */
API.Client.ResponseRoutesProperties.prototype.route;

