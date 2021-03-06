/* tslint:disable */
/* eslint-disable */
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
    ResponseTimeFilterFastLocation,
    ResponseTimeFilterFastLocationFromJSON,
    ResponseTimeFilterFastLocationFromJSONTyped,
    ResponseTimeFilterFastLocationToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterFastResult
 */
export interface ResponseTimeFilterFastResult {
    /**
     * 
     * @type {string}
     * @memberof ResponseTimeFilterFastResult
     */
    searchId: string;
    /**
     * 
     * @type {Array<ResponseTimeFilterFastLocation>}
     * @memberof ResponseTimeFilterFastResult
     */
    locations: Array<ResponseTimeFilterFastLocation>;
    /**
     * 
     * @type {Array<string>}
     * @memberof ResponseTimeFilterFastResult
     */
    unreachable: Array<string>;
}

export function ResponseTimeFilterFastResultFromJSON(json: any): ResponseTimeFilterFastResult {
    return ResponseTimeFilterFastResultFromJSONTyped(json, false);
}

export function ResponseTimeFilterFastResultFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseTimeFilterFastResult {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'searchId': json['search_id'],
        'locations': ((json['locations'] as Array<any>).map(ResponseTimeFilterFastLocationFromJSON)),
        'unreachable': json['unreachable'],
    };
}

export function ResponseTimeFilterFastResultToJSON(value?: ResponseTimeFilterFastResult | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'search_id': value.searchId,
        'locations': ((value.locations as Array<any>).map(ResponseTimeFilterFastLocationToJSON)),
        'unreachable': value.unreachable,
    };
}


