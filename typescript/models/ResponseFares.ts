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

import { ResponseFareTicket } from './ResponseFareTicket';
import { ResponseFaresBreakdownItem } from './ResponseFaresBreakdownItem';
import { HttpFile } from '../http/http';

export class ResponseFares {
    'breakdown': Array<ResponseFaresBreakdownItem>;
    'ticketsTotal': Array<ResponseFareTicket>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "breakdown",
            "baseName": "breakdown",
            "type": "Array<ResponseFaresBreakdownItem>",
            "format": ""
        },
        {
            "name": "ticketsTotal",
            "baseName": "tickets_total",
            "type": "Array<ResponseFareTicket>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return ResponseFares.attributeTypeMap;
    }
    
    public constructor() {
    }
}

