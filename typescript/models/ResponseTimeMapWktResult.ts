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

import { ResponseTimeMapProperties } from './ResponseTimeMapProperties';
import { HttpFile } from '../http/http';

export class ResponseTimeMapWktResult {
    'searchId': string;
    'shape': string;
    'properties': ResponseTimeMapProperties;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "searchId",
            "baseName": "search_id",
            "type": "string",
            "format": ""
        },
        {
            "name": "shape",
            "baseName": "shape",
            "type": "string",
            "format": ""
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "ResponseTimeMapProperties",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeMapWktResult.attributeTypeMap;
    }
    
    public constructor() {
    }
}

