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
import { ResponseGeocodingGeometry } from './responseGeocodingGeometry';
import { ResponseGeocodingProperties } from './responseGeocodingProperties';

export class ResponseGeocodingGeoJsonFeature {
    'type': string;
    'geometry': ResponseGeocodingGeometry;
    'properties': ResponseGeocodingProperties;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "type",
            "baseName": "type",
            "type": "string"
        },
        {
            "name": "geometry",
            "baseName": "geometry",
            "type": "ResponseGeocodingGeometry"
        },
        {
            "name": "properties",
            "baseName": "properties",
            "type": "ResponseGeocodingProperties"
        }    ];

    static getAttributeTypeMap() {
        return ResponseGeocodingGeoJsonFeature.attributeTypeMap;
    }
}

