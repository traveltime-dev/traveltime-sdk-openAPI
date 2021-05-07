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
import { RequestRangeFull } from './requestRangeFull';
import { RequestTimeFilterPostcodeDistrictsProperty } from './requestTimeFilterPostcodeDistrictsProperty';
import { RequestTransportation } from './requestTransportation';

export class RequestTimeFilterPostcodeDistrictsDepartureSearch {
    'id': string;
    'transportation': RequestTransportation;
    'travelTime': number;
    'departureTime': Date;
    'reachablePostcodesThreshold': number;
    'properties': Array<RequestTimeFilterPostcodeDistrictsProperty>;
    'range'?: RequestRangeFull;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "transportation",
            "baseName": "transportation",
            "type": "RequestTransportation"
        },
        {
            "name": "travelTime",
            "baseName": "travel_time",
            "type": "number"
        },
        {
            "name": "departureTime",
            "baseName": "departure_time",
            "type": "Date"
        },
        {
            "name": "reachablePostcodesThreshold",
            "baseName": "reachable_postcodes_threshold",
            "type": "number"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "Array<RequestTimeFilterPostcodeDistrictsProperty>"
        },
        {
            "name": "range",
            "baseName": "range",
            "type": "RequestRangeFull"
        }    ];

    static getAttributeTypeMap() {
        return RequestTimeFilterPostcodeDistrictsDepartureSearch.attributeTypeMap;
    }
}

