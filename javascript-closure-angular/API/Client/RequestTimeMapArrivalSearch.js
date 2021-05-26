goog.provide('API.Client.RequestTimeMapArrivalSearch');

/**
 * @record
 */
API.Client.RequestTimeMapArrivalSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.id;

/**
 * @type {!API.Client.Coords}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.coords;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.arrivalTime;

/**
 * @type {!Array<!API.Client.RequestTimeMapProperty>}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeNoMaxResults}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.range;

/**
 * @type {!API.Client.RequestLevelOfDetail}
 * @export
 */
API.Client.RequestTimeMapArrivalSearch.prototype.levelOfDetail;

