/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestRangeFull } from './RequestRangeFull';
import { RequestTimeFilterProperty } from './RequestTimeFilterProperty';
import { RequestTransportation } from './RequestTransportation';
import { HttpFile } from '../http/http';

export class RequestTimeFilterDepartureSearch {
    'id': string;
    'departureLocationId': string;
    'arrivalLocationIds': Array<string>;
    'transportation': RequestTransportation;
    'travelTime': number;
    'departureTime': Date;
    'properties': Array<RequestTimeFilterProperty>;
    'range'?: RequestRangeFull;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string",
            "format": ""
        },
        {
            "name": "departureLocationId",
            "baseName": "departure_location_id",
            "type": "string",
            "format": ""
        },
        {
            "name": "arrivalLocationIds",
            "baseName": "arrival_location_ids",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "transportation",
            "baseName": "transportation",
            "type": "RequestTransportation",
            "format": ""
        },
        {
            "name": "travelTime",
            "baseName": "travel_time",
            "type": "number",
            "format": ""
        },
        {
            "name": "departureTime",
            "baseName": "departure_time",
            "type": "Date",
            "format": "date-time"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<RequestTimeFilterProperty>",
            "format": ""
        },
        {
            "name": "range",
            "baseName": "range",
            "type": "RequestRangeFull",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterDepartureSearch.attributeTypeMap;
    }
    
    public constructor() {
    }
}

