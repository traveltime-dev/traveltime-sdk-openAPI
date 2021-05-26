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
    RequestTimeFilterPostcodesArrivalSearch,
    RequestTimeFilterPostcodesDepartureSearch,
} from './';

/**
 * @export
 * @interface RequestTimeFilterPostcodes
 */
export interface RequestTimeFilterPostcodes {
    /**
     * @type {Array<RequestTimeFilterPostcodesDepartureSearch>}
     * @memberof RequestTimeFilterPostcodes
     */
    departure_searches?: Array<RequestTimeFilterPostcodesDepartureSearch>;
    /**
     * @type {Array<RequestTimeFilterPostcodesArrivalSearch>}
     * @memberof RequestTimeFilterPostcodes
     */
    arrival_searches?: Array<RequestTimeFilterPostcodesArrivalSearch>;
}
