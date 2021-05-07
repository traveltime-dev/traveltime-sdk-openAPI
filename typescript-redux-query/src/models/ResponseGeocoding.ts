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
    ResponseGeocodingGeoJsonFeature,
    ResponseGeocodingGeoJsonFeatureFromJSON,
    ResponseGeocodingGeoJsonFeatureToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseGeocoding
 */
export interface ResponseGeocoding  {
    /**
     * 
     * @type {string}
     * @memberof ResponseGeocoding
     */
    type: string;
    /**
     * 
     * @type {Array<ResponseGeocodingGeoJsonFeature>}
     * @memberof ResponseGeocoding
     */
    features: Array<ResponseGeocodingGeoJsonFeature>;
}

export function ResponseGeocodingFromJSON(json: any): ResponseGeocoding {
    return {
        'type': json['type'],
        'features': (json['features'] as Array<any>).map(ResponseGeocodingGeoJsonFeatureFromJSON),
    };
}

export function ResponseGeocodingToJSON(value?: ResponseGeocoding): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'type': value.type,
        'features': (value.features as Array<any>).map(ResponseGeocodingGeoJsonFeatureToJSON),
    };
}


