goog.provide('API.Client.RequestTimeFilterArrivalSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterArrivalSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.id;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.departureLocationIds;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.arrivalLocationId;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.arrivalTime;

/**
 * @type {!Array<!API.Client.RequestTimeFilterProperty>}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterArrivalSearch.prototype.range;

