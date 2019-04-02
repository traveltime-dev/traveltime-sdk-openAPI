goog.provide('API.Client.ResponseBoundingBox');

/**
 * @record
 */
API.Client.ResponseBoundingBox = function() {}

/**
 * @type {!API.Client.ResponseBox}
 * @export
 */
API.Client.ResponseBoundingBox.prototype.envelope;

/**
 * @type {!Array<!API.Client.ResponseBox>}
 * @export
 */
API.Client.ResponseBoundingBox.prototype.boxes;

