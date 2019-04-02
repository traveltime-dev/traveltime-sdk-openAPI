goog.provide('API.Client.RequestRoutes');

/**
 * @record
 */
API.Client.RequestRoutes = function() {}

/**
 * @type {!Array<!API.Client.RequestLocation>}
 * @export
 */
API.Client.RequestRoutes.prototype.locations;

/**
 * @type {!Array<!API.Client.RequestRoutesDepartureSearch>}
 * @export
 */
API.Client.RequestRoutes.prototype.departureSearches;

/**
 * @type {!Array<!API.Client.RequestRoutesArrivalSearch>}
 * @export
 */
API.Client.RequestRoutes.prototype.arrivalSearches;

