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
    ResponseTimeFilterPostcodeDistrictsResult,
    ResponseTimeFilterPostcodeDistrictsResultFromJSON,
    ResponseTimeFilterPostcodeDistrictsResultToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterPostcodeDistricts
 */
export interface ResponseTimeFilterPostcodeDistricts  {
    /**
     * 
     * @type {Array<ResponseTimeFilterPostcodeDistrictsResult>}
     * @memberof ResponseTimeFilterPostcodeDistricts
     */
    results: Array<ResponseTimeFilterPostcodeDistrictsResult>;
}

export function ResponseTimeFilterPostcodeDistrictsFromJSON(json: any): ResponseTimeFilterPostcodeDistricts {
    return {
        'results': (json['results'] as Array<any>).map(ResponseTimeFilterPostcodeDistrictsResultFromJSON),
    };
}

export function ResponseTimeFilterPostcodeDistrictsToJSON(value?: ResponseTimeFilterPostcodeDistricts): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'results': (value.results as Array<any>).map(ResponseTimeFilterPostcodeDistrictsResultToJSON),
    };
}


