/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import {
    ResponseTimeFilterPostcodeSectorsResult,
    ResponseTimeFilterPostcodeSectorsResultFromJSON,
    ResponseTimeFilterPostcodeSectorsResultFromJSONTyped,
    ResponseTimeFilterPostcodeSectorsResultToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterPostcodeSectors
 */
export interface ResponseTimeFilterPostcodeSectors {
    /**
     * 
     * @type {Array<ResponseTimeFilterPostcodeSectorsResult>}
     * @memberof ResponseTimeFilterPostcodeSectors
     */
    results: Array<ResponseTimeFilterPostcodeSectorsResult>;
}

export function ResponseTimeFilterPostcodeSectorsFromJSON(json: any): ResponseTimeFilterPostcodeSectors {
    return ResponseTimeFilterPostcodeSectorsFromJSONTyped(json, false);
}

export function ResponseTimeFilterPostcodeSectorsFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseTimeFilterPostcodeSectors {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'results': ((json['results'] as Array<any>).map(ResponseTimeFilterPostcodeSectorsResultFromJSON)),
    };
}

export function ResponseTimeFilterPostcodeSectorsToJSON(value?: ResponseTimeFilterPostcodeSectors | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'results': ((value.results as Array<any>).map(ResponseTimeFilterPostcodeSectorsResultToJSON)),
    };
}


