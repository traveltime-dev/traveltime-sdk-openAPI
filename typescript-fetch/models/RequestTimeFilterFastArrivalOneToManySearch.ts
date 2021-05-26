/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import {
    RequestArrivalTimePeriod,
    RequestArrivalTimePeriodFromJSON,
    RequestArrivalTimePeriodFromJSONTyped,
    RequestArrivalTimePeriodToJSON,
    RequestTimeFilterFastProperty,
    RequestTimeFilterFastPropertyFromJSON,
    RequestTimeFilterFastPropertyFromJSONTyped,
    RequestTimeFilterFastPropertyToJSON,
    RequestTransportationFast,
    RequestTransportationFastFromJSON,
    RequestTransportationFastFromJSONTyped,
    RequestTransportationFastToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterFastArrivalOneToManySearch
 */
export interface RequestTimeFilterFastArrivalOneToManySearch {
    /**
     * 
     * @type {string}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    departureLocationId: string;
    /**
     * 
     * @type {Array<string>}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    arrivalLocationIds: Array<string>;
    /**
     * 
     * @type {RequestTransportationFast}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    transportation: RequestTransportationFast;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    travelTime: number;
    /**
     * 
     * @type {RequestArrivalTimePeriod}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    arrivalTimePeriod: RequestArrivalTimePeriod;
    /**
     * 
     * @type {Array<RequestTimeFilterFastProperty>}
     * @memberof RequestTimeFilterFastArrivalOneToManySearch
     */
    properties: Array<RequestTimeFilterFastProperty>;
}

export function RequestTimeFilterFastArrivalOneToManySearchFromJSON(json: any): RequestTimeFilterFastArrivalOneToManySearch {
    return RequestTimeFilterFastArrivalOneToManySearchFromJSONTyped(json, false);
}

export function RequestTimeFilterFastArrivalOneToManySearchFromJSONTyped(json: any, ignoreDiscriminator: boolean): RequestTimeFilterFastArrivalOneToManySearch {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'departureLocationId': json['departure_location_id'],
        'arrivalLocationIds': json['arrival_location_ids'],
        'transportation': RequestTransportationFastFromJSON(json['transportation']),
        'travelTime': json['travel_time'],
        'arrivalTimePeriod': RequestArrivalTimePeriodFromJSON(json['arrival_time_period']),
        'properties': ((json['properties'] as Array<any>).map(RequestTimeFilterFastPropertyFromJSON)),
    };
}

export function RequestTimeFilterFastArrivalOneToManySearchToJSON(value?: RequestTimeFilterFastArrivalOneToManySearch | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'id': value.id,
        'departure_location_id': value.departureLocationId,
        'arrival_location_ids': value.arrivalLocationIds,
        'transportation': RequestTransportationFastToJSON(value.transportation),
        'travel_time': value.travelTime,
        'arrival_time_period': RequestArrivalTimePeriodToJSON(value.arrivalTimePeriod),
        'properties': ((value.properties as Array<any>).map(RequestTimeFilterFastPropertyToJSON)),
    };
}


