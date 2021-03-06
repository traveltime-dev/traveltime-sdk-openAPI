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
    Coords,
    CoordsFromJSON,
    CoordsToJSON,
    RequestLevelOfDetail,
    RequestLevelOfDetailFromJSON,
    RequestLevelOfDetailToJSON,
    RequestRangeNoMaxResults,
    RequestRangeNoMaxResultsFromJSON,
    RequestRangeNoMaxResultsToJSON,
    RequestTimeMapProperty,
    RequestTimeMapPropertyFromJSON,
    RequestTimeMapPropertyToJSON,
    RequestTransportation,
    RequestTransportationFromJSON,
    RequestTransportationToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeMapDepartureSearch
 */
export interface RequestTimeMapDepartureSearch  {
    /**
     * 
     * @type {string}
     * @memberof RequestTimeMapDepartureSearch
     */
    id: string;
    /**
     * 
     * @type {Coords}
     * @memberof RequestTimeMapDepartureSearch
     */
    coords: Coords;
    /**
     * 
     * @type {RequestTransportation}
     * @memberof RequestTimeMapDepartureSearch
     */
    transportation: RequestTransportation;
    /**
     * 
     * @type {number}
     * @memberof RequestTimeMapDepartureSearch
     */
    travelTime: number;
    /**
     * 
     * @type {Date}
     * @memberof RequestTimeMapDepartureSearch
     */
    departureTime: Date;
    /**
     * 
     * @type {Array<RequestTimeMapProperty>}
     * @memberof RequestTimeMapDepartureSearch
     */
    properties?: Array<RequestTimeMapProperty>;
    /**
     * 
     * @type {RequestRangeNoMaxResults}
     * @memberof RequestTimeMapDepartureSearch
     */
    range?: RequestRangeNoMaxResults;
    /**
     * 
     * @type {RequestLevelOfDetail}
     * @memberof RequestTimeMapDepartureSearch
     */
    levelOfDetail?: RequestLevelOfDetail;
}

export function RequestTimeMapDepartureSearchFromJSON(json: any): RequestTimeMapDepartureSearch {
    return {
        'id': json['id'],
        'coords': CoordsFromJSON(json['coords']),
        'transportation': RequestTransportationFromJSON(json['transportation']),
        'travelTime': json['travel_time'],
        'departureTime': new Date(json['departure_time']),
        'properties': !exists(json, 'properties') ? undefined : (json['properties'] as Array<any>).map(RequestTimeMapPropertyFromJSON),
        'range': !exists(json, 'range') ? undefined : RequestRangeNoMaxResultsFromJSON(json['range']),
        'levelOfDetail': !exists(json, 'level_of_detail') ? undefined : RequestLevelOfDetailFromJSON(json['level_of_detail']),
    };
}

export function RequestTimeMapDepartureSearchToJSON(value?: RequestTimeMapDepartureSearch): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'id': value.id,
        'coords': CoordsToJSON(value.coords),
        'transportation': RequestTransportationToJSON(value.transportation),
        'travel_time': value.travelTime,
        'departure_time': value.departureTime.toISOString(),
        'properties': value.properties === undefined ? undefined : (value.properties as Array<any>).map(RequestTimeMapPropertyToJSON),
        'range': RequestRangeNoMaxResultsToJSON(value.range),
        'level_of_detail': RequestLevelOfDetailToJSON(value.levelOfDetail),
    };
}


