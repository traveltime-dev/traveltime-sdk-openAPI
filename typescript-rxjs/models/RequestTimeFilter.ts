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
    RequestLocation,
    RequestTimeFilterArrivalSearch,
    RequestTimeFilterDepartureSearch,
} from './';

/**
 * @export
 * @interface RequestTimeFilter
 */
export interface RequestTimeFilter {
    /**
     * @type {Array<RequestLocation>}
     * @memberof RequestTimeFilter
     */
    locations: Array<RequestLocation>;
    /**
     * @type {Array<RequestTimeFilterDepartureSearch>}
     * @memberof RequestTimeFilter
     */
    departure_searches?: Array<RequestTimeFilterDepartureSearch>;
    /**
     * @type {Array<RequestTimeFilterArrivalSearch>}
     * @memberof RequestTimeFilter
     */
    arrival_searches?: Array<RequestTimeFilterArrivalSearch>;
}
