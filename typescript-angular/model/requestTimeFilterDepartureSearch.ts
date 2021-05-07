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
import { RequestTransportation } from './requestTransportation';
import { RequestRangeFull } from './requestRangeFull';
import { RequestTimeFilterProperty } from './requestTimeFilterProperty';


export interface RequestTimeFilterDepartureSearch { 
    id: string;
    departure_location_id: string;
    arrival_location_ids: Array<string>;
    transportation: RequestTransportation;
    travel_time: number;
    departure_time: string;
    properties: Array<RequestTimeFilterProperty>;
    range?: RequestRangeFull;
}

