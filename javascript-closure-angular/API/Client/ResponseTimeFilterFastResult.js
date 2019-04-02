goog.provide('API.Client.ResponseTimeFilterFastResult');

/**
 * @record
 */
API.Client.ResponseTimeFilterFastResult = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseTimeFilterFastResult.prototype.searchId;

/**
 * @type {!Array<!API.Client.ResponseTimeFilterFastLocation>}
 * @export
 */
API.Client.ResponseTimeFilterFastResult.prototype.locations;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.ResponseTimeFilterFastResult.prototype.unreachable;

