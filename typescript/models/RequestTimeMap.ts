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

import { RequestTimeMapArrivalSearch } from './RequestTimeMapArrivalSearch';
import { RequestTimeMapDepartureSearch } from './RequestTimeMapDepartureSearch';
import { RequestUnionOnIntersection } from './RequestUnionOnIntersection';
import { HttpFile } from '../http/http';

export class RequestTimeMap {
    'departureSearches'?: Array<RequestTimeMapDepartureSearch>;
    'arrivalSearches'?: Array<RequestTimeMapArrivalSearch>;
    'unions'?: Array<RequestUnionOnIntersection>;
    'intersections'?: Array<RequestUnionOnIntersection>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "departureSearches",
            "baseName": "departure_searches",
            "type": "Array<RequestTimeMapDepartureSearch>",
            "format": ""
        },
        {
            "name": "arrivalSearches",
            "baseName": "arrival_searches",
            "type": "Array<RequestTimeMapArrivalSearch>",
            "format": ""
        },
        {
            "name": "unions",
            "baseName": "unions",
            "type": "Array<RequestUnionOnIntersection>",
            "format": ""
        },
        {
            "name": "intersections",
            "baseName": "intersections",
            "type": "Array<RequestUnionOnIntersection>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeMap.attributeTypeMap;
    }
    
    public constructor() {
    }
}

