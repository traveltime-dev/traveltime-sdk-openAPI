/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';
import { ResponseTimeFilterPostcodeSectorProperties } from './responseTimeFilterPostcodeSectorProperties';

export class ResponseTimeFilterPostcodeSector {
    'code': string;
    'properties': ResponseTimeFilterPostcodeSectorProperties;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "code",
            "baseName": "code",
            "type": "string"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "ResponseTimeFilterPostcodeSectorProperties"
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterPostcodeSector.attributeTypeMap;
    }
}

