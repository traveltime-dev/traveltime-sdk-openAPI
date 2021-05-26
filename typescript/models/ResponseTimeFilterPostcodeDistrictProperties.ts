/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ResponseTravelTimeStatistics } from './ResponseTravelTimeStatistics';
import { HttpFile } from '../http/http';

export class ResponseTimeFilterPostcodeDistrictProperties {
    'travelTimeReachable'?: ResponseTravelTimeStatistics;
    'travelTimeAll'?: ResponseTravelTimeStatistics;
    'coverage'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "travelTimeReachable",
            "baseName": "travel_time_reachable",
            "type": "ResponseTravelTimeStatistics",
            "format": ""
        },
        {
            "name": "travelTimeAll",
            "baseName": "travel_time_all",
            "type": "ResponseTravelTimeStatistics",
            "format": ""
        },
        {
            "name": "coverage",
            "baseName": "coverage",
            "type": "number",
            "format": "double"
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterPostcodeDistrictProperties.attributeTypeMap;
    }
    
    public constructor() {
    }
}

