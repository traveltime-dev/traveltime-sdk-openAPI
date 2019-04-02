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

import { RequestLocation } from './requestLocation';
import { RequestTimeFilterFastArrivalSearches } from './requestTimeFilterFastArrivalSearches';

export class RequestTimeFilterFast {
    'locations': Array<RequestLocation>;
    'arrivalSearches': RequestTimeFilterFastArrivalSearches;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "locations",
            "baseName": "locations",
            "type": "Array<RequestLocation>"
        },
        {
            "name": "arrivalSearches",
            "baseName": "arrival_searches",
            "type": "RequestTimeFilterFastArrivalSearches"
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterFast.attributeTypeMap;
    }
}
