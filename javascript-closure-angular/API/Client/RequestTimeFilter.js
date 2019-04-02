goog.provide('API.Client.RequestTimeFilter');

/**
 * @record
 */
API.Client.RequestTimeFilter = function() {}

/**
 * @type {!Array<!API.Client.RequestLocation>}
 * @export
 */
API.Client.RequestTimeFilter.prototype.locations;

/**
 * @type {!Array<!API.Client.RequestTimeFilterDepartureSearch>}
 * @export
 */
API.Client.RequestTimeFilter.prototype.departureSearches;

/**
 * @type {!Array<!API.Client.RequestTimeFilterArrivalSearch>}
 * @export
 */
API.Client.RequestTimeFilter.prototype.arrivalSearches;

