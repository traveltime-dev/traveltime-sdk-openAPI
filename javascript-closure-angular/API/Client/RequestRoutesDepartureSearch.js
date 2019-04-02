goog.provide('API.Client.RequestRoutesDepartureSearch');

/**
 * @record
 */
API.Client.RequestRoutesDepartureSearch = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.departureLocationId;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.arrivalLocationIds;

/**
 * @type {!API.Client.RequestTransportation}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.transportation;

/**
 * @type {!Date}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.departureTime;

/**
 * @type {!Array<!API.Client.RequestRoutesProperty>}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.properties;

/**
 * @type {!API.Client.RequestRangeFull}
 * @export
 */
API.Client.RequestRoutesDepartureSearch.prototype.range;

