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
    Coords,
    CoordsFromJSON,
    CoordsFromJSONTyped,
    CoordsToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseShape
 */
export interface ResponseShape {
    /**
     * 
     * @type {Array<Coords>}
     * @memberof ResponseShape
     */
    shell: Array<Coords>;
    /**
     * 
     * @type {Array<Array<Coords>>}
     * @memberof ResponseShape
     */
    holes: Array<Array<Coords>>;
}

export function ResponseShapeFromJSON(json: any): ResponseShape {
    return ResponseShapeFromJSONTyped(json, false);
}

export function ResponseShapeFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseShape {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'shell': ((json['shell'] as Array<any>).map(CoordsFromJSON)),
        'holes': json['holes'],
    };
}

export function ResponseShapeToJSON(value?: ResponseShape | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'shell': ((value.shell as Array<any>).map(CoordsToJSON)),
        'holes': value.holes,
    };
}


