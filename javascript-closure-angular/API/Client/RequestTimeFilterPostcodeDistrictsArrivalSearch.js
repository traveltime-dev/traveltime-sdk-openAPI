goog.provide('API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch');

/**
 * @record
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.id;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.transportation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.travelTime;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.arrivalTime;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.reachablePostcodesThreshold;

/**
 * @type {!Array<!API.Client.RequestTimeFilterPostcodeDistrictsProperty>}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestTimeFilterPostcodeDistrictsArrivalSearch.prototype.range;

