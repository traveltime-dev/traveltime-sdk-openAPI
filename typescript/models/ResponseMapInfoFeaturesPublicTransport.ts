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

import { HttpFile } from '../http/http';

export class ResponseMapInfoFeaturesPublicTransport {
    'date_start': Date;
    'date_end': Date;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "date_start",
            "baseName": "date_start",
            "type": "Date",
            "format": "date-time"
        },
        {
            "name": "date_end",
            "baseName": "date_end",
            "type": "Date",
            "format": "date-time"
        }    ];

    static getAttributeTypeMap() {
        return ResponseMapInfoFeaturesPublicTransport.attributeTypeMap;
    }
    
    public constructor() {
    }
}

