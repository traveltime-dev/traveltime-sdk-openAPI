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
    ResponseMapInfoFeatures,
} from './';

/**
 * @export
 * @interface ResponseGeocodingProperties
 */
export interface ResponseGeocodingProperties {
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    name: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    label: string;
    /**
     * @type {number}
     * @memberof ResponseGeocodingProperties
     */
    score?: number;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    house_number?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    street?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    region?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    region_code?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    neighbourhood?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    county?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    macroregion?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    city?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    country?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    country_code?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    continent?: string;
    /**
     * @type {string}
     * @memberof ResponseGeocodingProperties
     */
    postcode?: string;
    /**
     * @type {ResponseMapInfoFeatures}
     * @memberof ResponseGeocodingProperties
     */
    features?: ResponseMapInfoFeatures;
}
