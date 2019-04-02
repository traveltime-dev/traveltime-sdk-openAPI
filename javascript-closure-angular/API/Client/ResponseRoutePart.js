goog.provide('API.Client.ResponseRoutePart');

/**
 * @record
 */
API.Client.ResponseRoutePart = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.type;

/**
 * @type {!API.Client.ResponseTransportationMode}
 * @export
 */
API.Client.ResponseRoutePart.prototype.mode;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.directions;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseRoutePart.prototype.distance;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseRoutePart.prototype.travelTime;

/**
 * @type {!Array<!API.Client.Coords>}
 * @export
 */
API.Client.ResponseRoutePart.prototype.coords;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.direction;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.road;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.turn;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.line;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.departureStation;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.arrivalStation;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.departsAt;

/**
 * @type {!string}
 * @export
 */
API.Client.ResponseRoutePart.prototype.arrivesAt;

/**
 * @type {!number}
 * @export
 */
API.Client.ResponseRoutePart.prototype.numStops;

/** @enum {string} */
API.Client.ResponseRoutePart.TypeEnum = { 
  basic: 'basic',
  start_end: 'start_end',
  road: 'road',
  public_transport: 'public_transport',
}
