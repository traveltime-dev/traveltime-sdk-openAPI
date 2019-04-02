goog.provide('API.Client.ResponseError');

/**
 * @record
 */
API.Client.ResponseError = function() {}

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseError.prototype.httpStatus;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseError.prototype.errorCode;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseError.prototype.description;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseError.prototype.documentationLink;

/**
 * @type {!Object<!string, Array<!string>>}
 * @export
 */
API.Client.ResponseError.prototype.additionalInfo;

