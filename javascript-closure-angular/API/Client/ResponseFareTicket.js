goog.provide('API.Client.ResponseFareTicket');

/**
 * @record
 */
API.Client.ResponseFareTicket = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseFareTicket.prototype.type;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseFareTicket.prototype.price;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseFareTicket.prototype.currency;

/** @enum {string} */
API.Client.ResponseFareTicket.TypeEnum = { 
  single: 'single',
  week: 'week',
  month: 'month',
  year: 'year',
}
