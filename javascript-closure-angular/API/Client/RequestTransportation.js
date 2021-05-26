goog.provide('API.Client.RequestTransportation');

/**
 * @record
 */
API.Client.RequestTransportation = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.RequestTransportation.prototype.type;

/**
 * @type {!boolean}
 * @export
 */
API.Client.RequestTransportation.prototype.disableBorderCrossing;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTransportation.prototype.ptChangeDelay;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTransportation.prototype.walkingTime;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTransportation.prototype.drivingTimeToStation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTransportation.prototype.cyclingTimeToStation;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTransportation.prototype.parkingTime;

/**
 * @type {!number}
 * @export
 */
API.Client.RequestTransportation.prototype.boardingTime;

/** @enum {string} */
API.Client.RequestTransportation.TypeEnum = { 
  cycling: 'cycling',
  driving: 'driving',
  driving+train: 'driving+train',
  public_transport: 'public_transport',
  walking: 'walking',
  coach: 'coach',
  bus: 'bus',
  train: 'train',
  ferry: 'ferry',
  driving+ferry: 'driving+ferry',
  cycling+ferry: 'cycling+ferry',
}
