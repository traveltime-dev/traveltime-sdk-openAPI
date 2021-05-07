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
    ResponseMapInfoFeatures,
    ResponseMapInfoFeaturesFromJSON,
    ResponseMapInfoFeaturesToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseMapInfoMap
 */
export interface ResponseMapInfoMap  {
    /**
     * 
     * @type {string}
     * @memberof ResponseMapInfoMap
     */
    name: string;
    /**
     * 
     * @type {ResponseMapInfoFeatures}
     * @memberof ResponseMapInfoMap
     */
    features: ResponseMapInfoFeatures;
}

export function ResponseMapInfoMapFromJSON(json: any): ResponseMapInfoMap {
    return {
        'name': json['name'],
        'features': ResponseMapInfoFeaturesFromJSON(json['features']),
    };
}

export function ResponseMapInfoMapToJSON(value?: ResponseMapInfoMap): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'name': value.name,
        'features': ResponseMapInfoFeaturesToJSON(value.features),
    };
}


