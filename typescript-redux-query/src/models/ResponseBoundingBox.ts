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
    ResponseBox,
    ResponseBoxFromJSON,
    ResponseBoxToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseBoundingBox
 */
export interface ResponseBoundingBox  {
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
    return {
        'envelope': ResponseBoxFromJSON(json['envelope']),
        'boxes': (json['boxes'] as Array<any>).map(ResponseBoxFromJSON),
    };
}

export function ResponseBoundingBoxToJSON(value?: ResponseBoundingBox): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'envelope': ResponseBoxToJSON(value.envelope),
        'boxes': (value.boxes as Array<any>).map(ResponseBoxToJSON),
    };
}


