goog.provide('API.Client.RequestTimeMapDepartureSearch');

/**
 * @record
 */
API.Client.RequestTimeMapDepartureSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.id;

/**
 * @type {!API.Client.Coords}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.coords;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.departureTime;

/**
 * @type {!Array<!API.Client.RequestTimeMapProperty>}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeNoMaxResults}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.range;

/**
 * @type {!API.Client.RequestLevelOfDetail}
 * @export
 */
API.Client.RequestTimeMapDepartureSearch.prototype.levelOfDetail;

