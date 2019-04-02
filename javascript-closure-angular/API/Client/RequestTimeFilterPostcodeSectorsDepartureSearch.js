goog.provide('API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.id;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.departureTime;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.reachablePostcodesThreshold;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodeSectorsProperty>}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterPostcodeSectorsDepartureSearch.prototype.range;

