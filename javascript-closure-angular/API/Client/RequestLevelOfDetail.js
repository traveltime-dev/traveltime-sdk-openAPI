goog.provide('API.Client.RequestLevelOfDetail');

/**
 * @record
 */
API.Client.RequestLevelOfDetail = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestLevelOfDetail.prototype.scaleType;

/**
 * @type {!string}
 * @export
 */
API.Client.RequestLevelOfDetail.prototype.level;

/** @enum {string} */
API.Client.RequestLevelOfDetail.ScaleTypeEnum = { 
  simple: 'simple',
}
/** @enum {string} */
API.Client.RequestLevelOfDetail.LevelEnum = { 
  lowest: 'lowest',
  low: 'low',
  medium: 'medium',
  high: 'high',
  highest: 'highest',
}
