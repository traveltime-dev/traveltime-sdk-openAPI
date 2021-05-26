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
    ResponseMapInfoFeaturesPublicTransport,
    ResponseMapInfoFeaturesPublicTransportFromJSON,
    ResponseMapInfoFeaturesPublicTransportFromJSONTyped,
    ResponseMapInfoFeaturesPublicTransportToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseMapInfoFeatures
 */
export interface ResponseMapInfoFeatures {
    /**
     * 
     * @type {ResponseMapInfoFeaturesPublicTransport}
     * @memberof ResponseMapInfoFeatures
     */
    publicTransport?: ResponseMapInfoFeaturesPublicTransport;
    /**
     * 
     * @type {boolean}
     * @memberof ResponseMapInfoFeatures
     */
    fares: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof ResponseMapInfoFeatures
     */
    postcodes: boolean;
}

export function ResponseMapInfoFeaturesFromJSON(json: any): ResponseMapInfoFeatures {
    return ResponseMapInfoFeaturesFromJSONTyped(json, false);
}

export function ResponseMapInfoFeaturesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseMapInfoFeatures {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'publicTransport': !exists(json, 'public_transport') ? undefined : ResponseMapInfoFeaturesPublicTransportFromJSON(json['public_transport']),
        'fares': json['fares'],
        'postcodes': json['postcodes'],
    };
}

export function ResponseMapInfoFeaturesToJSON(value?: ResponseMapInfoFeatures | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'public_transport': ResponseMapInfoFeaturesPublicTransportToJSON(value.publicTransport),
        'fares': value.fares,
        'postcodes': value.postcodes,
    };
}


