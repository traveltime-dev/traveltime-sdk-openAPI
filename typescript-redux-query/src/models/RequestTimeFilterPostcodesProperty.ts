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

/**
 * 
 * @export
 * @enum {string}
 */
export enum RequestTimeFilterPostcodesProperty {
    TravelTime = 'travel_time',
    Distance = 'distance'
}

export function RequestTimeFilterPostcodesPropertyFromJSON(json: any): RequestTimeFilterPostcodesProperty {
    return json as RequestTimeFilterPostcodesProperty;
}

export function RequestTimeFilterPostcodesPropertyToJSON(value?: RequestTimeFilterPostcodesProperty): any {
    return value as any;
}

