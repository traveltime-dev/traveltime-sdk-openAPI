// tslint:disable
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
    ResponseTimeFilterPostcodeDistrict,
    ResponseTimeFilterPostcodeDistrictFromJSON,
    ResponseTimeFilterPostcodeDistrictToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterPostcodeDistrictsResult
 */
export interface ResponseTimeFilterPostcodeDistrictsResult  {
    /**
     * 
     * @type {string}
     * @memberof ResponseTimeFilterPostcodeDistrictsResult
     */
    searchId: string;
    /**
     * 
     * @type {Array<ResponseTimeFilterPostcodeDistrict>}
     * @memberof ResponseTimeFilterPostcodeDistrictsResult
     */
    districts: Array<ResponseTimeFilterPostcodeDistrict>;
}

export function ResponseTimeFilterPostcodeDistrictsResultFromJSON(json: any): ResponseTimeFilterPostcodeDistrictsResult {
    return {
        'searchId': json['search_id'],
        'districts': (json['districts'] as Array<any>).map(ResponseTimeFilterPostcodeDistrictFromJSON),
    };
}

export function ResponseTimeFilterPostcodeDistrictsResultToJSON(value?: ResponseTimeFilterPostcodeDistrictsResult): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'search_id': value.searchId,
        'districts': (value.districts as Array<any>).map(ResponseTimeFilterPostcodeDistrictToJSON),
    };
}


