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

import { RequestFile } from './models';

export class RequestLevelOfDetail {
    'scaleType': RequestLevelOfDetail.ScaleTypeEnum;
    'level': RequestLevelOfDetail.LevelEnum;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "scaleType",
            "baseName": "scale_type",
            "type": "RequestLevelOfDetail.ScaleTypeEnum"
        },
        {
            "name": "level",
            "baseName": "level",
            "type": "RequestLevelOfDetail.LevelEnum"
        }    ];

    static getAttributeTypeMap() {
        return RequestLevelOfDetail.attributeTypeMap;
    }
}

export namespace RequestLevelOfDetail {
    export enum ScaleTypeEnum {
        Simple = <any> 'simple'
    }
    export enum LevelEnum {
        Lowest = <any> 'lowest',
        Low = <any> 'low',
        Medium = <any> 'medium',
        High = <any> 'high',
        Highest = <any> 'highest'
    }
}
