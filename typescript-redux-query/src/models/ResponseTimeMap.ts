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
    ResponseTimeMapResult,
    ResponseTimeMapResultFromJSON,
    ResponseTimeMapResultToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeMap
 */
export interface ResponseTimeMap  {
    /**
     * 
     * @type {Array<ResponseTimeMapResult>}
     * @memberof ResponseTimeMap
     */
    results: Array<ResponseTimeMapResult>;
}

export function ResponseTimeMapFromJSON(json: any): ResponseTimeMap {
    return {
        'results': (json['results'] as Array<any>).map(ResponseTimeMapResultFromJSON),
    };
}

export function ResponseTimeMapToJSON(value?: ResponseTimeMap): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'results': (value.results as Array<any>).map(ResponseTimeMapResultToJSON),
    };
}


