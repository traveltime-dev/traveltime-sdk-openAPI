goog.provide('API.Client.ResponseTimeMapResult');

/**
 * @record
 */
API.Client.ResponseTimeMapResult = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseTimeMapResult.prototype.searchId;

/**
 * @type {!Array<!API.Client.ResponseShape>}
 * @export
 */
API.Client.ResponseTimeMapResult.prototype.shapes;

/**
 * @type {!API.Client.ResponseTimeMapProperties}
 * @export
 */
API.Client.ResponseTimeMapResult.prototype.properties;

