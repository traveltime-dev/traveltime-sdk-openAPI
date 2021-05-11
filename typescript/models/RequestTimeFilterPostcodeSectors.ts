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

import { RequestTimeFilterPostcodeSectorsArrivalSearch } from './RequestTimeFilterPostcodeSectorsArrivalSearch';
import { RequestTimeFilterPostcodeSectorsDepartureSearch } from './RequestTimeFilterPostcodeSectorsDepartureSearch';
import { HttpFile } from '../http/http';

export class RequestTimeFilterPostcodeSectors {
    'departure_searches'?: Array<RequestTimeFilterPostcodeSectorsDepartureSearch>;
    'arrival_searches'?: Array<RequestTimeFilterPostcodeSectorsArrivalSearch>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "departure_searches",
            "baseName": "departure_searches",
            "type": "Array<RequestTimeFilterPostcodeSectorsDepartureSearch>",
            "format": ""
        },
        {
            "name": "arrival_searches",
            "baseName": "arrival_searches",
            "type": "Array<RequestTimeFilterPostcodeSectorsArrivalSearch>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterPostcodeSectors.attributeTypeMap;
    }
    
    public constructor() {
    }
}

