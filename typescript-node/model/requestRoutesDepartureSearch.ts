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

import { RequestRangeFull } from './requestRangeFull';
import { RequestRoutesProperty } from './requestRoutesProperty';
import { RequestTransportation } from './requestTransportation';

export class RequestRoutesDepartureSearch {
    'id': string;
    'departureLocationId': string;
    'arrivalLocationIds': Array<string>;
    'transportation': RequestTransportation;
    'departureTime': Date;
    'properties': Array<RequestRoutesProperty>;
    'range'?: RequestRangeFull;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "departureLocationId",
            "baseName": "departure_location_id",
            "type": "string"
        },
        {
            "name": "arrivalLocationIds",
            "baseName": "arrival_location_ids",
            "type": "Array<string>"
        },
        {
            "name": "transportation",
            "baseName": "transportation",
            "type": "RequestTransportation"
        },
        {
            "name": "departureTime",
            "baseName": "departure_time",
            "type": "Date"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<RequestRoutesProperty>"
        },
        {
            "name": "range",
            "baseName": "range",
            "type": "RequestRangeFull"
        }    ];

    static getAttributeTypeMap() {
        return RequestRoutesDepartureSearch.attributeTypeMap;
    }
}
