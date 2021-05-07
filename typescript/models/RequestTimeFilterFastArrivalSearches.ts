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

import { RequestTimeFilterFastArrivalManyToOneSearch } from './RequestTimeFilterFastArrivalManyToOneSearch';
import { RequestTimeFilterFastArrivalOneToManySearch } from './RequestTimeFilterFastArrivalOneToManySearch';
import { HttpFile } from '../http/http';

export class RequestTimeFilterFastArrivalSearches {
    'manyToOne'?: Array<RequestTimeFilterFastArrivalManyToOneSearch>;
    'oneToMany'?: Array<RequestTimeFilterFastArrivalOneToManySearch>;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "manyToOne",
            "baseName": "many_to_one",
            "type": "Array<RequestTimeFilterFastArrivalManyToOneSearch>",
            "format": ""
        },
        {
            "name": "oneToMany",
            "baseName": "one_to_many",
            "type": "Array<RequestTimeFilterFastArrivalOneToManySearch>",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterFastArrivalSearches.attributeTypeMap;
    }
    
    public constructor() {
    }
}

