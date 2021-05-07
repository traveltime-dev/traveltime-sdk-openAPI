// tslint:disable
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
    RequestRangeFullToJSON,
    RequestRoutesProperty,
    RequestRoutesPropertyFromJSON,
    RequestRoutesPropertyToJSON,
    RequestTransportation,
    RequestTransportationFromJSON,
    RequestTransportationToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestRoutesDepartureSearch
 */
export interface RequestRoutesDepartureSearch  {
    /**
     * 
     * @type {string}
     * @memberof RequestRoutesDepartureSearch
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof RequestRoutesDepartureSearch
     */
    departureLocationId: string;
    /**
     * 
     * @type {Array<string>}
     * @memberof RequestRoutesDepartureSearch
     */
    arrivalLocationIds: Array<string>;
    /**
     * 
     * @type {RequestTransportation}
     * @memberof RequestRoutesDepartureSearch
     */
    transportation: RequestTransportation;
    /**
     * 
     * @type {Date}
     * @memberof RequestRoutesDepartureSearch
     */
    departureTime: Date;
    /**
     * 
     * @type {Array<RequestRoutesProperty>}
     * @memberof RequestRoutesDepartureSearch
     */
    properties: Array<RequestRoutesProperty>;
    /**
     * 
     * @type {RequestRangeFull}
     * @memberof RequestRoutesDepartureSearch
     */
    range?: RequestRangeFull;
}

export function RequestRoutesDepartureSearchFromJSON(json: any): RequestRoutesDepartureSearch {
    return {
        'id': json['id'],
        'departureLocationId': json['departure_location_id'],
        'arrivalLocationIds': json['arrival_location_ids'],
        'transportation': RequestTransportationFromJSON(json['transportation']),
        'departureTime': new Date(json['departure_time']),
        'properties': (json['properties'] as Array<any>).map(RequestRoutesPropertyFromJSON),
        'range': !exists(json, 'range') ? undefined : RequestRangeFullFromJSON(json['range']),
    };
}

export function RequestRoutesDepartureSearchToJSON(value?: RequestRoutesDepartureSearch): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'id': value.id,
        'departure_location_id': value.departureLocationId,
        'arrival_location_ids': value.arrivalLocationIds,
        'transportation': RequestTransportationToJSON(value.transportation),
        'departure_time': value.departureTime.toISOString(),
        'properties': (value.properties as Array<any>).map(RequestRoutesPropertyToJSON),
        'range': RequestRangeFullToJSON(value.range),
    };
}


