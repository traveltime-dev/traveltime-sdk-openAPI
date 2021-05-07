// tslint:disable
/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import {
    ResponseDistanceBreakdownItem,
    ResponseFares,
    ResponseRoute,
} from './';

/**
 * @export
 * @interface ResponseTimeFilterProperties
 */
export interface ResponseTimeFilterProperties {
    /**
     * @type {number}
     * @memberof ResponseTimeFilterProperties
     */
    travel_time?: number;
    /**
     * @type {number}
     * @memberof ResponseTimeFilterProperties
     */
    distance?: number;
    /**
     * @type {Array<ResponseDistanceBreakdownItem>}
     * @memberof ResponseTimeFilterProperties
     */
    distance_breakdown?: Array<ResponseDistanceBreakdownItem>;
    /**
     * @type {ResponseFares}
     * @memberof ResponseTimeFilterProperties
     */
    fares?: ResponseFares;
    /**
     * @type {ResponseRoute}
     * @memberof ResponseTimeFilterProperties
     */
    route?: ResponseRoute;
}
