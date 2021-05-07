/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';
import { ResponseTimeFilterPostcode } from './responseTimeFilterPostcode';

export class ResponseTimeFilterPostcodesResult {
    'searchId': string;
    'postcodes': Array<ResponseTimeFilterPostcode>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "searchId",
            "baseName": "search_id",
            "type": "string"
        },
        {
            "name": "postcodes",
            "baseName": "postcodes",
            "type": "Array<ResponseTimeFilterPostcode>"
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterPostcodesResult.attributeTypeMap;
    }
}

