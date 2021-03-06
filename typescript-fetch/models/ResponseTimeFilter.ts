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
    ResponseTimeFilterResult,
    ResponseTimeFilterResultFromJSON,
    ResponseTimeFilterResultFromJSONTyped,
    ResponseTimeFilterResultToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilter
 */
export interface ResponseTimeFilter {
    /**
     * 
     * @type {Array<ResponseTimeFilterResult>}
     * @memberof ResponseTimeFilter
     */
    results: Array<ResponseTimeFilterResult>;
}

export function ResponseTimeFilterFromJSON(json: any): ResponseTimeFilter {
    return ResponseTimeFilterFromJSONTyped(json, false);
}

export function ResponseTimeFilterFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseTimeFilter {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'results': ((json['results'] as Array<any>).map(ResponseTimeFilterResultFromJSON)),
    };
}

export function ResponseTimeFilterToJSON(value?: ResponseTimeFilter | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'results': ((value.results as Array<any>).map(ResponseTimeFilterResultToJSON)),
    };
}


