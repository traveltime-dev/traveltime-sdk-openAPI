/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';
import { RequestTimeFilterPostcodeDistrictsArrivalSearch } from './requestTimeFilterPostcodeDistrictsArrivalSearch';
import { RequestTimeFilterPostcodeDistrictsDepartureSearch } from './requestTimeFilterPostcodeDistrictsDepartureSearch';

export class RequestTimeFilterPostcodeDistricts {
    'departureSearches'?: Array<RequestTimeFilterPostcodeDistrictsDepartureSearch>;
    'arrivalSearches'?: Array<RequestTimeFilterPostcodeDistrictsArrivalSearch>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "departureSearches",
            "baseName": "departure_searches",
            "type": "Array<RequestTimeFilterPostcodeDistrictsDepartureSearch>"
        },
        {
            "name": "arrivalSearches",
            "baseName": "arrival_searches",
            "type": "Array<RequestTimeFilterPostcodeDistrictsArrivalSearch>"
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterPostcodeDistricts.attributeTypeMap;
    }
}

