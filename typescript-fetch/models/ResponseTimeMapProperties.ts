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
/**
 * 
 * @export
 * @interface ResponseTimeMapProperties
 */
export interface ResponseTimeMapProperties {
    /**
     * 
     * @type {boolean}
     * @memberof ResponseTimeMapProperties
     */
    isOnlyWalking?: boolean;
}

export function ResponseTimeMapPropertiesFromJSON(json: any): ResponseTimeMapProperties {
    return ResponseTimeMapPropertiesFromJSONTyped(json, false);
}

export function ResponseTimeMapPropertiesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseTimeMapProperties {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'isOnlyWalking': !exists(json, 'is_only_walking') ? undefined : json['is_only_walking'],
    };
}

export function ResponseTimeMapPropertiesToJSON(value?: ResponseTimeMapProperties | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'is_only_walking': value.isOnlyWalking,
    };
}


