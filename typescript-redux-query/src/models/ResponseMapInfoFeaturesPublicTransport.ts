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
 * @interface ResponseMapInfoFeaturesPublicTransport
 */
export interface ResponseMapInfoFeaturesPublicTransport  {
    /**
     * 
     * @type {Date}
     * @memberof ResponseMapInfoFeaturesPublicTransport
     */
    dateStart: Date;
    /**
     * 
     * @type {Date}
     * @memberof ResponseMapInfoFeaturesPublicTransport
     */
    dateEnd: Date;
}

export function ResponseMapInfoFeaturesPublicTransportFromJSON(json: any): ResponseMapInfoFeaturesPublicTransport {
    return {
        'dateStart': new Date(json['date_start']),
        'dateEnd': new Date(json['date_end']),
    };
}

export function ResponseMapInfoFeaturesPublicTransportToJSON(value?: ResponseMapInfoFeaturesPublicTransport): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'date_start': value.dateStart.toISOString(),
        'date_end': value.dateEnd.toISOString(),
    };
}


