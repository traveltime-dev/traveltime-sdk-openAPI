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

import { ResponseTimeFilterFastLocation } from './ResponseTimeFilterFastLocation';
import { HttpFile } from '../http/http';

export class ResponseTimeFilterFastResult {
    'search_id': string;
    'locations': Array<ResponseTimeFilterFastLocation>;
    'unreachable': Array<string>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "search_id",
            "baseName": "search_id",
            "type": "string",
            "format": ""
        },
        {
            "name": "locations",
            "baseName": "locations",
            "type": "Array<ResponseTimeFilterFastLocation>",
            "format": ""
        },
        {
            "name": "unreachable",
            "baseName": "unreachable",
            "type": "Array<string>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterFastResult.attributeTypeMap;
    }
    
    public constructor() {
    }
}

