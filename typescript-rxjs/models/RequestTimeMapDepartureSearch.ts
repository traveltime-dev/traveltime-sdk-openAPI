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
    Coords,
    RequestLevelOfDetail,
    RequestRangeNoMaxResults,
    RequestTimeMapProperty,
    RequestTransportation,
} from './';

/**
 * @export
 * @interface RequestTimeMapDepartureSearch
 */
export interface RequestTimeMapDepartureSearch {
    /**
     * @type {string}
     * @memberof RequestTimeMapDepartureSearch
     */
    id: string;
    /**
     * @type {Coords}
     * @memberof RequestTimeMapDepartureSearch
     */
    coords: Coords;
    /**
     * @type {RequestTransportation}
     * @memberof RequestTimeMapDepartureSearch
     */
    transportation: RequestTransportation;
    /**
     * @type {number}
     * @memberof RequestTimeMapDepartureSearch
     */
    travel_time: number;
    /**
     * @type {string}
     * @memberof RequestTimeMapDepartureSearch
     */
    departure_time: string;
    /**
     * @type {Array<RequestTimeMapProperty>}
     * @memberof RequestTimeMapDepartureSearch
     */
    properties?: Array<RequestTimeMapProperty>;
    /**
     * @type {RequestRangeNoMaxResults}
     * @memberof RequestTimeMapDepartureSearch
     */
    range?: RequestRangeNoMaxResults;
    /**
     * @type {RequestLevelOfDetail}
     * @memberof RequestTimeMapDepartureSearch
     */
    level_of_detail?: RequestLevelOfDetail;
}
