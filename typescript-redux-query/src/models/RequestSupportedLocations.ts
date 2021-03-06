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
} from './';

/**
 * 
 * @export
 * @interface RequestSupportedLocations
 */
export interface RequestSupportedLocations  {
    /**
     * 
     * @type {Array<RequestLocation>}
     * @memberof RequestSupportedLocations
     */
    locations: Array<RequestLocation>;
}

export function RequestSupportedLocationsFromJSON(json: any): RequestSupportedLocations {
    return {
        'locations': (json['locations'] as Array<any>).map(RequestLocationFromJSON),
    };
}

export function RequestSupportedLocationsToJSON(value?: RequestSupportedLocations): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'locations': (value.locations as Array<any>).map(RequestLocationToJSON),
    };
}


