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
    ResponseBox,
    ResponseBoxFromJSON,
    ResponseBoxFromJSONTyped,
    ResponseBoxToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseBoundingBox
 */
export interface ResponseBoundingBox {
    /**
     * 
     * @type {ResponseBox}
     * @memberof ResponseBoundingBox
     */
    envelope: ResponseBox;
    /**
     * 
     * @type {Array<ResponseBox>}
     * @memberof ResponseBoundingBox
     */
    boxes: Array<ResponseBox>;
}

export function ResponseBoundingBoxFromJSON(json: any): ResponseBoundingBox {
    return ResponseBoundingBoxFromJSONTyped(json, false);
}

export function ResponseBoundingBoxFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseBoundingBox {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'envelope': ResponseBoxFromJSON(json['envelope']),
        'boxes': ((json['boxes'] as Array<any>).map(ResponseBoxFromJSON)),
    };
}

export function ResponseBoundingBoxToJSON(value?: ResponseBoundingBox | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'envelope': ResponseBoxToJSON(value.envelope),
        'boxes': ((value.boxes as Array<any>).map(ResponseBoxToJSON)),
    };
}


