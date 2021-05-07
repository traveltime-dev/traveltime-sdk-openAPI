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
    ResponseFares,
    ResponseFaresFromJSON,
    ResponseFaresFromJSONTyped,
    ResponseFaresToJSON,
    ResponseRoute,
    ResponseRouteFromJSON,
    ResponseRouteFromJSONTyped,
    ResponseRouteToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseRoutesProperties
 */
export interface ResponseRoutesProperties {
    /**
     * 
     * @type {number}
     * @memberof ResponseRoutesProperties
     */
    travelTime?: number;
    /**
     * 
     * @type {number}
     * @memberof ResponseRoutesProperties
     */
    distance?: number;
    /**
     * 
     * @type {ResponseFares}
     * @memberof ResponseRoutesProperties
     */
    fares?: ResponseFares;
    /**
     * 
     * @type {ResponseRoute}
     * @memberof ResponseRoutesProperties
     */
    route?: ResponseRoute;
}

export function ResponseRoutesPropertiesFromJSON(json: any): ResponseRoutesProperties {
    return ResponseRoutesPropertiesFromJSONTyped(json, false);
}

export function ResponseRoutesPropertiesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseRoutesProperties {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'travelTime': !exists(json, 'travel_time') ? undefined : json['travel_time'],
        'distance': !exists(json, 'distance') ? undefined : json['distance'],
        'fares': !exists(json, 'fares') ? undefined : ResponseFaresFromJSON(json['fares']),
        'route': !exists(json, 'route') ? undefined : ResponseRouteFromJSON(json['route']),
    };
}

export function ResponseRoutesPropertiesToJSON(value?: ResponseRoutesProperties | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'travel_time': value.travelTime,
        'distance': value.distance,
        'fares': ResponseFaresToJSON(value.fares),
        'route': ResponseRouteToJSON(value.route),
    };
}


