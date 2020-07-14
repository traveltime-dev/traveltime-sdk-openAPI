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

import { ResponseBox } from './ResponseBox';
import { HttpFile } from '../http/http';

export class ResponseBoundingBox {
    'envelope': ResponseBox;
    'boxes': Array<ResponseBox>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "envelope",
            "baseName": "envelope",
            "type": "ResponseBox",
            "format": ""
        },
        {
            "name": "boxes",
            "baseName": "boxes",
            "type": "Array<ResponseBox>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseBoundingBox.attributeTypeMap;
    }
    
    public constructor() {
    }
}
