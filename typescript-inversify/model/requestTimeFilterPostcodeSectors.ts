/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { RequestTimeFilterPostcodeSectorsArrivalSearch } from './requestTimeFilterPostcodeSectorsArrivalSearch';
import { RequestTimeFilterPostcodeSectorsDepartureSearch } from './requestTimeFilterPostcodeSectorsDepartureSearch';


export interface RequestTimeFilterPostcodeSectors { 
    departure_searches?: Array<RequestTimeFilterPostcodeSectorsDepartureSearch>;
    arrival_searches?: Array<RequestTimeFilterPostcodeSectorsArrivalSearch>;
}
