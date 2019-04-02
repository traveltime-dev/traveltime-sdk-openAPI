goog.provide('API.Client.ResponseTimeFilterResult');

/**
 * @record
 */
API.Client.ResponseTimeFilterResult = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseTimeFilterResult.prototype.searchId;

/**
 * @type {!Array<!API.Client.ResponseTimeFilterLocation>}
 * @export
 */
API.Client.ResponseTimeFilterResult.prototype.locations;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.ResponseTimeFilterResult.prototype.unreachable;

