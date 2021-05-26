// tslint:disable
/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/**
 * @export
 * @interface RequestTransportation
 */
export interface RequestTransportation {
    /**
     * @type {string}
     * @memberof RequestTransportation
     */
    type: RequestTransportationTypeEnum;
    /**
     * @type {boolean}
     * @memberof RequestTransportation
     */
    disable_border_crossing?: boolean;
    /**
     * @type {number}
     * @memberof RequestTransportation
     */
    pt_change_delay?: number;
    /**
     * @type {number}
     * @memberof RequestTransportation
     */
    walking_time?: number;
    /**
     * @type {number}
     * @memberof RequestTransportation
     */
    driving_time_to_station?: number;
    /**
     * @type {number}
     * @memberof RequestTransportation
     */
    cycling_time_to_station?: number;
    /**
     * @type {number}
     * @memberof RequestTransportation
     */
    parking_time?: number;
    /**
     * @type {number}
     * @memberof RequestTransportation
     */
    boarding_time?: number;
}

/**
 * @export
 * @enum {string}
 */
export enum RequestTransportationTypeEnum {
    Cycling = 'cycling',
    Driving = 'driving',
    Drivingtrain = 'driving+train',
    PublicTransport = 'public_transport',
    Walking = 'walking',
    Coach = 'coach',
    Bus = 'bus',
    Train = 'train',
    Ferry = 'ferry',
    Drivingferry = 'driving+ferry',
    Cyclingferry = 'cycling+ferry'
}

