goog.provide('API.Client.ResponseShape');

/**
 * @record
 */
API.Client.ResponseShape = function() {}

/**
 * @type {!Array<!API.Client.Coords>}
 * @export
 */
API.Client.ResponseShape.prototype.shell;

/**
 * @type {!Array<!Array<!API.Client.Coords>>}
 * @export
 */
API.Client.ResponseShape.prototype.holes;

