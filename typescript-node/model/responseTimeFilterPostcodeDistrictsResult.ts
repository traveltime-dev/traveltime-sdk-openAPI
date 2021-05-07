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
import { ResponseTimeFilterPostcodeDistrict } from './responseTimeFilterPostcodeDistrict';

export class ResponseTimeFilterPostcodeDistrictsResult {
    'searchId': string;
    'districts': Array<ResponseTimeFilterPostcodeDistrict>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "searchId",
            "baseName": "search_id",
            "type": "string"
        },
        {
            "name": "districts",
            "baseName": "districts",
            "type": "Array<ResponseTimeFilterPostcodeDistrict>"
        }    ];

    static getAttributeTypeMap() {
        return ResponseTimeFilterPostcodeDistrictsResult.attributeTypeMap;
    }
}

