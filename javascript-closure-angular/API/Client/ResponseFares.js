goog.provide('API.Client.ResponseFares');

/**
 * @record
 */
API.Client.ResponseFares = function() {}

/**
 * @type {!Array<!API.Client.ResponseFaresBreakdownItem>}
 * @export
 */
API.Client.ResponseFares.prototype.breakdown;

/**
 * @type {!Array<!API.Client.ResponseFareTicket>}
 * @export
 */
API.Client.ResponseFares.prototype.ticketsTotal;

