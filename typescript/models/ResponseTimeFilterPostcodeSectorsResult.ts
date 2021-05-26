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

import { ResponseTimeFilterPostcodeSector } from './ResponseTimeFilterPostcodeSector';
import { HttpFile } from '../http/http';

export class ResponseTimeFilterPostcodeSectorsResult {
    'searchId': string;
    'sectors': Array<ResponseTimeFilterPostcodeSector>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "searchId",
            "baseName": "search_id",
            "type": "string",
            "format": ""
        },
        {
            "name": "sectors",
            "baseName": "sectors",
            "type": "Array<ResponseTimeFilterPostcodeSector>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterPostcodeSectorsResult.attributeTypeMap;
    }
    
    public constructor() {
    }
}

