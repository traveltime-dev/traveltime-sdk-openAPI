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
/**
 * 
 * @export
 * @interface ResponseGeocodingGeometry
 */
export interface ResponseGeocodingGeometry  {
    /**
     * 
     * @type {string}
     * @memberof ResponseGeocodingGeometry
     */
    type: string;
    /**
     * 
     * @type {Array<number>}
     * @memberof ResponseGeocodingGeometry
     */
    coordinates: Array<number>;
}

export function ResponseGeocodingGeometryFromJSON(json: any): ResponseGeocodingGeometry {
    return {
        'type': json['type'],
        'coordinates': json['coordinates'],
    };
}

export function ResponseGeocodingGeometryToJSON(value?: ResponseGeocodingGeometry): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'type': value.type,
        'coordinates': value.coordinates,
    };
}


