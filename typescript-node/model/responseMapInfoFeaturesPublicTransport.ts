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

export class ResponseMapInfoFeaturesPublicTransport {
    'dateStart': Date;
    'dateEnd': Date;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "dateStart",
            "baseName": "date_start",
            "type": "Date"
        },
        {
            "name": "dateEnd",
            "baseName": "date_end",
            "type": "Date"
        }    ];

    static getAttributeTypeMap() {
        return ResponseMapInfoFeaturesPublicTransport.attributeTypeMap;
    }
}

