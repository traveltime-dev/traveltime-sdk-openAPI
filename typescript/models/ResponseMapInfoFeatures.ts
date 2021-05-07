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

import { ResponseMapInfoFeaturesPublicTransport } from './ResponseMapInfoFeaturesPublicTransport';
import { HttpFile } from '../http/http';

export class ResponseMapInfoFeatures {
    'publicTransport'?: ResponseMapInfoFeaturesPublicTransport;
    'fares': boolean;
    'postcodes': boolean;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "publicTransport",
            "baseName": "public_transport",
            "type": "ResponseMapInfoFeaturesPublicTransport",
            "format": ""
        },
        {
            "name": "fares",
            "baseName": "fares",
            "type": "boolean",
            "format": ""
        },
        {
            "name": "postcodes",
            "baseName": "postcodes",
            "type": "boolean",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseMapInfoFeatures.attributeTypeMap;
    }
    
    public constructor() {
    }
}

