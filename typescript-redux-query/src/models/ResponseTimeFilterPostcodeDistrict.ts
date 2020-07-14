// tslint:disable
/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.1
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { exists, mapValues } from '../runtime';
import {
    ModelString,
    ModelStringFromJSON,
    ModelStringToJSON,
    ResponseTimeFilterPostcodeDistrictProperties,
    ResponseTimeFilterPostcodeDistrictPropertiesFromJSON,
    ResponseTimeFilterPostcodeDistrictPropertiesToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterPostcodeDistrict
 */
export interface ResponseTimeFilterPostcodeDistrict  {
    /**
     * 
     * @type {ModelString}
     * @memberof ResponseTimeFilterPostcodeDistrict
     */
    code: ModelString;
    /**
     * 
     * @type {ResponseTimeFilterPostcodeDistrictProperties}
     * @memberof ResponseTimeFilterPostcodeDistrict
     */
    properties: ResponseTimeFilterPostcodeDistrictProperties;
}

export function ResponseTimeFilterPostcodeDistrictFromJSON(json: any): ResponseTimeFilterPostcodeDistrict {
    return {
        'code': ModelStringFromJSON(json['code']),
        'properties': ResponseTimeFilterPostcodeDistrictPropertiesFromJSON(json['properties']),
    };
}

export function ResponseTimeFilterPostcodeDistrictToJSON(value?: ResponseTimeFilterPostcodeDistrict): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'code': ModelStringToJSON(value.code),
        'properties': ResponseTimeFilterPostcodeDistrictPropertiesToJSON(value.properties),
    };
}

