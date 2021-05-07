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
import { RequestRangeFull } from './requestRangeFull';
import { RequestTimeFilterProperty } from './requestTimeFilterProperty';
import { RequestTransportation } from './requestTransportation';


export interface RequestTimeFilterArrivalSearch { 
    id: string;
    departure_location_ids: Array<string>;
    arrival_location_id: string;
    transportation: RequestTransportation;
    travel_time: number;
    arrival_time: string;
    properties: Array<RequestTimeFilterProperty>;
    range?: RequestRangeFull;
}
