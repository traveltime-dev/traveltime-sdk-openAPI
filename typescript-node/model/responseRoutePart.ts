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

import { Coords } from './coords';
import { ResponseTransportationMode } from './responseTransportationMode';

export class ResponseRoutePart {
    'id': string;
    'type': ResponseRoutePart.TypeEnum;
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

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "type",
            "baseName": "type",
            "type": "ResponseRoutePart.TypeEnum"
        },
        {
            "name": "mode",
            "baseName": "mode",
            "type": "ResponseTransportationMode"
        },
        {
            "name": "directions",
            "baseName": "directions",
            "type": "string"
        },
        {
            "name": "distance",
            "baseName": "distance",
            "type": "number"
        },
        {
            "name": "travelTime",
            "baseName": "travel_time",
            "type": "number"
        },
        {
            "name": "coords",
            "baseName": "coords",
            "type": "Array<Coords>"
        },
        {
            "name": "direction",
            "baseName": "direction",
            "type": "string"
        },
        {
            "name": "road",
            "baseName": "road",
            "type": "string"
        },
        {
            "name": "turn",
            "baseName": "turn",
            "type": "string"
        },
        {
            "name": "line",
            "baseName": "line",
            "type": "string"
        },
        {
            "name": "departureStation",
            "baseName": "departure_station",
            "type": "string"
        },
        {
            "name": "arrivalStation",
            "baseName": "arrival_station",
            "type": "string"
        },
        {
            "name": "departsAt",
            "baseName": "departs_at",
            "type": "string"
        },
        {
            "name": "arrivesAt",
            "baseName": "arrives_at",
            "type": "string"
        },
        {
            "name": "numStops",
            "baseName": "num_stops",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return ResponseRoutePart.attributeTypeMap;
    }
}

export namespace ResponseRoutePart {
    export enum TypeEnum {
        Basic = <any> 'basic',
        StartEnd = <any> 'start_end',
        Road = <any> 'road',
        PublicTransport = <any> 'public_transport'
    }
}