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
    ResponseFaresFast,
    ResponseFaresFastFromJSON,
    ResponseFaresFastFromJSONTyped,
    ResponseFaresFastToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterFastProperties
 */
export interface ResponseTimeFilterFastProperties {
    /**
     * 
     * @type {number}
     * @memberof ResponseTimeFilterFastProperties
     */
    travelTime?: number;
    /**
     * 
     * @type {ResponseFaresFast}
     * @memberof ResponseTimeFilterFastProperties
     */
    fares?: ResponseFaresFast;
}

export function ResponseTimeFilterFastPropertiesFromJSON(json: any): ResponseTimeFilterFastProperties {
    return ResponseTimeFilterFastPropertiesFromJSONTyped(json, false);
}

export function ResponseTimeFilterFastPropertiesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseTimeFilterFastProperties {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'travelTime': !exists(json, 'travel_time') ? undefined : json['travel_time'],
        'fares': !exists(json, 'fares') ? undefined : ResponseFaresFastFromJSON(json['fares']),
    };
}

export function ResponseTimeFilterFastPropertiesToJSON(value?: ResponseTimeFilterFastProperties | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'travel_time': value.travelTime,
        'fares': ResponseFaresFastToJSON(value.fares),
    };
}


