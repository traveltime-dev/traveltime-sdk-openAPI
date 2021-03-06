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
    RequestArrivalTimePeriod,
    RequestTimeFilterFastProperty,
    RequestTransportationFast,
} from './';

/**
 * @export
 * @interface RequestTimeFilterFastArrivalManyToOneSearch
 */
export interface RequestTimeFilterFastArrivalManyToOneSearch {
    /**
     * @type {string}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    id: string;
    /**
     * @type {string}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    arrival_location_id: string;
    /**
     * @type {Array<string>}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    departure_location_ids: Array<string>;
    /**
     * @type {RequestTransportationFast}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    transportation: RequestTransportationFast;
    /**
     * @type {number}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    travel_time: number;
    /**
     * @type {RequestArrivalTimePeriod}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    arrival_time_period: RequestArrivalTimePeriod;
    /**
     * @type {Array<RequestTimeFilterFastProperty>}
     * @memberof RequestTimeFilterFastArrivalManyToOneSearch
     */
    properties: Array<RequestTimeFilterFastProperty>;
}
