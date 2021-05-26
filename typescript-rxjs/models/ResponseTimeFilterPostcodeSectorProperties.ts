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

import {
    ResponseTravelTimeStatistics,
} from './';

/**
 * @export
 * @interface ResponseTimeFilterPostcodeSectorProperties
 */
export interface ResponseTimeFilterPostcodeSectorProperties {
    /**
     * @type {ResponseTravelTimeStatistics}
     * @memberof ResponseTimeFilterPostcodeSectorProperties
     */
    travel_time_reachable?: ResponseTravelTimeStatistics;
    /**
     * @type {ResponseTravelTimeStatistics}
     * @memberof ResponseTimeFilterPostcodeSectorProperties
     */
    travel_time_all?: ResponseTravelTimeStatistics;
    /**
     * @type {number}
     * @memberof ResponseTimeFilterPostcodeSectorProperties
     */
    coverage?: number;
}
