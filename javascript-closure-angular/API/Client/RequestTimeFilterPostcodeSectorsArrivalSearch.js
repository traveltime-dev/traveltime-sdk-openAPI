goog.provide('API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.id;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.arrivalTime;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.reachablePostcodesThreshold;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodeSectorsProperty>}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsArrivalSearch.prototype.range;

