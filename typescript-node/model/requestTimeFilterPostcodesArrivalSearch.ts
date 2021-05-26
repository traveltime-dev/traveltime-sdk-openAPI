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
import { RequestRangeFull } from './requestRangeFull';
import { RequestTimeFilterPostcodesProperty } from './requestTimeFilterPostcodesProperty';
import { RequestTransportation } from './requestTransportation';

export class RequestTimeFilterPostcodesArrivalSearch {
    'id': string;
    'transportation': RequestTransportation;
    'travelTime': number;
    'arrivalTime': Date;
    'properties': Array<RequestTimeFilterPostcodesProperty>;
    'range'?: RequestRangeFull;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "transportation",
            "baseName": "transportation",
            "type": "RequestTransportation"
        },
        {
            "name": "travelTime",
            "baseName": "travel_time",
            "type": "number"
        },
        {
            "name": "arrivalTime",
            "baseName": "arrival_time",
            "type": "Date"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<RequestTimeFilterPostcodesProperty>"
        },
        {
            "name": "range",
            "baseName": "range",
            "type": "RequestRangeFull"
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterPostcodesArrivalSearch.attributeTypeMap;
    }
}

