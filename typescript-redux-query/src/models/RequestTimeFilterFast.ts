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

import { exists, mapValues } from '../runtime';
import {
    RequestLocation,
    RequestLocationFromJSON,
    RequestLocationToJSON,
    RequestTimeFilterFastArrivalSearches,
    RequestTimeFilterFastArrivalSearchesFromJSON,
    RequestTimeFilterFastArrivalSearchesToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterFast
 */
export interface RequestTimeFilterFast  {
    /**
     * 
     * @type {Array<RequestLocation>}
     * @memberof RequestTimeFilterFast
     */
    locations: Array<RequestLocation>;
    /**
     * 
     * @type {RequestTimeFilterFastArrivalSearches}
     * @memberof RequestTimeFilterFast
     */
    arrivalSearches: RequestTimeFilterFastArrivalSearches;
}

export function RequestTimeFilterFastFromJSON(json: any): RequestTimeFilterFast {
    return {
        'locations': (json['locations'] as Array<any>).map(RequestLocationFromJSON),
        'arrivalSearches': RequestTimeFilterFastArrivalSearchesFromJSON(json['arrival_searches']),
    };
}

export function RequestTimeFilterFastToJSON(value?: RequestTimeFilterFast): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'locations': (value.locations as Array<any>).map(RequestLocationToJSON),
        'arrival_searches': RequestTimeFilterFastArrivalSearchesToJSON(value.arrivalSearches),
    };
}


