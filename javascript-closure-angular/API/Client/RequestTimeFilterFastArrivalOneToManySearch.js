goog.provide('API.Client.RequestTimeFilterFastArrivalOneToManySearch');

/**
 * @record
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.departureLocationId;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.arrivalLocationIds;

/**
 * @type {!API.Client.RequestTransportationFast}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.travelTime;

/**
 * @type {!API.Client.RequestArrivalTimePeriod}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.arrivalTimePeriod;

/**
 * @type {!Array<!API.Client.RequestTimeFilterFastProperty>}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalOneToManySearch.prototype.properties;

