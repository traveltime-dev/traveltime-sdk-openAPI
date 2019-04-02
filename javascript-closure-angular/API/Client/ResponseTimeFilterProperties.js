goog.provide('API.Client.ResponseTimeFilterProperties');

/**
 * @record
 */
API.Client.ResponseTimeFilterProperties = function() {}

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseTimeFilterProperties.prototype.travelTime;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseTimeFilterProperties.prototype.distance;

/**
 * @type {!Array<!API.Client.ResponseDistanceBreakdownItem>}
 * @export
 */
API.Client.ResponseTimeFilterProperties.prototype.distanceBreakdown;

/**
 * @type {!API.Client.ResponseFares}
 * @export
 */
API.Client.ResponseTimeFilterProperties.prototype.fares;

/**
 * @type {!API.Client.ResponseRoute}
 * @export
 */
API.Client.ResponseTimeFilterProperties.prototype.route;

