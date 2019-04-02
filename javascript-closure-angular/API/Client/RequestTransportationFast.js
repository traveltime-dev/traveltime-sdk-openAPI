goog.provide('API.Client.RequestTransportationFast');

/**
 * @record
 */
API.Client.RequestTransportationFast = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTransportationFast.prototype.type;

/** @enum {string} */
API.Client.RequestTransportationFast.TypeEnum = { 
  public_transport: 'public_transport',
  driving: 'driving',
  driving+public_transport: 'driving+public_transport',
}
