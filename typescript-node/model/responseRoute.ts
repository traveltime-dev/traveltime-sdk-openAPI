/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { ResponseRoutePart } from './responseRoutePart';

export class ResponseRoute {
    'departureTime': Date;
    'arrivalTime': Date;
    'parts': Array<ResponseRoutePart>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "departureTime",
            "baseName": "departure_time",
            "type": "Date"
        },
        {
            "name": "arrivalTime",
            "baseName": "arrival_time",
            "type": "Date"
        },
        {
            "name": "parts",
            "baseName": "parts",
            "type": "Array<ResponseRoutePart>"
        }    ];

    static getAttributeTypeMap() {
        return ResponseRoute.attributeTypeMap;
    }
}
