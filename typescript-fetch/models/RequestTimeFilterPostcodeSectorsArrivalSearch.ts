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
    RequestRangeFull,
    RequestRangeFullFromJSON,
    RequestRangeFullFromJSONTyped,
    RequestRangeFullToJSON,
    RequestTimeFilterPostcodeSectorsProperty,
    RequestTimeFilterPostcodeSectorsPropertyFromJSON,
    RequestTimeFilterPostcodeSectorsPropertyFromJSONTyped,
    RequestTimeFilterPostcodeSectorsPropertyToJSON,
    RequestTransportation,
    RequestTransportationFromJSON,
    RequestTransportationFromJSONTyped,
    RequestTransportationToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterPostcodeSectorsArrivalSearch
 */
export interface RequestTimeFilterPostcodeSectorsArrivalSearch {
    /**
     * 
     * @type {string}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    id: string;
    /**
     * 
     * @type {RequestTransportation}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    transportation: RequestTransportation;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    travelTime: number;
    /**
     * 
     * @type {Date}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    arrivalTime: Date;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    reachablePostcodesThreshold: number;
    /**
     * 
     * @type {Array<RequestTimeFilterPostcodeSectorsProperty>}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    properties: Array<RequestTimeFilterPostcodeSectorsProperty>;
    /**
     * 
     * @type {RequestRangeFull}
     * @memberof RequestTimeFilterPostcodeSectorsArrivalSearch
     */
    range?: RequestRangeFull;
}

export function RequestTimeFilterPostcodeSectorsArrivalSearchFromJSON(json: any): RequestTimeFilterPostcodeSectorsArrivalSearch {
    return RequestTimeFilterPostcodeSectorsArrivalSearchFromJSONTyped(json, false);
}

export function RequestTimeFilterPostcodeSectorsArrivalSearchFromJSONTyped(json: any, ignoreDiscriminator: boolean): RequestTimeFilterPostcodeSectorsArrivalSearch {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'transportation': RequestTransportationFromJSON(json['transportation']),
        'travelTime': json['travel_time'],
        'arrivalTime': (new Date(json['arrival_time'])),
        'reachablePostcodesThreshold': json['reachable_postcodes_threshold'],
        'properties': ((json['properties'] as Array<any>).map(RequestTimeFilterPostcodeSectorsPropertyFromJSON)),
        'range': !exists(json, 'range') ? undefined : RequestRangeFullFromJSON(json['range']),
    };
}

export function RequestTimeFilterPostcodeSectorsArrivalSearchToJSON(value?: RequestTimeFilterPostcodeSectorsArrivalSearch | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'id': value.id,
        'transportation': RequestTransportationToJSON(value.transportation),
        'travel_time': value.travelTime,
        'arrival_time': (value.arrivalTime.toISOString()),
        'reachable_postcodes_threshold': value.reachablePostcodesThreshold,
        'properties': ((value.properties as Array<any>).map(RequestTimeFilterPostcodeSectorsPropertyToJSON)),
        'range': RequestRangeFullToJSON(value.range),
    };
}


