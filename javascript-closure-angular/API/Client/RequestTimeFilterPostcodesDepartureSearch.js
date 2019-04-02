goog.provide('API.Client.RequestTimeFilterPostcodesDepartureSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch.prototype.id;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch.prototype.departureTime;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodesProperty>}
 * @export
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterPostcodesDepartureSearch.prototype.range;

