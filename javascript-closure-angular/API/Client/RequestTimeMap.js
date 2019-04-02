goog.provide('API.Client.RequestTimeMap');

/**
 * @record
 */
API.Client.RequestTimeMap = function() {}

/**
 * @type {!Array<!API.Client.RequestTimeMapDepartureSearch>}
 * @export
 */
API.Client.RequestTimeMap.prototype.departureSearches;

/**
 * @type {!Array<!API.Client.RequestTimeMapArrivalSearch>}
 * @export
 */
API.Client.RequestTimeMap.prototype.arrivalSearches;

/**
 * @type {!Array<!API.Client.RequestUnionOnIntersection>}
 * @export
 */
API.Client.RequestTimeMap.prototype.unions;

/**
 * @type {!Array<!API.Client.RequestUnionOnIntersection>}
 * @export
 */
API.Client.RequestTimeMap.prototype.intersections;

