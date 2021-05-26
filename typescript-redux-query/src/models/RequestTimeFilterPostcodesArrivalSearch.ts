// tslint:disable
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
    RequestRangeFullToJSON,
    RequestTimeFilterPostcodesProperty,
    RequestTimeFilterPostcodesPropertyFromJSON,
    RequestTimeFilterPostcodesPropertyToJSON,
    RequestTransportation,
    RequestTransportationFromJSON,
    RequestTransportationToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterPostcodesArrivalSearch
 */
export interface RequestTimeFilterPostcodesArrivalSearch  {
    /**
     * 
     * @type {string}
     * @memberof RequestTimeFilterPostcodesArrivalSearch
     */
    id: string;
    /**
     * 
     * @type {RequestTransportation}
     * @memberof RequestTimeFilterPostcodesArrivalSearch
     */
    transportation: RequestTransportation;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterPostcodesArrivalSearch
     */
    travelTime: number;
    /**
     * 
     * @type {Date}
     * @memberof RequestTimeFilterPostcodesArrivalSearch
     */
    arrivalTime: Date;
    /**
     * 
     * @type {Array<RequestTimeFilterPostcodesProperty>}
     * @memberof RequestTimeFilterPostcodesArrivalSearch
     */
    properties: Array<RequestTimeFilterPostcodesProperty>;
    /**
     * 
     * @type {RequestRangeFull}
     * @memberof RequestTimeFilterPostcodesArrivalSearch
     */
    range?: RequestRangeFull;
}

export function RequestTimeFilterPostcodesArrivalSearchFromJSON(json: any): RequestTimeFilterPostcodesArrivalSearch {
    return {
        'id': json['id'],
        'transportation': RequestTransportationFromJSON(json['transportation']),
        'travelTime': json['travel_time'],
        'arrivalTime': new Date(json['arrival_time']),
        'properties': (json['properties'] as Array<any>).map(RequestTimeFilterPostcodesPropertyFromJSON),
        'range': !exists(json, 'range') ? undefined : RequestRangeFullFromJSON(json['range']),
    };
}

export function RequestTimeFilterPostcodesArrivalSearchToJSON(value?: RequestTimeFilterPostcodesArrivalSearch): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'id': value.id,
        'transportation': RequestTransportationToJSON(value.transportation),
        'travel_time': value.travelTime,
        'arrival_time': value.arrivalTime.toISOString(),
        'properties': (value.properties as Array<any>).map(RequestTimeFilterPostcodesPropertyToJSON),
        'range': RequestRangeFullToJSON(value.range),
    };
}


