/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.1
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ResponseTimeFilterResult } from './ResponseTimeFilterResult';
import { HttpFile } from '../http/http';

export class ResponseTimeFilter {
    'results': Array<ResponseTimeFilterResult>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "results",
            "baseName": "results",
            "type": "Array<ResponseTimeFilterResult>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilter.attributeTypeMap;
    }
    
    public constructor() {
    }
}
