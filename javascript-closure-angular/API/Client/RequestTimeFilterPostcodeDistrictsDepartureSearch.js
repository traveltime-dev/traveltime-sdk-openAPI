goog.provide('API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.id;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.departureTime;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.reachablePostcodesThreshold;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodeDistrictsProperty>}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsDepartureSearch.prototype.range;

