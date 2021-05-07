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
import { RequestTimeFilterPostcodeSectorsProperty } from './requestTimeFilterPostcodeSectorsProperty';


export interface RequestTimeFilterPostcodeSectorsArrivalSearch { 
    id: string;
    transportation: RequestTransportation;
    travel_time: number;
    arrival_time: string;
    reachable_postcodes_threshold: number;
    properties: Array<RequestTimeFilterPostcodeSectorsProperty>;
    range?: RequestRangeFull;
}

