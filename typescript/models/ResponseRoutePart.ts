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
import { ResponseTransportationMode } from './ResponseTransportationMode';
import { HttpFile } from '../http/http';

export class ResponseRoutePart {
    'id': string;
    'type': ResponseRoutePartTypeEnum;
    'mode': ResponseTransportationMode;
    'directions': string;
    'distance': number;
    'travelTime': number;
    'coords': Array<Coords>;
    'direction'?: string;
    'road'?: string;
    'turn'?: string;
    'line'?: string;
    'departureStation'?: string;
    'arrivalStation'?: string;
    'departsAt'?: string;
    'arrivesAt'?: string;
    'numStops'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string",
            "format": ""
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "ResponseRoutePartTypeEnum",
            "format": ""
        },
        {
            "name": "mode",
            "baseName": "mode",
            "type": "ResponseTransportationMode",
            "format": ""
        },
        {
            "name": "directions",
            "baseName": "directions",
            "type": "string",
            "format": ""
        },
        {
            "name": "distance",
            "baseName": "distance",
            "type": "number",
            "format": ""
        },
        {
            "name": "travelTime",
            "baseName": "travel_time",
            "type": "number",
            "format": ""
        },
        {
            "name": "coords",
            "baseName": "coords",
            "type": "Array<Coords>",
            "format": ""
        },
        {
            "name": "direction",
            "baseName": "direction",
            "type": "string",
            "format": ""
        },
        {
            "name": "road",
            "baseName": "road",
            "type": "string",
            "format": ""
        },
        {
            "name": "turn",
            "baseName": "turn",
            "type": "string",
            "format": ""
        },
        {
            "name": "line",
            "baseName": "line",
            "type": "string",
            "format": ""
        },
        {
            "name": "departureStation",
            "baseName": "departure_station",
            "type": "string",
            "format": ""
        },
        {
            "name": "arrivalStation",
            "baseName": "arrival_station",
            "type": "string",
            "format": ""
        },
        {
            "name": "departsAt",
            "baseName": "departs_at",
            "type": "string",
            "format": ""
        },
        {
            "name": "arrivesAt",
            "baseName": "arrives_at",
            "type": "string",
            "format": ""
        },
        {
            "name": "numStops",
            "baseName": "num_stops",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseRoutePart.attributeTypeMap;
    }
    
    public constructor() {
    }
}


export type ResponseRoutePartTypeEnum = "basic" | "start_end" | "road" | "public_transport" ;

