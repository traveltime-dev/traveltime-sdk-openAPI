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

/**
 * 
 * @export
 * @enum {string}
 */
export enum RequestTimeFilterFastProperty {
    TravelTime = 'travel_time',
    Fares = 'fares'
}

export function RequestTimeFilterFastPropertyFromJSON(json: any): RequestTimeFilterFastProperty {
    return RequestTimeFilterFastPropertyFromJSONTyped(json, false);
}

export function RequestTimeFilterFastPropertyFromJSONTyped(json: any, ignoreDiscriminator: boolean): RequestTimeFilterFastProperty {
    return json as RequestTimeFilterFastProperty;
}

export function RequestTimeFilterFastPropertyToJSON(value?: RequestTimeFilterFastProperty | null): any {
    return value as any;
}

