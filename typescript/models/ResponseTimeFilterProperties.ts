/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ResponseDistanceBreakdownItem } from './ResponseDistanceBreakdownItem';
import { ResponseFares } from './ResponseFares';
import { ResponseRoute } from './ResponseRoute';
import { HttpFile } from '../http/http';

export class ResponseTimeFilterProperties {
    'travelTime'?: number;
    'distance'?: number;
    'distanceBreakdown'?: Array<ResponseDistanceBreakdownItem>;
    'fares'?: ResponseFares;
    'route'?: ResponseRoute;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "travelTime",
            "baseName": "travel_time",
            "type": "number",
            "format": ""
        },
        {
            "name": "distance",
            "baseName": "distance",
            "type": "number",
            "format": ""
        },
        {
            "name": "distanceBreakdown",
            "baseName": "distance_breakdown",
            "type": "Array<ResponseDistanceBreakdownItem>",
            "format": ""
        },
        {
            "name": "fares",
            "baseName": "fares",
            "type": "ResponseFares",
            "format": ""
        },
        {
            "name": "route",
            "baseName": "route",
            "type": "ResponseRoute",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterProperties.attributeTypeMap;
    }
    
    public constructor() {
    }
}

