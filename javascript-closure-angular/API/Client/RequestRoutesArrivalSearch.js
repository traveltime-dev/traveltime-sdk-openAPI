goog.provide('API.Client.RequestRoutesArrivalSearch');

/**
 * @record
 */
API.Client.RequestRoutesArrivalSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.id;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.departureLocationIds;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.arrivalLocationId;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.transportation;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.arrivalTime;

/**
 * @type {!Array<!API.Client.RequestRoutesProperty>}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestRoutesArrivalSearch.prototype.range;

