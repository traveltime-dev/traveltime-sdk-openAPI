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
    ResponseTimeFilterFastProperties,
    ResponseTimeFilterFastPropertiesFromJSON,
    ResponseTimeFilterFastPropertiesToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseTimeFilterFastLocation
 */
export interface ResponseTimeFilterFastLocation  {
    /**
     * 
     * @type {string}
     * @memberof ResponseTimeFilterFastLocation
     */
    id: string;
    /**
     * 
     * @type {Array<ResponseTimeFilterFastProperties>}
     * @memberof ResponseTimeFilterFastLocation
     */
    properties: Array<ResponseTimeFilterFastProperties>;
}

export function ResponseTimeFilterFastLocationFromJSON(json: any): ResponseTimeFilterFastLocation {
    return {
        'id': json['id'],
        'properties': (json['properties'] as Array<any>).map(ResponseTimeFilterFastPropertiesFromJSON),
    };
}

export function ResponseTimeFilterFastLocationToJSON(value?: ResponseTimeFilterFastLocation): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'id': value.id,
        'properties': (value.properties as Array<any>).map(ResponseTimeFilterFastPropertiesToJSON),
    };
}

