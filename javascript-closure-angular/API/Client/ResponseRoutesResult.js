goog.provide('API.Client.ResponseRoutesResult');

/**
 * @record
 */
API.Client.ResponseRoutesResult = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutesResult.prototype.searchId;

/**
 * @type {!Array<!API.Client.ResponseRoutesLocation>}
 * @export
 */
API.Client.ResponseRoutesResult.prototype.locations;

/**
 * @type {!Array<!string>}
 * @export
 */
API.Client.ResponseRoutesResult.prototype.unreachable;

