// tslint:disable
/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.1
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
    RequestTimeFilterPostcodeSectorsProperty,
    RequestTimeFilterPostcodeSectorsPropertyFromJSON,
    RequestTimeFilterPostcodeSectorsPropertyToJSON,
    RequestTransportation,
    RequestTransportationFromJSON,
    RequestTransportationToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterPostcodeSectorsDepartureSearch
 */
export interface RequestTimeFilterPostcodeSectorsDepartureSearch  {
    /**
     * 
     * @type {string}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    id: string;
    /**
     * 
     * @type {RequestTransportation}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    transportation: RequestTransportation;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    travelTime: number;
    /**
     * 
     * @type {Date}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    departureTime: Date;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    reachablePostcodesThreshold: number;
    /**
     * 
     * @type {Array<RequestTimeFilterPostcodeSectorsProperty>}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    properties: Array<RequestTimeFilterPostcodeSectorsProperty>;
    /**
     * 
     * @type {RequestRangeFull}
     * @memberof RequestTimeFilterPostcodeSectorsDepartureSearch
     */
    range?: RequestRangeFull;
}

export function RequestTimeFilterPostcodeSectorsDepartureSearchFromJSON(json: any): RequestTimeFilterPostcodeSectorsDepartureSearch {
    return {
        'id': json['id'],
        'transportation': RequestTransportationFromJSON(json['transportation']),
        'travelTime': json['travel_time'],
        'departureTime': new Date(json['departure_time']),
        'reachablePostcodesThreshold': json['reachable_postcodes_threshold'],
        'properties': (json['properties'] as Array<any>).map(RequestTimeFilterPostcodeSectorsPropertyFromJSON),
        'range': !exists(json, 'range') ? undefined : RequestRangeFullFromJSON(json['range']),
    };
}

export function RequestTimeFilterPostcodeSectorsDepartureSearchToJSON(value?: RequestTimeFilterPostcodeSectorsDepartureSearch): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'id': value.id,
        'transportation': RequestTransportationToJSON(value.transportation),
        'travel_time': value.travelTime,
        'departure_time': value.departureTime.toISOString(),
        'reachable_postcodes_threshold': value.reachablePostcodesThreshold,
        'properties': (value.properties as Array<any>).map(RequestTimeFilterPostcodeSectorsPropertyToJSON),
        'range': RequestRangeFullToJSON(value.range),
    };
}

