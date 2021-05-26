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

import {
    ResponseBoundingBox,
    ResponseTimeMapProperties,
} from './';

/**
 * @export
 * @interface ResponseTimeMapBoundingBoxesResult
 */
export interface ResponseTimeMapBoundingBoxesResult {
    /**
     * @type {string}
     * @memberof ResponseTimeMapBoundingBoxesResult
     */
    search_id: string;
    /**
     * @type {Array<ResponseBoundingBox>}
     * @memberof ResponseTimeMapBoundingBoxesResult
     */
    bounding_boxes: Array<ResponseBoundingBox>;
    /**
     * @type {ResponseTimeMapProperties}
     * @memberof ResponseTimeMapBoundingBoxesResult
     */
    properties: ResponseTimeMapProperties;
}
