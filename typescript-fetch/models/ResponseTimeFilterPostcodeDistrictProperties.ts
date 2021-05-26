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
    ResponseTravelTimeStatistics,
    ResponseTravelTimeStatisticsFromJSON,
    ResponseTravelTimeStatisticsFromJSONTyped,
    ResponseTravelTimeStatisticsToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterPostcodeDistrictProperties
 */
export interface ResponseTimeFilterPostcodeDistrictProperties {
    /**
     * 
     * @type {ResponseTravelTimeStatistics}
     * @memberof ResponseTimeFilterPostcodeDistrictProperties
     */
    travelTimeReachable?: ResponseTravelTimeStatistics;
    /**
     * 
     * @type {ResponseTravelTimeStatistics}
     * @memberof ResponseTimeFilterPostcodeDistrictProperties
     */
    travelTimeAll?: ResponseTravelTimeStatistics;
    /**
     * 
     * @type {number}
     * @memberof ResponseTimeFilterPostcodeDistrictProperties
     */
    coverage?: number;
}

export function ResponseTimeFilterPostcodeDistrictPropertiesFromJSON(json: any): ResponseTimeFilterPostcodeDistrictProperties {
    return ResponseTimeFilterPostcodeDistrictPropertiesFromJSONTyped(json, false);
}

export function ResponseTimeFilterPostcodeDistrictPropertiesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseTimeFilterPostcodeDistrictProperties {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'travelTimeReachable': !exists(json, 'travel_time_reachable') ? undefined : ResponseTravelTimeStatisticsFromJSON(json['travel_time_reachable']),
        'travelTimeAll': !exists(json, 'travel_time_all') ? undefined : ResponseTravelTimeStatisticsFromJSON(json['travel_time_all']),
        'coverage': !exists(json, 'coverage') ? undefined : json['coverage'],
    };
}

export function ResponseTimeFilterPostcodeDistrictPropertiesToJSON(value?: ResponseTimeFilterPostcodeDistrictProperties | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'travel_time_reachable': ResponseTravelTimeStatisticsToJSON(value.travelTimeReachable),
        'travel_time_all': ResponseTravelTimeStatisticsToJSON(value.travelTimeAll),
        'coverage': value.coverage,
    };
}


