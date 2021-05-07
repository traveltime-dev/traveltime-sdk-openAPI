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

import { ResponseFares } from './ResponseFares';
import { ResponseRoute } from './ResponseRoute';
import { HttpFile } from '../http/http';

export class ResponseRoutesProperties {
    'travelTime'?: number;
    'distance'?: number;
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
        return ResponseRoutesProperties.attributeTypeMap;
    }
    
    public constructor() {
    }
}

