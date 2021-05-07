/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import {
    RequestRangeFull,
    RequestRangeFullFromJSON,
    RequestRangeFullFromJSONTyped,
    RequestRangeFullToJSON,
    RequestTimeFilterPostcodesProperty,
    RequestTimeFilterPostcodesPropertyFromJSON,
    RequestTimeFilterPostcodesPropertyFromJSONTyped,
    RequestTimeFilterPostcodesPropertyToJSON,
    RequestTransportation,
    RequestTransportationFromJSON,
    RequestTransportationFromJSONTyped,
    RequestTransportationToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterPostcodesDepartureSearch
 */
export interface RequestTimeFilterPostcodesDepartureSearch {
    /**
     * 
     * @type {string}
     * @memberof RequestTimeFilterPostcodesDepartureSearch
     */
    id: string;
    /**
     * 
     * @type {RequestTransportation}
     * @memberof RequestTimeFilterPostcodesDepartureSearch
     */
    transportation: RequestTransportation;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeFilterPostcodesDepartureSearch
     */
    travelTime: number;
    /**
     * 
     * @type {Date}
     * @memberof RequestTimeFilterPostcodesDepartureSearch
     */
    departureTime: Date;
    /**
     * 
     * @type {Array<RequestTimeFilterPostcodesProperty>}
     * @memberof RequestTimeFilterPostcodesDepartureSearch
     */
    properties: Array<RequestTimeFilterPostcodesProperty>;
    /**
     * 
     * @type {RequestRangeFull}
     * @memberof RequestTimeFilterPostcodesDepartureSearch
     */
    range?: RequestRangeFull;
}

export function RequestTimeFilterPostcodesDepartureSearchFromJSON(json: any): RequestTimeFilterPostcodesDepartureSearch {
    return RequestTimeFilterPostcodesDepartureSearchFromJSONTyped(json, false);
}

export function RequestTimeFilterPostcodesDepartureSearchFromJSONTyped(json: any, ignoreDiscriminator: boolean): RequestTimeFilterPostcodesDepartureSearch {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'id': json['id'],
        'transportation': RequestTransportationFromJSON(json['transportation']),
        'travelTime': json['travel_time'],
        'departureTime': (new Date(json['departure_time'])),
        'properties': ((json['properties'] as Array<any>).map(RequestTimeFilterPostcodesPropertyFromJSON)),
        'range': !exists(json, 'range') ? undefined : RequestRangeFullFromJSON(json['range']),
    };
}

export function RequestTimeFilterPostcodesDepartureSearchToJSON(value?: RequestTimeFilterPostcodesDepartureSearch | null): any {
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
        'departure_time': (value.departureTime.toISOString()),
        'properties': ((value.properties as Array<any>).map(RequestTimeFilterPostcodesPropertyToJSON)),
        'range': RequestRangeFullToJSON(value.range),
    };
}


