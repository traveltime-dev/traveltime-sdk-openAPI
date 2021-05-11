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

import { RequestRangeFull } from './RequestRangeFull';
import { RequestRoutesProperty } from './RequestRoutesProperty';
import { RequestTransportation } from './RequestTransportation';
import { HttpFile } from '../http/http';

export class RequestRoutesArrivalSearch {
    'id': string;
    'departure_location_ids': Array<string>;
    'arrival_location_id': string;
    'transportation': RequestTransportation;
    'arrival_time': Date;
    'properties': Array<RequestRoutesProperty>;
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
            "name": "departure_location_ids",
            "baseName": "departure_location_ids",
            "type": "Array<string>",
            "format": ""
        },
        {
            "name": "arrival_location_id",
            "baseName": "arrival_location_id",
            "type": "string",
            "format": ""
        },
        {
            "name": "transportation",
            "baseName": "transportation",
            "type": "RequestTransportation",
            "format": ""
        },
        {
            "name": "arrival_time",
            "baseName": "arrival_time",
            "type": "Date",
            "format": "date-time"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<RequestRoutesProperty>",
            "format": ""
        },
        {
            "name": "range",
            "baseName": "range",
            "type": "RequestRangeFull",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RequestRoutesArrivalSearch.attributeTypeMap;
    }
    
    public constructor() {
    }
}

