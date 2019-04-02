goog.provide('API.Client.RequestTimeFilterPostcodes');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodes = function() {}

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodesDepartureSearch>}
 * @export
 */
API.Client.RequestTimeFilterPostcodes.prototype.departureSearches;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodesArrivalSearch>}
 * @export
 */
API.Client.RequestTimeFilterPostcodes.prototype.arrivalSearches;

