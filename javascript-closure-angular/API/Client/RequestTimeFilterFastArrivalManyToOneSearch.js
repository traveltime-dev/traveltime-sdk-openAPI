goog.provide('API.Client.RequestTimeFilterFastArrivalManyToOneSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.arrivalLocationId;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.departureLocationIds;

/**
 * @type {!API.Client.RequestTransportationFast}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.travelTime;

/**
 * @type {!API.Client.RequestArrivalTimePeriod}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.arrivalTimePeriod;

/**
 * @type {!Array<!API.Client.RequestTimeFilterFastProperty>}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalManyToOneSearch.prototype.properties;

