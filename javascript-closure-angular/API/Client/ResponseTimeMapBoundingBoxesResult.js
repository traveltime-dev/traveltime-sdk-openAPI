goog.provide('API.Client.ResponseTimeMapBoundingBoxesResult');

/**
 * @record
 */
API.Client.ResponseTimeMapBoundingBoxesResult = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseTimeMapBoundingBoxesResult.prototype.searchId;

/**
 * @type {!Array<!API.Client.ResponseBoundingBox>}
 * @export
 */
API.Client.ResponseTimeMapBoundingBoxesResult.prototype.boundingBoxes;

/**
 * @type {!API.Client.ResponseTimeMapProperties}
 * @export
 */
API.Client.ResponseTimeMapBoundingBoxesResult.prototype.properties;

