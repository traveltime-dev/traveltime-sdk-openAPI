goog.provide('API.Client.RequestTimeFilterPostcodesArrivalSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch.prototype.id;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch.prototype.arrivalTime;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodesProperty>}
 * @export
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterPostcodesArrivalSearch.prototype.range;

