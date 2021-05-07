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

import { Coords } from './Coords';
import { RequestRangeNoMaxResults } from './RequestRangeNoMaxResults';
import { RequestTimeMapProperty } from './RequestTimeMapProperty';
import { RequestTransportation } from './RequestTransportation';
import { HttpFile } from '../http/http';

export class RequestTimeMapArrivalSearch {
    'id': string;
    'coords': Coords;
    'transportation': RequestTransportation;
    'travelTime': number;
    'arrivalTime': Date;
    'properties'?: Array<RequestTimeMapProperty>;
    'range'?: RequestRangeNoMaxResults;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string",
            "format": ""
        },
        {
            "name": "coords",
            "baseName": "coords",
            "type": "Coords",
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
            "name": "arrivalTime",
            "baseName": "arrival_time",
            "type": "Date",
            "format": "date-time"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<RequestTimeMapProperty>",
            "format": ""
        },
        {
            "name": "range",
            "baseName": "range",
            "type": "RequestRangeNoMaxResults",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeMapArrivalSearch.attributeTypeMap;
    }
    
    public constructor() {
    }
}

