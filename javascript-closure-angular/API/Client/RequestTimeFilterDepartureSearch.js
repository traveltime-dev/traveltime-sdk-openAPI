goog.provide('API.Client.RequestTimeFilterDepartureSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterDepartureSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.departureLocationId;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.arrivalLocationIds;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.departureTime;

/**
 * @type {!Array<!API.Client.RequestTimeFilterProperty>}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterDepartureSearch.prototype.range;

