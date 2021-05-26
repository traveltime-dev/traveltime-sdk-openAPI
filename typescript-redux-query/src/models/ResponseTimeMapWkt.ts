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
    ResponseTimeMapWktResult,
    ResponseTimeMapWktResultFromJSON,
    ResponseTimeMapWktResultToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeMapWkt
 */
export interface ResponseTimeMapWkt  {
    /**
     * 
     * @type {Array<ResponseTimeMapWktResult>}
     * @memberof ResponseTimeMapWkt
     */
    results: Array<ResponseTimeMapWktResult>;
}

export function ResponseTimeMapWktFromJSON(json: any): ResponseTimeMapWkt {
    return {
        'results': (json['results'] as Array<any>).map(ResponseTimeMapWktResultFromJSON),
    };
}

export function ResponseTimeMapWktToJSON(value?: ResponseTimeMapWkt): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'results': (value.results as Array<any>).map(ResponseTimeMapWktResultToJSON),
    };
}


