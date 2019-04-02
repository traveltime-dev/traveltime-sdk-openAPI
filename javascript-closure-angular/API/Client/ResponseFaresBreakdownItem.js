goog.provide('API.Client.ResponseFaresBreakdownItem');

/**
 * @record
 */
API.Client.ResponseFaresBreakdownItem = function() {}

/**
 * @type {!Array<!API.Client.ResponseTransportationMode>}
 * @export
 */
API.Client.ResponseFaresBreakdownItem.prototype.modes;

/**
 * @type {!Array<!number>}
 * @export
 */
API.Client.ResponseFaresBreakdownItem.prototype.routePartIds;

/**
 * @type {!Array<!API.Client.ResponseFareTicket>}
 * @export
 */
API.Client.ResponseFaresBreakdownItem.prototype.tickets;

