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
    RequestRangeFull,
    RequestTimeFilterProperty,
    RequestTransportation,
} from './';

/**
 * @export
 * @interface RequestTimeFilterArrivalSearch
 */
export interface RequestTimeFilterArrivalSearch {
    /**
     * @type {string}
     * @memberof RequestTimeFilterArrivalSearch
     */
    id: string;
    /**
     * @type {Array<string>}
     * @memberof RequestTimeFilterArrivalSearch
     */
    departure_location_ids: Array<string>;
    /**
     * @type {string}
     * @memberof RequestTimeFilterArrivalSearch
     */
    arrival_location_id: string;
    /**
     * @type {RequestTransportation}
     * @memberof RequestTimeFilterArrivalSearch
     */
    transportation: RequestTransportation;
    /**
     * @type {number}
     * @memberof RequestTimeFilterArrivalSearch
     */
    travel_time: number;
    /**
     * @type {string}
     * @memberof RequestTimeFilterArrivalSearch
     */
    arrival_time: string;
    /**
     * @type {Array<RequestTimeFilterProperty>}
     * @memberof RequestTimeFilterArrivalSearch
     */
    properties: Array<RequestTimeFilterProperty>;
    /**
     * @type {RequestRangeFull}
     * @memberof RequestTimeFilterArrivalSearch
     */
    range?: RequestRangeFull;
}
